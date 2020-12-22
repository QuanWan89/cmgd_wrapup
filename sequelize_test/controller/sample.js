const db = require("../models");
const Sample = db.Sample;
const Variable = db.Variable;
const Sample_Variable = db.SampleVariable;

exports.create = async (req, res) => {
  let data = req.body;
  try {
    const findSample = await Sample.findOne({
      where: { sampleId: data["sampleId"] },
    });
    const sample = findSample ? findSample : await Sample.create(data);
    for (const attr in data.attributes) {
      console.log(`${attr}: ${data.attributes[attr]}`);
      const findVariable = await Variable.findOne({
        where: { name: `${attr}` },
      });
      //const variable = findVariable ? findVariable : await Variable.create();
      if (findVariable) {
        switch (findVariable.type) {
          case "B":
            await sample.addVariable(findVariable, {
              through: { bln_val: data.attributes[attr] },
            });
            break;
          case "N":
            await sample.addVariable(findVariable, {
              through: { num_val: data.attributes[attr] },
            });
            break;
          case "S":
            await sample.addVariable(findVariable, {
              through: { str_val: data.attributes[attr] },
            });
        }
      } else {
        console.log("no such variable!");
      }
    }

    // const result = await sample.addVariable(variable, {
    //   through: { num_val: 13 },
    // });
    // console.log(result);
    return res.status(201).json({
      sample,
    });
  } catch (error) {
    return res.status(500).json({ error: error.message });
  }
};

exports.findAll = async (req, res) => {
  try {
    const samples = await Sample.findAll({
      include: Variable,
    });
    return res.status(200).json({ samples });
  } catch (error) {
    return res.status(500).send(error.message);
  }
};
