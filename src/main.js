import Vue from 'vue'
import App from './App.vue'
import router from './router/router.js';
import 'weui';
Vue.config.productionTip = false;
//引入ui框架
// import iView from 'iview';

//引入Vant框架
import Vant from 'vant';
import 'vant/lib/index.css';
//使用Vant框架
Vue.use(Vant);
import'../src/base/base.css'
//使用ui框架
// Vue.use(iView);

import axios from 'axios';
Vue.prototype.$axios=axios;

import store from './store/index.js'

new Vue({
  render: h => h(App),
  router: router,
  store
}).$mount('#app')
