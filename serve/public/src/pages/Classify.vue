<template>
<div style="background:#fff">
    <Header></Header>
    <Header1></Header1>

</div>
</template>
<script>
// 头部搜索
import Header from "../components/public/Header.vue";
 import Header1 from '../components/classify/header1.vue';
export default {
    components:{
        Header,
        Header1
    }
}
</script>