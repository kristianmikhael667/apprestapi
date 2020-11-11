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

//menampilkan semua data mahasiswa berdasarkan id
exports.tampilberdasarkanid = function(req, res) {
    let id = req.params.id;
    connection.query('SELECT * FROM mahasiswa WHERE id_mahasiswa = ?', [id],
        function(err, rows, fields) {
            if (err) {
                console.log(err);
            } else {
                response.ok(rows, res)
            }
        });
}