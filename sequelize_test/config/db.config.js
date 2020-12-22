module.exports = {
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "postgres",
  password: process.env.DB_PWD || "docker",
  database: process.env.DB_NAME || "cmgd2",
  port: process.env.DB_PORT || 5432,
  dialect: process.env.DB_DIALECT || "postgres",
};
