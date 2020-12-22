module.exports = (sequelize, DataTypes) => {
  const Variable = sequelize.define("variable", {
    name: {
      type: DataTypes.STRING,
    },
    type: {
      type: DataTypes.STRING,
    },
  });
  return Variable;
};
