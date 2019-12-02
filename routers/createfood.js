var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	
	 if(req.session.user)
	res.render('createfood', {session: req.session.user});
	else
	res.render('createfood',{});
});

module.exports = router;
