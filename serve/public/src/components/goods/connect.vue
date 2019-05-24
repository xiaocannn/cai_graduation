<template>
  <div class="productInfor">
    <p class="title" v-text="goodList.name">
        <!-- 原膳澳洲精选S级牛腩块500g -->
    </p>
    <p class="subhead">
      <span v-text="goodList.explain">
        <!-- 天然牧草草饲 肥瘦比约3:7 -->
      </span>
    </p>
    <div class="price">
      <p class="priceIn">
        <span class="priceRed">
          <i>¥</i>
          <span v-text="goodList.price"></span>
        </span>
      </p>
      <!-- <p class="area">
        产地：
        <span class="name" v-text="goodList.city">
        </span>
      </p> -->
    </div>
    <div class="sevenDay line-top backGauge">
      <van-icon name="warning-o"  class="icon"/>&nbsp;&nbsp;不支持7天无理由退货
    </div>
  </div>
</template>
<script type="text/javascript">
     export default{
        data(){
            return {
                // goodList:'',
            }
        },
        props:['goodList'],
     }
</script>
<style scoped>
.productInfor {
    padding:10px 2% 0 3.5% ;
}
.productInfor .title {
    height: 30px;
    line-height: 30px;
    font-size: 14px;
    color: #333;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
.productInfor .subhead {
    padding-right: .32rem;
    font-size: .38rem;
    color: #808080;
    padding-top: .25rem;
    line-height: .8rem;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
    height: 1.2rem;
}
.productInfor .price {
    position: relative;
    padding: 0rem 0 0rem;
    overflow: hidden;
}
.productInfor .price .priceIn {
    float: left;
}
.productInfor .price .priceIn .priceRed {
    font-size: .66rem;
    color: #ff6353;
}
.productInfor .price .priceIn .priceRed i {
    font-style: normal;
}
.productInfor .price .area {
    float: right;
    font-size: .34rem;
    color: #808080;
    padding-right: .32rem;
    padding-top: .32rem;
}
.productInfor .price .area .name {
    color: #333;
    line-height: .66rem;
}
.sevenDay{
    margin-top: 10px;
    border-top: 2px solid #f8f8f8;
    height: 30px;
    line-height: 30px;
    font-size: 12px;
    color:#ccc;
}
.sevenDay .icon{
    padding-top: 8px;
}
</style>
