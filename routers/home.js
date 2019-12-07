var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	var query = conn.query("select * from food order by id DESC limit 6;select * from restaurants order by id DESC limit 4;", (err, ress) => {
		if (err) throw err;
		else{
			if(req.session.user)
				res.render('home', {session: req.session.user,food:ress[0],restau:ress[1]});
			else
				res.render('home',{food:ress[0],restau:ress[1]});	}

		});
});

	module.exports = router;
