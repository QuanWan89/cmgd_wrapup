const express = require("express");
const router = express.Router();
const db = require("../../connect");

// Get children taxonomy of searched taxonomy
router.get("/children/:id", taxonomyChildren);

// Get taxonomy abundance of searched taxonomy id among samples
router.get("/abundance/:id", taxonomyAbundance);

function taxonomyAbundance(req, res) {
  const id = parseInt(req.params.id);
  const { age, born } = req.query;
  let age_statement = "";
  let born_statement = "";
  // Check taxonomy id (required)
  if (!id) return res.status(400).send("Taxonomy id is required");
  // Check age_category query parameter (optional)
  if (age != null) {
    if (typeof age === "string")
      age_statement = `AND s.age_category = '${age}'`;
    if (typeof age === "object" && Array.isArray(age))
      age_statement = `AND s.age_category IN ('${age.join("','")}')`;
  }
  // Check born_method query parameter (optional)
  if (born != null) {
    if (typeof born === "string")
      born_statement = `AND s.born_method = '${born}'`;
    if (typeof born === "object" && Array.isArray(born))
      born_statement = `AND s.born_method IN ('${born.join("','")}')`;
  }

  const final_statement = `${age_statement} ${born_statement}`;

  const query = `SELECT
                    s.sample_id,
                    s.ncbi_accession,
                    s.age_category,
                    st.abundance,
                    s.born_method
                FROM samples AS s
                INNER JOIN sample_taxonomy AS st ON s._sample_id = st.sample_id
                INNER JOIN taxonomy USING (taxonomy_id)
                WHERE taxonomy_id = $1 ${final_statement}
                ;`;

  db.query(query, [id], (error, results) => {
    if (error) {
      throw error;
    }
    res.status(200).json(results.rows);
  });
}

function taxonomyChildren(req, res) {
  const id = parseInt(req.params.id);
  const query = `WITH RECURSIVE subordinates AS (
              SELECT
                  taxonomy_id,
                  taxonomy_parent_id,
                  taxonomy_name
              FROM
                  taxonomy
              WHERE
                  taxonomy_id = $1
              UNION
                  SELECT
                      e.taxonomy_id,
                      e.taxonomy_parent_id,
                      e.taxonomy_name
                  FROM
                      taxonomy e
                  INNER JOIN subordinates s ON s.taxonomy_id = e.taxonomy_parent_id
          ) SELECT
              *
          FROM
              subordinates;`;

  db.query(query, [id], (error, results) => {
    if (error) {
      throw error;
    }
    res.status(200).json(results.rows);
  });
}

module.exports = router;
