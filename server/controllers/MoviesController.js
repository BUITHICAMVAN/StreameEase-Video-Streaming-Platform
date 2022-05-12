const res = require("express/lib/response");
const mysql = require("mysql");

const pool = mysql.createPool({
  connectionLimit: 100, //important
  host: "localhost",
  database: "video_streaming",
  user: "root",
  password: "@@@Btcv08122002",
});

// Views Movie
exports.view = (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) throw err;
    console.log("Connected as ID " + connection.threadId);
    connection.query("SELECT * FROM Movies", (err, rows) => {
      //when done with connection
      connection.release();

      // if there is no err, render page home
      if (!err) res.render("home", { rows });
      else {
        console.log(err);
      }

      console.log("The data from database: \n", rows);
    });
  });
};

//Find user by search
exports.find = (req, res) => {
  let searchTerm = req.body.search;
  // User the connection
  connection.query(
    "SELECT * FROM user WHERE Tiltle LIKE ? OR idMovie LIKE ?",
    ["%" + searchTerm + "%", "%" + searchTerm + "%"],
    (err, rows) => {
      if (!err) {
        res.render("home", { rows });
      } else {
        console.log(err);
      }
      console.log("The data from user table: \n", rows);
    }
  );
};
