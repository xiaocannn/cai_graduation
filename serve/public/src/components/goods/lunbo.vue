<template>
<div>
  <div class="downLoad" v-show="bool"> 
      <img src="./../../assets/image/close.jpg" alt="" @click="hide">
      <div class="downIn">
        <img src="../../assets/image/eat-yiguo.jpg" alt="">
        <p>
          易果生鲜
          <br>新人立享80元优惠券
        </p>
      </div>
      <a href="javascript:;" class="open">立即打开</a>
    </div>
<div class="lunbo">
  <van-swipe @change="onChange" >
  <!-- <van-swipe-item><img :src="pic[0]" alt="" class="img"></van-swipe-item>
  <van-swipe-item><img :src="pic[1]" alt="" class="img"></van-swipe-item> -->
  <!-- <van-swipe-item><img :src="pic[2]" alt="" class="img"></van-swipe-item> -->
  <van-swipe-item><img :src="require('../../assets/'+pic[0])" alt="" class="img"></van-swipe-item>
  <van-swipe-item><img :src="require('../../assets/'+pic[1])" alt="" class="img"></van-swipe-item>
  <van-swipe-item><img :src="require('../../assets/'+pic[1])" alt="" class="img"></van-swipe-item>
</van-swipe>
<img @click="fanhui" src="../../assets/image/return.png" alt="" class="return" >
</div>
</div>

</template>
<script>
export default {
  data(){
    return{
      bool:true
    }
  },
  props:['pic'],
  methods: {
    onChange(index) {
      // Toast('当前 Swipe 索引：' + index);
    },
    //点击x关闭头部广告
    hide(){
      this.bool = false;
    },
    fanhui(){
      this.$router.push('/list')
    }
  },
  created(){
    // console.log(this.goodList);
  }
}
</script>
<style scoped>
.downLoad{
  height: 40px;
  border-bottom: 1px solid #ccc;
  width:100%;
  position:fixed;
  top:0;
  left:0;
  z-index: 222;
  background: #fff;
}
.downLoad>img{
  padding-top:5px;
  float: left;
}
.downIn{
  float: left;
}
.downIn img{
  width: 25px;
  padding-top:8px;
  margin:0  5px;
  float: left;
}
.downIn p{
  float: left;
  font-size: 8px;
}
.downLoad .open {
    position: absolute;
    right: 2%;
    top: 8px;
    display: inline-block;
    width: 70px;
    height: 25px;
    line-height: 25px;
    background: #11b57c;
    border-radius: 3px;
    text-align: center;
    color: #fff;
    font-size: 10px;
}
.img{
    width:100%;
    height: 300px;
}
.lunbo{
  position: relative;
}
.return {
  position:absolute;
  top:45px;
  left:5px;
  z-index: 999;
}
</style>
