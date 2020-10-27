<template>
  <div class="content">
			<div class="nav">
				<el-breadcrumb separator-class="el-icon-arrow-right">
    <el-breadcrumb-item>西安美团</el-breadcrumb-item>
    <el-breadcrumb-item>西安美食</el-breadcrumb-item>
		 <el-breadcrumb-item>西安火锅</el-breadcrumb-item>
    </el-breadcrumb>
			</div>
		
<!-- 详细信息 -->
<div class="detail">
			<div class="left">
				<div class="name">
						渝水情老火锅(西安店)
				 <span><b></b>食品安全档案袋</span>
				</div>
				<div class="score">
					<p>4.8分<span>人均￥63</span></p>
				</div>
			   <div class="address">
			   	<p>地址雁塔区电子正街88号<b></b></p>
				<p>电话:029-81292959</p>
				<p>营业时间:周一至周日 10:00-24:00</p>
			   </div>
			   <div class="wife">
			   <img src="../assets/img/wife.png" />
			   </div>
			</div>
			
			<!-- 大图 -->
			<div class="right">
				 
			 <div class="big">
				 <img src="../assets/img/yu_big.png" >
			 </div>	
			 
			 <!-- 小图 -->
			 	<ul>
				<li>
				 <img src="../assets/img/01.png" alt="">
				</li>
				<li>
				 <img src="../assets/img/04.png" alt="">
				</li>
				<li>
				 <img src="../assets/img/03.png" alt="">
				</li>
				<li>
				 <img src="../assets/img/06.png" alt="">
				</li>
				
			</ul> 
			 
			
			</div>
			
   </div>				 

<div class="btm-cont">
	
<div class="btm-left">
		
			<h3>商家团购及优惠</h3>
			<div class="btm-group">
				<h4>2款堂食套餐</h4>
				
				
					<div class="btm-one">
						<div class="pic">
							<img src="../assets/img/cont_1.png" >
						</div>
						<div class="info">
							<router-link to="/shopping">立即抢购</router-link>
							<p class="name">
								<span>经典小资双人餐,包间免费</span>
								<img src="../assets/img/meituan.png" >
							</p>
							<p class="sale">已售356</p>
							<p class="price"><span>门店价￥220</span></p>
						</div>
			           </div>
					<div class="btm-two">
						<div class="pic">
							<img src="../assets/img/cont_2.png" >
						</div>
						<div class="info">
							<a href="#">立即抢购</a>
							<p class="name">
								<span>实惠聚餐四人餐,包间免费</span>
								<img src="../assets/img/meituan.png" >
								</p>
							<p class="sale">已售221</p>
							<p class="price"><span>门店价￥302</span></p>
						</div>
					
				</div>
				
		</div>
		
		
		<!-- 代金券 -->
		
		<div class="vouchers">
			<h4>2张代金券</h4>
				
			<div class="one">
			<div class="price">
			<span>￥68.8</span>
	         <p>代100元代金券</p> 
			</div>
								
	    <div class="name">
		<a class="buy" href="#">立即抢购</a>
			<a href="#">
	       <p>68.8元 代100元代金券</p>
			</a>
         已售160
         </div>
      </div>
								          
	<div class="clear">
	 <div class="price">
		<span>￥88.8</span>
			<p>代100元代金券</p> 
	 </div>
											
	 <div class="name">
	  <a class="buy" href="#">立即抢购</a>
	  <a href="#">
	   <p>88.8元 代100元代金券</p>
	  </a>
	   已售160
	</div>
</div>								
</div>

	

<!-- 推荐部分 -->
<div class="recommend">
	<h3>推荐菜</h3>
	<div id="cont">
		<ul class="clear">
			<li>
				<div id="pic">
					<img src="../assets/img/recommend/r1.png" >
				</div>
			</li>
			<li>
				<div id="pic">
					<img src="../assets/img/recommend/r2.png" >
				</div>
			</li>
			<li>
				<div id="pic">
					<img src="../assets/img/recommend/r3.png" >
				</div>
			</li>
			<li>
				<div id="pic">
					<img src="../assets/img/recommend/r2.png" >
				</div>
			</li>
			<li>
				<div id="pic">
					<img src="../assets/img/recommend/r1.png" >
				</div>
			</li>
			<li>
				<div id="pic">
					<img src="../assets/img/recommend/r1.png" >
				</div>
			</li>
		</ul>
		
	
		<div id="list">
			<span>海带苗</span>
			<span>上脑肥牛</span>
			<span>包浆豆腐</span>
			<span>平菇</span>
			<span>土豆片</span>
			<span>冬瓜</span>
			<span>海霸王虾饺</span>
			<span>腰片王</span>
			<span>菌汤锅</span>
			
			<span>麻辣牛肉</span>
			<span>鲜豆皮</span>
			<span>番茄太极锅</span>
			<span>井水豆芽</span>
			<span>魔芋块</span>
			<span>莴笋尖</span>
	</div>	
