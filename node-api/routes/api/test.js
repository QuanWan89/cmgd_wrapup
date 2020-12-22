const router = require("express").Router();
const asyncHandler = require("express-async-handler");
const db = require("../../connect");

router.get(
  "/",
  asyncHandler(async (req, res, next) => {
    let query = `
                SELECT
                COLUMN_NAME
                FROM
                    information_schema.COLUMNS
                WHERE
                    TABLE_NAME = 'sample';
      `;
    let raw = await db.query(query);
    res.send(raw.rows);
  })
);

module.exports = router;
