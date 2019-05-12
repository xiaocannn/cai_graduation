<template>
  <!--头部搜索 -->
  <div style="height:100%;margin-bottom:53px;background:#f5f5f5 !important">
    <Header/>
    <!-- 轮播图 -->
    <van-swipe
      style=" width: 100%;margin-top:41px;height:220px"
      :autoplay="3000"
      indicator-color="white"
    >
      <van-swipe-item v-for="(item,index) in lunbo" :key="index">
        <img class="autoImg" :src="item" alt>
      </van-swipe-item>
    </van-swipe>
    <!-- 广告 -->
    <div class="first-screen-ad">
      <img
        src="https://img14.yiguoimg.com/d/items/2019/190412/9710950229714572_1125x344.gif?w=1125&amp;h=344"
      >
    </div>
    <!-- 类型菜单 -->
    <div class="first-screen-menu">
      <li v-for="(t,index) in list" :key="index" @click="goToDetails(t.txt)">
        <a href="javascript:;">
          <img :src="t.img" alt>
        </a>
        <span v-text="t.txt"></span>
      </li>
    </div>
    <!-- 易果快报 -->
    <div class="first-screen-news">
      <i></i>
      <div class="shu"></div>
      <div class="News">营业资质公示，详情请点击查询</div>
    </div>
    <!-- 推荐 -->
    <!-- 新品 人气 -->
    <div class="two-image">
      <van-swipe
        style=" width: 100%;margin-top:41px;height:220px"
        :autoplay="3000"
        indicator-color="white"
      >
        <van-swipe-item v-for="(item,index) in lunbo" :key="index">
          <img class="autoImg" :src="item" alt>
        </van-swipe-item>
      </van-swipe>
    </div>
    <!-- 懒加载/类型 -->
    <div class="prolist">
      <div class="tt">
        <h3>推荐商品</h3>
      </div>
      <ul style="width:100%,">
        <li v-for="(i,index) in lei" :key="index" style="width:50%,">
          <div class="pic">
            <a href="javascript:;">
              <img :src="i.img" alt>
            </a>
          </div>
          <div class="info">
            <p class="name" v-text="i.tradeName"></p>
            <span class="saletip">单品包邮</span>
            <div class="price">
              <strong v-text="i.price"></strong>
              <span v-text="i.weight">/2kg</span>
            </div>
          </div>
        </li>
      </ul>
      <!-- 清除浮动的盒子 -->
      <div class="clearfloat"></div>
    </div>
    <!-- 懒加载/类型 -->
    <div class="loader" v-if="showLoader">
      <p>加载更多数据中...</p>
    </div>
    <!-- 回到顶部 -->
    <div @click="goTop" class="goBalck" v-show="bool">
      <img src="../assets/top.png" alt>
    </div>
    <!-- 底部 -->
    <!-- <div class="pagefooter" v-show="show">
      <p>沪IPC备09008015号</p>
      <p>上海易果电子商务有限公司</p>
    </div>-->
    <!-- 加载中 -->
    <Loading/>
  </div>
</template>
<script type="text/javascript">
// 头部搜索
import Header from "../components/public/Header.vue";
// 加载中
import Loading from "../components/public/Loading.vue";
// 封装axios引入
import request from "../request/request.js";

