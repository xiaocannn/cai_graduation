<template>
  <div>
    <div class="head"></div>
    <div class="nav">
      <ul class="navList">
        <li
          v-for="(i,index) in classifys"
          v-text="i.name"
          @click="changeShow(index)"
          :class="{'active':index===show}"
          :key="index"
        ></li>
        <!-- <li>国产水果</li> -->
      </ul>
    </div>
    <ul class="listContent">
      <!-- <div v-for="(i,index) in classifys" v-show="i.show" v-text="i.content" :key="index"> -->
      <li v-for="(i,index) in classifys" :key="index" v-show="index===show">
        <div
          class="con"
          v-for="(item,index) in i.contents"
          :key="index"
          @click="goto(item.content)"
        >
          <img :src="item.url" height="50" width="50" alt>
          <!-- 全部 -->
          <br>
          <span v-text="item.content"></span>
        </div>
      </li>
    </ul>
  </div>
</template>
<script type="text/javascript">
export default {
  data() {
    return {
      classifys: [
        {
          name: "毕业鲜花",
          contents: [
            {
              content: "满天星",
              url: require("../../assets/image/home1.png")
            },
            {
              content: "满天星",
              url: require("../../assets/image/home5.png")
            },
            {
              content: "满天星",
              url: require("../../assets/image/home1.png")
            },
            {
              content: "满天星",
              url: require("../../assets/image/home5.png")
            },
            {
              content: "满天星",
              url: require("../../assets/image/home1.png")
            },
            {
              content: "满天星",
              url: require("../../assets/image/home5.png")
            }
          ]
        },
        {
          name: "正装服饰",
          contents: [
            {
              content: "毕业服装",
              url: require("../../assets/image/classify.png")
            },
            {
              content: "毕业服装",
              url: require("../../assets/image/classify1.png")
            },
            {
              content: "毕业服装",
              url: require("../../assets/image/classify2.png")
            },
            {
              content: "毕业服装",
              url: require("../../assets/image/calssify3.png")
            }
          ]
        },
        {
          name: "毕业气球",
          contents: [
            {
              content: "毕业气球",
              url: require("../../assets/image/classify4.png")
            },
            {
              content: "毕业气球",
              url: require("../../assets/image/classify5.png")
            },
            {
              content: "毕业气球",
              url: require("../../assets/image/calssify6.png")
            },
            {
              content: "毕业气球",
              url: require("../../assets/image/calssify6.png")
            }
          ]
        }
      ],
      show: 0
    };
  },
  methods: {
    //改变show的值
    changeShow(index) {
      this.show = index;
    },
    //点击分类跳往列表页
    goto(name) {
      this.$router.push({ path: "/list", query: { name } });
    }
  }
};
</script>
<style scoped lang="css">
.head {
  width: 100%;
  height: 44px;
}
.nav {
  width: 24%;
  text-align: center;
  float: left;
}
.active {
  color: #11b57c;
  background: #fff !important;
}
.nav li {
  width: 100%;
  height: 45px;
  line-height: 45px;
  padding: 5px 5px;
  background: #f8f8f8;
}
.listContent {
  width: 75%;
  float: left;
}
.con {
  padding: 15px 0;
  width: 33.3%;
  text-align: center;
  float: left;
  height: 100px;
}
</style>