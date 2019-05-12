<template>
  <div id="app">
    <router-view></router-view>
    <Footer></Footer>
  </div>
</template>

<script>
//
import Footer from "./components/public/Footer.vue";

export default {
  name: "app",
  components: {
    Footer
  }
};
</script>

<style>
*{
    margin: 0;
    padding: 0;
}
img{
    border:0;
}
ol, ul ,li{list-style: none;} 
html,
body {
  width: 100%;
  /* background: #f5f5f5f5; */
  line-height: normal;
}
</style>
