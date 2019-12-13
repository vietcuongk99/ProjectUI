var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	var id=req.query.id;
	var que = conn.query("select * from food where type_id= ?;select * from food_types where tid = ?", [id,id], function(err, result) {
        if (err) throw err;
        else {
          if(req.session.user){
			res.render('foodtype', {session: req.session.user,foods:result[0],type:result[1]});
			}else
			res.render('foodtype',{foods:result[0],type:result[1]});
        }
      });

	 
});

module.exports = router;
