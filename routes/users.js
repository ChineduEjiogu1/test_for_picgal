var express = require('express');
var router = express.Router();
var sqlite3 = require('sqlite3');
var bcrypt = require('bcrypt');


/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.post('/', function(req, res) {

  

  let db = new sqlite3.Database('test.db', (err) => {
    if (err) {
      return console.error(err.message);
    }
    console.log('Connected to the test database.');
  });


  const plainTextPassword1 = req.body.pass;
  const username = req.body.user;
  const saltRounds = 10;

  bcrypt
  .genSalt(saltRounds)
  .then(salt => {
    console.log(`Salt: ${salt}`);

    return bcrypt.hash(plainTextPassword1, salt);
  })
  .then(hash => {
    console.log(`Hash: ${hash}`);

    // Store hash in your password DB.


    db.run(`INSERT INTO credentials (USER_NAME, SALT_and_HASH_PASSWORD) VALUES (?, ?)`,[`${username}`,`${hash}`],function(err){
        if(err){
          return console.log(err.message);
        }
          console.log(`Rows inserted ${this.changes}`);
        });
    
    db.close();
    res.send("done!");

  })
  .catch(err => console.error(err.message));

});
  
module.exports = router;





