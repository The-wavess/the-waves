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
			   <img src="../assets/img/wife.png"  />
				 <p>提供wifi</p>
			   </div>
		 </div>
			<div class="zhezhao" v-show="zhezhao">
				<button class="close" @click="close">×</button>
     <div style="width: 300px;height: 300px">
            <img :src="ImgUrl" style="width:500px">
     </div>
 
    <div class="little_img" >
        <ul v-for="(img,index) in imgUrl" :key="index">
            <li @click='getIndex(img.url)'>
                <img :src="img.url" style="width: 100px; height: 100px" >
            </li>
        </ul>
    </div>

</div>

			<!-- 大图 -->
			<div class="right" >
				 
			 <div class="big">
				 <img src="../assets/img/yu_big.png" @click="zhe"  >
			 </div>	
			 
			 <!-- 小图 -->
			 <ul>
				<li>
				 <img src="../assets/img/01.png">
				</li>
					<li>
				 <img src="../assets/img/03.png">
				</li>
					<li>
				 <img src="../assets/img/04.png">
				</li>
					<li>
				 <img src="../assets/img/05.png">
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
							<router-link to="/shopping?u_id=1">立即抢购</router-link>
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
			<div class="list clear">
		<span>上脑肥牛</span>
		<span>海带苗</span>
		<span>包浆豆腐</span>
		<span>双椒吊龙牛肉</span>
		<span>麻辣牛肉</span>
		<span>平菇</span>
		<span>现切牛魔王</span>
		<span>土豆片</span>
		<span>冬瓜</span>
		<span>海霸王虾饺</span>
		<span>厚切午餐肉</span>
		<span>四川莴笋尖</span>
		<span>渝水情腰片王</span>
		<span>菌汤锅</span>
		<span>鲜豆皮</span>
		<span>井水豆芽</span>
		<span>纤夫老肉片</span>
		<span>魔芋块</span>
		<span>番茄太极锅底</span>
		<span>娃娃菜</span>
		<span>脆爽牛舌</span>
		<span>鳕鱼捞</span>
		<span>鲜鸭血</span>
		<span>巴沙鱼片</span>
		<span>冻豆腐</span>
		<span>乌鸡肉</span>
		<span>鱼豆腐</span>
		<span>干贡菜</span>
		<span>纯鸭血</span>
		<span>马面鱼</span>
		<span>鱼丸</span>
		<span>莲藕</span>
		<span>菌汤鸳鸯锅</span>
		<span>香菜嫩牛肉</span>
		<span>川粉</span>
		<span>现炸小酥肉</span>
		<span>油炸豆皮</span>
		<span>脑花</span>
		<span>肥牛一号</span>
		<span>海白菜</span>
		<span>宜宾小香肠</span>
		<span>霸王蟹棒</span>
		<span>重庆空运鲜鹅肠</span>
		<span>自家卤肥肠</span>
	</div>
</div>	
</div>


<div class="comment">
	
	<div class="total">
		<div class="sort">
			<span class="on">质量排序</span>
			<span class="">时间排序</span>
		</div>
		138条网友点评
	</div>
	<div class="com-cont">
		<ul class="tags clear">
			<li class="">服务热情(34)</li>
			<li class="">环境很好(29)</li>
			<li class="">菜品不错(25)</li>
			<li class="">味道赞(23)</li>
			<li class="">上菜快(12)</li>
			<li class="">性价比高(12)</li>
			<li class="">价格实惠(12)</li>
			<li class="">回头客(10)</li>
			<li class="">店内消毒(1)</li>
			<li class="">分量少(5)</li>
		</ul>
    <div class="sea">
		  <span><b class=""></b>只看有图片的评论</span>
	  </div>	
	<div>
		<div class="list clear">
			<div class="header">
				<div class="imgbox" style="height: 100%; width: 100%;">
					<img src="https://img.meituan.net/avatar/1b70cdb2c95378c631de60a2e87623f98925.jpg@60w_60h_1e_1c">
				</div>
			</div>
			<div class="info">
				<div class="name">小欣欣可爱</div>
					<div class="date">
						<span>2020年10月9日</span>
					</div>
							<div class="desc">
								本来要去别的但是人太多了，就去这家，总体不错，二楼还是半包厢的，味道也好，服务也不错每个桌子上都有服务铃，两个人吃了260的，推荐鹅肠小酥肉小油条，下次还去吃，喜欢喜欢喜欢喜欢喜欢喜欢喜欢喜欢喜欢喜欢喜欢</div>
								<div class="reply">
									商家回复：尊敬的顾客您好！感恩遇见，感谢您能选择本店用餐，更感谢您对我们的支持与肯定，我们一定会继续努力做到更好，渝水情全体员工祝您及家人身体健康，工作顺利！</div>
											<div class="footer">
												<div class="footerCount">
													<el-badge :value="12" class="item">
                              <el-button size="small">评论</el-button>
                          </el-badge>
                          <el-badge :value="3" class="item">
                            <el-button size="small">回复</el-button>
                          </el-badge>
                          <el-badge :value="1" class="item" type="primary">
                            <el-button size="small">评论</el-button>
                          </el-badge>
                          <el-badge :value="2" class="item" type="warning">
                            <el-button size="small">回复</el-button>
                          </el-badge>

                          <el-dropdown trigger="click">
                              <span class="el-dropdown-link">
                            点我查看<i class="el-icon-caret-bottom el-icon--right"></i>
                             </span>
                          <el-dropdown-menu slot="dropdown">
                         <el-dropdown-item class="clearfix">
                          评论
                         <el-badge class="mark" :value="12" />
                         </el-dropdown-item>
                        <el-dropdown-item class="clearfix">
                           回复
                       <el-badge class="mark" :value="3" />
                       </el-dropdown-item>
                      </el-dropdown-menu>
                     </el-dropdown>
													</div>
											</div>
										</div>
										<div type="button" class="arrow right-arrow">
											
										</div>
									</div>
								</div>
						</div>
				</div>
				<div class="line"></div>
			</div>

