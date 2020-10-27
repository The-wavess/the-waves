<template>
	<div class="mar">
		<div class="myheader">
					<div class="myheader1">
						<div>
							<span style="margin-right:5px;">
								<img src="../../public/img/header/dingwei.png">
								{{n}}
							</span>
							<span class="s1">
								<a href="#" >切换城市</a>
							</span>
							<span>
								[
								<a class="s2" href="#" @click="city5">咸阳</a>	
								<a class="s2" href="#" @click="city6">高陵</a>	
								<a class="s2" href="#" @click="city7">泾阳县</a>	
								]
							</span>
							<span class="s3">
								<a class="s3_1" href="/login">立即登录</a>
								<a href="/register">注册</a>
							</span>
						</div>
						<ul class="header_nav">
							<li @mouseover="my_pop1" >
								<a href="/account">我的美团</a>
								<ul class="header_show" v-show="myShow" @mouseout="my_pop2">
									<li><a href="/account">我的美团</a></li>
									<li><a href="/orders">我的订单</a></li>
									<li><a href="/collections">我的收藏</a></li>
									<li><a href="/vouchers">抵用券</a></li>
									<li><a href="/setting">账户设置</a></li>

								</ul>
							</li>
							<li><a href="#">手机APP</a></li>
							<li @mouseover="shang_pop1">
								<a href="#">商家中心</a>
								<div class=" shang_show" v-show="shangShow" @mouseout="shang_pop2">
									<p class="shang_p"><a href="#">商家中心</a></p>
									<ul >
										<li><a href="#">美团餐饮商户中心</a></li>
										<li><a href="#">登录商家中心</a></li>
										<li><a href="#">美团智能收银</a></li>
										<li><a href="#">我想合作</a></li>
										<li><a href="#">手机免费开店</a></li>
										<li><a href="#">餐饮代理招募</a></li>
										<li><a href="#">商家申请开票</a></li>
										<li><a href="#">免费合作美团排队</a></li>
									</ul>
								</div>
								
							</li>
							<li @mouseover="gui_pop1">
								<a href="#">美团规则</a>
								<ul class="header_show guiz" v-show="guiShow" @mouseout="gui_pop2">
									<li><a href="#">美团规则</a></li>
									<li><a href="#">规则中心</a></li>
									<li><a href="#">规则目录</a></li>
									<li><a href="#">规则评议院</a></li>
								</ul>
							</li>
							<li @mouseover="wang_pop1">
								<a href="#">网站导航</a>
								<div class="wangzhan" v-show="wangShow" @mouseout="wang_pop2">
									<p class="wang_p"><a href="#">网站导航</a></p>
									<div class="wang">
										<!-- 酒店旅游 -->
										<div>
											<p class="wang_text">酒店旅游</p>
											<div class="flex jiudian">
												<ul>
													<li><a href="#">国际机票</a></li>
													<li><a href="#">经济型酒店</a></li>
													<li><a href="#">公寓</a></li>
													<li><a href="#">青年旅社</a></li>
													<li><a href="#">农家院</a></li>
												</ul>
												<ul>
													<li><a href="#">火车票</a></li>
													<li><a href="#">主题酒店</a></li>
													<li><a href="#">豪华酒店</a></li>
													<li><a href="#">度假酒店</a></li>
												</ul>
												<ul>
													<li><a href="#">民宿</a></li>
													<li><a href="#">商务酒店</a></li>
													<li><a href="#">客栈</a></li>
													<li><a href="#">别墅</a></li>
												</ul>
											</div>
											
										</div>
										<!-- 吃美食 -->
										<div>
											<p class="wang_text">吃美食</p>
											<div class="flex meishi">
												<ul>
													<li><a href="#">烤鱼</a></li>
													<li><a href="#">烧烤</a></li>
													<li><a href="#">火锅</a></li>
												</ul>
												<ul>
													<li><a href="#">特色小吃</a></li>
													<li><a href="#">自助餐</a></li>
													<li><a href="#">代金券</a></li>
												</ul>
											</div>
											
										</div>
										<!-- 看电影 -->
										<div>
											<p class="wang_text">看电影</p>
											<ul class="flex_text">
												<li><a href="#">热映电影</a></li>
												<li><a href="#">热映影院</a></li>
												<li><a href="#">热映电影口碑榜</a></li>
												<li><a href="#">最受期待电影</a></li>
												<li><a href="#">国内票房榜</a></li>
												<li><a href="#">北美票房榜</a></li>
												<li><a href="#">电影排行榜</a></li>
											</ul>
										</div>
										<!-- 手机应用 -->
										<div class="shoujiAPP">
											<p class="wang_text">手机应用</p>
											<div>
												<a href="#"><img class="appicon" src="../../public/img/header/meituanAPP.png" title="美团APP"></a>
												<a href="#"><img class="appicon" src="../../public/img/header/waimaiAPP.png" title="外卖APP"></a>
												<a href="#"><img class="appicon" src="../../public/img/header/minsuAPP.png" title="民宿APP"></a>
												<a href="#"><img class="appicon" src="../../public/img/header/dianpingAPP.png" title="点评APP"></a>
												<a href="#"><img class="appicon" src="../../public/img/header/maoyanAPP.png" title="猫眼APP"></a>
											</div>
											
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="myheader1">
					<a class="t1" href="#"><img  src="img/header/logo.png" alt="美团"></a>
					<div class="t2">
						<input class="t2_1" type="text" placeholder="搜索商家或地点">
						<button class="t2_2" >
							<img src="img/header/sousuo.png" >
						</button>
					</div>
					
				</div>
	</div>
