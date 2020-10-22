<template>
    <div id="pp">
        <div class="header">
			<div  class="_center flex"  @click="ren($event)">	
				<a  href="javascript:;">正在热映
					<div class="sanjiao"></div>
				</a>
				<a href="javascript:;">即将上映
					<div class="sanjiao"></div>
				</a>
				<a  href="javascript:;">经典影片
					<div class="sanjiao"></div>
				</a>
			</div>
		</div>
				<!-- 类型 -->
		<div class="header_1">
			<div class="li_none flex" @click="type($event)">
				<li>类型:</li>
					<li><a href="javascript:;">全部</a></li>
					<li><a href="javascript:;">爱情</a></li>
					<li><a href="javascript:;">喜剧</a></li>
					<li><a href="javascript:;">动画</a></li>
					<li><a href="javascript:;">剧情</a></li>
					<li><a href="javascript:;">恐怖</a></li>
					<li><a href="javascript:;">惊悚</a></li>
					<li><a href="javascript:;">科幻</a></li>
					<li><a href="javascript:;">动作</a></li>
					<li><a href="javascript:;">悬疑</a></li>
					<li><a href="javascript:;">犯罪</a></li>
					<li><a href="javascript:;">冒险</a></li>
					<li><a href="javascript:;">战争</a></li>
					<li><a href="javascript:;">奇幻</a></li>
					<li><a href="javascript:;">运动</a></li>
					<li><a href="javascript:;">家庭</a></li>
					<li><a href="javascript:;">古装</a></li>
					<li><a href="javascript:;">武侠</a></li>
					<li><a href="javascript:;">西部</a></li>
					<li><a href="javascript:;">历史</a></li>
					<li><a href="javascript:;">传记</a></li>
					<li><a href="javascript:;">歌舞</a></li>
					<li><a href="javascript:;">黑色电影</a></li>
					<li><a href="javascript:;">短片</a></li>
					<li><a href="javascript:;">纪录片</a></li>
					<li><a href="javascript:;">其他</a></li>
			</div>
			<div class="li_none flex">
				<li>区域:	</li>
				<li><a href="javascript:;">全部</a></li>
				<li><a href="javascript:;">大陆</a></li>
				<li><a href="javascript:;">美国</a></li>
				<li><a href="javascript:;">韩国</a></li>
				<li><a href="javascript:;">日本</a></li>
				<li><a href="javascript:;">中国香港</a></li>
				<li><a href="javascript:;">中国台湾</a></li>
				<li><a href="javascript:;">泰国</a></li>
				<li><a href="javascript:;">印度</a></li>
				<li><a href="javascript:;">法国</a></li>
				<li><a href="javascript:;">英国</a></li>
				<li><a href="javascript:;">俄罗斯</a></li>
				<li><a href="javascript:;">意大利</a></li>
				<li><a href="javascript:;">西班牙</a></li>
				<li><a href="javascript:;">德国</a></li>
				<li><a href="javascript:;">波兰</a></li>
				<li><a href="javascript:;">澳大利亚</a></li>
				<li><a href="javascript:;">伊朗</a></li>
				<li><a href="javascript:;">其他</a></li>
			</div>
			<div class="li_none flex">
				<li>年代:</li>
				<li><a href="javascript:;">全部</a></li>
				<li><a href="javascript:;">2020</a></li>
				<li><a href="javascript:;">2019</a></li>
				<li><a href="javascript:;">2018</a></li>
				<li><a href="javascript:;">2017</a></li>
				<li><a href="javascript:;">2016</a></li>
				<li><a href="javascript:;">2015</a></li>
				<li><a href="javascript:;">2014</a></li>
				<li><a href="javascript:;">2013</a></li>
				<li><a href="javascript:;">2012</a></li>
				<li><a href="javascript:;">2011</a></li>
				<li><a href="javascript:;">2000-2010</a></li>
				<li><a href="javascript:;">90年代</a></li>
				<li><a href="javascript:;">80年代</a></li>
				<li><a href="javascript:;">70年代</a></li>
				<li><a href="javascript:;">更早</a></li>
			</div>
		</div>
		<!-- 单选框 -->
		<div class="index_radio">
			<span><input type="radio"  name="input" id="" value="" />按热门排序</span>
			<span><input type="radio" name="input" id="" value="" />按时间排序</span>
			<span><input type="radio" name="input" id="" value="" />按评价排序</span>
		</div>
		<!-- 主体 -->
		<div class="bodyer flex">
		<ul v-for="(p,i) of data" :key="i">
			<router-link :to="`/detail?move_sid=${p.move_sid}`"   >
	<div id="float">
		<img :src="p.move_img" alt="">
		<div>
			<span>{{p.move_name}}</span><span>{{p.move_momment}}</span>
			<p>类型：{{p.move_type}}</p>
			<p>主演</p>
			<p>上映时间：{{p.move_time}}</p>
		</div>
	</div>
				<img :src="p.move_img" >
				<p>{{p.move_name}}</p>
				<p>{{p.move_momment}}</p>

			</router-link>
		</ul>
		
		</div>
		<!-- 下一页 -->
		<div class="move_page">
			<button v-for="(p,i) of pagecount" :key="i" @click="btn(p)">{{ p }}</button>
			<button type="button" class="xia"  @click="active" >下一页</button>
		</div>
    </div>
