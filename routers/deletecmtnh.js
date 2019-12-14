var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	if(req.session.user){
		var id=req.query.id;
		
		var que = conn.query("delete from cmt_nh where restaurant_id= ?;", [id], function(err, result) {
			if (err) throw err;
			else {
			
				res.redirect('/xemchitiet?id='+id);
				
			}
		});
	}
	else {
		res.redirect("/login");
	}
	
});

module.exports = router;
