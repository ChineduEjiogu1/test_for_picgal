var express = require('express');
var cookieParser = require('cookie-parser'); // in order to read cookie sent from client
var signature = require("cookie-signature");
var router = express.Router();
var sqlite3 = require('sqlite3');
var protect = require('./protect');


function nocache(req, res, next) {
     res.header('Cache-Control', 'private, no-cache, no-store, must-revalidate');
     res.header('Expires', '-1');
     res.header('Pragma', 'no-cache');
     next();
   }
   
   function public_page(req,res,next){
      res.send("Public Page");
   }
   
   function private_page(req, res, next){
     
    let cookie = req.signedCookies;
   
     let sql = ' select users_info.uID as uid, USERS as users, FULL_NAME as full_name from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = (?)';
     let sql3 = 'select pics.USERS as user, IS_PUBLIC as public_pic, FILE_PATH as file_path from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.USERS = (?)';
     
     let db = new sqlite3.Database('test.db', (err) => {
       if (err) {
         console.error(err.message);
       }
       console.log('Connected to test db.');
     });
    
     console.log("cookie has the following: ", cookie.cookieID);
     db.all(sql, [cookie.cookieID], (err, result) => {
       if (err) {
         throw err;
       }
       
     console.log("friends: ",JSON.stringify(result));
     console.log("After db query");
     
     
     db.all(sql3, [cookie.cookieName], (err, result3) => {
       if (err) {
         throw err;
       }
     
     console.log('id is:', cookie.cookieID)
     console.log("pics: ", JSON.stringify(result3));
     res.render('main', { title: 'Express',  fr: result , pics: result3});
     

     });
   });
     db.close();
     
    
  }
  
  router.get('/', function(req, res, next) {
    protect.check(req,res,private_page,public_page);
});

module.exports = router;