export default {
  data() {
    return {
      // 控制回到顶部
      bool: false,
      length: 0,
      //小图标数据
      list: [
        {
          txt: "毕业鲜花",
          img: require("../assets/home1.png")
        },
        {
          txt: "毕业鲜花",
          img: require("../assets/home5.png")
        },
        {
          txt: "毕业鲜花",
          img: require("../assets/home3.png")
        },
        {
          txt: "毕业鲜花",
          img: require("../assets/home4.png")
        },
        {
          txt: "毕业服装",
          img: require("../assets/home2.png")
        },
        {
          txt: "毕业服装",
          img: require("../assets/home8.png")
        },
        {
          txt: "毕业气球",
          img: require("../assets/home9.png")
        },
        {
          txt: "毕业气球",
          img: require("../assets/home10.png")
        }
      ],
      //分类数据
      lei: [
        {
          tradeName: "康乃馨花束毕业鲜花",
          price: "￥54",
          weight: "/30支",
          img: require("../assets/home1.webp")
        },
        {
          tradeName: "康乃馨花束毕业鲜花",
          price: "￥19",
          weight: "/30支",
          img: require("../assets/home1.webp")
        },
        {
          tradeName: "康乃馨花束毕业鲜花",
          price: "￥49",
          weight: "/30支",
          img: require("../assets/ban2.jpg")
        },
        {
          tradeName: "康乃馨花束毕业鲜花",
          price: "￥37.5",
          weight: "/30支",
          img: require("../assets/ban2.jpg")
        },
        {
          tradeName: "康乃馨花束毕业鲜花",
          price: "￥37.5",
          weight: "/30支",
          img: require("../assets/ban2.jpg")
        },
        {
          tradeName: "康乃馨花束毕业鲜花",
          price: "￥37.5",
          weight: "/30支",
          img: require("../assets/ban2.jpg")
        },
        {
          tradeName: "康乃馨花束毕业鲜花",
          price: "￥37.5",
          weight: "/30支",
          img: require("../assets/ban2.jpg")
        },
        {
          tradeName: "康乃馨花束毕业鲜花",
          price: "￥37.5",
          weight: "/30支",
          img: require("../assets/ban2.jpg")
        }
      ],
      // 默认滚动到指定值出现回到顶部
      scrollTo: 500,
      //滚动值
      scroll: 0,
      //变量scrollTop是滚动条滚动时，距离顶部的距离
      scrollTop: 0,
      //变量windowHeight是可视区的高度
      windowHeight: 0,
      //变量scrollHeight是滚动条的总高度
      scrollHeight: 0,
      showLoader: false,
      show: false,
      // 轮播图初始化
      lunbo: [
        require("../assets/ban7.jpg"),
        require("../assets/ban3.jpg"),
        require("../assets/ban4.jpg"),
        require("../assets/ban2.jpg"),
        require("../assets/ban1.jpg")
      ]
    };
  },
  // 头部搜索组件
  components: {
    Header,
    Loading
  },
  // ajax请求渲染轮播图
  async created() {
    // this.lunbo = data.data
    // console.log(this.lunbo)
    // let {data}=await this.$axios({
    //   method:'get',
    //   url:'http://localhost:3000/goods/goodsAll',
    // })
    // console.log(data);
    // var obj={};
    // obj.title=data[0].classity;
    // console.log(obj);
  },
  methods: {
    // 点击缓慢回到顶部
    goTop() {
      let timer = setInterval(() => {
        if (this.scroll > 0) {
          this.scroll -= 100;
          window.scrollTo(0, this.scroll);
        } else {
          clearInterval(timer);
        }
      }, 30);
    },
    // 跳到列表页
    goToDetails(name) {
      this.$router.push({ path: "/list", query: { name } });
    }
  },
  mounted() {
    //滚动事件
    window.onscroll = () => {
      this.scroll = window.scrollY;
      //变量scrollTop是滚动条滚动时，距离顶部的距离
      this.scrollTop =
        document.documentElement.scrollTop || document.body.scrollTop;
      //变量windowHeight是可视区的高度
      this.windowHeight =
        document.documentElement.clientHeight || document.body.clientHeight;
      //变量scrollHeight是滚动条的总高度
      this.scrollHeight =
        document.documentElement.scrollHeight || document.body.scrollHeight;
      //滚动条到底部的条件
      if (this.scrollTop + this.windowHeight == this.scrollHeight) {
        this.showLoader = true;
        this.show = true;
        this.showLoader = false;
      }
      if (this.scroll >= this.scrollTo) {
        this.bool = true;
      } else {
        this.bool = false;
      }
    };
  },
  watch: {
    scroll() {}
  }
};
</script>
<style scoped>
body {
  height: 100%;
}
* {
  box-sizing: border-box;
  list-style: none;
  font-size: 12px;
}
.autoImg {
  width: 100%;
  height: 100%;
}
.first-screen-ad {
  height: 120px;
}
.first-screen-ad img {
  width: 100%;
  height: 120px;
}
.first-screen-menu {
  background: #fff;
  height: 179px;
  display: flex;
  flex-wrap: wrap;
  margin-bottom: 1px;
}
.first-screen-menu a {
  width: 50%;
  height: 51px;
  display: flex;
}
.first-screen-menu a img {
  width: 100%;
}
.first-screen-menu li {
  width: 25%;
  height: 90px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}
