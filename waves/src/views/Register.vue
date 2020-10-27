<template>
	<div>
		<header class="reg_header">
			<div id="header1">
				<a href="/" ><img class="logo" src="img/header/logo.png" ></a>
				<div class="sign">
					<span>已有美团账号？</span>
					<a href="/login">登录</a>
				</div>
			</div>
		</header>
				<div class="content">
					<div class="content1">
						<span class="reg_text">手机号</span>
						<input type="reg_text" @input="vail" v-model="phone" @focus="tishido">
						<span class="tishi" v-show="tishiShow">注册成功后，全美团通用</span>
						<span class="msg" :class="spanClass1">{{errMsg1}}</span>
					</div>
					<div class="cont2">
						<div class="">
							<input class="cont_1" type="button" value="免费获取短信动态码" />
						</div>
					</div>
					<div class="content1">
						<span class="reg_text">短信动态码</span>
						<input type="reg_text">
					</div>
					<div class="content1 cont3">
						<span class="reg_text">创建密码</span>
						<input type="reg_text" @input="upwdVail" v-model="upwd">
						<span class="msg" :class="spanClass2">{{errMsg2}}</span>
						<div class="cont3_1">
							<span>弱</span>
							<span>中</span>
							<span>强</span>
						</div>
						
					</div>
					<div class="content1">
						<span class="reg_text">确认密码</span>
						<input type="reg_text" @input="upwdwordVail" v-model="upwdword">
						<span class="msg" :class="spanClass3">{{errMsg3}}</span>
					</div>
					<div class="content1">
						<input class="cont6" type="button" @click="handle" name="" id="" value="同意以下协议并注册" />
					</div>
					<div class="cont7">
						<a href="#">《美团点评用户服务协议》</a>
						<a href="#">《美团点评隐私政策》</a>
					</div>
				</div>
		<footer class="reg_footer">
			<p>
				©<a href="#">meituan.com</a>&nbsp;
				<a href="#">京ICP证070791号</a>&nbsp;
				<span>京公网安备11010502025545号</span>
			</p>
		</footer>
	</div>
</template>

<script>
export default {
  data() {
    return {
	  phone: "",
	  tishiShow:true,
	  errMsg1:"",
	  errMsg2:"",
	  errMsg3:"",
	  upwd: "",
	  upwdword:"",
      spanClass1:{
        success:false,
        fail:false,
      },
      spanClass2:{
        success:false,
        fail:false,
	  },
	  spanClass3:{
        success:false,
        fail:false,
      },
    };
  },
  methods: {
	tishido(){
		this.tishiShow=false;
	},
    vail(){
      // 用正则验证手机号的格式是否正确
      var reg=/^1[3-9]\d{9}$/;
      var result=reg.test(this.phone.trim());
      // 如果phone为空
      if (this.phone.trim()==="") {
        // 就清除errMsg的内容
        this.errMsg1="",
        // 清除success和fail两个class的残留
        this.spanClass1={success:false,fail:false}
      }else if (result==true) {
        this.spanClass1={success:true,fail:false};
        this.errMsg1="手机号格式正确"
      }else{
        this.spanClass1={success:false,fail:true};
        this.errMsg1="手机号格式不正确"
      }
      
	},
	upwdVail(){
		// 用正则验证密码是否正确
	  var regm=/^[0-9A-Za-z]{6,18}$/
      var resultm=regm.test(this.upwd.trim());
		// 如果upwd为空
      if (this.upwd.trim()==="") {
        // 就清除errMsg的内容
        this.errMsg2="",
        // 清除success和fail两个class的残留
        this.spanClass2={success:false,fail:false}
      }else if (resultm==true) {
        this.spanClass2={success:true,fail:false};
        this.errMsg2="密码正确"
      }else{
        this.spanClass2={success:false,fail:true};
        this.errMsg2="密码错误"
	  }
	},
	upwdwordVail(){
		//   校验确认密码
	if (this.upwdword.trim()==="") {
		 // 就清除errMsg的内容
        this.errMsg3="",
        // 清除success和fail两个class的残留
		this.spanClass3={success:false,fail:true}
		this.errMsg3="确认密码不能为空"
      }else if (this.upwd!=this.upwdword) {
		this.spanClass3={success:false,fail:true};
        this.errMsg3="第二次密码错误"
      }else{
        this.spanClass3={success:true,fail:false};
		this.errMsg3="密码正确"
	  }
	},
	handle(){
		if (this.vail()&&this.upwdVail()&&this.upwdwordVail()){
			// 将获取到的信息提交到web服务器
			this.axios.post('/register','phone='+this.username+'&upwd='+this.upwd).then(res=>{
				// 用户注册成功
				if (res.data.code==1) {
					this.$router.push('/');
				}else{
					alert('注册提示',"用户名已经占用")
				}
			})
			
		}
	}
  },
};
</script>

