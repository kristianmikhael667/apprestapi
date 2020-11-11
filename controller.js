'use strict';

var response = require('./rest');
var connection = require('./koneksi');

exports.index = function(req, res) {
    response.ok("Aplikasi Rest API berjalan", res)
};

//menampilkan semua data mahasiswa
exports.tampilsemuamahasiswa = function(req, res) {
    connection.query('SELECT * FROM mahasiswa', function(err, rows, fileds) {
        if (err) {
            console.log(err);
        } else {
            response.ok(rows, res)
        }
    });
};