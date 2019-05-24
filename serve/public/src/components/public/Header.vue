<template>
  <!-- 头部搜索 -->
  <div class="first-screen-top" @click="goToSearch">
    <div class="first-screen-search">
      <a href="javascript:;" class="btn"></a>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    goToSearch() {
      this.$router.push({name:'search'})
    }
  }
};
</script>

<style scoped>
.first-screen-top {
  z-index: 100;
  position: fixed;
  top: 0;
  left: 0;
  box-sizing: border-box;
  width: 100%;
  height: 41px;
  padding: 6px 11px 6px 11px;
  background: linear-gradient(90deg, #36db84, #0eb27b);
}
.first-screen-search {
  position: relative;
  box-sizing: border-box;
  width: 100%;
  height: 30px;
  padding: 0 0.4rem 0 35px;
  border-radius: 30px;
  background: hsla(0, 0%, 100%, 0.2);
}
.btn {
  position: absolute;
  top: 0.05rem;
  left: 0.18rem;
  width: 30px;
  height: 30px;
  background: url(../../assets/search.png) no-repeat;
  background-size: 100% 100%;
}
</style>

