<template>
  <div class="index">
			
		
		<!-- 主页面左边 -->
		<div class="left">	
		<!-- 导航栏 -->	
		<div class="breadcrumb">
		<el-breadcrumb separator-class="el-icon-arrow-right">
    <el-breadcrumb-item>西安美团</el-breadcrumb-item>
    <el-breadcrumb-item>西安美食</el-breadcrumb-item>
    </el-breadcrumb>
		</div>
		
		<div class="xuanze">
			<!-- 美食分类 -->
		<div class="first">
			
		<div class="fenlei">
			<span>分类</span>
		</div>	
		
		<div class="quanbu">
			<span>全部</span>
		</div>	
		
		<ul class="first1" >
			<li><a href="">代金券</a></li>
			<li><a href="">蛋糕</a></li>
			<li><a href="">火锅</a></li>
			<li><a href="">奶茶</a></li>
			<li><a href="">海鲜</a></li>
			<li><a href="">西餐</a></li>
			<li><a href="">粤菜</a></li>
			<li><a href="">聚餐</a></li>
			<li><a href="">烧烤</a></li>
			<li><a href="">酒馆</a></li>
			
    </ul>
	</div>
		<!-- 就餐区域 -->
		<div class="second">
		<div class="quyu">
			<span>区域</span>
		</div>	
		<div class="quanbu">
			<span>全部</span>
		</div>	
		<ul class="first1">
			<li>
				<el-dropdown>
          <span class="el-dropdown-link">
             碑林区<i class="el-icon-arrow-down el-icon--right"></i>
          </span>
         <el-dropdown-menu slot="dropdown">
         <el-dropdown-item>钟楼/鼓楼</el-dropdown-item>
         <el-dropdown-item>省体育场</el-dropdown-item>
         <el-dropdown-item>东大街</el-dropdown-item>
         <el-dropdown-item disabled>南大街</el-dropdown-item>
         <el-dropdown-item divided>太乙路</el-dropdown-item>
         </el-dropdown-menu>
        </el-dropdown>
			</li>
			<li>
				<el-dropdown>
         <span class="el-dropdown-link">
         雁塔区<i class="el-icon-arrow-down el-icon--right"></i>
         </span>
         <el-dropdown-menu slot="dropdown">
           <el-dropdown-item>小寨</el-dropdown-item>
           <el-dropdown-item>曲江新区</el-dropdown-item>
           <el-dropdown-item>大雁塔</el-dropdown-item>
           <el-dropdown-item disabled>翠华路</el-dropdown-item>
           <el-dropdown-item divided>明德门</el-dropdown-item>
         </el-dropdown-menu>
       </el-dropdown>
			</li>
			<li>
			<el-dropdown>
        <span class="el-dropdown-link">
          高新区 <i class="el-icon-arrow-down el-icon--right"></i>
        </span>
        <el-dropdown-menu slot="dropdown">
         <el-dropdown-item>科技路西口</el-dropdown-item>
         <el-dropdown-item>绿地世纪城</el-dropdown-item>
         <el-dropdown-item>光华路</el-dropdown-item>
         <el-dropdown-item disabled>徐家庄</el-dropdown-item>
         <el-dropdown-item divided>西万路口</el-dropdown-item>
       </el-dropdown-menu>
     </el-dropdown>
			</li>
			<li>
			<el-dropdown>
       <span class="el-dropdown-link">
        莲湖区<i class="el-icon-arrow-down el-icon--right"></i>
      </span>
       <el-dropdown-menu slot="dropdown">
        <el-dropdown-item>北大街</el-dropdown-item>
        <el-dropdown-item>玉祥门</el-dropdown-item>
        <el-dropdown-item>西大街</el-dropdown-item>
        <el-dropdown-item disabled>北关</el-dropdown-item>
        <el-dropdown-item divided>西稍门</el-dropdown-item>
     </el-dropdown-menu>
    </el-dropdown>
		</li>
		<li>
		<el-dropdown>
      <span class="el-dropdown-link">
      灞桥区<i class="el-icon-arrow-down el-icon--right"></i>
      </span>
    <el-dropdown-menu slot="dropdown">
     <el-dropdown-item>纺织城</el-dropdown-item>
     <el-dropdown-item>长乐坡</el-dropdown-item>
     <el-dropdown-item>十里铺</el-dropdown-item>
     <el-dropdown-item disabled>白鹿原</el-dropdown-item>
     <el-dropdown-item divided>霸业大境</el-dropdown-item>
    </el-dropdown-menu>
   </el-dropdown>
			</li>
			<li>
			<el-dropdown>
       <span class="el-dropdown-link">
       临潼区<i class="el-icon-arrow-down el-icon--right"></i>
       </span>
       <el-dropdown-menu slot="dropdown">
        <el-dropdown-item>兵马俑</el-dropdown-item>
        <el-dropdown-item>华清池</el-dropdown-item>
        <el-dropdown-item>华清宫</el-dropdown-item>
        <el-dropdown-item disabled>人民路</el-dropdown-item>
        <el-dropdown-item divided>芷阳湖</el-dropdown-item>
       </el-dropdown-menu>
      </el-dropdown>
			</li>
			<li>
			<el-dropdown>
       <span class="el-dropdown-link">
       未央区<i class="el-icon-arrow-down el-icon--right"></i>
       </span>
      <el-dropdown-menu slot="dropdown">
       <el-dropdown-item>大明宫</el-dropdown-item>fuzhuang
       <el-dropdown-item>龙首</el-dropdown-item>
       <el-dropdown-item>红旗厂</el-dropdown-item>
       <el-dropdown-item disabled>辛家庙</el-dropdown-item>
       <el-dropdown-item divided>文景路</el-dropdown-item>
     </el-dropdown-menu>
    </el-dropdown>
			</li>
			<li>
			<el-dropdown>
       <span class="el-dropdown-link">
       新城区<i class="el-icon-arrow-down el-icon--right"></i>
       </span>
       <el-dropdown-menu slot="dropdown">
        <el-dropdown-item>万寿路</el-dropdown-item>
        <el-dropdown-item>韩森寨</el-dropdown-item>
        <el-dropdown-item>康复路</el-dropdown-item>
        <el-dropdown-item disabled>解放路</el-dropdown-item>
        <el-dropdown-item divided>胡家庙</el-dropdown-item>
       </el-dropdown-menu>
      </el-dropdown>
			</li>
			<li>
			<el-dropdown>
       <span class="el-dropdown-link">
       高陵区<i class="el-icon-arrow-down el-icon--right"></i>
       </span>
      <el-dropdown-menu slot="dropdown">
       <el-dropdown-item>高陵县城</el-dropdown-item>
       <el-dropdown-item>车城花园</el-dropdown-item>
       <el-dropdown-item>马家湾</el-dropdown-item>
       <el-dropdown-item disabled>西安工商学院</el-dropdown-item>
     </el-dropdown-menu>
     </el-dropdown>
			</li>
			<li>
			<el-dropdown>
       <span class="el-dropdown-link">
       长安区<i class="el-icon-arrow-down el-icon--right"></i>
       </span>
       <el-dropdown-menu slot="dropdown">
         <el-dropdown-item>南大学城</el-dropdown-item>
         <el-dropdown-item>秦岭沿线</el-dropdown-item>
         <el-dropdown-item>航天城</el-dropdown-item>
         <el-dropdown-item disabled>韦曲南</el-dropdown-item>
         <el-dropdown-item divided>韦曲西街</el-dropdown-item>
       </el-dropdown-menu>
     </el-dropdown>
			</li>
			</ul>
		</div>
		
		<!-- 用餐人数 -->
		<div class="third">
			
		<div class="yongcan">
			<span>用餐人数</span>
		</div>	
		
		<div class="quanbu">
			<span>全部</span>
		</div>	
		
		<ul class="first1">
			<li><a href="">单人餐</a></li>
			<li><a href="">双人餐</a></li>
			<li><a href="">3-4人</a></li>
			<li><a href="">5-6人</a></li>
			<li><a href="">7-8人</a></li>
			<li><a href="">9-10人</a></li>
			<li><a href="">10人以上</a></li>
			<li><a href="">其他</a></li>
		</ul>	
      </div> 
      </div>

     <!-- 商家 -->
	 <div class="shangjia">
		 <!-- 导航栏 -->
	 <div class="nav">
		<span><a href="">默认</a></span>
		<span><a href="">销量</a></span>
		<span><a href="">价格</a></span>
		<span><a href="">好评最多</a></span>
     </div>
	
	<!-- 全部商家	 -->
	<div class="total_sj" >
	 	<ul class="a">
	 	<li class="dianpu"
		 :id="item.b_id.toString()"
		 v-for="(item,index) of bussines"
	  :key="index" >
			 <router-link to="/ms_details">
				<div class="pic">
					<img :src="item.b_pic">
				</div>
				</router-link>
				<div class="desc">	   
			    <h4>{{item.b_name}}</h4>
					<p>{{item.b_desc}}</p>
					 <p>人均¥{{item.average_person}}</p>
				</div>
			</li>
	    
		</ul>
	</div>
	</div>
		
		<!-- 分页 -->
		<div class="mt-pagination">
		<ul class="pagination">
			<li class="page-item"><span class="page-link">&lt;</span></li>
			<li class="page-item"><span class="page-link">1</span></li>
			<li class="page-item"><span class="page-link">2</span></li>
			<li class="page-item"><span class="page-link">3</span></li>
			<li class="page-item"><span class="page-link">4</span></li>
			<li class="page-item"><span class="page-link">...</span></li>
			<li class="page-item"><span class="page-link">10</span></li>
			<li class="page-item"><span class="page-link">&gt;</span></li>
		</ul>
        </div>
   </div>
  
