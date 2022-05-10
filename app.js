const express = require("express");
const exphbs = require("express-handlebars");
const bodyParser = require("body-parser");
const mysql = require("mysql");
const Connection = require("mysql/lib/Connection");

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





const pool = mysql.createPool({
  connectionLimit : 100, //important
  host     : 'localhost',
  user     : 'root',
  password : 'Bestteemo',
  database : 'Video_Streaming',
  debug    :  false
});

pool.getConnection((err, connection) => {
  if(err) throw err;
  console.log('Connected as ID ' + connection.threadId);
})

//Router to render the page
app.get("", (req, res) => {
  res.render("home.hbs");
  //   res.render("movies.hbs");
  //   res.render("series.hbs");
});




app.listen(port, () => console.log("Listening on port " + port));
