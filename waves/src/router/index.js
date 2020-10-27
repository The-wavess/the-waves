import Vue from 'vue'
import VueRouter from 'vue-router'
import move_index from '../views/move_Index.vue'
import move_men from '../views/move_men.vue'
import move_detail from '../views/move_detail.vue'
import move_ding from '../views/move_ding.vue'
import move_xiang from '../views/move_xiang.vue'
import move_ying from '../views/move_ying.vue'

//嘉欣
import details from '../views/Details.vue'
import index from '../views/jd_Index.vue'
import ex from '../views/ex.vue'
import img from '../views/img.vue'

//韦伟
import Home from '../views/Home.vue'
import Details from '../views/ktv_Details.vue'
import xiangqing from '../views/xiangqing.vue'


//朱绍银
// 组件片段
import Header from '../components/Header.vue'
import Footer0 from '../components/Footer0.vue'
import Footer1 from '../components/Footer1.vue'
import Footer2 from '../components/Footer2.vue'
import Carousel1 from '../components/Carousel1.vue'
// 页面组件
import Index from '../views/Index.vue'
import Login from '../views/Login.vue'
import Register from '../views/Register.vue'
import Vouchers from '../views/Vouchers'
import Orders from '../views/Orders'
import Setting from '../views/Setting'
import Account from '../views/Account'
import Collections from '../views/Collections'
//刘艳萍
import ms_Home from '../views/ms_Home.vue'
import shopping from '../views/shopping.vue'
import pay from '../views/pay.vue'

Vue.use(VueRouter)

const routes = [
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
  path:'/move_index',
  component:move_index
},
//嘉欣
{
  path: '/jd_index',
  name: 'index',
  component: index
},
{
  path: '/jd_details/:id',
  name: 'details',
  component: details
},
{
  path: '/ex',
  name: 'ex',
  component: ex
},
{
  path: '/img',
  name: 'img',
  component: img
},
//韦伟

{
  path: '/home',
  component: Home
},
{
  path:'/details/:fid',
  component: Details,
  props:true
},
{
  path:'/xiangqing/:lid',
  component: xiangqing
},
//朱绍银

{
  path:'/carousel1',
  component:Carousel1
},

{
  path:'/collections',
  component:Collections
},
{
  path:'/account',
  component:Account
},
{
  path:'/setting',
  component:Setting
},
{
  path:'/orders',
  component:Orders
},
{
  path:'/vouchers',
  component:Vouchers
},
{
  path:'/register',
  component:Register
},
{
  path:'/login',
  component:Login
},
{
  path:'/footer2',
  component:Footer2
},
{
  path:'/footer1',
  component:Footer1
},
{
  path:'/footer0',
  component:Footer0
},
{
  path:'/header',
  component:Header
},
{
  path: '/',
  name: 'Index',
  component: Index
},
{
  path: '/about',
  name: 'About',
},
//刘艳萍
{
  path: 'ms_Home',
  name: 'ms_Home',
  component: ms_Home
},
{
  path:'/shopping',
  component:shopping
},
{
  path:'/pay',
  component:pay
},
{
  path: '/ms_details',
  name: 'ms_Details',
  // route level code-splitting
  // this generates a separate chunk (about.[hash].js) for this route
  // which is lazy-loaded when the route is visited.
  component: () => import(/* webpackChunkName: "about" */ 
  '../views/ms_Details.vue'
  ),
  props:true
}
 ]

const router = new VueRouter({
  routes
})

export default router
