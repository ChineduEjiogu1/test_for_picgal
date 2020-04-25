var express = require('express');
var router = express.Router();
var sqlite3 = require('sqlite3')
var protect = require('./protect');


function public_page(req,res,next) {

  let id2 = req.query.id;

  let db = new sqlite3.Database('test.db', (err) => {
      if (err) {
          console.error(err.message);
      }
      console.log('Connected to test db.');
  });
  
  let sql_public = 'select pics.USERS as user, FILE_PATH as file_path from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.USERS = (?) AND IS_PUBLIC = true';

  db.all(sql_public, [id2], (err, public_res) => {
      if (err) {
          throw err;
      }
      res.render('profile', { title: 'Express', pics: public_res});
  });
}


function private_page(req, res, next){

  id = req.query.id;
  
  let sql = 'select USERS as user, uID as uid from users_info where USERS = (?)';
  let sql2 = 'select users_info.uID as uid, USERS as users, FULL_NAME as full_name from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = (?)';
  let sql3 = 'select pics.USERS as user, FILE_PATH as file_path from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.USERS = (?)';
  
  let db = new sqlite3.Database('test.db', (err) => {
    if (err) {
      console.error(err.message);
    }
    console.log('Connected to test db.');
  });
  
  
  let id2 = req.query.id;
  

  db.all(sql, [id], (err, result) => {
    if (err) {
      throw err;
    }

    console.log("users: ", JSON.stringify(result));
    let id = result[0].uid;

    db.all(sql2, [id], (err, result2) => {
      if (err) {
        throw err;
      }
    
      // loop through struct of friends
      let found = false;
      for(let i = 0; i < result2.length; i++) {
        console.log('results', result2[i].users);
        console.log('user id2', id2);
        console.log('user ID', id);
        if(result2[i].users === req.signedCookies.cookieName){
          found = true;
          break;
        }
      }
      console.log('the value of found is', found)
      if(!found){
        let sql_public = 'select pics.USERS as user, FILE_PATH as file_path from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.USERS = (?) AND IS_PUBLIC = true';
        // only get public pics
        db.all(sql_public, [id2], (err, result3) => {
          if (err) {
            throw err;
          }

          res.render('profile', { title: 'Express', pro: result[0], fri: result2, pics: result3});
        });

      }else{
        // otherwise we need all pics
        db.all(sql3, [id2], (err, result3) => {
          if (err) {
            throw err;
          }
          console.log("friends: ", JSON.stringify(result2));
          res.render('profile', { title: 'Express', pro: result[0], fri: result2, pics: result3});
          console.log('pro', result[0]);
        });
      }
    });
  });     
  db.close();
}

router.get('/', function(req, res, next) {
  protect.check(req,res,private_page,public_page);
});

module.exports = router;