var express = require('express');
var router = express.Router();



router.get('/', function(req, res){
  res.clearCookie('cookieName');
  res.clearCookie('cookieID');
  res.send('<html><head><meta http-equiv="refresh" content="2; url=http://localhost:3000/" /></head> <body> <h1> BYE!! </h1></body></html>');
  
});


module.exports = router;