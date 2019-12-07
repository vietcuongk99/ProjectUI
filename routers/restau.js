var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	var id=req.query.id;
	var que = conn.query("select * from restaurants ;",  function(err, result) {
        if (err) throw err;
        else {
         
			if (req.session.user) {res.render('restau', {session: req.session.user,restau:result});}
			else
			res.render('restau',{restau:result});
			}
      });
	
	 
});

module.exports = router;
