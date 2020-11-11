var mysql = require('mysql');

//membuat koneksi database
const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'dbrestapi'
});

conn.connect((err) => {
    if (err) throw err;
    console.log("Behasil");
});

module.exports = conn;