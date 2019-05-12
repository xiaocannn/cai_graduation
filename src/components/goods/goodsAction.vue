<template>
    <div>
        <van-goods-action>
  <van-goods-action-mini-btn
    icon="chat-o"
    text="客服"
  />
  <van-goods-action-mini-btn
    icon="cart-o"
    text="购物车"
    @click="onClickMiniBtn"
  />
  <van-goods-action-big-btn
    text="加入购物车"
    @click="addCart"
    v-if="goodList"
  />
  <van-goods-action-big-btn
    primary
    text="立即购买"
  />
</van-goods-action>
    </div>
</template>
<script>
export default {
  props:['goodList','pic','num'],
  data(){
    return {
      tel:'',
    }
  },
  methods:{
    addCart(){
      // console.log(this);
      var data={_id:this.goodList.id,goods:this.goodList.name,num:this.num,price:this.goodList.price,image:this.pic[0],tel:this.tel}
      // console.log(data);
      //获取购物车数量
      this.$store.dispatch('addcartgoods',data);
    },
    //跳转到购物车页面
    onClickMiniBtn(){
      this.$router.push({path:'/cart'});
    },
  },
  created(){
    var user=JSON.parse(localStorage.getItem('user'));
    this.tel=user;
  }
}
</script>