</template>
<style scoped>
    *{margin: 0; padding: 0;}

body{font-family: Microsoft YaHei,Helvetica,Arial,sans-serif;
width: 100%; min-width: 1200px;}
*{border: 0;outline:0 ;}
a{text-decoration: none;}
ul,li{margin: 0;padding: 0;list-style:none;outline:0 ;}
.flex{display: flex;margin: 0;}
.ul_px{width: 70px;height: 80px;padding-left: 20px;position: relative;
	border: 1px solid #fff;border-bottom:none;}
.li_none{list-style: none;flex-wrap: wrap;}
._center{ justify-content: space-between;margin: auto ;}
.head_center{width:1200px;margin: 0 auto ;}
.bordeer_xia{border-bottom: 1px solid #DDDDDD;width: 100%;background: #fff;}
button{border:0;outline-style: 0;}
ul,li{margin: 0 ;padding: 0;}
.index{
	height:5rem;
	display: flex;
}
.sanjiao{
	display: none;
	margin: 0 auto;
	margin-top:9px;
	width: 0;
	border-left:10px solid transparent;
	border-right:10px solid transparent;
	border-bottom:10px solid #fff;

}
.index>input{padding-left: 15px;}
.header_mao{width:140px;}
.header_an{width:70px;padding-right: 15px;}
.header_an>button{width: 80px;height: 81px;background-color: #fff; 
	font-size: 1rem;border: 1px solid #fff;border-bottom:1px solid #ddd;position: relative;}
.index>li button:hover{color: orange;}

.header_an>button:hover{
	border-left:1px solid #ddd;
	border-right:1px solid #ddd;
	border-bottom:1px solid #fff;

}
.header_an>button>div:first-child{
	position: absolute;
	top: 38px;
	right: 2px;
}
.header_an>button:hover div:first-child{
	transform:rotate(180deg);
	transition:200ms;
}
.header_an>button>div:nth-child(2){
	width: 250px;
	height: 200px;
	border: 1px solid #ddd;
	border-top:none;
	position: absolute;
	top: 80px;
	left: -1px;
	display: none;
	z-index: 10;
	background-color: #fff;
}
.header_an>button:hover>div:nth-child(2){
	display:block ;
}
.header_an>button>div:nth-child(2)>p{
margin-left:-120px;
line-height: 40px;
}
.header_an>button>div:nth-child(2)>p>router-link:hover{
cursor: pointer;
}

.index>li button:focus{
	color: #fff;background-color: #FFA500;
	}

.deg{
	width: 0;
	border-top: 5px solid #666;
	border-right: 5px solid transparent;
	border-left: 5px solid transparent;
	}
.font_size:hover{color: orange; }
.font_size:focus{color: #FFFFFF;background-color: orange  ; }
.index_radio{width: 1200px;margin: 0 auto;margin-bottom: 20px;text-align: start;}
.index_radio>span{margin: 0px 20px;}
.header_ul{width: 50px;margin: 0;}
.index li{list-style: none;display: flex;
}
.index>li>button{display: block;width:70px;height: 80px;font-size: 1.125rem;background-color: #FFFFFF;
}
#app>button{width:130px;height: 81px;font-size:1rem;
	background-color: #FFFFFF;margin-left: 40px;margin-right: 20px;
	position: relative;	border: 1px solid #fff;
	border-bottom:1px solid #ddd;
}
#app>button>span{
	margin-left:30px;
}
#app>button:hover{
border-left: 1px solid #ddd;
border-right: 1px solid #ddd;
border-bottom: 1px solid #fff;
}
#app>button:hover>div:nth-child(3){
	transform:rotate(180deg);
	transition:200ms;
}
#app>button:hover>div:nth-child(4){
	display: block;
	z-index: 10;
}
#app>button>img{
	position: absolute;
	top: 30px;
	left: 10px;
}
#app>button>div:nth-child(3){
	position: absolute;
	top: 38px;
	right: 10px;
}
#app>button>div:nth-child(4){
	box-sizing: border-box;
	position: absolute;
	top: 80px;
	left:-1px;
	border: 1px solid #ddd;
	border-top:none;
	margin:0 auto;
	width: 130px;
	height: 200px;
	display: none;
	background-color: #fff;
}
#app>button>div>img{
	margin-top:20px;
}
#app>button>div>p:nth-child(2){
	margin-top:10px;
}
#app>button>div>p+p{
	color:#aaa;
}
#app >button>img{width: 15px;height: 24px;float:inline-start;}
.index>input{
	width: 13.75rem;
	height: 40px;
	border-radius: 30px;
	color: #aaa;
	border: 1px solid #aaa;
	border-right: none;
	outline:0;
	margin-right: 40px;
}
.ul_px>img{width: 40px;height: 40px;margin-top: 20px;}
.ul_px:hover{
	border-right:1px solid #ddd ;
	border-left:1px solid #ddd ;
	
}
.ul_px>div:nth-child(2){
	position: absolute;
	top: 38px;
	right: 15px;
}
.ul_px:hover>div:nth-child(2){
	transform:rotate(180deg);
	transition:200ms;

}
.ul_px>div:nth-child(3){
	position: absolute;
	top: 79px;
	left: -1px;
	border: 1px solid #ddd;
	
	border-top:1px solid #fff ;
	width: 90px;
	height: 50px;
	z-index: 10;
	text-align: center;
	background-color: #fff;
		display: none;
}
.ul_px>div:nth-child(3)>router-link{
	line-height: 50px;
	color: #aaa;
}
.ul_px:hover>div:nth-child(3){
	display: inline;

}
.ul_px>div:nth-child(3)>router-link:hover{
	cursor: pointer;
}
#sousuo{position: relative;}
#sousuo>img{
	width: 42px;
	border-radius: 50%;
