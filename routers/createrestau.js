var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 

var q = require('q');
router.get('/', function (req, res) {

			if(req.session.user){
			var ok = req.query.data;
					if (ok == "success"){
							res.render('createrestau', {
							session: req.session.user,
							success: "Tạo thành công giới thiệu nhà hàng!!!"
							});
					}
					else{
							res.render('createrestau', {
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
    var nh=req.body;
    var nnl = req.body.somon;
    nhang={
    	name:nh.name,
    	mota:nh.mota,
      image :nh.image,
    	location:nh.diachi
    }
      var defer = q.defer();
      var que = conn.query("INSERT INTO restaurants SET ?",nhang, function(err, result) {
        if (err) throw err;
        else {
          defer.resolve(result.insertId);
        }
      });
      var dt = defer.promise;
      dt.then(function(number) {
          for (var k = 1; k <= nnl; k++) {
            var mon = req.body["name" + k];
            var gia = req.body["gia" + k];
            nguyenlieu={
            	name:mon,
            	restaurant_id:number,
            	price:gia,
            }
 			var query = conn.query("INSERT INTO menus SET ?", nguyenlieu, (err, ress) => {
                if (err) throw err;
                else;
              });
            }
            
          
      });
    if (req.session.user) {
      res.redirect('/taonhahang?data=success');
    }
  

});

module.exports = router;
