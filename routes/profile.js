var express = require('express');
var cookieParser = require('cookie-parser');
var signature = require('cookie-signature');
var router = express.Router();
var bcrypt = require('bcrypt');
var sqlite3 = require('sqlite3')


router.get('/', function(req, res) {
  //res.send('respond with a resource');
  //res.send(req.query.id);
  
  id = req.query.id;

  
  let sql = 'select USERS as user, uID as uid from users_info where USERS = (?)';
  let sql2 = 'select users_info.uID as uid, USERS as users, FULL_NAME as full_name from users_info INNER JOIN friends on friends.friendID = users_info.uID where friends.uID = (?)';
  
  
 //sql = sql + sql2;


  //const person = people.profiles.find(p => p.id === req.query.id);
  
  let db = new sqlite3.Database('test.db', (err) => {
    if (err) {
      console.error(err.message);
    }
    console.log('Connected to test db.');
  });
  

  db.all(sql, [id], (err, result) => {
    if (err) {
      throw err;
    }
    console.log("The sql is: ", sql);
    //console.log("ID is: ", id )
    console.log("users: ", JSON.stringify(result));
    let id = result[0].uid;
    db.all(sql2, [id], (err, result2) => {
      if (err) {
        throw err;
      }
    console.log("friends: ", JSON.stringify(result2));
    res.render('profile', { title: 'Express', pro: result[0], fri: result2});
    //res.render('main', { title: 'Express', fr: result });
  });
});

   
  db.close();


});



module.exports = router;