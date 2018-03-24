var express = require('express');
var router = express.Router();

router.use('/login', require('./loginApi'));
router.use('/logout', require('./logoutApi'));
router.use('/update', require('./update'));
router.use('/data', require('./dataApi'));

module.exports = router;