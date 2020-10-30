<template>
  <div>
      <!-- 表头 -->
    <my-header></my-header>
    <div class="orders_center">
      <!-- 左边栏 -->
      <div style="float: left">
        <!-- 我的美团 -->
        <div class="mymt">
          <p><router-link to="/account">我的美团</router-link></p>
          <p><router-link to="/orders">我的订单</router-link></p>
          <ul>
            <li>
              <a href="#">全部订单</a>
              <span class="spa">></span>
            </li>
            <li>
              <a href="#">待付款</a>
              <span class="spa">></span>
            </li>
            <li>
              <a href="#">待使用</a>
              <span class="spa">></span>
            </li>
            <li>
              <a href="#">待评价</a>
               <span class="spa">></span>
            </li>
            <li>
              <a href="#">退款/售后</a>
               <span class="spa">></span>
            </li>
          </ul>
          <p class="group"><router-link to="/collections">我的收藏</router-link></p>
          <ul>
            <li>
              <a href="#">收藏的商家</a>
              <span class="spa">></span>
            </li>
            <li>
              <a href="#">收藏的团购</a>
              <span class="spa">></span>
            </li>
          </ul>
          <p class="group"><router-link to="/vouchers">抵用券</router-link></p>
          <ul>
            <li>
              <a href="#">可用劵</a>
              <span class="spa">></span>
            </li>
            <li>
              <a href="#">失效劵</a>
              <span class="spa">></span>
            </li>
          </ul>
          <p class="group"><router-link to="/setting">个人信息</router-link></p>
          <ul>
            <li>
              <a href="#">账户信息</a>
              <span class="spa">></span>
            </li>
          </ul>
        </div>
        <!-- 扫一扫 -->
        <div class="orders_app">
          <div>
            <img src="../../public/img/mt/mt-header/ma.png" />
            <p class="app_p">美团APP手机版</p>
            <p class="app_p">
              <span style="color: red">1元起</span>
              <span>吃喝玩乐</span>
            </p>
          </div>
        </div>
      </div>
      <!-- 订单栏 -->
      <div class="orders_box">
        <div>
          <ul class="orders_ul">
            <li class="active">全部订单</li>
            <li>待支付</li>
            <li>待使用</li>
            <li>待评价</li>
            <li>退款/售后</li>
          </ul>
        </div>
        <div class="order_dingdan" >
          <p class="orders_text" v-show="noShow">您暂时还没有订单</p>
          <div v-for="(value,i) of sql" :key="i" class="text_1">
            <div class="order_img">
                <a href=""><img :src="value.pic_path"></a>
            </div>
            <div class="order_info order_img" >
              <a href=""> <p>{{value.u_title}}</p></a>
            
              <p>
                <span>下单时间：</span>
                <span>{{value.times}}</span>
              </p>
              <p>
                <span>数量：</span>
                <span>{{value.num}}</span>
              </p>
            </div>
            <div class="order_price order_img">
              <span>总价：￥</span>
              <span>{{value.num*value.total_fee}}</span>
            </div>
            <div class="order_status order_img">待付款</div>
          </div>
        </div>
        <div class="btn_box">
          <a href="#" class="left_arrow"
            ><img src="../../public/img/mt/mt-header/up.png"
          /></a>
          <a href="#" class="right_arrow"
            ><img src="../../public/img/mt/mt-header/next.png"
          /></a>
        </div>
      </div>
    </div>
    <!-- 美团导航 -->
    <my-footer0></my-footer0>
    <!-- 页脚 -->
    <my-footer1></my-footer1>
    <my-footer2></my-footer2>
  </div>
</template>

<script>
export default {
  data(){
    return{
      sql:[],
      noShow:true
    }
  },
  created(){
    this.$router.go
  },
  mounted(){
    this.axios.get('/order').then(res=>{
      if(res.data.code==1){
        this.noShow=false;
        console.log(res.data);
        this.sql = res.data.result;
      }else{
        this.noShow=true;
      }
      
    });
  }
}
</script>

<style scoped>
.spa{
  /* margin-left: 100px; */
 float: right;
}
.text_1::after{
content: "";
clear: both;
display: block;
}
.orders_center {
  margin: 20px auto;
  width: 1190px;
  margin-bottom: 80px;
}
.mymt {
  width: 230px;
  background: #fff;
  border: 1px solid #e5e5e5;
  border-radius: 4px;
  padding-bottom: 20px;
}
.mymt > p {
  margin: 15px 20px 0 30px;
}
.mymt p a {
  font-size: 16px;
  color: #222;
}
.mymt > p > a:hover {
  color: #faaf00;
}
.mymt > ul li {
  margin: 15px 20px 0 30px;
}
.mymt > ul li a {
  font-size: 14px;
  color: #666;
}
.mymt > ul li c {
  color: #666;
  float: right;
}
.mymt .group {
  margin: 30px 20px 0 30px;
}
.orders_app {
  width: 228px;
  height: 165px;
  margin-top: 10px;
  background-color: #fff;
  border: 1px solid #e5e5e5;
}
.orders_app div {
  margin: 10px auto 0 auto;
}
.orders_app div > img {
  width: 75px;
  height: 75px;
  padding: 10px;
  margin: 0 auto;
  display: block;
}
.app_p {
  font-size: 16px;
  text-align: center;
}
.app_p span {
  font-size: 12px;
}
.orders_box {
  width: 908px;
  background: #fff;
  border: 1px solid #e5e5e5;
  border-radius: 4px;
  padding: 20px 20px 0 20px;
  float: right;
  position: relative;
}
.orders_ul {
  display: flex;
  margin-top: 10px;
}
.active {
  border-bottom: 2px solid #ffc300;
}
.orders_ul > li {
  font-size: 20px;
  color: #222;
  line-height: 26px;
  width: 105px;
  height: 38px;
  text-align: center;
  margin-right: 25px;
  font-weight: 500;
  cursor: pointer;
}
.orders_text {
  padding: 40px 0;
  text-align: center;
  font-size: 14px;
  color: #666;
}
.btn_box {
  position: absolute;
  left: 45%;
  margin: 20px auto;
}
.left_arrow,
.right_arrow {
  display: block;
  width: 38px;
  height: 38px;
  line-height: 38px;
  border: 1px solid #e5e5e5;
  border-radius: 50%;
  float: left;
  margin: 0 18px;
  text-align: center;
  font-size: 16px;
  cursor: pointer;
  user-select: none;
  color: #e5e5e5;
}
.right_arrow {
  margin: 0 10px;
}
.orders_center::after{
    content: "";
    display: block;
    clear: both;
}
/* 订单详情 */
.order_dingdan{
  padding: 20px 0;
  border-top: 1px solid #e5e5e5;
}
.order_dingdan::after{
  display: block;
  content: "";
  clear: both;
}
.order_img{
  float: left;
}
.order_img img{
  width: 90px;
  height: 90px;
  border-radius: 4px;
}
.order_info{
  height: 90px;width: 325px;
  position: relative;
  margin-left: 15px;
}
.order_info a>p{
  font-size: 16px;
  font-weight: 500;
  margin-bottom: 10px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  max-width: 300px;
}
.order_info>p span{
  color: #666;
  font-size: 12px;
  height: 18px;
}
.order_price{
  font-size: 12px;
  color: #666;
  line-height: 90px;
  text-align: center;
  width: 200px;

}
.order_status{
  font-size: 12px;
  color: #333;
  line-height: 90px;
  text-align: center;
  width: 100px;
}
</style>