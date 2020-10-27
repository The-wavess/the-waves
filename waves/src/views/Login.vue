<template>
  <div>
    <header class="login_header">
      <a href="/"><img class="logo" src="img/header/logo.png" /></a>
    </header>
    <div class="login_content">
      <div class="login_cont1">
        <img src="img/mt/登录.jpg" />
      </div>
      <div class="login_cont2">
        <form action="" method="post">
          <div class="login_cont2_1"></div>
          <span>
            账号登记
            <a href="#"
              >手机动态码登录<img class="shouji" src="img/mt/手机.png"
            /></a>
          </span>
          <div class="phone">
            <span class="text"> +86&nbsp;> </span>
            <input class="text" type="hidden" name="countrycode" value="86" />
            <input type="text" v-model="phone" placeholder="手机号" />
          </div>
          <div class="phone">
            <img src="img/mt/密 码.png" />
            <input
              class="pwd"
              type="password"
              v-model="upwd"
              name=""
              placeholder="密码"
            />
          </div>
          
          <div class="login_cont2_4">
            <a href="#">忘记密码？</a>
          </div>
          <div class="login_cont2_5">
            <input type="button" @click="handle" value="登录" />
          </div>
          <p class="login_cont2_6">
            还没有账号？
            <a href="/register">免费注册</a>
          </p>
        </form>
        <div class="login_cont3">
          <h3 class="">
            <span>用合作网站账号登录</span>
          </h3>
          <div class="login_cont3_2">
            <span style="background-image: url(img/mt/QQ.png)"></span>
          </div>
        </div>
      </div>
    </div>
    <footer class="login_footer">
      <div class="login_foot1">
        <ul>
          <li><a href="#">关于美团</a></li>
          <li><a href="#">加入我们</a></li>
          <li><a href="#">商家入驻</a></li>
          <li><a href="#">帮助中心</a></li>
          <li><a href="#">美团手机版</a></li>
        </ul>
      </div>
      <div>
        <span>©2020</span>
        <a href="#" class="text">美团网团购</a>
        meituan.com
        <a href="#" class="text">京ICP证070791号</a>
        京公网安备11010502025545号
      </div>
    </footer>
  </div>
</template>

<script>
export default {
  data(){
    return{
      phone:'',
      upwd:''

    }
  },
  methods:{
    handle(){
      // console.log(this.phone)
      this.axios.post('/logins','phone='+this.phone+'&upwd='+this.upwd).then(res=>{
       console.log(res.data)
      })
    }
  }
}
</script>

<style scoped>
.login_header {
  width: 980px;
  height: auto;
  margin: 40px auto 30px;
}

.logo {
  width: 130px;
  height: 47px;
  cursor: pointer;
}
.login_content {
  width: 980px;
  margin: 0 auto 70px;
}
.login_content::after {
  content: "";
  clear: both;
  display: block;
}
.login_cont1 {
  width: 480px;
  height: 370px;
  margin-right: 115px;
  float: left;
}
.login_cont2 {
  width: 270px;
  margin: 0 auto;
  float: left;
}
.login_cont2 > form {
  margin-bottom: 10px;
  position: relative;
}
.login_cont2_1 {
  height: 18px;
  margin: 10px auto;
  margin-top: 0;
  padding: 10px;
  border: 1px solid #f5d8a7;
  border-radius: 2px;
  visibility: hidden;
}
.login_cont2 > form > span {
  color: #666;
  font-size: 14px;
}
.login_cont2 > form > span > a {
  padding-right: 16px;
  color: #666;
  float: right;
  font-size: 12px;
  position: relative;
}
.shouji {
  width: 16px;
  height: 16px;
  position: absolute;
  top: 50%;
  right: 0;
  margin-top: -7px;
}
.phone {
  width: 100%;
  border: 1px solid #aaa;
  margin: 8px 0;
  position: relative;
}
.phone > input {
  width: 180px;
  height: 24px;
  padding: 5px;
  border: 0;
  line-height: 24px;
}
.phone > img {
  width: 20px;
  height: 20px;
  top: 15%;
  left: 5px;
  position: absolute;
}
.pwd {
  margin-left: 25px;
}
.login_cont2_4 {
  padding-bottom: 8px;
  font-size: 12px;
}
.login_cont2_4::after {
  content: "";
  display: block;
  clear: both;
}
.login_cont2_4 > a {
  float: right;
  color: #fe8c00;
}
.login_cont2_5 {
  padding: 8px 0 8px 0;
}
.login_cont2_5 > input {
  width: 270px;
  color: #222;
  background-image: linear-gradient(135deg, #ffd000, #ffbd00 100%);
  padding: 7px 20px 6px;
  font-size: 14px;
  font-weight: 700;
  text-align: center;
  border: 0;
  border-radius: 2px;
  cursor: pointer;
}
.login_cont2_6 {
  font-size: 14px;
  color: #666;
}
.login_cont3 {
  width: 270px;
  margin-top: 20px;
}
.login_cont3 > h3 {
  position: relative;
  margin-bottom: 30px;
  border-bottom: 1px solid #ccc;
  width: 100%;
  overflow: visible;
}
.login_cont3 > h3 > span {
  position: absolute;
  top: -10px;
  left: 50%;
  margin-left: -75px;
  width: 150px;
  text-align: center;
  font-size: 14px;
  color: #666;
  background: #fff;
  font-weight: 400;
}
.login_cont3_2 {
  padding-left: 88px;
  height: 18px;
}
.login_cont3_2 span {
  width: 18px;
  height: 18px;
  background-position: 50%;
  background-size: cover;
  background-repeat: no-repeat;
}
.login_footer {
  margin: 0 auto 30px;
  clear: both;
  width: 980px;
  font-size: 12px;
  color: #999;
}
.login_foot1 {
  margin-bottom: 20px;
  padding: 12px 0;
  border-top: 1px solid #eee;
  border-bottom: 1px solid #eee;
}
.login_foot1 ul {
  color: #eee;
  display: flex;
}
.login_foot1 > ul > li {
  margin: 5px 0;
  padding: 0 16px;
  line-height: 14px;
}
.login_foot1 > ul > li > a,
.text {
  color: #999;
}
/* 验证手机号的样式 */
.msg{
  padding: 3px 10px;
  font-size: 12px;
}
.success{
  border: 1px solid green;
  background: rgb(98, 255, 98);
  color: green;
}
.fail{
  border: 1px solid red;
  background: pink;
  color: red;
}
</style>
