var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	if(req.session.user){
		var id=req.query.id;
		var tid=req.query.tid;
		var que = conn.query("delete from food where id= ?;", [id], function(err, result) {
			if (err) throw err;
			else {
				if(tid){
				res.redirect('/foodtype?id='+tid);}
				else{
					res.redirect('home');
				}
			}
		});
	}
	else {
		res.redirect("/login");
	}
	
});

module.exports = router;