</div>		
   </div>
	 </div>
	 <!-- 右半部分 -->
	<div class="btm-right">
		<div>
		<h4>猜你喜欢</h4>
		</div>
		 <div class="dian"
	 :id="right.r_id.toString()"
		 v-for="(right,index) of bus"
	  :key="index" >
		<ul>
		<li>
		<a href="#"><img :src="right.r_pic"></a>
        <p class="name">{{right.r_name}}</p>
	    <p class="desc">{{right.r_adr}}</p>
		<p class="price"><b>￥</b>{{right.price}}</p>
		</li>	
		</ul>
   </div>	
	</div>
</div>	
</div>		
</template>
<style scoped>
.content{
	width: 1190px;
	height: 3500px;
	margin: auto;
}
.content>.nav{
	padding: 19px;
}
.content>.detail{
	    color: #666;
	    background-color: #fff;
	    border-radius: 10px;
	    padding: 20px 20px 33px;
	    border: 1px solid #e5e5e5;
	    box-shadow: 0 5px 14px 0 rgba(0,0,0,.1);
}
.content>.nav>span>a{
	text-decoration: none;
	color:#222;
	font-size: 12px;
	}
	.content>.detail{
		height: 274px;
	}
	
	.detail>.left{
		float: left;
		width: 748px;
		
		 padding-right: 20px;
	}
	
	
	.detail>.left>.name{
		font-size: 26px;
	    line-height: 37px;
	}
	.detail>.left>.name>span{
		
		float: right;
		color: #00c9b3;
		font-size: 12px;
		cursor: pointer;
		}
		.detail>.left>.score{
			font-size:14px;
			height:14px;
			margin:6px 0 17px;
			}
		.detail>.left>.address{
			border-top:1px solid #e5e5e5;
			border-bottom:1px solid #e5e5e5;
			padding:16px 0 11px;
			font-size:14px;
		}
		.detail>.right{
			float: left;
			width: 380px;
			overflow: hidden;
			cursor: pointer;
		}
			
		
		.detail>.right>ul{
			width:385px;
			height:10px;
			margin: 0;
			padding: 0;
			list-style:none;
		}
		.detail>.right>ul>li{
			float: left;
			width:92px;
			margin-right:4px;
			height:50px;
		}
		.detail>.right>ul>li>img{
			display: block;
			width: 100%;
			height: 100%;
			border-radius:4px;
			
		}
		
		
		
		.btm-cont{
			color: #222;
			padding-top:40px;
			}
		.btm-cont>.btm-left{
			width:950px;
			float:left;
		}
	
	.btm-cont>.btm-left h3{
		font-size:20px;
		line-height:26px;
		margin-bottom: 8px;
	}
	.btm-left>.btm-group{
		 width: 908px;
		 height: 302px;
		background:#fff;
		border:1px solid #e5e5e5;
		border-radius:4px;
		padding:16px 20px 20px;
		margin-bottom:10px;
	}
	.btm-group>h4{
		font-size: 16px;
		line-height:26px;
		margin: 0;
	}
	
	/* btm-one */
	.btm-group>.btm-one{
		padding-bottom: 20px;
		margin-top:17px;
		width:908px;
		height:100px;
	}
	
	.btm-group>.btm-one>.pic{
		width: 100px;
		height:100px;
		float:left;
		cursor: pointer;
		border-radius: 4px;
	}
	
	
	
	.btm-group>.btm-one>.info{
		float:left;
		padding:1px 0 0 20px;
		width:788px;
	}
	
	
	.btm-group>.btm-one>.info>a{
		width: 120px;
		height: 40px;
		font-size: 14px;
		background-color: #f90;
		text-align: center;
		line-height:40px;
		color: #fff;
	   float: right;;
		display:block;
		margin-top:30px;
		border-radius: 100px;
		text-decoration: none;
		
	}
	.btm-group>.btm-one>.info>.name>span{
		font-size:16px;
		cursor:pointer;
		width:788px;
		
	}
	.btm-group>.btm-one>.info>.name>img{
		width:16px;
		height:16px;
		vertical-align:middle;
		border-radius:4px;
	}
	.btm-group>.btm-one>.info>.name{
		margin-top: 0;
	}
	.btm-group>.btm-one>.info>.sale{
		margin: 0;
	}
	.btm-group>.btm-one>.info>.price{
		margin: 0;
	}
	
	
	/* btn-two */
	.btm-group>.btm-two{
		padding-bottom: 20px;
		margin-top:17px;
		width:908px;
		height:100px;
	}
	
	.btm-group>.btm-two>.pic{
		width: 100px;
		height:100px;
		float:left;
		cursor: pointer;
		border-radius: 4px;
	}
	
	
	
	.btm-group>.btm-two>.info{
		float:left;
		padding:1px 0 0 20px;
		width:788px;
	}
	
	
	.btm-group>.btm-two>.info>a{
		width: 120px;
		height: 40px;
		font-size: 14px;
		background-color: #f90;
		text-align: center;
		line-height:40px;
		color: #fff;
		float: right;
		display:block;
		margin-top: 30px;
		border-radius: 100px;
		text-decoration: none;
		
	}
	.btm-group>.btm-two>.info>.name>span{
		font-size:16px;
		cursor:pointer;
		width:788px;
		
	}
	.btm-group>.btm-two>.info>.name>img{
		width:16px;
		height:16px;
		vertical-align:middle;
		border-radius:4px;
	}
	.btm-group>.btm-two>.info>.name{
		margin-top: 0;
	}
	.btm-group>.btm-two>.info>.sale{
		margin: 0;
	}
	.btm-group>.btm-two>.info>.price{
		margin: 0;
	}
	.btm-right{
		display: block;
	    width:180px;
	    float:right;
		border:1px solid #e5e5e5;
		padding:16px 20px 0;
		background-color: #fff;
		border-radius: 4px;
		border-bottom: 900px;
		margin-top:55px;
		
		}
		.dian>ul>li{
			list-style: none;
		}
		
		.dian>ul>li>.name{
			width:188px;
			font-size:14px;
			line-height: 20px;
			color: #222;
			margin:10px 0 4px;
		}
		.dian>ul>li>.desc{
			font-size:12px;
			line-height: 17px;
			color: #999;
			margin: 0;
			cursor: pointer;
			
		}
		.dian>ul>li>.price{
			font-size: 22px;
			color: #f60;
			line-height: 27px;
			margin: 0;
		}
		
		.dian>ul>li>a>img{
			border-radius:4px;
		}
		.dian>ul{
			margin:0;
			padding: 0;
			list-style:none;
		}
	/* 代金券 */
	
     .vouchers{
		margin-bottom: 40px;
		background:#fff;
		border:1px solid #e5e5e5;
		border-radius:4px;
		padding:20px;
		height:400px;
	}
	
	.vouchers>.one{
		padding-bottom:20px;
		margin-top: 17px;
		width: 908px;
		height: 120px;
	
	}
	.vouchers>.one>.price{
		float:left;
		width:140px;
		height:89px;
	    background-color: #FFE8A1;
	    background-size:100% 100%;
	    text-align:center;
	    padding:11px 10px 0;
	    color:#333;
	    font-size:14px;
	   
	   
	}
	
	
	.vouchers>.one>.name{
		float:left;
		padding-left:20px;
		font-size: 12px;
		width:725px;
		
	}
	
		.vouchers>.one>.name a{
			text-decoration: none;
			color: #000;
			font-size:16px;
		}
		
		
		
	.vouchers>.one>.name>.buy{
	
		display:block;
		float: right;
		margin-top: 30px;
		border-radius: 100px;
		background-color: #f90;
		width: 120px;
		height: 40px;
		text-decoration: none;
		line-height: 40px;
		text-align: center;
		color: #fff;
		font-size: 14px;
	}
	
	/* clear */
	.vouchers>.clear{
		padding-bottom:20px;
		margin-top: 30px;
		width: 908px;
		
		border-top:1px solid #e5e5e5;
	
	}
	.vouchers>.clear>.price{
		float:left;
		width:140px;
		height:89px;
	    background-color: #FFE8A1;
	    background-size:100% 100%;
	    text-align:center;
	    padding:11px 10px 0;
	    color:#333;
	    font-size:14px;
	}
	.vouchers>.clear>.name{
		float:left;
		padding-left:20px;
		font-size: 12px;
		width:725px;	
	}
	
		.vouchers>.clear>.name a{
			text-decoration: none;
			color: #000;
			font-size:16px;
		}
	
	.vouchers>.clear>.name>.buy{
		float:right;
		display: block;
		margin-top: 30px;
		border-radius: 100px;
		background-color: #f90;
		width: 120px;
		height: 40px;
		text-decoration: none;
		line-height: 40px;
		text-align: center;
		color: #fff;
		font-size: 14px;
	}
	.recommend{
		overflow: hidden;
		margin-bottom:40px;
		float:left;
	}
	.recommend,
	.cont{
		border:1px solid #e5e5e5;
		background-color: #fff;
		padding: 10px 10px 26px;
		border-radius:4px;
	}
	.recommend ul{
		width:900px;
	}
	
	.recommend ul>li{
		display:block;
		width: 100%;
		height:100%;
		border-radius:4px;
	   float:left;
	   width: 130px;
	   margin-right:20px;
	
	}
	.list{
		padding:25px 0 0 6px;
	}
	.list span{
		display: block;
		float: left;
		margin:0 30px 19px 0 ;
		font-size: 16px;
		line-height: 20px;
		color: #333;
	}
	</style>
	<script>
	 export default{
	 data(){
     return{
		   bus:[]
		 }
	},
	
  mounted(){
  this.axios.get('/bus').then(res=>{
		this.bus= res.data.results;
		})
	}
 }</script>