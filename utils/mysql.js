var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '2262552a',
  database : 'lolol'
});

module.exports = connection;