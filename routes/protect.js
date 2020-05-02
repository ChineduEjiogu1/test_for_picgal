exports.check = function (req, res, private_page, public_page) {
    console.log("cookie", req.signedCookies);
    if(req.signedCookies && req.signedCookies.cookieID !== undefined && req.signedCookies.cookieName !== undefined)
    {
         console.log("cookie", req.signedCookies);
         private_page(req,res);
    }
    else
    {
        console.log("public page");
        public_page(req,res);
    }
 };


 exports.check2 = function (req, res, private_page) {
    console.log("cookie", req.signedCookies);
    if(req.signedCookies && req.signedCookies.cookieID !== undefined && req.signedCookies.cookieName !== undefined)
    {
         console.log("cookie", req.signedCookies);
         private_page();
    }
    else
    {
        console.log("public page");
        res.send('You have to be authenticated');
    }
 };