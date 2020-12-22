module.exports = (sequelize, DataTypes) => {
  const SampleVariable = sequelize.define("sample_variable", {
    num_val: {
      type: DataTypes.INTEGER,
    },
    str_val: {
      type: DataTypes.STRING,
    },
    bln_val: {
      type: DataTypes.BOOLEAN,
    },
  });
  return SampleVariable;
};
