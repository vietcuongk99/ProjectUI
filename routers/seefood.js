var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	var id=req.query.id;
	var que = conn.query("update food set user_view=user_view+1 where id=?;", [id], function(err, result) {
        if (err) throw err;
        else {
        }
      });
	var que = conn.query("select * from food join food_types on type_id=food_types.tid where food.id = ?;select * from food_recipes where food_id= ?;select * from food_steps where food_id = ?;SELECT * FROM `food` WHERE food.`type_id`=(SELECT type_id FROM food where id=?) and id <> ? limit 4;select * from comments join users on user_id=users.id where food_id =? order by comment_id;", [id,id,id,id,id,id], function(err, result) {
        if (err) throw err;
        else {
          if(req.session.user){
			res.render('seefood', {session: req.session.user,food:result[0][0],nl:result[1],buoc:result[2],foods:result[3],comment:result[4]});
			}else
			res.render('seefood',{food:result[0][0],nl:result[1],buoc:result[2],foods:result[3],comment:result[4]});
        }
      });

	 
});
router.post('/', function(req, res) {
   
    if (req.session.user) {
    		var id=req.query.id;
    		var comt=req.body;
    		comment={
    			food_id:id,
    			content:comt.com,
    			user_id:req.session.user.id
    		}
    		var query = conn.query("INSERT INTO comments SET ?", comment, (err, ress) => {
            if (err) throw err;
            else{	res.redirect('/seefood?id='+ id);}
          });
  		
    
    }
    else{
    	res.redirect('/login');
    }
  

});

module.exports = router;
