var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 

var q = require('q');
router.get('/', function (req, res) {

			if(req.session.user){
          var id=req.query.id;
     
          var que = conn.query("select * from restaurants where id= ?;select * from menus where restaurant_id= ?;", [id,id], function(err, result) {
          if (err) throw err;
          else {
          res.render("updaterestau",{session: req.session.user,restau:result[0][0],menu:result[1]})

          }
          });
			}
			else
			{
				res.redirect("/login");
			}
});
router.post('/', function(req, res) {
    var fod=req.body;
    var id=req.query.id;
    var nnl=req.body.somon;
    nhang={
      name:fod.name,
      mota:fod.mota,
      image:fod.image,
     location:fod.diachi
    }
    var quem = conn.query("delete from restaurants where id=?", id, function(err, result) {
        if (err) throw err;
        else {
        }
      });
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
      res.redirect('/nhahang');
    }
  

});


module.exports = router;
