<template>
	<div>
		<div class="foot">
					<!-- 第一列 -->
					<div class="foot1">
						<!-- 1 -->
						<ul>
							<li>用户帮助</li>
							<li><a href="#">申请退款</a></li>
							<li><a href="#">查看美团劵密码</a></li>
							<li><a href="#">常见问题</a></li>
							<li><a href="#">用户协议</a></li>
							<li><a href="#">隐私政策</a></li>
							<li><a href="#">反诈骗公告</a></li>
							<li><a href="#">消费者权益保障</a></li><br>
							
							<li>美团服务</li>
							<li><a href="#">美团外卖</a></li>
							<li><a href="#">美团酒店</a></li>
							<li><a href="#">猫眼电影</a></li>
							<li><a href="#">美团配送</a></li>
							<li><a href="#">美团云</a></li>
							<li><a href="#">大众点评</a></li>
							<li><a href="#">美团民宿</a></li>
							<li><a href="#">无人配送</a></li>
						</ul>
						<!-- 2 -->
						<ul>
							<li>商家合作</li>
							<li><a href="#">美团餐饮商户中心</a></li>
							<li><a href="#">美食商家入驻(非外卖)</a></li>
							<li><a href="#">美团外卖开店申请</a></li>
							<li><a href="#">美团收银官网</a></li>
							<li><a href="#">外卖配送加盟申请</a></li>
							<li><a href="#">美团点评餐饮学院</a></li>
							<li><a href="#">酒店商家入驻</a></li>
							<li><a href="#">境内度假商家入驻</a></li>
							<li><a href="#">综合商家入驻</a></li>
							<li><a href="#">美团民宿房东商家入驻</a></li>
							<li><a href="#">商家开票申请</a></li>
							<li><a href="#">美团点评智能收银机</a></li>
							<li><a href="#">美团点评餐饮开放平台</a></li>
							<li><a href="#">美团点评收单</a></li>
							<li><a href="#">免费使用美团排队</a></li>
							<li><a href="#">快驴进货商家合作</a></li>
							<li><a href="#">美团闪购商家入驻</a></li>
						</ul>
						<!-- 3 -->
						<ul>
							<li>代理商加盟</li>
							<li><a href="#">美团外卖代理商招募</a></li>
							<li><a href="#">到店餐饮代理商招募</a></li>
							<li><a href="#">非餐饮代理商招募</a></li>
							<li><a href="#">美团联盟</a></li>
							<li><a href="#">美团收银招募线上分销商</a></li>
							<li><a href="#">美团点评5S服务商招募</a></li>
							<li><a href="#">美团收单渠道代理商招募</a></li><br>
							
							<li>美团规则</li>
							<li><a href="#">规则中心</a></li>
							<li><a href="#">规则目录</a></li>
							<li><a href="#">规则评议院</a></li>
						</ul>
						<!-- 4 -->
						<ul>
							<li>关注美团</li>
							<li><a href="#">美团新浪微博</a></li><br>
							
							<li>公司信息</li>
							<li><a href="#">关于我们</a></li>
							<li><a href="#">投资者关系</a></li>
							<li><a href="#">加入我们</a></li>
							<li><a href="#">商户诚信公约及管理办法</a></li>
							<li><a href="#">保险经纪资质</a></li><br>
							
							<li>廉正举报</li>
							<li><a href="#">廉正举报平台</a></li><br>
							
							<li>知识产权</li>
							<li><a href="#">知识产权维权平台</a></li>
						</ul>
						<ul>
							<li>消费者服务热线</li>
							<li id="a1">外卖消费者：<a href="#">10109777</a></li>
							<li id="a1">猫眼消费者：<a href="#">10105335</a></li>
							<li id="a1">其他消费者：<a href="#">10107888</a></li><br>
							
							<li>商家服务热线</li>
							<li id="a1">外卖&餐饮商家：<a href="#">10105557</a></li>
							<li id="a1">休闲娱乐、丽人、ktv、教育、结婚、亲</li>
							<li id="a1">子、家装等商家：<a href="#">10100107</a></li><br>
							
							<li>投诉举报专区</li>
							<li id="a1">违法和不良信息举报电话：<a href="#">4006018900</a></li>
							<li id="a1">举报邮箱：<a href="#">tousujubao@meituan.com</a></li>
							<li><a href="#">网上有害信息举报</a></li><br>
							
							<li><a href="#">商家自助入驻美团入口</a></li><br>
							<li><a href="#">供应商注册入口</a></li><br>
						</ul>
					</div>
					<!-- 第二列 -->
					<div></div>
					<!-- 第三列 -->
					<div></div>
					<!-- 第四列 -->
					<div></div>
					<!-- 第五列 -->
					<div></div>
				</div>
	</div>
</template>

<script>
</script>

<style>
	@media (min-width:576px) {
		.foot{width:960px;margin: 0 auto;}
		
	}
	@media (min-width:992px) {
		.foot{width:1190px;margin: 0 auto;}
		
	}
	
	
	.foot1{
		display: flex;
		justify-content: space-around;
		border-top: 1px solid #e5e5e5;
		padding: 40px 45px;
	}
	.foot1>ul>li{
		color: #333;
		font-size: 14px;
		line-height: 2;
	}
	
	a,#a1{
		text-decoration: none;
		font-size: 12px;
		color: #666;
	}
	a:hover{color: #faaf00;}
</style>
