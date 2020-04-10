var express = require('express');
var cookieParser = require('cookie-parser'); // in order to read cookie sent from client
var signature = require("cookie-signature");
var router = express.Router();
var sqlite3 = require('sqlite3');


function nocache(req, res, next) {
     res.header('Cache-Control', 'private, no-cache, no-store, must-revalidate');
     res.header('Expires', '-1');
     res.header('Pragma', 'no-cache');
     next();
   }
   
   
   router.get('/', nocache, sendContent);
   
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
        //id = req.query.id;
        
        let sql = ' select users_info.uID as uid, USERS as users, FULL_NAME as full_name from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = (?)';
        let sql3 = 'select pics.USERS as user, FILE_PATH as file_path from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.USERS = (?)';
        
        let db = new sqlite3.Database('test.db', (err) => {
          if (err) {
            console.error(err.message);
          }
          console.log('Connected to test db.');
        });
        //let id = result[0].users; 
        console.log("cookie has the following: ", cookie.cookieName);
        db.all(sql, [cookie.cookieName], (err, result) => {
          if (err) {
            throw err;
          }
          
        console.log("friends: ",JSON.stringify(result));
        console.log("After db query");
       // console.log("result1 before render :",JSON.stringify(result1));
       // res.render('main', { fr: JSON.stringify(result) });
        res.render('main', { title: 'Express', fr: result });
      
        });
        
        db.all(sql3, [], (err, result3) => {
          if (err) {
            throw err;
          }
        
        console.log('id is:', cookie.cookieName)
        console.log("pics: ", JSON.stringify(result3));
        res.render('profile', { title: 'Express',  pics_u: result3});
        console.log('pics_u', result3[0])

        });

        db.close();
        
       
     }
     
}


module.exports = router;