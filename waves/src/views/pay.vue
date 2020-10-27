<template>
  <div id="body" class="container">
    <!-- 倒计时 -->
    <div class="cd">
      <i class="icon icon-sand"></i>
      <span>
        请在
        <span class="cd-time">00小时{{minute}}分{{second}}秒
        </span>
        内完成支付, 超时订单会自动取消
      </span>
    </div>
<!-- 项目 -->
<div class="right right-widen">
  <div class="order clear-fix">
    <span class="block-left">
      <div class="order-name">项目：老成都火锅烧烤4-6人餐</div>
    </span>
    <span class="block-right">
      <div class="amount"> 应付金额 ¥ </div>
    </span>
</div>
<div class="payment-container">
  <div class="credit clear-fix disabled">
    <div class="block-left">
       <input type="checkbox" class="checkbox-shim" readonly="">
           <div class="checkbox"><span class="checkbox-icon"></span></div>
           <label class="credit-total">
             美团余额: 
             <span class="credit-amount">¥0.45</span> 
             <span class="credit-description">（PC端暂不支持余额支付功能）</span>
           </label>
    </div>
    <div class="block-right">
       支付：
       <span class="credit-price">¥0.45</span>
    </div>
</div>
                    
      <div class="payment payment-0">
         <div class="payment-type">
            <ul class="payment-menu">
              <li class="payment-tab payment-tab-0" data-target="0">支付宝/微信</li>
              <li class="payment-tab payment-tab-1" data-target="1">个人网银支付</li>
            </ul> 
            <ul class="payment-tips">
              <li><a class="payment-tips-feedback" href="http://www.meituan.com/vote/survey/7" target="_blank">意见反馈</a></li>
               <li>
                  <span class="payment-dropdown">
                     <el-dropdown>
                         <span class="el-dropdown-link">
                            支付帮助<i class="el-icon-arrow-down el-icon--right"></i>
                         </span>
                         <el-dropdown-menu slot="dropdown">
                            <el-dropdown-item>没有开通网上银行如何购买？</el-dropdown-item>
                            <el-dropdown-item>没找到我常用的网上银行？</el-dropdown-item>
                            <el-dropdown-item>什么是地方银行？</el-dropdown-item>
                            <el-dropdown-item disabled>无法跳转到对应的支付页面支付？</el-dropdown-item>
                            <el-dropdown-item divided>网上银行扣款后，订单仍显示"未付款"怎么办？</el-dropdown-item>
                         </el-dropdown-menu>
                     </el-dropdown>
                    </span>
                </li> 
              </ul>
       <div class="payment-list payment-list-0">
         <ul class="clear-fix">
           <li>
            <input type="radio" name="thirdpart_pay" id="thirdpart_pay_wxqrpay" data-type="wxqrpay" data-banktypeid="" data-bankcode="" checked="">
            <label class="payment-icon" for="thirdpart_pay_wxqrpay">
              <img src="https://p1.meituan.net/pay/pc_wxqrpay.png" disabled="" alt="微信">
            </label>
             <span class="payment-weak-tip" style="visibility:visible;"></span>
            </li>
            <li>
             <input type="radio" name="thirdpart_pay" id="thirdpart_pay_alipay" data-type="alipay" data-banktypeid="" data-bankcode=""><label class="payment-icon" for="thirdpart_pay_alipay"><img src="https://p0.meituan.net/pay/alipaypcnew.png" disabled="" alt="支付宝"></label>
             <span class="payment-weak-tip" style="visibility:hidden;"></span>
            </li>
          </ul>
       </div>
     </div>

    <div class="payment-submit-area clear-fix">
      <div class="amount">支付 ¥ <span class="amount-price">110.00</span></div>
        <div class="payment-submit"><a class="btn">去付款</a></div>
          <div class="payment-back"><a>返回修改订单</a></div>
           </div>
         </div>
      </div>
    </div>
  </div>
</template>

<script scoped>
  export default {
  data() {
    return {
      minutes:30,
      seconds: 0,
      time:0
    }
  },
  mounted() {
    this.add();

    //取消订单
    let THIS=this;
    THIS.time=1800;
    setInterval(THIS.countDown,1000);


    this.axios.get('/buy').then(res=>{
       this.cart= res.data.results;
    })
  },
  methods: {
    // 倒计时
    num: function(n) {
      return n < 10 ? "0" + n : "" + n;
    },
    add: function() {
      var _this = this;
      var time = window.setInterval(function() {
        if (_this.seconds === 0 && _this.minutes !== 0) {
          _this.seconds = 59;
          _this.minutes -= 1;
        } else if (_this.minutes === 0 && _this.seconds === 0) {
          _this.seconds = 0;
          window.clearInterval(time);
        } else {
          _this.seconds -= 1;
        }
      }, 1000);
    },
    goBack() {
      this.$router.back();  //返回上一页
    },
    //倒计时取消页面，返回上个页面
    countDown(){
      let THIS=this;
      THIS.time--;
    }

  },
  watch: {
    //监听分钟
    second: {
      handler(newVal) {
        this.num(newVal);
      }
    },
    //监听秒钟
    minute: {
      handler(newVal) {
        this.num(newVal);
      }
    },
     //监听取消页面
    'time':function(newVal,oldVal){
      if(newVal==0){
         this.$router.push('/shopping'); 
          //跳转到指定页面
       }
    }

  },
  computed: {
    second: function() {
      return this.num(this.seconds);
    },
    minute: function() {
      return this.num(this.minutes);
    }
  }
  }
