<template>
  <div>
      <!-- 表头 -->
    <my-header></my-header>
    <div class="orders_center">
      <!-- 左边栏 -->
      <div style="float: left">
        <!-- 我的美团 -->
        <div class="mymt">
          <p><a href="/account">我的美团</a></p>
          <p><a href="/orders">我的订单</a></p>
          <ul>
            <li>
              <a href="#">全部订单</a>
              <c>></c>
            </li>
            <li>
              <a href="#">待付款</a>
              <c>></c>
            </li>
            <li>
              <a href="#">待使用</a>
              <c>></c>
            </li>
            <li>
              <a href="#">待评价</a>
              <c>></c>
            </li>
            <li>
              <a href="#">退款/售后</a>
              <c>></c>
            </li>
          </ul>
          <p class="group"><a href="/collections">我的收藏</a></p>
          <ul>
            <li>
              <a href="#">收藏的商家</a>
              <c>></c>
            </li>
            <li>
              <a href="#">收藏的团购</a>
              <c>></c>
            </li>
          </ul>
          <p class="group"><a href="/vouchers">抵用券</a></p>
          <ul>
            <li>
              <a href="#">可用劵</a>
              <c>></c>
            </li>
            <li>
              <a href="#">失效劵</a>
              <c>></c>
            </li>
          </ul>
          <p class="group"><a href="/setting">个人信息</a></p>
          <ul>
            <li>
              <a href="#">账户信息</a>
              <c>></c>
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
            <li class="">个人信息</li>
          </ul>
        </div>
        <div>
          <p class="orders_text"></p>
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

<style scoped>
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
  font-size: 16px;
  color: #222;
  margin: 15px 20px 0 30px;
}
.mymt p a {
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
  border-top: 1px solid #e5e5e5;
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
</style>