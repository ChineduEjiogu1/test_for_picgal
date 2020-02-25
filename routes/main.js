var express = require('express');
var cookieParser = require('cookie-parser'); // in order to read cookie sent from client
var signature = require("cookie-signature");
var router = express.Router();
var bcrypt = require('bcrypt');
var sqlite3 = require('sqlite3');

router.get('/', function(req, res) {
    res.send('respond with a resource');
});

  
router.post('/', function(req, res) {
   
});

module.exports = router;