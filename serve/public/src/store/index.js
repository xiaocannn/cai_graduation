//引入
import Vue from 'vue';
import Vuex, {
    Store
} from 'vuex';

import state from './state.js';
//使用
Vue.use(Vuex);

// 核心概念
// 1. store ： 一个用于存储仓库
// 2. state ：状态（数据，相当于组件中的data）
// 3. getters:（理解为组件中的computed，只读）
// 4. mutations ：负责更改state中的数据（同步，理解为组件中的methods）
// 5. actions : 类似于 mutations，负责做异步操作
// * actions用来操作mutations，mutations用来操作state

const store = new Store({
    state,
    //同步操作
    mutations: {
        //查询对应的用户的购物车列表
        changeCartlist(state, payload) {
            state.cartlist = [];//每次push之前先把原来的清空，否则会在原来的基础上加了数据
            payload.map(function (item) {
                state.cartlist.push(item);
            })
        },
        // addgoods(state,payload){

        // },
        // delgoods(state,payload){

        // },
    },
    //异步操作
    actions: {
        getcartData(context) {
            var user = JSON.parse(localStorage.getItem('user'));
            // 查询对应的用户的购物车列表的异步请求
            this._vm.$axios({
                method: 'get',
                url: 'http://localhost:3000/cart/queryAll',
                params: { 
                    tel: user
                }
            }).then(res => {
                var data = res.data;
                // console.log(data);
                context.commit('changeCartlist', data);
            });
            // console.log(context);
        },
        addcartgoods(context, payload) {
            this._vm.$axios({
                method: 'get',
                url: 'http://localhost:3000/cart/addgoods',
                params: payload,
            }).then(res => {
                // context.commit('addgoods',res);
            });
        },
        delcart(context, payload) {
            this._vm.$axios({
                method: 'get',
                url: 'http://localhost:3000/cart/delOne',
                params: payload,
            }).then(res => {
                // context.commit('delgoods',res);
            });
        },
        uploadcart(constext, payload) {
            this._vm.$axios({
                method: 'get',
                url: 'http://localhost:3000/cart/updata',
                params: payload,
            }).then(res => {
                // console.log(res);
            })
        }
    },
});

export default store;
