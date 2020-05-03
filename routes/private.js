//https://stackoverflow.com/questions/5823722/how-to-serve-an-image-using-nodejs
// This code comes from a user from StackOverFlow

var express = require('express');
var router = express.Router();
var protect = require('./protect');
var path = require('path');
var fs = require('fs');

var dir = path.join(__dirname, '../private');
// console.log("dir of images is: ", dir);

var mime = {
    html: 'text/html',
    txt: 'text/plain',
    css: 'text/css',
    gif: 'image/gif',
    jpg: 'image/jpeg',
    png: 'image/png',
    svg: 'image/svg+xml',
    js: 'application/javascript'
};

function getImage(req,res,next)
{
    console.log("getImage starts");
    var file = path.join(dir, req.path.replace(/\/$/, '/index.html'));
    if (file.indexOf(dir + path.sep) !== 0) {
        return res.status(403).end('Sorry Forbidden');
    }
    var type = mime[path.extname(file).slice(1)] || 'text/plain';
    var s = fs.createReadStream(file);
    s.on('open', function () {
        res.set('Content-Type', type);
        s.pipe(res);
    });
    s.on('error', function () {
        res.set('Content-Type', 'text/plain');
        res.status(404).end('Not found :-( ');
    });
    console.log("getImage ends");

}

function getImagePath(req,res,next)
{
    let owner = path.parse(path.parse(req.url).dir).name;

    
    //path1 = path.parse(req.url); 
    console.log("Owner: ", owner); 
    
    console.log("res.url", req.url);
    let user =  req.signedCookies.cookieName;
    
    console.log("User",  user);
    getImage(req,res); // owner and user are friends
    // if else statment if owner and person are friends execute getImage other wise not a friend dq query to see if their are friends
}

/* GET users listing. */
router.get('*', function(req, res, next) {
        console.log('Req to /images route handler')
	protect.check(req,res,getImagePath);
});

module.exports = router;

