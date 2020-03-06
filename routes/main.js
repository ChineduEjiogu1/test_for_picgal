var express = require('express');
var cookieParser = require('cookie-parser'); // in order to read cookie sent from client
var signature = require("cookie-signature");
var router = express.Router();
var bcrypt = require('bcrypt');
var sqlite3 = require('sqlite3');
//let result1;


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
     console.log("in main.js cookie is:", cookie);
     if (typeof cookie.cookieName === 'undefined')
     {
      
       res.send('YOU NEED TO BE AUTHENTICATED'); 
       res.redirect('/');
   
     }else{
     
       console.log('cookie exists', cookie);
        let sql = ' select users_info.uID as uid, USERS as users, FULL_NAME as full_name from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = (?)';

        let db = new sqlite3.Database('test.db', (err) => {
          if (err) {
            console.error(err.message);
          }
          console.log('Connected to test db.');
        });
        console.log("cookie has the following: ",cookie.cookieName);
        db.all(sql, [cookie.cookieName], (err, result) => {
          if (err) {
            throw err;
          }
          
          console.log("friends: ",JSON.stringify(result));
        //  result1=result;
        console.log("After db query");
       // console.log("result1 before render :",JSON.stringify(result1));
       // res.render('main', { fr: JSON.stringify(result) });
        res.render('main', { title: 'Express', fr: result });
      
        });
        // db.all(sql2, [cookie.cookieName], (err, result) => {
        //   if (err) {
        //     throw err;
        //   }
        //   //result2=result;
        // });

        db.close();
        
       //});
     }
     
}




// router.post('/', function(req, res) {


// });

module.exports = router;