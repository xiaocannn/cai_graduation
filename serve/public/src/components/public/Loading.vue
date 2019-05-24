<template>
  <!-- 加载中 -->
  <div class="shade" :style="{
      display:state.isLoding?'block':'none'
  }">
    <div class="loading">
      <img src="../../assets/1.gif" alt>
    </div>
  </div>
</template>
<script>
import state from "../../observeble/observeble.js";
export default {
    // 计算observeble.js里的state.isLoding控制加载出现和隐藏
  computed: {
    state() {
      return state;
    }
  }
};
</script>
<style scoped>
.shade {
  width: 100%;
  height: 100%;
  position: fixed;
  z-index: 200;
  background: rgba(0, 0, 0, 0.65);
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}
.loading {
  width: 20%;
  background: white;
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 201;
  border-radius: 15%;
}
.loading img {
  width: 100%;
}
</style>

