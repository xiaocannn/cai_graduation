<template>
  <div class="reg">
    <header>
      <router-link to="/mine">
        <van-icon class="back" name="arrow-left"/>
      </router-link>
      <span>会员注册</span>
    </header>
    <div class="wrap">
      <van-cell-group>
        <van-field
          label="手机号码"
          required
          clearable
          right-icon="question-o"
          placeholder="手机号码"
          ref="tel"
          v-model="tel"
        />
        <!-- <van-field
                center
                clearable
                placeholder="验证码"
              >
                <van-button slot="button" size="small" type="primary">发送验证码</van-button>
        </van-field>-->
        <van-field type="password" placeholder="密码" required ref="psw" label="密码" v-model="psw"/>
        <van-field
          type="password"
          placeholder="重置密码"
          label="重置密码"
          required
          ref="againPsw"
          v-model="againPsw"
        />
      </van-cell-group>
    </div>
    <div class="btn-reg">
      <van-button class="btn" type="primary" @click="reg()">注册</van-button>
      <van-button class="btn" type="primary" @click="login()">登录</van-button>
    </div>
    <div class="alert" v-show="alertshow">
      <p v-text="alertmessage"></p>
    </div>
  </div>
</template>
<script type="text/javascript">
export default {
  data() {
    return {
      tel: "",
      psw: "",
      againPsw: "",
      // 弹窗的显示
      alertshow: false,
      //弹窗的信息
      alertmessage: ""
    };
  },
  methods: {
    //点击注册按钮
    reg() {
      // console.log(11);
      var _tel = this.$refs.tel.value;
      var _psw = this.$refs.psw.value;
      var _againPsw = this.$refs.againPsw.value;
      // console.log(_tel,_psw,_againPsw)
      if (_tel && _psw && _againPsw) {
        //插入数据库
        this.$axios({
          methods: "post",
          url: "http://localhost:3000/users/reg",
          params: {
            username: _tel,
            psw: _psw
          }
        }).then(res => {
          // console.log(res);
          if (res.data == "用户名已存在") {
            this.alert("用户名已存在");
            // this.$router.push("/login");
          } else if (res.data == "success") {
            this.$router.push("/login");
          } else if (res.data == "faile") {
          }
        });
        //非空
        if (_psw === _againPsw) {
        } else {
          this.alert("密码和重置密码不一致");
        }
      } else {
        this.alert("信息不能为空");
      }
    },
    //弹窗
    alert(mes) {
      this.alertshow = true;
      this.alertmessage = mes;
      setTimeout(
        function() {
          this.alertshow = false;
        }.bind(this),
        2000
      );
    },
    //点击登录按钮
    login() {
      this.$router.push("/login");
    }
  }
};
</script>
<style lang="css" scoped>
.reg {
  width: 100%;
  height: 100%;
  background: #f8f8f8;
  position: fixed;
  z-index: 99;
}
header {
  height: 30px;
  border-bottom: 10px solid #f8f8f8;
}
header span {
  /*display: block;*/
  text-align: center;
  line-height: 30px;
  padding-left: 35%;
  font-size: 12px;
}
.btn-reg {
  width: 100%;
  height: 100px;
  text-align: center;
  line-height: 100px;
}
.btn-reg .btn {
  width: 30%;
  height: 40px;
  margin-left: 10%;
}
.back {
  margin-top: 5%;
}
.alert {
  background: #ccc;
  position: fixed;
  bottom: 50%;
  left: 30%;
  border-radius: 10px;
  /*display: none;*/
}
.alert p {
  padding: 5px;
}
</style>