position: absolute;
top: 19px;
left:200px;
}

.header>div>a:focus>div{
	display: block;
}
.header{height: 60px;text-align: center; background-color: #47464a;}
.header a{display: block;text-align: center;margin-top: 20px;color: #aaa;}

.header>div>a:hover{
color: #fff;
}
.header>div>a:focus{color: #FFA500; }

.header>div{
	width: 400px;height: 60px;
}
.men_ul{
	display: flex;
	display: block;
	flex-wrap: wrap;
	width: 100%;
text-align: left;
}
.men_ul>li{
	font-size:1.5rem;
}
.men_ul>a{
	font-size: 1.25rem;
}
.index_a{width: 220px;height: 40px;}
.index_a>input{border-radius: 50px ;}
.header_1{width:1200px;height: 226px;margin: 0 auto;margin-top: 30px;font-size: 14px;
}
.header_1>div{width: 1200px; height: 75px;}
.li_none>li{color: #666666;}
.li_none>li>a{color: #000;padding: 1px 9px;}

.li_none>li a:hover{color: orange;}
.li_none>li a:focus{color: #fff;background-color: orange;border-radius: 30px;}

.bodyer{width:75rem;margin:  0 auto;
padding-bottom: 50px;flex-wrap: wrap;
display: flex;flex-flow: wrap;position: relative;}
a{color: #000;}
.bodyer>ul{display: block;text-align: center;margin-bottom: 20px;position: relative;}
.bodyer>ul>a>p+p{color: orange; font-size: 24px;font-style: italic;margin-top: 10px;}
.bodyer>ul div{display: block;display: flex;flex-flow: wrap;}
.bodyer>ul img{margin: 10px 10px;width: 160px; height: 220px;}
.foot_div{
	background-color: #47464A;
	color: #fff;
	margin: 3.125rem  auto 0;
	text-align: center;
	padding-top:80px;
	padding-bottom: 80px;
	}
.bodyer ul a:hover #float{
	display: block;
}
	#float{
		width:218px ;
		height:300px ;
		position:absolute;
		top: -28px;
		left: -20px;	
		z-index: 20;
		display: none;

	}
	#float img{
		width: 100%;
		height: 100%;
	}
	#float div{
		width: 100%;
		height: 50%;
		position: absolute;
		bottom: -10px;
		left: 10px;
		display:inline-block;
		text-align: start;
		background-color: #fff;
		line-height: 33px;
		font-size: 15px;
	}
	#float div>span{
		font-size: 18px;
		font-size: 22px;
		margin: 10px 0 0 10px;
	}
	#float div>span+span{
		float: right;
		margin-top: 0;
		margin-right: 5px;
		font-size: 22px;
		color: orange;
		font-style:italic;
	}
	#float div>p{
		margin-left: 10px;
	}


