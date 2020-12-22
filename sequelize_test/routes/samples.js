module.exports = (app) => {
  const sample = require("../controller/sample");
  const router = require("express").Router();

  // Create a new sample
  router.post("/", sample.create);

  // Retrieve all samples
  router.get("/", sample.findAll);

  app.use("/api/sample", router);
};

// router.get("/", async (req, res) => {
//   try {
//     const variables = await Variable.findAll({
//       attributes: ["name", "type"],
//     });
//     const convertArrayToObject = (array, key, attr) => {
//       const initialValue = {};
//       return array.reduce((obj, item) => {
//         return {
//           ...obj,
//           [item[key]]: item[attr],
//         };
//       }, initialValue);
//     };
//     const var_obj = convertArrayToObject(variables, "name", "type");
//     const result = await Sample.findAll({
//       include: Variable,
//     });
//     res.json(var_obj);
//     //console.log(var_obj);
//     //console.log(req.body);
//   } catch (err) {
//     console.error(err.message);
//   }
// });
