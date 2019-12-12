var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	var id=req.query.id;
	var que = conn.query("select * from post ;",  function(err, result) {
        if (err) throw err;
        else {
         
			if (req.session.user) {res.render('post', {session: req.session.user,post:result});}
			else
			res.render('post',{post:result});
			}
      });
	
	 
});

module.exports = router;
