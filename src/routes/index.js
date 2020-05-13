const express = require('express');
const router = express.Router();
const { nologueado } = require('../lib/auth');


router.get('/', nologueado, (req, res) =>{
    res.render('links/index.hbs');
});

module.exports = router;