<template>
  <header>
    <router-link to="/mine">
      <van-icon class="back" name="arrow-left"/>
    </router-link>
    <!-- <span>会员登录</span> -->
    <slot></slot>
  </header>
</template>
<style scoped>
header {
  height: 30px;
  border-bottom: 10px solid #f8f8f8;
}
header span {
  /*display: block;*/
  text-align: center;
  /*line-height: 30px;*/
  padding-left: 35%;
  font-size: 12px;
}
</style>
