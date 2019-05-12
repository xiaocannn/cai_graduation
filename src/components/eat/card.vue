<template>
  <div>
    <div class="title" v-for="i in content" :key="i.id">
      <div class="title-in">
        <div class="img-box">
          <span class="txt live">生活家</span>
          <span class="num" v-text="i.num"></span>
          <img class="lazy" :src="i.image" style="display: block;">
        </div>
        <p class="tit1">&gt;{{i.title}}</p>
        <p class="tit2"></p>
        <div class="time">
          <img
            class="lazy img-circle img-responsive"
            src="../../assets/image/eat-yiguo.jpg"
            alt
            style="display: block;"
          >
          <span class="name">&nbsp;</span>
          <span class="time-new" v-text="i.date"></span>
        </div>
      </div>
    </div>
    <!-- 加载中组件 -->
    <Loading/>
  </div>
</template>
<script>
// 封装axios使用
import axios from "../../request/request.js";
// 加载中
import Loading from "../public/Loading.vue";
export default {
  data() {
    return {
      content: []
    };
  },
  // 加载中组件
  components: {
    Loading
  },
  async created() {
    // ajax请求
    let {data} = await axios.get('https://www.fastmock.site/mock/1c400c949bd89011b22378dfe07950b3/list/eat',{})
     this.content = data;
    // this.$axios
    //   .get(
    //     "https://www.fastmock.site/mock/1c400c949bd89011b22378dfe07950b3/list/eat",
    //     {}
    //   )
    //   .then(res => {
    //     // console.log(res);
    //     this.content = res.data;
    //     // console.log(this.content)
    //   });
  }
};
</script>
<style scoped>
.title {
  margin-top: 10px;
  background: #fff;
  width: 100%;
}
.title-in {
  padding: 10px 2.5%;
}
.title-in:before {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  content: "";
  height: 1px;
  border-top: 1px solid #ccc;
  transform: scaleY(0.5);
  -webkit-transform: scaleY(0.5);
  z-index: 10;
}
.title-in .img-box {
  position: relative;
}
.title-in .img-box .live {
  width: 60px;
  height: 20px;
  line-height: 20px;
  background: #ff6b22;
  position: absolute;
  top: 10px;
  left: 0;
  color: #fff;
  border-radius: 0 25px 25px 0;
}
.title-in .img-box .num {
  position: absolute;
  top: 10px;
  right: 10px;
  padding: 2px 8px 0px 20px;
  height: 17px;
  line-height: 16px;
  box-sizing: border-box;
  background: rgba(255, 255, 255, 0.85);
  border-radius: 20px;
  text-align: center;
  color: #656565;
  font-size: 12px;
}

.title-in .img-box img {
  display: block;
  width: 100%;
}
.title .title-in .tit1 {
  padding: 14px 0 0px;
  font-size: 13px;
  color: #000;
  line-height: 22px;
  text-overflow: -o-ellipsis-lastline;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.title .title-in .tit2 {
  padding: 10px 0 0px;
  font-size: 13px;
  color: #6d6d6d;
  line-height: 17px;
  text-overflow: -o-ellipsis-lastline;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}
.title .title-in .time img {
  position: absolute;
  left: 0px;
  top: 50%;
  margin-top: -17px;
  width: 34px;
  height: 34px;
  border-radius: 50%;
}
.time {
  height: 30px;
  position: relative;
}
.time-new {
  position: absolute;
  right: 0;
  line-height: 30px;
}
</style>