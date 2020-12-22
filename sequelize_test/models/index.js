const dbConfig = require("../config/db.config");

const { Sequelize, DataTypes } = require("sequelize");
const Sample = require("./Sample");
const sequelize = new Sequelize(
  dbConfig.database,
  dbConfig.user,
  dbConfig.password,
  {
    host: dbConfig.host,
    dialect: dbConfig.dialect,
    define: {
      freezeTableName: true,
    },
  }
);

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;
db.DataTypes = DataTypes;

db.Sample = require("./Sample")(sequelize, DataTypes);
db.Variable = require("./Variable")(sequelize, DataTypes);
db.SampleVariable = require("./Sample_variable")(sequelize, DataTypes);

db.Sample.belongsToMany(db.Variable, { through: db.SampleVariable });
db.Variable.belongsToMany(db.Sample, { through: db.SampleVariable });

module.exports = db;
