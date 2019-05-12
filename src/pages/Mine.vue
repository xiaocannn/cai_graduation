<template>
  <div class="myIn" style="background:#f5f5f5 !important">
    <!-- 头部 -->
    <div class="header">
      <div class="headerImg">
        <span class="imgBorder">
          <!-- 用户头像 -->
          <img alt=" 用户头像" src="../assets/no-pic.jpg">
        </span>
        <a href="javascript:;">
          <!-- 未登陆状态 -->
          <p class="name" v-show="loginshow" style="display:block" @click.capture="routergo">
            <span>登录</span>/<span>注册</span>
          </p>
          <!-- 登陆状态 -->
          <p class="name" v-show="usershow" >
              <span v-text="usertxt">
                <!-- 您好！17677486654 -->
              </span>
              <span style="margin-left:10px;text-decoration:underline" @click="delectUser">退出</span>
          </p>
        </a>
        <i class="setting"></i>
      </div>
      <!-- 余额 -->
      <div class="account">
        <p class="list">
          <span class="num">-</span>
          <span class="txt">卡包余额</span>
        </p>
        <p class="list">
          <span class="num">-</span>
          <span class="txt">悠币</span>
        </p>
      </div>
    </div>
    <!-- 待支付 -->
    <div class="listTab">
      <ul class="line-bottom">
        <li class="fourLi">
          <a href="javascript:;">
            <i class="icon">
              <img src="../assets/unpaid.png" alt>
            </i>
            <span>待支付</span>
          </a>
        </li>
        <li class="fourLi">
          <a href="javascript:;">
            <i class="icon">
              <img src="../assets/take.png" alt>
            </i>
            <span>待收货</span>
          </a>
        </li>
        <li class="fourLi">
          <a href="javascript:;">
            <i class="icon">
              <img src="../assets/evaluate.png" alt>
            </i>
            <span>评价送悠币</span>
          </a>
        </li>
        <li class="fourLi">
          <a href="javascript:;">
            <i class="icon">
              <img src="../assets/changing.png" alt>
            </i>
            <span>在线退还货</span>
          </a>
        </li>
        <li class="fourLi">
          <span class="pointRight"></span>
          <a href="javascript:;">
            <i class="icon">
              <img src="../assets/allorder.png" alt>
            </i>
            <span>全部订单</span>
          </a>
        </li>
      </ul>
    </div>
    <!-- 优惠劵 -->
    <div class="tesList">
      <div class="List">
        <a href="javascript:;">
          <i class="Icon">
            <img src="../assets/coupons.png" alt class="icon">
          </i>
          优惠券
        </a>
      </div>
      <div class="List">
        <a href="javascript:;">
          <i class="Icon">
            <img src="../assets/yellowcard.png" alt class="icon">
          </i>
          充值卡
        </a>
      </div>
      <div class="List">
        <a href="javascript:;">
          <i class="Icon">
            <img src="../assets/delivery.png" alt class="icon">
          </i>
          礼品兑换卷
        </a>
      </div>
      <div class="List">
        <a href="javascript:;">
          <i class="Icon">
            <img src="../assets/address.png" alt class="icon">
          </i>
          收货地址
        </a>
      </div>
      <div class="List">
        <a href="javascript:;">
          <i class="Icon">
            <img src="../assets/help.png" alt class="icon">
          </i>
          帮助中心
        </a>
      </div>
      <div class="List">
        <a href="javascript:;">
          <i class="Icon">
            <img src="../assets/box@3x.png" alt class="icon">
          </i>
          团购
        </a>
      </div>
      <div class="List">
        <a href="javascript:;">
          <i class="Icon">
            <img src="../assets/account-icon.png" alt class="icon">
          </i>
          账户余额
        </a>
      </div>
      <div class="List">
        <a href="javascript:;">
          <i class="Icon">
            <img src="../assets/service.png" alt class="icon">
          </i>
          客服
        </a>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data(){
      return{
        user:'',
        usershow:false,
        usertxt:'',
        loginshow:true,
      }
  },
  methods:{
      routergo(e){
          // console.log(e.target.innerHTML);
          if(e.target.innerHTML=="登录"){
              this.$router.push('/login');
          }else if(e.target.innerHTML=="注册"){
              this.$router.push('/reg');
          }
      },
      delectUser(){
         localStorage.removeItem('user');
         this.usershow=false;
         this.loginshow=true;
      }
  },
  //数据挂载后执行
  beforeMount(){
    //渲染用户名(没有加JSON方法拿到的有双引号)
    var user=JSON.parse(localStorage.getItem('user'));
    // console.log(user);
    if(user==null){
      return
    }else if(user){
      this.usershow=true;
      this.loginshow=false;
      this.usertxt="您好！"+user;
    }
  }
};
</script>   
<style scoped>
* {
  box-sizing: border-box;
  list-style: none;
  font-size: 12px;
}
a {
  text-decoration: none;
  outline: 0;
}
.header {
  position: relative;
  width: 100%;
  height: 184.44px;
  background: #2dd282 url(../assets/bgimg.jpg) 100% 100%;
  background-size: 100% 100%;
}
.headerImg {
  position: relative;
  width: 100%;
  display: inline-block;
  height: 70px;
  margin-top: 20px;
  padding-left: 111px;
}
.imgBorder {
  display: inline-block;
  position: absolute;
  left: 15px;
  top: 0;
  border: 5px solid rgba(255, 255, 255, 0.5);
  width: 76px;
  height: 76px;
  border-radius: 50%;

  background: rgba(255, 255, 255, 0.5);
}
.imgBorder img {
  width: 66px;
  height: 66px;
  border-radius: 50%;
}
.name {
  display: inline-block;
  text-align: left;
  color: #fff;
  line-height: 70px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  font-size: 17px;
}
.setting {
  position: absolute;
  top: -8px;
  right: 15px;
  display: inline-block;
  width: 17px;
  height: 18px;
  background: url(../assets/setting.png) no-repeat;
  background-size: 100% 100%;
}
.account {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 53px;
  background: white;
  padding: 10px;
  display: flex;
}
.list {
  display: flex;
  flex: 1;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.txt {
  color: #333333;
}
.listTab {
  position: relative;
  width: 100%;
  background: #fff;
  height: 70px;
  margin: 10px 0;
}
.line-bottom {
  position: relative;
  float: left;
  width: 100%;
  height: 70px;
}
.fourLi {
  position: relative;
  float: left;
  width: 20%;
  height: 100%;
}
.fourLi a {
  display: inline-block;
  font-size: 13px;
  color: #333;
  width: 100%;
  padding-top: 40px;
  text-align: center;
  box-sizing: border-box;
}
.icon {
  width: 23px;
  height: 17px;
  position: absolute;
  left: 35%;
  top: 0.8rem;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}
.icon img {
  width: 100%;
  border: 0;
  vertical-align: middle;
}
.fourLi span {
  color: black;
}
.pointRight {
  position: absolute;
  top: 0.05rem;
  left: 0;
  display: inline-block;
  width: 5px;
  height: 100%;
  background: url(../assets/xian.png) no-repeat;
  background-size: 100% 100%;
}
.tesList {
  position: relative;
  width: 100%;
  height: 162px;
  background: #fff;
  margin-bottom: 8px;
}
.List {
  position: relative;
  float: left;
  width: 25%;
  height: 82px;
}
.List .Icon {
  width: 30px;
  height: 30px;
  position: absolute;
  left: 50%;
  top: 0;
  transform: translateX(-50%);
}
.List img {
  width: 100%;
  height: 100%;
  vertical-align: middle;
}
.List a {
  display: inline-block;
  font-size: 13px;
  color: #333;
  width: 100%;
  padding-top: 40px;
  text-align: center;
  box-sizing: border-box;
}
</style>
