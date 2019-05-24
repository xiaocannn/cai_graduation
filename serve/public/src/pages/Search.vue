<template>
  <div>
    <form action="/" style="border-bottom:1px solid #ccc;">
      <van-search
        ref="searchInput"
        placeholder="请输入搜索关键词"
        show-action
        v-model="value"
        @cancel="onCancel"
        @search="onSearch"
      />
    </form>
    <!-- 热度 -->
    <!-- <div class="Hot">
      <p>大家都在搜</p>
      <span v-for="(t,index) in tabs" :key="index" v-text="t.title"></span>
    </div>-->
    <!-- 遮住底部 -->
    <dir class="zz"></dir>
  </div>
</template>
<script>
export default {
  data() {
    return {
      value: "",
      datalist:'',
      // tabs: [
      //   {
      //     title: "美心"
      //   },
      //   {
      //     title: "鲜活"
      //   },
      //   {
      //     title: "望湘园"
      //   },
      //   {
      //     title: "奇异果"
      //   },{
      //     title: "香梨"
      //   },
      // ]
    };
  },
  methods: {
    onCancel() {
      // 点击取消跳转到首页
      this.$router.push({ name: "home" });
    },
    //按回车键搜索
    onSearch() {
      // console.log(this.value);//this.value就是输入搜索框的值
      var name = this.value;
      if (name) {
        //非空
        this.$router.push({ path: "/list", query: { name } });
      }
    }
  },
  // 挂载后
  mounted() {
    // console.log(this.$refs.searchInput);
    // 找到这个VantUI搜索框里的input框 ，聚焦
    this.$refs.searchInput.children[0].children[0].children[1].children[0].children[0].focus();
  }
};
</script>
<style scoped>
.zz {
  width: 100%;
  position: fixed;
  bottom: 0;
  left: 0;
  z-index: 99;
  height: 53px;
  background: #fff;
}
.Hot {
  padding: 5px 10px;
}
.Hot p {
  margin-bottom: 8px;
  font-size: 15px;
  color: #333;
}
.Hot span {
  display: inline-block;
  border: 1px solid #ccc;
  margin-right: 10px;
  background: white;
  font-size: 14px;
  padding: 5px;
  color: #333;
}
</style>

