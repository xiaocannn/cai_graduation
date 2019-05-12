var express = require('express');
var router = express.Router();
var db = require('../db/mysql.js');

//查询所有的购物车列表
router.get('/queryAll', function (req, res, next) {
  // console.log(req.query);
  let { tel } = req.query;
  res.append('Access-Control-Allow-Origin', '*');
  db(`SELECT * FROM cartlist where tel="${tel}"`, null, (data) => {
    res.send(data);
  })
});

//添加购物车
router.get('/addgoods', function (req, res, next) {
  // console.log(req.query);
  res.append('Access-Control-Allow-Origin', '*');
  // console.log(req.query);
  let {
    _id,
    goods,
    num,
    price,
    image,
    tel
  } = req.query;
  // console.log(_id,goods);
  //插入购物车之前先查询
  db(`SELECT * FROM cartlist where tel="${tel}" and _id="${_id}"`, null, (data) => {
    // console.log(data);
    // 如果购物车已存在该商品（data.length>0说明存在该商品）
    // 则查询该商品，拿到该商品的num，把num相加，最后更新num的值
    if (data.length > 0) {
      db(`SELECT * FROM cartlist where tel="${tel}" and _id="${_id}"`, null, (data) => {
        // console.log(data);
        // console.log(data[0].num);
        var totalnum = 0;
        totalnum = (data[0].num * 1) + num * 1;
        // console.log(totalnum);
        db(`UPDATE cartlist SET num='${totalnum}' WHERE tel="${tel}" and _id="${_id}";`, null, data => {
          // console.log(data);
          var { affectedRows } = data;
          if (affectedRows > 0) {
            res.send('success');
          } else {
            res.send('faile');
          }
        })
      });
    } else {
      //如果不存在该商品，则插入数据库
      db(`INSERT INTO cartlist(_id,goods,num,price,image,tel) VALUE ('${_id}','${goods}','${num}','${price}','${image}','${tel}')`, null, data => {
        var { affectedRows } = data;
        if (affectedRows > 0) {
          res.send('success');
        } else {
          res.send('faile');
        }
      });
    }
  })

});

//删除数据
router.get('/delOne', function (req, res, next) {
  // console.log(req.query);
  let { tel, id } = req.query;
  res.append('Access-Control-Allow-Origin', '*');
  db(`DELETE FROM cartlist WHERE _id="${id}" AND tel="${tel}"`, null, (data) => {
    // console.log(data);
    var { affectedRows } = data;
    if (affectedRows > 0) {
      res.send('success');
    } else {
      res.send('faile');
    }
  })
});

//更新购物车的数据
router.get('/updata', function (req, res, next) {
  res.append('Access-Control-Allow-Origin', '*');
  // console.log(req.query);
  let {
    num,
    _id,
    tel
  } = req.query;
  // UPDATE cartlist SET num='9' WHERE _id='1' and tel='123'
  db(`UPDATE cartlist SET num='${num}' WHERE _id='${_id}' and tel='${tel}'`, null, (data) => {
    // console.log(data);
    var { affectedRows } = data;
    if (affectedRows > 0) {
      res.send('success');
    } else {
      res.send('faile');
    }

  })
})

module.exports = router;