<style scoped>
	.reg_header{
		border-bottom: 2px solid #d8d8d8;
	}
	#header1{
			width: 980px;
			margin: 0 auto;
			padding: 10px 0;
			display: flex;
			justify-content: space-between;
			
	}
	.logo{
		width: 100px;height: 36px;
		padding-right: 30px;
	}
	.sign{
		height: 39px;
		line-height: 36px;
		float: right;
	}
	.sign>span{
		margin-right: 10px;
		line-height: 36px;
		font-size: 14px;
		color: #666;
	}
	.sign>a{
		padding: 3px 10px;
		background-color: #FFBD00;
		border: 0;
		border-radius: 2px;
		text-align: center;
		font-size: 12px;
		color: #222;
	}
	.content{
		width: 980px;
		margin: 0 auto 30px;
		padding-top: 30px;
		color: #666;
	}
	.content1{
		width: 870px;
		padding: 8px 0 8px 110px;
		position: relative;
	}
	.cont_1,.cont6{
		cursor: pointer;
	}
	.reg_text{
		position: absolute;
		left: 0;
		width: 100px;
		padding-top: 6px;
		font-size: 14px;
		text-align: right;
		color: #333;
	}
	.content1>input{
		width: 248px;
		padding: 5px;
		border: 1px solid #aaa;
		line-height: 24px;
		font-size: 14px;
	}
	.content1>input:hover{
		border-color: #f76120;
	}
	.tishi{
		margin-left: 4px;
		padding: 6px 0;
		line-height: 24px;
		font-size: 12px;
		color: #999;
	}
	.cont2{
		width: 870px;
		padding-left: 110px;
	}
	.cont2 input{
		color: #333;
		background: #e9e9e9;
		border: 1px solid #e5e5e5;
		border-bottom: 1px solid #b3b3b3;
		padding: 1px 8px 0;
		font-size: 12px;
	}
	.cont3{
		padding-bottom: 27px;
	}
	.cont3_1{
		position: absolute;
		width: 260px;
		top: 50px;
		left: 110px;
		
	}
	.cont3_1>span{
		width: 85px;height: 20px;
		font-size: 12px;
		text-align: center;
		line-height: 20px;
		
		color: #fff;
		background: #eee;
		padding: 2px 35px;
	}
	.content1 .cont6{
		width:178px;height: 34px;
		padding: 7px 20px 6px;
		font-size: 14px;
		font-weight: 700;
		text-align: center;
		border: 0;
		background-image: linear-gradient(135deg,#ffd000,#ffbd00 100%);
		border-radius: 2px;
	}
	.cont7{
		width: 860px;
		padding: 3px 10px 3px 110px;
		margin: 0 auto 8px;
	}
	.cont7>a{
		color: #FE8C00;
		font-size: 13px;
		cursor: pointer;
	}
	.reg_footer{
		border-top: 1px solid #eee;
		padding-top: 20px;
		text-align: center;
		font-size: 13px;
	}
	.reg_footer p a,.reg_footer p span{
		color: #999;
	}
	/* 验证手机号的样式 */
.msg{
  padding: 3px 10px;
  font-size: 12px;
  display: none;
  margin-left: 10px;
}
.success{
  border: 1px solid green;
  background: rgb(98, 255, 98);
  color: green;
  display: inline;
}
.fail{
  border: 1px solid red;
  background: pink;
  color: red;
  display: inline;
}
</style>
