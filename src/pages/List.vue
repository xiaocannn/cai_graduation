<template >
    <div class="list">
        <Header></Header>
        <Nav></Nav>
    </div>
</template>
<script>
import Header from "../components/public/Header.vue";
import Nav from "../components/list/nav";

export default {
    components:{
        Header,
        Nav,
    }
}
</script>
<style ang="css" scoped>
.list{
    width:100%;
    height:100%;
    background: #fff;
    position:fixed;
    overflow-y:auto;
    z-index: 99;
}
</style>