<template>
  <div id="footer">
    <div class="weui-tabbar" style=" background:#fff">
      <a
        @click="changeActiveId(index,i.path)"
        v-for="(i,index) in footdata"
        :key="index"
        href="javascript:;"
        class="weui-tabbar__item"
        :class="{'weui-bar__item_on':activeId==index}"
      >
        <span style="display: inline-block;position: relative;">
          <van-icon class="icon" name="close"/>
          <img :src="i.src" alt class="weui-tabbar__icon">
          <span
            v-show="i.isShouNum"
            class="weui-badge"
            style="position: absolute;top: -2px;right: -13px;"
            v-text="goodalls"
          ></span>
        </span>
        <p class="weui-tabbar__label" v-text="i.name"></p>
      </a>
    </div>
    <div>{{cartlist.length}}</div>
  </div>
</template>
<script type="text/javascript">
import { mapState } from "vuex";
export default {
  data() {
    return {
      footdata: [
        {
          name: "首页",
          src: require("../../assets/home.png"),
          path: "/home"
        },
        {
          name: "分类",
          src: require("../../assets/apps.png"),
          path: "/classify"
        },
        // {
        //   name: "吃饭吧",
        //   src: require("../../assets/eat.png"),
        //   path: "/eat"
        // },
        {
          name: "购物车",
          src: require("../../assets/cart.png"),
          path: "/cart",
          isShouNum: true
        },
        {
          name: "我的",
          src: require("../../assets/my.png"),
          path: "/mine"
        }
      ],
      activeId: 0,
      store: ""
    };
  },
  // 映射 将vuex里的state里的值映射过来
  computed: {
    ...mapState(["cartlist"]),
    //计算属性
    cartlistLenght() {
      var total = 0;
      return console.log(this.$store.state.cartlist);
      return this.$store.state.cartlist.length;
      if (this.cartlist.length > 0) {
        this.cartlist.map(function(item) {
          total += item.num * 1;
        });
        return total;
      } else {
        return total;
      }
    },
    //计算属性是和watch(非常重要)
    goodalls() {
      return this.$store.state.cartlist.length;
    }
  },
  methods: {
    changeActiveId(index, path) {
      this.activeId = index;
      this.$router.push(path);
    }
  },
  created() {
    //数量初始化
    this.$store.dispatch("getcartData", null);
  },
  //监听属性的变化(非常重要)
  watch: {
    //监听路由的变化(全局改变，footer是全局组件)
    $route() {
      this.$store.dispatch("getcartData", null);
      // console.log(1);
    }
  }
};
</script>
<style ang="css" scoped>
#footer {
  width: 100%;
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 1;
}
</style>
