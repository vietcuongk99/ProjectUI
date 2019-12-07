var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 


router.get('/', function (req, res) {
	var id=req.query.id;
	var que = conn.query("update restaurants set user_view=user_view+1 where id=?;", [id], function(err, result) {
        if (err) throw err;
        else {
        }
      });
	var que = conn.query("select * from restaurants where id = ?;select * from menus where restaurant_id= ?;select * from restaurants where id <> ? order by user_view DESC limit 3  ;select * from cmt_nh join users on id=user_id where restaurant_id=?;", [id,id,id,id,id], function(err, result) {
        if (err) throw err;
        else {
          if(req.session.user){
			res.render('xemchitiet', {session: req.session.user,restau:result[0][0],menu:result[1],lienquan:result[2],comment:result[3]});
			}else
			res.render('xemchitiet',{restau:result[0][0],menu:result[1],lienquan:result[2],comment:result[3]});
        }
      });

	 
});
router.post('/', function(req, res) {
   
    if (req.session.user) {
    		var id=req.query.id;
    		var comt=req.body;
    		comment={
    			restaurant_id:id,
    			content:comt.com,
    			user_id:req.session.user.id
    		}
    		var query = conn.query("INSERT INTO cmt_nh SET ?", comment, (err, ress) => {
            if (err) throw err;
            else{	res.redirect('/xemchitiet?id='+req.query.id);}
          });
  		
    
    }
    else{
    	res.redirect('/login');
    }
  

});

module.exports = router;
