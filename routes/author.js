const express = require('express');
const mysql = require('../utils/mysql');
const md5 = require('md5');
const router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.send("invalid access.");
});
router.get('/create', function(req, res, next) {
  const name = req.query.name;
  const hashcode = md5(name);
  const location = "NULL";

  mysql.query(`INSERT INTO lolol_author(name, hashcode) VALUES("${name}", "${hashcode}")`, (error, results, fields) => {
     if (error) throw error;
     res.send("success");
     return;
   });
  
  return;
});

router.get('/who', function(req, res, next) {
  const hash = req.query.id;
  mysql.query(`SELECT no,name,location FROM lolol_author WHERE hashcode = "${hash}"`, (error, results, fields) => {
    if (error) throw error;
    res.send(results[0]);
    return;
  });
  return;
});
module.exports = router;
