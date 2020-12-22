module.exports = (sequelize, DataTypes) => {
  const Sample = sequelize.define("sample", {
    sampleId: {
      type: DataTypes.STRING,
    },
  });
  return Sample;
};
