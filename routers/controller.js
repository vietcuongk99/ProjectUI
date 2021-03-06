var express = require('express');
const passport = require('passport');
var router = express.Router();
var db = require('../model/database');
var conn = db.getConnection();
var q = require('q');
router.use('/signin', require(__dirname + '/signin.js'));
router.use('/login', require(__dirname + '/login.js'));
router.use('/home', require(__dirname + '/home.js'));
router.use('/createfood', require(__dirname + '/createfood.js'));
router.use('/seefood', require(__dirname + '/seefood.js'));
router.use('/updatefood', require(__dirname + '/updatefood.js'));
router.use('/deletefood', require(__dirname + '/deletefood.js'));
router.use('/foodtype', require(__dirname + '/foodtype.js'));

router.use('/nhahang', require(__dirname + '/restau.js'));
router.use('/taonhahang', require(__dirname + '/createrestau.js'));
router.use('/xoanhahang', require(__dirname + '/deleterestau.js'));
router.use('/suanhahang', require(__dirname + '/updaterestau.js'));
router.use('/xemchitiet', require(__dirname + '/xemchitiet.js'));

router.use('/taobaiviet', require(__dirname + '/createpost.js'));
router.use('/support', require(__dirname + '/support.js'));
router.use('/recommend', require(__dirname + '/recommend.js'));
router.use('/rules', require(__dirname + '/rules.js'));


router.use('/carousel1', require(__dirname + '/carousel1.js'));
router.use('/carousel2', require(__dirname + '/carousel2.js'));
router.use('/carousel3', require(__dirname + '/carousel3.js'));

router.use('/posts', require(__dirname + '/posts.js'));
router.use('/xoabaiviet', require(__dirname + '/deletepost.js'));
router.use('/suabaiviet', require(__dirname + '/updatepost.js'));
router.use('/xembaiviet', require(__dirname + '/xembaiviet.js'));


router.use('/deletecmtnh', require(__dirname + '/deletecmtnh.js'));


router.use('/logout', require(__dirname + '/logout.js'));
module.exports = router;
