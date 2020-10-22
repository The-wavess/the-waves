import Vue from 'vue'
import App from './App.vue'
import router from './router'
import move_header from './components/move_header.vue'
import move_footer from './components/move_footer.vue'
import map from './components/map.vue'
import axios from 'axios';
axios.defaults.baseURL='http://localhost:3000';
Vue.prototype.axios=axios;

Vue.component("move_header",move_header)
Vue.component("move_footer",move_footer)
Vue.component("map2",map)
Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
