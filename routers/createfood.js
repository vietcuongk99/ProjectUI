var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 

var q = require('q');
router.get('/', function (req, res) {

			if(req.session.user){
			var ok = req.query.data;
					if (ok == "success"){
							res.render('createfood', {
							session: req.session.user,
							success: "Tạo thành công hướng dẫn làm món ăn!!!"
							});
					}
					else{
							res.render('createfood', {
							session: req.session.user,
							success: ""
							});
					}
			}
			else
			{
				res.redirect("/login");
			}
});
router.post('/', function(req, res) {
    var fod=req.body;
    var nnl = req.body.sonl;
    var nbc = req.body.sobuoc;
    food={
    	name:fod.name,
    	mota:fod.mota,
    	type_id:fod.type,
    	finished_time:fod.time,
    	ration:fod.kp,
    	level:fod.level,
    	image:fod.image,
    	user_view:0,
    	user_review:0
    }
      var defer = q.defer();
      var que = conn.query("INSERT INTO food SET ?", food, function(err, result) {
        if (err) throw err;
        else {
          defer.resolve(result.insertId);
        }
      });
      var dt = defer.promise;
      dt.then(function(number) {
          for (var k = 1; k <= nnl; k++) {
            var nl = req.body["nl1_" + k];
            var sl = req.body["nl2_" + k];
            nguyenlieu={
            	name:nl,
            	food_id:number,
            	quantity:sl,
            }
 			var query = conn.query("INSERT INTO food_recipes SET ?", nguyenlieu, (err, ress) => {
                if (err) throw err;
                else;
              });
            }
            for (var k = 1; k <= nbc; k++) {
            var cont = req.body["buoc1_" + k];
            var img = req.body["buoc2_" + k];
            buoc={
            	food_id:number,
            	ordinal_number:k,
            	content:cont,
            	image_link:img,
            }
 			var query = conn.query("INSERT INTO food_steps SET ?", buoc, (err, ress) => {
                if (err) throw err;
                else;
              });
            }
          
      });
    if (req.session.user) {
      res.redirect('/createfood?data=success');
    }
  

});

module.exports = router;
