var cookieParser = require('cookie-parser');

var createError = require('http-errors');
var express = require('express');
var path = require('path');
//var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var logger = require('morgan');


var routes = require('./routes/index');
//var usersRouter = require('./routes/users');
var users = require('./routes/users');
var auth = require('./routes/auth');
var main = require('./routes/main');
var profile = require('./routes/profile');
var logout = require('./routes/logout');


var app = express();
app.use(cookieParser("demo site"));

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', routes);
app.use('/auth', auth);
app.use('/users', users);
app.use('/main', main);
app.use('/profile', profile);
app.use('/logout', logout);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

// app.get('/', function(req, res, next){
//   res.render('main.jade');
// });

// app.use(function(req, res, next) {
//   if (req.session.user == null){
// // if user is not logged-in redirect back to login page //
//       res.redirect('/');
//   }   else{
//       next();
//   }
// });

// app.post('/auth',  bcrypt.compare('auth',{
//   successRedirect: '/main',
//   failureRedirect: '/',
// }));  

// app.get('/main', function(request,reponse){
//   res.render('main.jade');
// });

module.exports = app;
