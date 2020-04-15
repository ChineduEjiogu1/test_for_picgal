var express = require('express');
var router = express.Router();
var sqlite3 = require('sqlite3')


router.get('/', function(req, res) {
  
  id = req.query.id;
  //let id2 = req.query.id;
  
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
  // db.all(sql3, [id2], (err, result3) => {
  //   if (err) {
  //     throw err;
  //   }
  
  // console.log('id is:', id2)
  // console.log("pics: ", JSON.stringify(result3));
  // res.render('profile', { title: 'Express',  pics: result3});
  // //console.log('pics', result3[0])


  // });

  db.all(sql, [id], (err, result) => {
    if (err) {
      throw err;
    }
    console.log("users: ", JSON.stringify(result));
  db.all(sql3, [id2], (err, result3) => {
    if (err) {
      throw err;
    }
    let id = result[0].uid;
    db.all(sql2, [id], (err, result2) => {
      if (err) {
        throw err;
      }
    console.log("friends: ", JSON.stringify(result2));
    res.render('profile', { title: 'Express', pro: result[0], fri: result2, pics: result3});
    console.log('pro', result[0]);
  });


  });
});
   
  db.close();


});



module.exports = router;