</template>

<script>
</script>

<style scoped>
	@media (min-width:576px) {
		.myheader1,.mar,.wangzhan{
			width: 960px;
			margin: 0 auto;
		}
		.myheader>.myheader1{
			justify-content: space-between;
		}
	}
	@media (min-width:992px) {
		.myheader1,.mar,.wangzhan{
			width: 1190px;
			margin: 0 auto;			
		}
		.myheader>.myheader1{
			justify-content: space-between;
		}
	}
	.mar{
		padding-bottom: 50px;
		background: #fff;
	}
	.myheader{
		background: #f5f5f5;	
	}
	.myheader1{display: flex;}
	.myheader>.myheader1{
		padding: 10px 0;
		font-size: 12px;
	}
	
	a:hover{
		color: #FE8C00;
	}
	.header_nav{
		width: 390px;
		display: flex;
		justify-content: space-around;
		position: relative;
	}
	
	.s1{
		border: 1px solid #E5E5E5;
	}
	.s2{
		padding: 0 3px;
	}
	.s3{
		margin-left: 15px;
	}
	.s3>a{margin-left: 10px;}
	.s3_1{color: #FE8C00;}
	.t1{
		width: 200px;height: 54px;
	
	}
	.t1>img{
		width: 126px;height: 46px;
		padding-bottom: 10px;
		padding-right: 80px;
		margin-top: 28px;
		margin-right: 50px;
		margin-bottom: 40px;
	}
	.t2{
		display: flex;
		position: relative;
		left: 60px;
	}
	.t2_1{
		width: 469px;height: 40px;
		padding: 15px;
		border:1px solid #E5E5E5;
		border-right: none;
		border-top-left-radius: 0.25rem;
		border-bottom-left-radius: 0.25rem;
		box-sizing: border-box;
		display: inline-block;
		outline: none;
		margin-top: 28px;
		margin-left: 50px;
	}
	.t2_2{
		outline: none;
		width: 14.55%;
		box-sizing: border-box;
		line-height: 100%;
		height: 40px;
		background: #ffc300;
		border: none;
		color: #222;
		cursor: pointer;
		border-bottom-right-radius: 4px;
		border-top-right-radius: 4px;
		margin-top: 28px;
	}
	/* 页头弹窗 */
	.header_show{
		position: absolute;
		top: -10px;
		left: 2px;
		z-index: 1;
		border: 1px solid #e5e5e5;
		background: #fff;
		border-bottom-left-radius: 4px;
		border-bottom-right-radius: 4px;
		text-align: center;
	}
	.header_show>li{
		padding: 10px 14px;
	}
	.shang_show{
		top: 26px;
		left: 118px;
		text-align: center;
		position: absolute;
		z-index: 1;
	}
	.shang_p{
		width: 60px;
		position: absolute;
		top: -36px;
		left: 36px;
		border-left: 1px solid #e5e5e5;
		border-right: 1px solid #e5e5e5;
		background: #fff;
	}
	.shang_show>ul{
		border: 1px solid #e5e5e5;
		border-top: 0;
		border-bottom-left-radius: 4px;
		border-bottom-right-radius: 4px;
		background: #fff;
	}
	.shang_show li,.shang_p{
		padding: 10px;
	}
	.guiz{
		left: 228px;
	}
	/* 网站导航 */
	.wangzhan{
		height: 300px;
		position: absolute;
		z-index: 1;
		border: 1px solid #e5e5e5;
		background: #fff;
		border-top-left-radius: 4px;
		border-bottom-left-radius: 4px;
		border-bottom-right-radius: 4px;
		right: 0;
		text-align: center;
		top: 26px;
	}
	.wang_p{
		width: 55px;
		position: absolute;
		top: -36px;
		right: -1px;
		border-left: 1px solid #e5e5e5;
		border-right: 1px solid #e5e5e5;
		background: #fff;
		padding: 10px;
	}
	.wang{
		width: 100%;height: 300px;
		display: flex;
		justify-content: space-around;

	}
	.shoujiAPP>div{
		width: 100%;
		display: flex;
		justify-content: space-around;
		flex-wrap: wrap;
	}
	.appicon{
		width: 60px;height: 60px;
		border: 0;
		
	}
	.flex{
		width: 100px;
		display: flex;
		justify-content: space-between;
	}
	.wang_text{
		margin: 30px auto;
		text-align: center;
		font-size: 16px;
	}
	.flex_text>li,.flex li{
		margin: 10px auto;
	}
	.jiudian{
		width: 220px;
	}
</style>

<script>
export default {
	data(){
		return{
			myShow:false,
			shangShow:false,
			guiShow:false,
			wangShow:false,
			cityShow:false,
			n:"西安"
		}
	},
	methods:{
		my_pop1(){
			this.myShow=true;
		},
		my_pop2(){
			this.myShow=false;
		},
		shang_pop1(){
			this.shangShow=true;
		},
		shang_pop2(){
			this.shangShow=false;
		},
		gui_pop1(){
			this.guiShow=true;
		},
		gui_pop2(){
			this.guiShow=false;
		},
		wang_pop1(){
			this.wangShow=true;
		},
		wang_pop2(){
			this.wangShow=false;
		},
		city_pop1(){
			this.cityShow=true;
		},
		city_pop2(){
			this.cityShow=false;
		},
		city5(){
			this.n="咸阳"
		},
		city6(){
			this.n="高陵"
		},
		city7(){
			this.n="泾阳县"
		}

	}
}
</script>