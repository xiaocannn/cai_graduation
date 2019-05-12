<template>
    <header  @click.capture="routergo">
        <a href="javascript:;" >登录</a>
        <br />
        <a href="javascript:;">注册</a>
    </header>
</template>
<script type="text/javascript">
     export default{
        methods:{
            routergo(e){
                // console.log(e.target.innerHTML);
                if(e.target.innerHTML=="登录"){
                    this.$router.push('/login');
                }else if(e.target.innerHTML=="注册"){
                    this.$router.push('/reg');
                }
            }
        }
     }
</script>