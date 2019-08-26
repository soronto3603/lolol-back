const express = require('express');
const mysql = require('../provider/mysql');
const router = express.Router();

router.get('/', function(req, res, next) {
  mysql.query('SELECT * FROM lolol_posts', function (error, results, fields) {
    if (error) throw error;
    res.send(results);
  });
});

router.post('/insert', function(req, res, next) {
  const {location, name, shortExpression, keywords, note, author_id} = req.body;

  mysql.query(`INSERT INTO lolol_posts(location, name, short_expression, keywords, note, author_id)
   VALUES(POINT(${location.lat},${location.lng}), "${name}", "${shortExpression}", "${keywords}", "${note}", ${author_id})`, (error, results, fields) => {
     if (error) throw error;
     res.send("succes");
     return;
   });
   return;
});
module.exports = router;
