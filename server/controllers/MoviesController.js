const res = require("express/lib/response");
const mysql = require("mysql");

const pool = mysql.createPool({
  connectionLimit: 100, //important
  host: "localhost",
  database: "Video_Streaming",
  user: "root",
  password: "Bestteemo",
});

// Views Movie
exports.view = (req, res) => {
  pool.getConnection((err, connection) => {
    if (err) throw err;
    console.log("Connected as ID " + connection.threadId);
    connection.query("SELECT * FROM Movies ", (err, rows) => {
      //when done with connection
      connection.release();

      // if there is no err, render page home
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
    connection.query('SELECT * FROM Movies WHERE Title LIKE ? OR Year LIKE ?', ['%' + searchTerm + '%', '%' + searchTerm + '%'], (err, rows) => {
    connection.release();
    if (!err) {
      res.render('home', { rows });
    } else {
      console.log(err);
    }
    console.log('The data from user table: \n', rows);
  });}
  )};

  exports.form = (req, res) => {
    res.render('add-movies');
  };

  // exports.create = (req, res) => {
  //   const {idMovie,Title,Year,Genre,Director,Play} = req.body;
  //   // User the connection
  //   pool.getConnection((err, connection) => {
  //     connection.query('insert into Movies set idMovie = ?,Title =  ?,Year = ?, Genre = ?, Director = ?, Play = ?', [idMovie,Title,Year,Genre,Director,Play], (err, rows) => {
  //     connection.release();
  //     if (!err) {
  //       res.render('add-movies', { alert: 'User added successfully.' });
  //     } else {
  //       console.log(err);
  //     }
  //     console.log('successfully inserted');
  //   });})
  // };  

  exports.create = (req, res) => {
    const {idMovie,Title,Year,Genre,Director,Play} = req.body;
    let searchTerm = req.body.search;
  
    // User the connection
        pool.getConnection((err, connection) => {
    connection.query('insert into Movies set idMovie = ?,Title =  ?,Year = ?, Genre = ?, Director = ?, Play = ?', [idMovie,Title,Year,Genre,Director,Play], (err, rows) => {
      if (!err) {
        res.render('add-movies', { alert: 'Added successfully.' });
      } else {
        console.log(err);
      }
      console.log('The data from user table: \n', rows);
    });})
}
  