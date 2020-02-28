var express = require('express');
var cookieParser = require('cookie-parser'); // in order to read cookie sent from client
var signature = require("cookie-signature");
var router = express.Router();
// var bcrypt = require('bcrypt');
// var sqlite3 = require('sqlite3');

router.get('/', function(req, res) {
     res.render('main.jade');
    
});


function nocache(req, res, next) {
     res.header('Cache-Control', 'private, no-cache, no-store, must-revalidate');
     res.header('Expires', '-1');
     res.header('Pragma', 'no-cache');
     next();
   }
   router.get('/', nocache, sendContent);
   //  router.get('/', function(req, res) {
   
   function sendContent(req, res) {
    
     var cookie = req.signedCookies;
     // var cookie = req.cookies;
     console.log("in main.js cookie is:",cookie);
     if (typeof cookie.cookieName === 'undefined')
     {
      
       res.send('YOU NEED TO BE AUTHENTICATED'); 
       res.redirect('/');
   
     } 

}
// router.post('/', function(req, res) {


// });

module.exports = router;