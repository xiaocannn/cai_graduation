<template>
  <div class="goods">
    <Luobo :pic="pic"></Luobo>
    <Connect :goodList="goodList"></Connect>
    <Sell></Sell>
    <Num v-on:increase="shownun"></Num>
    <GoodsAction :goodList="goodList" :pic="pic" :num="num"></GoodsAction>
  </div>
</template>
<script>
import Luobo from "../components/goods/lunbo.vue";
import Connect from "../components/goods/connect.vue";
import Sell from "../components/goods/sell.vue";
import Num from "../components/goods/num.vue";
import GoodsAction from "../components/goods/goodsAction.vue";

export default {
  data() {
    return {
      goodList: "",
      pic: "",
      num: 1
    };
  },
  components: {
    Luobo,
    Connect,
    Sell,
    Num,
    GoodsAction
  },
  methods: {
    shownun(data) {
      this.num = data;
      console.log(this.num);
    }
  },
  created() {
    let goodId = this.$route.query.id;
    // console.log(this.$route);
    // console.log(goodId);
    this.$axios({
      method: "get",
      url: "http://localhost:3000/goods/goodsAll"
    }).then(res => {
      var message = "";
      var arr = [];
      res.data.map(function(item, idx) {
        if (item.id == goodId) {
          message = item;
          arr = item.picture.split("&");
        }
      });
      this.goodList = message;
      this.pic = arr;
      // console.log(this.pic);
    });
  }
};
</script>
<style ang="css" scoped>
.goods {
  width: 100%;
  height: 100%;
  background: #fff;
  position: fixed;
  overflow-y: auto;
  z-index: 99;
}
</style>
