var express = require('express');
var router = express.Router();

router.use('/login', require('./loginApi'));
router.use('/logout', require('./logoutApi'));

module.exports = router;