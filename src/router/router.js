//引入模块
import Vue from 'vue';
import VueRouter from 'vue-router';

// 模块化必须显式使用Vue.use来加载路由功能
Vue.use(VueRouter);

//引入各个主组件（一级组件）
//引入首页组件
import Home from '../pages/Home.vue';
//引入分类组件
import Classify from '../pages/Classify.vue';
//引入吃饭吧组件
import Eat from '../pages/Eat.vue';
//引入购物车组件
import Cart from '../pages/Cart.vue';
//引入我的易果组件
import Mine from '../pages/Mine.vue';
//引入我的嵌套组件
//引入登录组件
import Login from '../pages/Login.vue';
//引入注册组件
import Reg from '../pages/Reg.vue';
//引入详情组件
import Goods from '../pages/Goods.vue';
import List from '../pages/List.vue';
//引入搜索组件
import Search from '../pages/Search.vue';
//引入嵌套组件

//实例化路由
var router = new VueRouter({
    routes: [{
        path: '/',//重定向
        redirect: '/home',
    }, {
        name: 'home',
        path: '/home',
        component: Home
    }, {
        name: 'classify',
        path: '/classify',
        component: Classify
    }, {
        name: 'mine',
        path: '/mine',
        component: Mine
    },{
        name:'search',
        path:'/search',
        component:Search
    },{
        name:'classify',
        path:'/classify',
        component:Classify
    },{
        name:'eat',
        path:'/eat',
        component:Eat
    }
    ,{
        name:'goods',
        path:'/goods',
        component:Goods
    }
    ,{
        name:'list',
        path:'/list',
        component:List
    },{
        name:'cart',
        path:'/cart',
        component:Cart,
        meta: { requiresAuth: true }
    },{
        name:'mine',
        path:'/mine',
        component:Mine,
    },{
        name:'login',
        path:'/login',
        component:Login
    },{
        name:'reg',
        path:'/reg',
        component:Reg
    }]
});

// 全局路由守卫
// 路由拦截：
router.beforeEach((to,from,next)=>{
    // console.log(to,from,next);
    if(to.meta.requiresAuth){
        // 需要登录的模块(购物车组件)，判断是否已登录
        let username=JSON.parse(localStorage.getItem('user'));
        if(username){
            next();
        }else{
            //重定向到登录页面
            next({path:'/login'});
        }
    }else{
        next();
    }
})



// 暴露路由对象，为后续挂载容器做准备
export default router;
