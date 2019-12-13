var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	var id=req.query.id;
	var que = conn.query("select * from post where id= ?;select * from post_ct where post_id=?;select * from food order by user_view DESC limit 4;select * from post where id <> ? order by id DESC limit 4 ",[id,id,id],  function(err, result) {
        if (err) throw err;
        else {
         
			if (req.session.user) {res.render('xembaiviet', {session: req.session.user,post:result[0][0],muc:result[1],foods:result[2],baiviet:result[3]});}
			else
			res.render('xembaiviet',{post:result[0][0],muc:result[1],foods:result[2],baiviet:result[3]});
			}
      });
	
	 
});

module.exports = router;
