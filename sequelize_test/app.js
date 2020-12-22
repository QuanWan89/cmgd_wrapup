const express = require("express");
const exphbs = require("express-handlebars");
const bodyParser = require("body-parser");
const path = require("path");

const app = express();

app.use(
  express.urlencoded({
    extended: true,
  })
);

app.use(express.json());

// Database
const db = require("./models");
const SampleController = require("./controller/sample");

const run = async () => {};

db.sequelize.sync();
// const db = require("./config/database");

// db.authenticate()
//   .then(() => console.log("database connected..."))
//   .catch((err) => console.log(err));

// db.sync();

app.get("/", (req, res) => res.send("insec"));
//Gig routes
//app.use("/samples", require("./routes/samples"));

require("./routes/samples")(app);

const PORT = process.env.PORT || 5000;

app.listen(PORT, console.log(`Server started on port ${PORT}`));
