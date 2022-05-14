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
    connection.query(
      "SELECT * FROM Movies WHERE Title LIKE ? OR Year LIKE ?",
      ["%" + searchTerm + "%", "%" + searchTerm + "%"],
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

exports.form = (req, res) => {
  res.render("add-movies");
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
  const { idMovie, Title, Year, Genre, Director, Play } = req.body;
  let searchTerm = req.body.search;

  // User the connection
  pool.getConnection((err, connection) => {
    connection.query(
      "INSERT INTO Movies SET idMovie = ?,Title =  ?,Year = ?, Genre = ?, Director = ?, Play = ?",
      [idMovie, Title, Year, Genre, Director, Play],
      (err, rows) => {
        if (!err) {
          res.render("add-movies", { alert: "Added successfully." });
        } else {
          console.log(err);
        }
        console.log("The data from user table: \n", rows);
      }
    );
  });
};

//edit movies
// Edit user
exports.edit = (req, res) => {
  // User the connection
  pool.getConnection((err, connection) => {
    connection.query(
      "SELECT * FROM Movies WHERE idMovie = ?",
      [req.params.idMovie],
      (err, rows) => {
        if (!err) {
          res.render("edit-movies", { rows });
        } else {
          console.log(err);
        }
        console.log("The data from user table: \n", rows);
      }
    );
  });
};

//update movies
exports.update = (req, res) => {
  const { idMovie, Title, Year, Genre, Director, Description, Play } = req.body;
  // User the
  pool.getConnection((err, connection) => {
    connection.query(
      "UPDATE Movies SET Title = ?, Year = ?, Genre = ?, Director = ?,Description = ?  , Play = ? WHERE idMovie = ?",
      [Title, Year, Genre, Director, Description, Play, req.params.idMovie],
      (err, rows) => {
        if (!err) {
          // User the connection
          connection.query(
            "SELECT * FROM Movies WHERE idMovie = ?",
            [req.params.idMovie],
            (err, rows) => {
              // When done with the connection, release it

              if (!err) {
                res.render("edit-movies", {
                  rows,
                  alert: `${idMovie} has been updated.`,
                });
              } else {
                console.log(err);
              }
              console.log("The data from user table: \n", rows);
            }
          );
        } else {
          console.log(err);
        }
        console.log("The data from user table: \n", rows);
      }
    );
  });
};

// exports.delete = (req, res) => {
//   pool.getConnection((err, connection) => {
//     // Movies the connection
//     if (err) throw err;
//     console.log("Connected as ID " + connection.threadId);
//     connection.query("DELETE FROM Movies WHERE idMovie = ?;",[req.params.idMovie],(err, rows) => {
//         //when done with connection
//         connection.release();
//         // if there is no err, render page home
//         if (!err) {
//           res.redirect("/");
//         } else {
//           console.log(err);
//         }
//         console.log(rows);
//       }
//     );
//   });
// };

exports.delete = (req, res) => {
  console.log("yes");
  // User the connection
  // pool.getConnection((err, connection) => {
  //   connection.query(
  //     "DELETE * FROM Movies WHERE idMovie = ?",
  //     [req.params.idMovie],
  //     (err, rows) => {
  //       if (!err) {
  //         res.redirect("/");
  //         res.render('home')
  //       } else {
  //         console.log(err);
  //       }
  //       console.log("The data from user table: \n", rows);
  //     }
  //   );
  // });
};
