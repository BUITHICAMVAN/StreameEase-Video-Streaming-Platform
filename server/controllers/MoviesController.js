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
      if (!err) {
        let removedMovies = req.query.removed;
        res.render("home", { rows, removedMovies });
      }
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

exports.signupRender = (req, res) => {
  res.render("sign-up");
};

exports.signup = (req, res) => {
  const { Email, Username, Password } = req.body;
  let searchTerm = req.body.search;

  // User the connection
  pool.getConnection((err, connection) => {
    connection.query(
      "INSERT INTO Users SET Email=?, Username=?, Password=?",
      [Email, Username, Password],
      (err, rows) => {
        if (!err) {
          res.render("sign-up", { alert: "Sign up successfully." });
        } else {
          console.log(err);
          res.render("sign-up", { alert: "Sign up failed" });
        }
        console.log("The data from user table: \n", rows);
      }
    );
  });
};

exports.signinRender = (req, res) => {
  res.render("sign-in");
};

exports.signin = (req, res) => {
  const { Email, Password } = req.body;

  pool.getConnection((err, connection) => {
    connection.query(
      "SELECT * FROM users WHERE Email = ? AND Password = ?",
      [Email, Password],
      (err, rows) => {
        connection.release();
        if (!err) {
          if(rows.length > 0) {
            console.log('successful');
            loggedIn = true;
            this.view(req, res);
          } else {
            res.render("sign-in", { alert: "Sign in failed" });
          }
        } else {
          res.render("sign-in", { alert: "Sign in failed" });
          console.log(err);
        }
        console.log("The data from user table: \n", rows);
      }
    );
  });
};

exports.userRender = (req, res) => {
  res.render("user");
};

exports.user = (req, res) => {

};

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

  // Delete a record

  // User the connection
  pool.getConnection((err, connection) => {
  connection.query('DELETE FROM Movies WHERE idMovie = ?', [req.params.idMovie], (err, rows) => {

    if(!err) {
      res.redirect('/');
    } else {
      console.log(err);
    }
    console.log('The data from user table: \n', rows);

  });
  });}

  // Hide a record

  // connection.query('UPDATE user SET status = ? WHERE id = ?', ['removed', req.params.idMovie], (err, rows) => {
  //   if (!err) {
  //     let removedMovies = encodeURIComponent('User successeflly removed.');
  //     res.redirect('/?removed=' + removedMovies);
  //   } else {
  //     console.log(err);
  //   }
  //   console.log('The data from beer table are: \n', rows);
  // });

  //Series


  exports.viewSeries = (req, res) => {
    pool.getConnection((err, connection) => {
      if (err) throw err;
      console.log("Connected as ID " + connection.threadId);
      connection.query("SELECT * FROM Series ", (err, rows) => {
        //when done with connection
        connection.release();
  
        // if there is no err, render page home
        if (!err) {
          let removedMovies = req.query.removed;
          res.render("series", { rows, removedMovies });
        }
        else {
          console.log(err);
        }
  
        console.log(rows);
      });
    });
  };


  //Find user by search
exports.findSeries = (req, res) => {
  let searchTerm = req.body.search;
  // User the connection
  pool.getConnection((err, connection) => {
    connection.query(
      "SELECT * FROM Series WHERE Title LIKE ? OR Year LIKE ?",
      ["%" + searchTerm + "%", "%" + searchTerm + "%"],
      (err, rows) => {
        connection.release();
        if (!err) {
          res.render("series", { rows });
        } else {
          console.log(err);
        }
        console.log("The data from user table: \n", rows);
      }
    );
  });
};


exports.createSeries = (req, res) => {
  const { idMovie, Title, Year, Genre, Director, Play, No_Seasons } = req.body;
  let searchTerm = req.body.search;

  // User the connection
  pool.getConnection((err, connection) => {
    connection.query(
      "INSERT INTO Movies SET idMovie = ?,Title =  ?,Year = ?, Genre = ?, Director = ?, Play = ?, No_Seasons = ?",
      [idMovie, Title, Year, Genre, Director, Play, No_Seasons],
      (err, rows) => {
        if (!err) {
          res.render("add-series", { alert: "Added successfully." });
        } else {
          console.log(err);
        }
        console.log("The data from user table: \n", rows);
      }
    );
  });
};

exports.formSeries = (req, res) => {
  res.render("add-series");
};

//edit movies
// Edit user
exports.editSeries = (req, res) => {
  // User the connection
  pool.getConnection((err, connection) => {
    connection.query(
      "SELECT * FROM Series WHERE idSeries = ?",
      [req.params.idSeries],
      (err, rows) => {
        if (!err) {
          res.render("edit-series", { rows });
        } else {
          console.log(err);
        }
        console.log("The data from user table: \n", rows);
      }
    );
  });
};

//update movies
exports.updateSeries = (req, res) => {
  const { idMovie, Title, Year, Genre, Director, Description, Play, No_Seasons } = req.body;
  // User the
  pool.getConnection((err, connection) => {
    connection.query(
      "UPDATE Series SET Title = ?, Year = ?, Genre = ?, Director = ?,Description = ?, No_Seasons = ?  , Play = ? WHERE idMovie = ?",
      [Title, Year, Genre, Director, Description, Play,  No_Seasons, req.params.idSeries,],
      (err, rows) => {
        if (!err) {
          // User the connection
          connection.query(
            "SELECT * FROM Series WHERE idSeries = ?",
            [req.params.idSeries],
            (err, rows) => {
              // When done with the connection, release it

              if (!err) {
                res.render("edit-series", {
                  rows,
                  alert: `${idSeries} has been updated.`,
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


exports.deleteSeries = (req, res) => {

  // Delete a record

  // User the connection
  pool.getConnection((err, connection) => {
  connection.query('DELETE FROM Series WHERE idSeries = ?', [req.params.idSeries], (err, rows) => {

    if(!err) {
      res.redirect('/series');
    } else {
      console.log(err);
    }
    console.log('The data from user table: \n', rows);

  });
  });}