<div class="btm-right">
	<div>
	<h4>猜你喜欢</h4>
	</div>
	<div class="dian"
		 v-for="(right,i) of bus"
	  :key="i" >
		<ul>
		<li>
		<a href="#">
			<img src="../assets/img/luo.png" /></a>
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
<script>
 export default{
	 data(){
     return{
		 bus:[],
		 zhezhao:false,
     imgUrl: [
                {name:'2' ,url: require('../assets/img/03.png') },
            ],
            //大图片默认显示第一张
            ImgUrl:require('../assets/img/01.png')
		 }
	},
		methods:{
		close(){
     this.$router.go(0);
			},
	  zhe(){
			this.zhezhao = true;
		},
		  getIndex(imgUrl){
        this.ImgUrl = imgUrl

    }
		},
  mounted(){

  this.axios.get('/bus').then(res=>{
		this.bus= res.data.results;
		})
	}
 }
 </script>
<style scoped>
      *{
            margin: 0;
            padding: 0;
            list-style: none;
        }
		.little_img{
   margin-top:100px;

		}
		.little_img>ul{
			float: left;
			width: 300px;
		}
.close{
color: #000;
width: 50px;
height: 40px;
}
.zhezhao{
	 position: fixed;
    z-index: 999;
    top: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.7);
    width: 100%;
    height: 100%;
    overflow: hidden;
}
.zhezhao img{
 max-width: 100%;
    display: block;
    position: absolute;
    left: 0;
    right: 0;
    margin: auto;
    z-index: 1000;
}
.content{
	width: 1190px;
	height: 3500px;
	margin:0 auto;
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
		 width: 920px;
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
		width: 920px;
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
		margin-left:30px;
	}

	.list >span {
    display: block;
    float: left;
    margin: 0 20px 19px 0;
    font-size: 16px;
    line-height: 20px;
    color: #333;
}

.comment {
    margin-bottom: 40px;
		width: 950px;
		height: 900px;
		/* border: 1px solid #e5e5e5; */
}

.comment >.total {
    font-size: 20px;
    line-height: 26px;
		
} 

 .comment >.com-cont {
    margin-top: 8px;
    background: #fff;
    border-radius: 4px;
    padding: 0 20px 40px;
    color: #666;
		border: 1px solid #e5e5e5;
}

.sort {
    cursor: pointer;
    float: right;
    font-size: 12px;
    color: #999;
}
.sort span {
    font-size: 12px;
    margin-left: 20px;
}
.on {
    color: #00c9b3;
}
 .com-cont {
    margin-top: 8px;
    background: #fff;
 
    border-radius: 4px;
    padding: 0 20px 40px;
    color: #666;
}
 .tags {
    padding-top: 15px;
}

.tags li {
    float: left;
    font-size: 14px;
    line-height: 34px;
    padding: 0 10px;
    border: 1px solid #e5e5e5;
    border-radius: 2px;
    margin: 0 10px 10px 0;
    cursor: pointer;
		list-style-type: none;
}
.sea {
    margin-top: 22px;
    font-size: 14px;
}
.sea span{
    display: inline-block;
    line-height: 20px;
    cursor: pointer;
	
}

 .sea span b{
    width: 15px;
    height: 15px;
    border-radius: 2px;
    border: 1px solid #ccc;
    display: inline-block;
    vertical-align: text-bottom;
    margin-right: 6px;
}
 .list {
    padding: 30px 0 0;
}
.header {
    width: 60px;
    height: 60px;
    
    float: left;
}

.list,
.info {
    float: left;
    padding-left: 20px;
    width: 828px;
}

.name {
    font-size: 16px;
    color: #222;
    line-height: 22px;
    margin-bottom: 1px;
}

.date {
    font-size: 12px;
    line-height: 20px;
    color: #999;
}
.date span {
    float: right;
}

.iconfont {
    font-size: 12px;
}
.info ,
.desc {
    font-size: 14px;
    line-height: 20px;
    padding-top: 13px;
}

 .reply {
    font-size: 14px;
    color: #31bbac;
    padding-top: 12px;
}

 .com-image-viewer {
    padding-top: 10px;
    position: static;
    background: #fff;
    overflow: hidden;
    cursor: pointer;
}
.iconfont {
    font-family: iconfont!important;
    font-size: 12px;
    font-style: normal;

}
.imageViewer-content {
    width: 100%;
    z-index: 2001;
    height: 100%;
    left: 0;
    top: 0;
}
.imgs-content {
    width: auto;
}
.com-image-viewer ,
.imgs-content {
    padding-top: 180px;
    position: relative;
    margin: 0;
		width: 140px;
		height: 140px;
}
 .header {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    float: left;
}

 .header >.close {
    width: 30px;
    height: 30px;
    font-size: 30px;
    cursor: pointer;
    display: inline-block;
    background: 0 0;
    color: #fff;
    border: 0;
}
 .like-cont {
    text-align: right;
    margin: 17px 0 16px;
}
 .like {
    display: inline-block;
    cursor: pointer;
    font-size: 12px;
    color: #666;
}

.like b {
    background-image: url(/bs/file/?f=meis/meishi.web:assets/a9850ffbcbd6b5e6.png@53635fc);
    background-size: 100% 100%;
    width: 15px;
    height: 16px;
    display: inline-block;
    margin-right: 6px;
    vertical-align: text-bottom;
}

 .like span {
    vertical-align: middle;
} 
.item {
  margin-top: 10px;
  margin-right: 40px;
}
</style>
	