</script>
<style scoped>
#body {
  padding: 20px 0 40px ;
  background-color: #e5e5e5;
}
.container{
  width:1180px;
  margin: 0 auto;
}
.cd{
    height: 40px;
    line-height: 40px;
    margin-bottom: 20px;
    background-color: #fff;
    box-shadow: 0 3px 5px 0 rgba(0,0,0,.1);
    border-radius: 4px;
    text-align: center;
    font-size: 14px;
    color: #666;
}
.icon-sand {
    width: 20px;
    height: 20px;
    vertical-align: middle;
    background-position: 0 -63px;
}
.icon, .icon-sand {
    display: inline-block;
}
.icon {
    font-size: 0;
    background-size: 168px;
}
#body {
    margin: 0;
    color: #666;
    font-size: 14px;
    line-height: 1.5;
    font-family: PingFang SC,Hiragino Sans GB,WenQuanYi Micro Hei,tahoma,sans-serif;
}
.order{
  line-height: 24px;
  padding: 20px;
  background: #fff;
  border: 1px solid #e5e5e5;
  border-radius:4px;
  margin-bottom: 10px;

}
 .order>.block-left{
  width:75%;
  position: relative;
}


.order-name {
    font-size: 20px;
    color: #222;
    width: 600px;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
    margin-right: 15px;
}

.order .block-right {
    width: 25%;
}

.amount {
    text-align: right;
    font-size: 14px;
    color: #f60;
}

.amount-price {
    font-size: 30px;
    font-family: arial,sans-serif;
}

.payment-container {
    background: #fff;
    border: 1px solid #e5e5e5;
    border-radius: 4px;
    padding: 0 20px 50px;
}

.credit.disabled {
    color: #ccc;
}


/* .block-left, .block-right {
    width:50%;
    float: left;
} */

.checkbox-shim {
    float: left;
    display: none;
    cursor: pointer;
    margin-top: 25px; 
   
}

button, input, select, textarea {
    margin: 0;
    font: inherit;
    color: inherit;
}

a, button, input, select {
    padding: 0;
} 

.checkbox {
    float: left;
    cursor: pointer;
    margin-top: 22px;
}
.checkbox-icon {
    width: 14px;
    height: 14px;
    display: block;
    position: relative;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 2px;
    transition: background-color .1s;
}
/* 美团余额 */
.credit-total {
    float: left;
    cursor: pointer;
    padding-left: 10px;
}
.credit-amount {
    margin-left: 10px;
    font-family: arial,sans-serif;
}
.credit-description {
    color: #666;
}
/* right */
.credit >.block-right {
    display: none;
}

.block-right {
    text-align: right;
}




.credit {
    height: 61px;
    user-select: none;
    line-height: 60px;
    border-bottom: 1px dashed #e5e5e5;
    transition: border .1s;
    font-size: 16px;
}


.payment {
    margin-top: 30px;
}

.payment-type {
    position: relative;
}

.payment-menu {
    height: 39px;
    border-bottom: 1px solid #e5e5e5;
}

ul {
    margin: 0;
    padding: 0;
    list-style: none;
}

.payment-0 .payment-tab-0, .payment-1 .payment-tab-1, .payment-2 .payment-tab-2 {
    color: #000;
    background: #fff;
    border: 1px solid #ddd;
    border-bottom: 1px solid #fff;
    border-radius: 2px;
}

.payment-tab {
    float: left;
    cursor: pointer;
    user-select: none;
    line-height: 20px;
    padding: 9px 15px;
    border: 1px solid transparent;
}




.payment-tips {
    top: 11px;
    right: 0;
    font-size: 12px;
    position: absolute;
}


.payment-tips li {
    float: right;
    line-height: 22px;
    margin-left: 15px;
}

.payment-tips-feedback {
    color: #666;
}


.payment-dropdown {
    cursor: pointer;
    position: relative;
    padding-right: 15px;
    display: inline-block;
}




.payment-back, .payment-submit {
    float: right;
    margin-top: 14px;
}

.payment-submit .btn {
    font-size: 14px;
    padding: 10px 36px;
    border: none;
}

.payment-back a {
    font-size: 12px;
    color: #666;
}

.btn {
    background-color: #f90;
    border-radius: 100px;
    background-image: linear-gradient(180deg,#ffa114,#f59300);
}



.payment-0 .payment-list-0, .payment-1 .payment-list-1, .payment-2 .payment-list-2 {
    display: block;
}

.payment-list {
    display: none;
    margin-top: 30px;
}

.payment-list li {
    float: left;
    width: 214px;
    cursor: pointer;
    margin: 0 0 10px;
}

.payment-list input {
    margin: 0;
    padding: 0;
    vertical-align: middle;
}

input[type=radio] {
    cursor: pointer;
}

.payment-icon {
    position: relative;
    cursor: pointer;
    margin-left: 10px;
    display: inline-block;
    border: 1px solid #e5e5e5;
    border-radius: 2px;
    padding-right: 4px;
}

.payment-icon img {
    width: 145px;
    height: 32px;
}

img {
    border: 0;
    vertical-align: middle;
}
</style>

