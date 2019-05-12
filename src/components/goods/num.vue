<template >
  <div style="margin-bottom:100px">
    <div class="norms">
      <div class="title line-bottom">
        规格
        <span class="choose active">500g/包</span>
      </div>
      <div class="title line-bottom" @click="addnum">
        <div class="number">数量</div>
        <van-stepper v-model="value" />
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      value: 1,
    }
  },
  methods:{
    //数量改变时（用了ui框架，不管是增加数量还是减少数量都调用此方法）
    addnum(){
         // console.log(this.value);
         this.$emit ('increase', this.value);
    },
    //减少数量时
    lessnum(){

    },
  }
}
</script>
<style>
 .norms {
    background: #fff;
    margin-bottom: .3rem;
}
 .norms .title {
    position: relative;
    color: #808080;
    font-size: .42rem;
    line-height: 1.2rem;
    padding: .35rem .32rem;
}
 .norms .title .choose.active {
    color: #11b57c;
    font-size: .42rem;
    padding: .15rem .2rem;
    box-sizing: border-box;
    border: 1px solid #11b57c;
}
.line-bottom:after {
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 1px;
    background: #ddd;
    -webkit-transform: scaleY(0.5);
    transform: scaleY(0.5);
    -webkit-transform-origin: 0 100%;
    transform-origin: 0 100%;
}
 .norms .title {
    position: relative;
    color: #808080;
    font-size: 12px;
    height: 30px;
    line-height: 30px;
}
.num,.number{
    float: left;
}

    
</style>
