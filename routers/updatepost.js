var express = require('express')
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection(); 

var q = require('q');
router.get('/', function (req, res) {

			if(req.session.user){
          var id=req.query.id;
     
          var que = conn.query("select * from post where id= ?;select * from post_ct where post_id= ?;", [id,id], function(err, result) {
          if (err) throw err;
          else {
          res.render("updatepost",{session: req.session.user,tieude:result[0][0],muc:result[1]})

          }
          });
			}
			else
			{
				res.redirect("/login");
			}
});
router.post('/', function(req, res) {

    var id=req.query.id;
    
    var quem = conn.query("delete from post where id=?", id, function(err, result) {
        if (err) throw err;
        else {
        }
      });
      var nh=req.body;
    var nnl = req.body.somuc;
    nhang={
      title:nh.title,
      mota:nh.mota,
      image_link :nh.image,
      author:req.session.user.username
    }
      var defer = q.defer();
      var que = conn.query("INSERT INTO post SET ?",nhang, function(err, result) {
        if (err) throw err;
        else {
          defer.resolve(result.insertId);
        }
      });
      var dt = defer.promise;
      dt.then(function(number) {
          for (var k = 1; k <= nnl; k++) {
            var titles = req.body["title" + k];
            var images = req.body["anh" + k];
            var contents = req.body["muc" + k];
            noidung={
              title:titles,
              image:images,
              content:contents,
              post_id:number,
            }
      var query = conn.query("INSERT INTO post_ct SET ?", noidung, (err, ress) => {
                if (err) throw err;
                else;
              });
            }
            
      });
    if (req.session.user) {
      res.redirect('/posts');
    }
  

});


module.exports = router;
