import Vue from 'vue'
import VueRouter from 'vue-router'
import move_index from '../views/Index.vue'
import move_men from '../views/move_men.vue'
import move_detail from '../views/move_detail.vue'
import move_ding from '../views/move_ding.vue'
import move_xiang from '../views/move_xiang.vue'
import move_ying from '../views/move_ying.vue'
import map from '../views/ditu.vue'

Vue.use(VueRouter)

const routes = [
  {
    path:'/map',
    component:map
  },
  {
    path: '/men',
    name: 'men',
    component:move_men
  },
{
  path:'/detail',
  component:move_detail
},
{
  path:'/ying',
  component:move_ying
},
{
  path:'/ding',
  component:move_ding
},
{
  path:'/xiang',
  component:move_xiang
},
{
  path:'/index',
  component:move_index
}
//   {
//     path: '/about',
//     name: 'About',
//     // route level code-splitting
//     // this generates a separate chunk (about.[hash].js) for this route
//     // which is lazy-loaded when the route is visited.
//     component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
//   }
 ]

const router = new VueRouter({
  routes
})

export default router
