const router = require("express").Router();
const asyncHandler = require("express-async-handler");
const db = require("../../connect");

function HTTPError(statusCode, message) {
  const error = new Error(message);
  error.statusCode = statusCode;
  return error;
}

/**
 * @swagger
 * /api/sample/findByAgeCategory:
 *   get:
 *     description: |
 *       Return sample information in searched age category
 *     parameters:
 *       - name: age_category
 *         in: query
 *         schema:
 *           type: string
 *           enum:
 *             - newborn
 *             - child
 *             - schoolage
 *             - adult
 *             - senior
 *         required: true
 *         description: age category
 *     responses:
 *       "200":
 *         description: A sample object
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 $ref: "#/components/schemas/Sample"
 *       default:
 *         description: unexpected error
 *         content:
 *           application/json:
 *             schema:
 *               $ref: "#/components/schemas/Error"
 *
 */

router.get(
  "/findByAgeCategory",
  asyncHandler(async (req, res, next) => {
    let age = req.query.age_category;
    console.log(req);
    let query = `
              SELECT
    s.sample_id,
    v.name,
    sv.num_val,
    sv.str_val,
    sv.bln_val
  from sample AS s
  INNER JOIN sample_variable AS sv ON s.id = sv.sample_id
  INNER JOIN variable AS v ON v.id = sv.variable_id
  WHERE
    v.name = 'age_category'
    AND sv.str_val = $1;
    `;
    let raw = await db.query(query, [age]);
    res.send(raw.rows);
  })
);

/**
 * @swagger
 * /api/sample/{id}:
 *   get:
 *     description: |
 *       Return sample information with sampleID
 *     parameters:
 *       - name: id
 *         in: path
 *         schema:
 *           type: string
 *         required: true
 *         description: SampleID
 *     responses:
 *       "200":
 *         description: A sample object
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 $ref: "#/components/schemas/Sample"
 *       default:
 *         description: unexpected error
 *         content:
 *           application/json:
 *             schema:
 *               $ref: "#/components/schemas/Error"
 *
 */

router.get(
  "/:id",
  asyncHandler(async (req, res, next) => {
    console.log(req);
    let id = req.params.id;
    let query = `SELECT
                    s.sample_id,
                    v.name,
                    sv.num_val,
                    sv.str_val,
                    sv.bln_val
                FROM sample AS s
                INNER JOIN sample_variable AS sv ON s.id = sv.sample_id
                INNER JOIN variable AS v ON v.id = sv.variable_id
                WHERE
                    s.sample_id = $1;`;
    let raw = await db.query(query, [id]);
    /*     if (raw.rows.length == 0) {
      throw new HTTPError(404, `sample id is not valid in your search`);
    } */
    res.send(raw.rows);
  })
);

module.exports = router;
