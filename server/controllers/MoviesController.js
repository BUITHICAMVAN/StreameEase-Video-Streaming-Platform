const res = require("express/lib/response");
const mysql = require("mysql");

const pool = mysql.createPool({
  connectionLimit: 100, //important
  host: "localhost",
  database: "Video_Streaming",
  user: "root",
  password: "@@@Btcv08122002",
});
5;
// Views Movie
exports.view = (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) throw err;
    console.log("Connected as ID " + connection.threadId);
    connection.query("SELECT * FROM Movies ", (err, rows) => {
      //when done with connection
      connection.release();

      // if there is no err, render page movies
      if (!err) res.render("home", { rows });
      else {
        console.log(err);
      }

      console.log(rows);
    });
  });
};

//Find user by search
exports.find = (req, res) => {
  let searchTerm = req.body.search;
  // User the connection
  pool.getConnection((err, connection) => {
    connection.query(
      "SELECT * FROM Movies WHERE Title LIKE ? OR Year LIKE ? OR Genre LIKE ? OR Director LIKE ? OR Description LIKE ?",
      [
        "%" + searchTerm + "%",
        "%" + searchTerm + "%",
        "%" + searchTerm + "%",
        "%" + searchTerm + "%",
        "%" + searchTerm + "%",
      ],
      (err, rows) => {
        connection.release();
        if (!err) {
          res.render("home", { rows });
        } else {
          console.log(err);
        }
        console.log("The data from user table: \n", rows);
      }
    );
  });
};