<!-- 主页右边部分 -->
	<div class="right">
	<div>
	<h4>猜你喜欢</h4>
	</div>
	
	<div class="dian"
		 v-for="(right,index) of bus"
	  :key="index" >
		<ul>
		<li>
		<a href="#">
			<img :src="right.r_pic"></a>
      <p class="name">{{right.r_name}}</p>
	    <p class="desc">{{right.r_adr}}</p>
		<p class="price"><b>￥</b>{{right.price}}</p>
		</li>	
		</ul>
   </div>	
    </div>	
    </div>		 
</template>
<style scoped>

			.breadcrumb{
				width:74.375rem;height:3.4375rem;
				margin-left: 15px;
				margin-top:60px;
				}
			
			
				
				.xuanze{
				    width:950px;height:312px ;
			        display: flex;
				    flex-wrap: wrap;
					position: relative;
					border:1px solid #e5e5e5;
					background: #fff;
					border-radius:0.25rem;
					font-size:0.875rem;
					margin-bottom: 14px;
				
					}
				.first,
				.second,
				.third{
				width: 43.75rem;
				height:50px;
				border-bottom:0;
				}
				
				.fenlei,
				.yongcan,
				.quyu>span{
					width:4.0625rem;
					font-size:14px;
					color:#333;
					float: left;
					display: block;
				  margin-left:0.9375rem;
					margin-top:10px;
				}
			
				.quanbu{
					width:3.3125rem;height:1.25rem;
					color:#fff !important;
					background:#13D1BE;
					text-align:center;
					float: left;
					border-radius:6.25rem;
					margin-top:10px;
					
					
					
				}
				.first1{
					width:740px;
					display: flex;
					list-style: none;
					float: left;
					color:#666;
					
					margin-left: 160px;
					border-bottom: 1px solid #e5e5e5;
				}
				
				
				ul>li a{
					text-decoration:none;
					font-size:14px;
					color: #666;
					float: left;
					cursor: pointer;
					
				}
				ul>li{
					width:80px;
					margin-bottom:10px;
				}
				
				
				
			 .nav a{
					text-decoration: none;
					font-size:14px;
					color:#000;
					padding-bottom:13px;
					padding-left:1.875rem;
					line-height:20px;
					position: relative;
				}
				.nav a:active{
					color: #1E7E34;
					cursor: pointer;
					margin-top: 1.25rem;
					}

				.shangjia{
				width:908px;
				background: #fff;
				padding: 15px 20px 21px;
				border-bottom:1px solid #e5e5e5;
				border-radius: 4px;
				border: 1px solid #e5e5e5;}	
					
				.dianpu{
					width:788px;height:100px;
					padding-bottom:18px;
					margin-top:30px;
					margin-left:100px;
					list-style: none;
					border-top: 1px solid #e5e5e5;
					}
					.a{
						margin-left:-65px;
						margin-top: 0.625rem;
					}
					.total_sj>ul>li>div>img{
						float:left;
						margin-top:10px;
						border-radius: 4px;
						
					}
					
					.desc{
						float:left;
				        margin-left:25px;
						}
					.mt-pagination{margin-left:180px;}
				
					.pagination{
						text-align: center;
						margin-top: 40px;
					}	
					.page-item{
						width:40px;
						float:left;
						margin: 0 10px;
						font-size: 16px;
						list-style: none;
						/* text-align: ; */
					}
					.page-link{
						height: 40px;
						line-height: 40px;
						color: #999;
						cursor: pointer;
						border:1px solid #ccc;
						display: block;
						width: 100%;
						border-radius: 50%;
						text-decoration: none;
					}
					.page-link:active{
						background-color: #13D1BE;
						border-color: #13D1BE;
							
					}
					
			.left{
				width:788px;
				float:left;
				display: block;
				margin: 0 auto;
			}		
					
					
		    .right{
				display: block;
			    width:210px;
			    float:right;
				border:1px solid #e5e5e5;
				padding:16px 20px 0;
				background-color: #fff;
				border-radius: 4px;
				border-bottom: 900px;
				margin-top: 115px;
				margin-right:30px;
					/* margin: 0 auto; */
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
</style>
<script>
 export default{
	 data(){
    return{
		bussines:[],
		bus:[]
		 }
	},
	
  mounted(){
    // 获取文章分类信息
    this.axios.get('/bussines').then(res=>{
     this.bussines = res.data.results;
			 
		}),
   this.axios.get('/bus').then(res=>{
    this.bus= res.data.results;	 
	})
 }
 }
</script>