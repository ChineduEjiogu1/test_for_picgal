var express = require('express');
var router = express.Router();
var sqlite3 = require('sqlite3')
var protect = require('./protect');


function public_page(req,res,next) {

  let id = req.query.id; // trying to request profile of this user

  let db = new sqlite3.Database('test.db', (err) => {
      if (err) {
          console.error(err.message);
      }
      console.log('Connected to test db.');
  });
  
  let public_pics = 'select pics.USERS as user, IS_PUBLIC as public_pic, FILE_PATH as file_path, FULL_NAME as full_name from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.uID = (?) AND IS_PUBLIC = true';
  //let friends_list = 'select users_info.uID as uid, USERS as users, FULL_NAME as full_name from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = (?)';
  let friends_list = 'select users_info.uID as uid, USERS as users, FULL_NAME as full_name from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = (?)';
  db.all(public_pics, [id], (err, public_res) => {
      if (err) {
          throw err;
      }
      db.all(friends_list, [id], (err, friends_list) => {
        if (err) {
            throw err;
        }
        console.log('public friends list', friends_list);
        console.log('public_res', public_res)
        res.render('profile', { title: public_res[0].full_name, fri : friends_list, pics: public_res, displayLogout: false});

    });
      
  });

  
} // end of public page


function private_page(req, res, next){
  
  let friends_list = 'select users_info.uID as uid, USERS as users, FULL_NAME as full_name from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = (?)';
  let pics_all  = 'select pics.USERS as user, IS_PUBLIC as public_pic, FILE_PATH as file_path, FULL_NAME as full_name from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.uID = (?)';
  let pics_public = 'select pics.USERS as user, IS_PUBLIC as public_pic, FILE_PATH as file_path, FULL_NAME as full_name from pics INNER JOIN users_info on users_info.USERS = pics.USERS where users_info.uID = (?) AND IS_PUBLIC = true';

  // connect to db
  let db = new sqlite3.Database('test.db', (err) => {
    if (err) {
      console.error(err.message);
    }
    console.log('Connected to test db.');
  });
  
   
    let user_id = req.query.id;

    db.all(friends_list, [user_id], (err, result2) => {
      if (err) {
        throw err;
      }
    
      // loop through result2 which contains our friends 
      let found = false;
      
      if(user_id === req.signedCookies.cookieID)
      {
        found = true;
      }
      else if(result2 !== undefined)
      {
        for(let i = 0; i < result2.length; i++) {
            console.log(' results', result2[i].users);
            console.log(' user_name', user_id);
            console.log(' user_id', user_id);
            if(result2[i].users === req.signedCookies.cookieName){
                found = true;
                break;
            }
        }
      }

      console.log("whats in signed cookie.ID", req.signedCookies.cookieName);
      console.log("whats in user_name", user_id);
      console.log('the value of found is', found)

      if(!found){

        // only get public pics
        // db.all(pics_public, [user_id], (err, result3) => {
        //   if (err) {
        //     throw err;
        //   }
        //   res.render('profile', { title: result3[0].full_name,  fri: result2, pics: result3, displayLogout: true});
        // });
        public_page(req,res);

      }else{
        // otherwise we need all pics
        db.all(pics_all, [user_id], (err, result3) => {
          if (err) {
            throw err;
          }
          console.log("friends: ", JSON.stringify(result2));
          console.log("pics: ", JSON.stringify(result3));
          res.render('profile', { title: result3[0].full_name, fri: result2, pics: result3, displayLogout: true});
          //console.log('pro', result[0]);
        });
      }
    });
    
  db.close();
}

router.get('/', function(req, res, next) {
  protect.check(req,res,private_page,public_page);
});

module.exports = router;