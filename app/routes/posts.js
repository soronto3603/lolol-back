const express = require('express');
const mysql = require('../provider/mysql');
const router = express.Router();

router.get('/', function(req, res, next) {
  mysql.query('select * from lolol_posts left join lolol_author on lolol_posts.author_id = lolol_author.no', function (error, results, fields) {
    if (error) throw error;
    res.send(results);
  });
});

router.post('/insert', function(req, res, next) {
  if (!req.body) {
    return;
  }
  const {location, name, shortExpression, keywords, note, author_id} = JSON.parse(req.body);
  
  mysql.query(`INSERT INTO lolol_posts(location, name, short_expression, keywords, note, author_id)
   VALUES(POINT(${location.lat},${location.lng}), "${name}", "${encodeURI(shortExpression)}", "${keywords}", "${note}", ${author_id})`, (error, results, fields) => {
     if (error) throw error;
     res.send(`{"code":"success"}`);
     return;
   });
   return;
});
module.exports = router;
