const db = require("./connect");

const healthCheck = (req, res) => {
  db.query("SELECT 1+1 AS result", (error, results) => {
    if (error) {
      throw error;
    }
    res.status(200).json({ message: "connection successful" });
  });
};

const taxonomyAbundance = (req, res) => {
  const id = parseInt(req.params.id);
  const qp = req.query;

  res.send(qp);
};

const taxonomyChildren = (req, res) => {
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
};

module.exports = { healthCheck, taxonomyChildren, taxonomyAbundance };
