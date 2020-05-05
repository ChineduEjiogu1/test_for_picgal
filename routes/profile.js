var express = require('express');
var router = express.Router();
var sqlite3 = require('sqlite3')
var protect = require('./protect');


function public_page(req,res,next) {

  let id2 = req.query.id; // trying to request profile of this user

  let db = new sqlite3.Database('test.db', (err) => {
      if (err) {
          console.error(err.message);
      }
      console.log('Connected to test db.');
  });
  
  let sql_public = 'select pics.USERS as user, IS_PUBLIC as public_pic, FILE_PATH as file_path from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.USERS = (?) AND IS_PUBLIC = true';

  db.all(sql_public, [id2], (err, public_res) => {
      if (err) {
          throw err;
      }
      res.render('profile', { title: 'Public Profile', pics: public_res});
  });
} // end of public page


function private_page(req, res, next){

  let user_name = req.query.id; // this is user 
  
  let user_info = 'select USERS as user, uID as uid from users_info where USERS = (?)';
  let friends_list = 'select users_info.uID as uid, USERS as users, FULL_NAME as full_name from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = (?)';
  let pics_all  = 'select pics.USERS as user, IS_PUBLIC as public_pic, FILE_PATH as file_path from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.USERS = (?)';
  let pics_public = 'select pics.USERS as user, IS_PUBLIC as public_pic, FILE_PATH as file_path from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.USERS = (?) AND IS_PUBLIC = true';

  // connect to db
  let db = new sqlite3.Database('test.db', (err) => {
    if (err) {
      console.error(err.message);
    }
    console.log('Connected to test db.');
  });
  
    // execute sql numerical user_id from user_name
  db.all(user_info, [user_name], (err, result) => {
    if (err) {
      throw err;
    }

    console.log("users: ", JSON.stringify(result));
    let user_id = result[0].uid; // numerical user_id

    db.all(friends_list, [user_id], (err, result2) => {
      if (err) {
        throw err;
      }
    
      // loop through result2 which contains our friends 
      let found = false;
      
      if(user_name === req.signedCookies.cookieName)
      {
        found = true;
      }
      else if(result2 !== undefined)
      {
        for(let i = 0; i < result2.length; i++) {
            console.log(' results', result2[i].users);
            console.log(' user_name', user_name);
            console.log(' user_id', user_id);
            if(result2[i].users === req.signedCookies.cookieName){
                found = true;
                break;
            }
        }
      }

      console.log("whats in signed cookie.ID", req.signedCookies.cookieName);
      console.log("whats in user_name", user_name);
      console.log('the value of found is', found)

      if(!found){

        // only get public pics
        db.all(pics_public, [user_name], (err, result3) => {
          if (err) {
            throw err;
          }
          res.render('profile', { title: 'Express', pro: result[0], fri: result2, pics: result3});
        });

      }else{
        // otherwise we need all pics
        db.all(pics_all, [user_name], (err, result3) => {
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