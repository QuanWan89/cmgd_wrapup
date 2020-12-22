const express = require("express");

// Constants
const PORT = process.env.API_PORT || 80;

// App
const app = express();

//// swagger-jsdoc
const swaggerJSDoc = require("swagger-jsdoc");
const swaggerDefinition = {
  openapi: "3.0.0",
  info: {
    // title and version are required
    title: "CuratedMetagenomicData",
    version: "1.0.0",
    description: "CuratedMetagenomicData API",
  },
};

const options = {
  swaggerDefinition,
  // Relative path to the API docs
  apis: ["./swagger/component.yaml", "./routes/api/*.js"],
};
const swaggerSpec = swaggerJSDoc(options);

//// swagger-ui-express
const swaggerUi = require("swagger-ui-express");
app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerSpec));
///////////// test
app.use("/test", require("./routes/api/test"));

//// express-openapi-validator
const bodyParser = require("body-parser");
const http = require("http");
const OpenApiValidator = require("express-openapi-validator").OpenApiValidator;
// app.use(bodyParser.json());
// app.use(bodyParser.text());
// app.use(bodyParser.urlencoded({ extended: false }));
// app.use(express.json());
new OpenApiValidator({
  apiSpec: swaggerSpec,
  validateResponses: false,
})
  .install(app)
  .then(() => {
    //app.use("/api/sample", require("./routes/api/sample"));
    app.use("/api/taxonomy", require("./routes/api/taxonomy"));
    app.use("/api/sample", require("./routes/api/sample"));

    // Create an Express error handler
    app.use((err, req, res, next) => {
      // 7. Customize errors
      res.status(err.status || 500).json({
        message: err.message,
        errors: err.errors,
      });
    });

    http.createServer(app).listen(PORT);
  });
