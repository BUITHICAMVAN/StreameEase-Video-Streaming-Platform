const res = require('express/lib/response');
const mysql = require('mysql')

const pool = mysql.createPool({
    connectionLimit : 100, //important
    host     : 'localhost',
    database : 'Video_Streaming',
    user     : 'root',
    password : 'Bestteemo',
  });
// Views Movie
  exports.view = (req, res) =>
{
    pool.getConnection((err, connection) => {
        if(err) throw err;
        console.log('Connected as ID ' + connection.threadId);
        connection.query('select * from Movies', (err, rows) =>{
            connection.release();
            if(!err)
            res.render('home', {rows});
            else{
                console.log(err)
            }
    
            console.log(rows);
        })
    })
}
 


