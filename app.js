const express = require("express");
const exphbs = require("express-handlebars");
const bodyParser = require("body-parser");
const mysql = require("mysql");

require("dotenv").config();

const app = express();
const port = process.env.PORT || 2000;

//Parsing middleware
//Parse application/ x-ww-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));

// Parse appllication/json
app.use(bodyParser.json());
//static files
app.use(express.static("public"));

//templation engine
app.engine("hbs", exphbs.engine({ extname: ".hbs" }));
app.set("view engine", "hbs");

//Router to render the page
app.get("", (req, res) => {
  res.render("home.hbs");
  res.render("movies.hbs");
  res.render("series.hbs");
});

app.listen(port, () => console.log("Listening on port " + port));
