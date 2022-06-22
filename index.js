const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  console.log("Sending new logs");
  res.send("Hello World! v0.01");
});

app.listen(port, () => {
  console.log(`App is listening at http://localhost:${port}`);
});
