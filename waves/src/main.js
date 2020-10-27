import Vue from 'vue'
import App from './App.vue'
import router from './router'
import move_header from './components/move_header.vue'
import move_footer from './components/move_footer.vue'
import map from './components/map.vue'
import axios from 'axios';
//嘉欣
import Header from './components/Header.vue'
import Footer from './components/Footer.vue'
import map_s from './components/map_s.vue'
import map_m from './components/map_m.vue'
import map_b from './components/map_b.vue'

//韦伟
import BaiduMap from 'vue-baidu-map'
Vue.use(BaiduMap,{
  ak:'u2icS4Buyt7PBrgPFgyNsG5mAGcsisgI'
})


axios.defaults.baseURL='http://localhost:3000';
Vue.prototype.axios=axios;

Vue.component("move_header",move_header)
Vue.component("move_footer",move_footer)
Vue.component("map2",map)
//嘉欣

Vue.component("map_s",map_s);
Vue.component("map_m",map_m);
Vue.component("map_b",map_b);
//朱绍银
import Footer0 from './components/Footer0'
import Footer1 from './components/Footer1'
import Footer2 from './components/Footer2'

Vue.component("my-header",Header)
Vue.component("my-footer0",Footer0)
Vue.component("my-footer1",Footer1)
Vue.component("my-footer2",Footer2)
Vue.config.productionTip = false


router.afterEach((to, from, next) => {
  window,
    scrollTo(0, 0)
})
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