.move_page{display: flex;width: 200px;height: 30px; margin: 0px auto;}
.move_page button{width:30px; height: 30px; background-color:#fff;margin: 3px 3px;border: 1px solid #aaa;}
.move_page>.xia{width:80px;}
.move_page button:hover{border:1px solid orange;}
.foot_div a{
	font-size: 0.875rem;
	color: #FFFFFF;
	margin: 3px 1px;
	}
.font_color{color: orange !important;}	
.foot_div p{
	margin: 0 auto;	
}
.foot_img{margin: 20px 4px;}
.move_footer{width: 100%;	height:27.5rem;border: 0;}
.move_header{width: 100%;height:50rem ;border: 0;z-index: 2;position: fixed;top:0;}

</style>
<script>
export default{
    data(){
        return{
			data:[],
			n:1,
			pagecount:"",
			like:'动画',
        }
	},

methods:{
	fun(){
		this.axios.get("/move_index?n= " + this.n).then(res=>{

			this.data=res.data.results;	

			this.pagecount=res.data.pagecount;
			 
		})
	},
	active(){	
		if (this.n < this.pagecount) {
			this.n++;
			this.fun()
		}
	},
	btn(p){
		this.n=p
		this.fun()
		
	},
	ren(e){
		let a=e.target
	let	div = a.children
		
	},
	type(e){
		let d = e.target.innerText
		this.like = d

			this.axios.get('/type/' + this.like).then(res=>{
				this.data =res.data.results 
				this.pagecount = parseInt(res.data.pagecount)
		})
		if( d =='全部'){
			this.fun()
		}
	
		
	}
	},
    mounted(){
		this.fun()
	
	
		},
	
}
</script>