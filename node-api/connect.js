const { Pool } = require("pg");

const user = process.env.DB_USER || "postgres";
const host = process.env.DB_HOST || "localhost";
const database = process.env.DB_NAME || "cmgd";
const password = process.env.DB_PWD || "docker";
const port = process.env.DB_PORT || 5432;

const pool = new Pool({
  user,
  host,
  database,
  password,
  port,
});

module.exports = pool;