.first-screen-news {
  width: 100%;
  height: 30px;
  background: #fff;
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}
.first-screen-news .shu {
  width: 1px;
  height: 20px;
  background: #f0ececf5;
  margin-right: 10px;
}
.first-screen-news i {
  background: url(../assets/news.png) no-repeat;
  display: inline-block;
  background-size: 60% 60%;
  width: 100px;
  height: 23px;
  background-position: center center;
}
.group-floor {
  width: 100%;
  background: #fff;
}
.floor-img {
  width: 100%;
  height: 217px;
}
.floor-img img {
  width: 100%;
}
.product-list {
  width: 100%;
  height: 100%;
  padding: 10px 0px 10px 2%;
  background: #fff;
}
.proitem {
  float: left;
  width: 28%;
}
.pic img {
  width: 100%;
}
.info {
  padding: 0px 5px 0 5px;
  text-align: center;
}
.info .name {
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}
.Show {
  width: 50px;
  display: inline-block;
}
.hot {
  width: 10px;
}
.saletip {
  color: #45b575;
  display: inline-block;
  border: 1px solid;
  border-radius: 50px;
  width: 60px;
  text-align: center;
  font-size: 8px;
  margin: 2px 0;
}
.price {
  color: #8d8ab1;
}
.price strong {
  color: #fd623d;
}
.Show {
  position: relative;
  top: 0;
  left: 0;
  display: inline-block;
  width: 10%;
  height: 150px;
}
.Show .hot {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 12px;
  transform: translate(-50%, -50%);
  color: #8d8ab1;
}
.hot i {
  display: inline-block;
  width: 12px;
  height: 12px;
  background: url(../assets/aa.png);
  background-size: 100% 100%;
  margin-top: 4px;
}
.two-image {
  height: 232px;
  width: 100%;
}
.link-img1 {
  width: 50%;
  height: 100%;
  display: inline-block;
}
.link-img1 img {
  width: 100%;
  height: 232px;
}
.loader {
  width: 100%;
  height: 20px;
  text-align: center;
  margin-bottom: 5px;
}
.loader p {
  font-size: 15px;
  color: #b3b3b3;
}
.prolist {
  margin: 10px 0;
  /* height: 321px; */
  width: 100%;
  background: #fff;
  margin-bottom: 35px;
}
/*清除浮动代码*/
.clearfloat {
  clear: both;
}
.prolist .tt {
  height: 38px;
  line-height: 38px;
  text-align: center;
}
.prolist .tt h3 {
  position: relative;
  display: inline-block;
  padding: 0 5px;
  font-size: 13px;
  font-weight: bold;
}
.prolist .tt h3:after,
.prolist .tt h3:before {
  position: absolute;
  top: 50%;
  display: block;
  width: 100%;
  height: 10px;
  margin-top: -3px;
  /* transform: translate(0,-50%); */
  content: "";
  background: url(../assets/lei.png) no-repeat;
  background-size: 50% 50%;
}
.prolist .tt h3:after {
  right: -32px;
  transform: rotate(180deg);
  top: 14px;
}
.prolist .tt h3:before {
  left: -32px;
}
.prolist ul {
  /* display: flex; */
  width: 100%;
}
.prolist ul li {
  /* flex: 1; */
  width: 50%;
  height: 100%;
  float: left;
}
.pagefooter {
  margin: 10px 0;
  text-align: center;
  color: #8d8a8a;
}
.goBalck {
  position: fixed;
  bottom: 120px;
  right: 15px;
  width: 30px;
}
.goBalck img {
  width: 100%;
}
</style>