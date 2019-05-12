var express = require('express');
var router = express.Router();
var db=require('../db/mysql.js');
/* GET users listing. */
router.get('/', function(req, res, next) {
  // res.send('respond with a resource');
  res.send('登录接口');


});


// 登录功能时，先查询用户名是否存在，再判断密码是否正确
router.get('/queryuser', function(req, res, next) {
  res.append('Access-Control-Allow-Origin','*');
  // res.send('登录接口');
  // console.log(req.query);
  let {phone,password}=req.query;
  db(`SELECT * FROM users where username="${phone}"`,null,(data)=>{
    console.log(data.length);
    if(data.length){
      db(`SELECT * FROM users where username="${phone}" and psw="${password}"`,null,(data)=>{
        // console.log(data);
        if(data.length){
          res.send('登录成功');
        }else{
          res.send('密码错误');
        }
      })
    }else{
      res.send('用户名不存在，请注册');
    }
  })
});

//注册功能时，先查询用户名是否存在，再插入数据库存
router.get('/reg', function(req, res, next) {
  res.append('Access-Control-Allow-Origin','*');
  // res.send('respond with a resource');
  console.log(req.query);
  let {username,psw}=req.query;
  db(`SELECT * FROM users where username="${username}"`,null,(data)=>{
    if(data.length){
      //用户名已存在
      res.send('用户名已存在');
    }else{
      //用户名不存在,插入数据库
      db(`INSERT INTO users(username,psw) VALUES('${username}','${psw}');`,null,(data)=>{
        // console.log(data);
        var {affectedRows}=data;
        if(affectedRows>0){
            res.send('success');
        }else{
            res.send('faile');
        }
      })
    }
    // res.send(data);
  })

});



module.exports = router;
