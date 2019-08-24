var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
// define the about route
router.get('/about', function(req, res) {
  res.send('About birds');
});
module.exports = router;
