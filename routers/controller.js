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

router.use('/taonhahang', require(__dirname + '/createrestau.js'));

router.use('/logout', require(__dirname + '/logout.js'));
module.exports = router;
