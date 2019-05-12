var express = require('express');
var router = express.Router();
var db = require('../db/mysql.js');
/* GET home page. */
router.get('/goodsAll', function (req, res, next) {
    res.append('Access-Control-Allow-Origin', '*');
    db(`SELECT * FROM  goodslist`, null, (data) => {
        // console.log(data);
        res.send(data);
    });
});

router.get('/search', function (req, res, next) {
    res.append('Access-Control-Allow-Origin', '*');
    // console.log(req.query);
    let { searchname } = req.query;
    db(`select * from category where category='${searchname}'`, null, (data) => {
        // console.log(data.length);
        if (data.length > 0) {
            db(`select * from goodslist where classity='${searchname}'`, null, (data) => {
                // console.log(data);
                res.send(data);
            });
        } else {
            db(`select * from goodslist where name like '%${searchname}%'`, null, (data) => {
                // console.log(data);
                res.send(data);
            });
        }

    });
    // db(`select * from goodslist where name like '%${searchname}%'`,null,(data)=>{
    //     // console.log(data);
    //     res.send(data);
    // });
});
module.exports = router;
