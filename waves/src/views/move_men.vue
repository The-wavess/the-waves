<template>
    <div id="pp">
	 <move_header></move_header>
        <div id="lunbo1">
			<div id="lunbo" class="header_1 flex" @mouseover="clears" @mouseout="clearout" :class="{transition:isTransition}">
				<img v-for="(p,i) of lun" :key="i"   :src="p.lunbo" alt="图片加载出错" >
				<img :src="lunbo.lunbo" alt="">
			</div> 
			<ul id="yuandian">
				<li v-for="j of 4" :key="j"  @click="active($event)" :class="{active:j-1==li}" :data-num="j-1"></li>
			</ul>
			<ul class="jiantou">
				<img @click="right()" src="../../public/move_img/left.png" alt="">
				<img @click="left()" src="../../public/move_img/right.png" alt="">
			</ul>
		<div class="men">
			<div class="flex _center">
				<div class="border_men">
				 <div class="posin">
						<p class="border_p">正在热映(40部)</p>
						<a href="#" class="men_font">全部</a>
					</div>
					
					<ul class="men_border_ul">
						<li  v-for="(p,i) of data" :key="i" >
							<router-link :to="`/detail?move_sid=${p.move_sid}`">
							<div>
								<li>
									<p>{{p.move_name}}</p>
									<span>{{momment1[i] + "."}}</span>
									<span>{{momment2[i]}}</span>
								</li>
								<img :src="p.move_img" alt="">
							</div>
								</router-link>
								<p><router-link :to="`/detail?move_sid=${p.move_sid}`">购票</router-link></p>
						</li>
					
					</ul> 
					
					<div class="posin">
						<p class="border_p">即将上映(121部)</p>
						<a href="#" class="men_font ">全部</a>
					</div>
					<ul class="men_border_ul">
						<li v-for="(p,i) of  
						 data1" :key="i">	
						 <router-link :to="`detail?move_sid=${p.move_sid}`">
						 <div>
							 <li>
									<p>{{p.move_name}}</p>
								</li>
							<img :src="p.move_img" alt="">
						</div>		
							<div>
								<p>{{p.xiangkan + "人想看"}}</p>

								<span>{{p.fenlei}}</span>
								<div>
									<router-link :to="`detail?move_sid=${p.move_sid}`">{{p.yugao}}</router-link>
								</div>
							</div>
							</router-link>
							<p>{{move_time[i].slice(0,4) + "年" + move_time[i].slice(5,7) +"月" +move_time[i].slice(-2) + "日"}}</p>
							
						</li>	
					</ul>
					
				
					<div class="posin">
						<p class="border_p">热播电影(36部)</p>
						<div id="rebo">
							<a href="#" class="">爱情</a>
							<a href="#" class="">喜剧</a>
							<a href="#" class="">动作</a>
							<a href="#" class="">恐怖</a>
							<a href="#" class="">动画</a>
						</div>
					</div>
					<ul class="men_border_ul">
						<li>
							<div>
								<li>
									<p>菊次郎的夏天</p>
									<span>9.</span>
									<span>2</span>
								</li>
							 <router-link to="`/detail?move_sid=17`"> <img src="../../public/move_img/men17.png" alt=""></router-link>
							</div>
						</li>
						<li v-for="(p,i) of data" :key="i">
							<router-link :to="`/detail?move_sid=${p.move_sid}`">
							<div>
								<li>
									<p>{{p.move_name}}</p>
									<span>{{momment1[i] + "."}}</span>
									<span>{{momment2[i]}}</span>
								</li>
								<img :src="p.move_img" alt="">
							</div>
							</router-link>
						</li>
						
					</ul>
					
				</div>
				
				<div class="men_div_2">
					<p class="border_p">今日票房</p>
				<div>
				<div class="flex" id="piao" v-for="(p,i) of maxdata" :key="i">
					<router-link :to="`/detail?move_sid=${p.move_sid}`">	
					<div>
						<img src="../../public/move_img/menright.png" alt="">
						<img :src="p.move_img" alt="">
					</div>	
					<div class="men_rfirst">
						
						<router-link :to="`/detail?move_sid=${p.move_sid}`" class="men_rbai" href="#">{{p.move_name}}</router-link>
						<p><router-link :to="`/detail?move_sid=${p.move_sid}`" class="men_text" href="#">{{p.people + "万"}}</router-link></p>
					</div>
					</router-link>
				</div>
			
			
			<ul class="right_ul">
				<li v-for="(p,i) of data2" :key="i">
					<router-link :to="`/detail?move_sid=${p.move_sid}`" href="#" class="men_text_1"><span class="men_text_2">{{i+2}}</span> {{p.move_name}}<span>{{p.people +　"万"}}</span> </router-link>
				</li>
				
			</ul>
			<div class="flex_1">
					<div class="right_flex_div">今日大盘</div>
					<div class="flex_2" v-for="(p,i) of maxdata" :key="i">
						<router-link :to="`/detail?move_sid=${p.move_sid}`" class="right_piao">{{p.people}}<span class="right_wan">万</span></router-link>
						<router-link to="/move_index" href="" class="right_wan">查看更多&gt;</router-link>			
						<p class="right_bei">{{"北京时间 " + new Date().getHours() + ":" + new Date().getMinutes() + ":" + new Date().getSeconds()}}</p>
						<p class="right_bei">猫眼专业版实时票房数据</p>
					</div>
				</div>
					
				
				<div>
					<div class="border_p1">最受期待
						<span class="right_wan float_right">查看今日票房</span>
					</div>
					<div class="flex" id="pidai" v-for="(p,i) of maxdata2" :key="i">
						<router-link :to="`/detail?move_sid=${p.move_sid}`">
						<div>
							<img src="../../public/move_img/menright2.png" alt="">
							<img :src="p.move_img" alt="">
						</div>	
						<div class="men_rfirst">
							<a class="men_rbai _center" href="#">{{p.move_name}}</a>
							<p class="right_bei">{{p.move_time.slice(0,4)}}</p>
							<p><a class="men_text" href="#">{{p.xiangkan　+　"人想看"}}</a></p>
						</div>
						</router-link>
					</div>
					
					<div id="men_right" class="flex">
						<div class="right_border"  v-for="(p,i) of maxdata3" :key="i">
							<router-link :to="`/detail?move_sid=${p.move_sid}`">
							<span class="yi">{{i+2}}</span>
							<img :src="p.move_img" alt="">
							<p class="men_text_1">{{p.move_name}}</p>
							<p class="right_wan">{{p.xiangkan + "人想看"}}</p>
							</router-link>
						</div>	
					
					</div>
					
				
				<ul class="right_ul">
					<li v-for="(p,i) of maxdata4" :key="i">
						<router-link :to="`/detail?move_sid=${p.move_sid}`" href="#" class="men_text_1"><span class="men_text_3">{{i+4}}</span> {{p.move_name}}<span>{{p.xiangkan+ "人想看"}}</span> </router-link>
					</li>
					
				</ul>
				
				<p class="border_p1">TOP 100
					<span class="right_wan">查看完整榜单></span>
				</p>
				<div >
					<div class="flex" id="top" v-for="(p,i) of maxdata" :key="i">
						<router-link :to="`/detail?move_sid=${p.move_sid}`">
						<div>
							<img src="../../public/move_img/menright3.png" alt="">
							<img :src="p.move_img" alt="">
						</div>
						<div class="men_rfirst">
							<a class="men_rbai">{{p.move_name}}</a><br>
							<p class="right_wan" id="rbai">{{p.people + "分"}}</p>
						</div>
						</router-link>
					</div>
					<ul class="right_ul">
					<li v-for="(p,i) of data2" :key="i">
						<router-link :to="`/detail?move_sid=${p.move_sid}`" class="men_text_1"><span class="men_text_2">{{i+2}}</span> {{p.move_name}}<span>{{p.people +　"万"}}</span> </router-link>
					</li>
						
					</ul>
				</div>
				</div>
			</div>
		</div>							
	</div> 
</div>
	
</div>
 <move_footer></move_footer>
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
#lunbo1{
	width: 1200px;
margin: 0 auto;
	overflow: hidden;
}
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

.posin{position: relative;}
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
.index_radio{width: 1200px;margin: 0 auto;margin-bottom: 20px;}
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
.header_1>div{width: 1200px; height: 75px;}
.li_none>li{color: #666666;}
.li_none>li>a{color: #000;padding: 1px 9px;}

.li_none>li a:hover{color: orange;}
.li_none>li a:focus{color: #fff;background-color: orange;border-radius: 30px;}

.bodyer{width:75rem;margin:  0 auto;padding-bottom: 50px;flex-wrap: wrap;}
.bodyer>ul{display: block;}
.bodyer>ul img{margin: 10px 10px;}
.foot_div{
	background-color: #47464A;
	color: #fff;
	margin: 3.125rem  auto 0;
	text-align: center;
	padding-top:80px;
	padding-bottom: 80px;
	}
.move_page{display: flex;width: 200px;height: 30px; margin: 0px auto;}
.move_page button{width:30px; height: 30px; background-color:#fff;margin: 3px 3px;border: 1px solid #aaa;}
.move_page :nth-child(3){width:80px;}
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

.header_1{height: 441px;position: relative;top:51px;right: 0;

text-align: start;}
.transition{
	transition:all 0.3s linear;
}
.header_1>img{width: 100%;}

.men{width: 1100px;margin: 0 auto ; margin-top: 90px;}
.border_men{width: 770px;position: relative;}
.border_p{color: #FFA500;font-size: 30px;padding-bottom:30px;text-align: start;}
.border_p1{color: #FFA500;font-size: 30px;padding:30px 0;margin-top:50px;text-align: start;}

.men_font{font-size: 14px;color: #FFA500;position: absolute;right: 10px;top: 20px;}
.men_text{font-size:14px;color:orange;}
.men_rbai{font-size: 20px;color:#000;}
.men_rfirst>p{padding-top: 20px;text-align: start;}
.men_rfirst{
	width: 100%;
	height: 190px;
	border:1px solid #ddd;
	padding-top:20px;
	text-align:start;
	padding:  10px ;
	position: relative;
	box-sizing: border-box;
}
#rebo{position:absolute;left: 240px; top: 20px;}
#rebo>a{color: #000;margin-left:10px}
.right_ul{margin-top:10px;text-align: start;height: 210px;overflow: hidden;}
.right_ul>li{width: 100%;height: 40px;padding:5px 0;line-height: 40px;}
.men_div_2>div>li{margin:35px 0;}
.men_div_2>div a>span+span{color:orange;float: right;font-size:14px;}
.men_text_1{font-size:16px;color:#000;}
.men_text_2{color:orange;font-style: italic;margin-right:10px;}
.men_text_3{color:#aaa;font-style: italic;margin-right:10px;}
.men_border_ul{
			width: 100%;
			height:500px;
			display: block;
			display: flex;
			flex-wrap: wrap;
			padding-top:30px ;
			overflow: hidden;
			margin-bottom: 30px;
			justify-content:space-around;

}
.men_border_ul>li{
	margin-bottom: 30px;
}

.men_border_ul>li img{width: 140px;height: 200px;z-index: -1;}

.men_border_ul>li div:first-child{
	background:url(../../public/move_img/jianbianbg.png) repeat-x bottom;
	position: relative;

	
}
.men_border_ul>li div>li{
position: absolute;display: flex;
bottom: 15px;color: #fff;
left: 8px;
}
.men_border_ul>li div>li>span{
	position: absolute;
	left: 105px;color: orange;
	bottom: -3px;
	font-size: 18px;
}
.men_border_ul>li div>li>span+span{
	position: absolute;
	left: 120px;bottom: -1px;
	font-size: 12px;
}
.men_border_ul>li p>a{display: flex;display: block;text-align: center;
width: 140px;height: 25px;padding-top: 5px;
color: #999;font-size: 14px;margin-top: 5px;
}
.men_border_ul>li p>a{color: #FFA500;border: 1px solid #ddd;}
.men_border_ul>li p:hover a{background: #FFA500;border: 1px solid orange;}
.men_border_ul>li div:hover{
box-shadow:0 1px 6px 1px  #eee;
}
.men_border_ul>li p:hover a{color: #fff;}
.men_border_ul>li>a>div{
	width: 140px;
	border: 1px solid #ddd;
	border-top:none;
	font-size: 14px;
	margin-top:-5px;
	margin-right: 2px;
	display: flex;
	flex-wrap: wrap;	
}
.men_border_ul>li div>a{
	color: #bbb;
	padding-left: 25px;
}
.men_border_ul>li div>p{
	color: orange;
	text-align: start;
	padding: 10px;
}
.men_border_ul>li div>span:nth-child(2){
	border-right: 1px dotted #ddd;
	margin: 0 0px 5px 13px;
	padding-right: 13px;
	color: #bbb;

}

.men_border_ul>li div>span:nth-child(3){
	margin: 0 10px 5px 20px;
	padding-top:5px;

}
.men_border_ul>li div>span>a{
color: lightskyblue;
}
.men_border_ul>li div>span:hover:nth-child(3){
	background: lightskyblue;
}
.men_border_ul>li div>span:hover a{
color:#fff ;
}
.men_div_2{
	width: 360px;padding-left: 90px;
}
.border_men>ul:nth-child(4){
	height: 600px;
	text-align: center;
}
.border_men>ul:nth-child(4)>li>p{
	color: #aaa;font-size: 14px;
	margin-top: 10px;
}
.border_men>ul:nth-child(6){
	height: 420px;
}
.border_men>ul:nth-child(6)>li:first-child img{
	width: 310px;
	height:190px;
	position: relative;
	left: -25px;
	top: -5px;
}
.border_men>ul:nth-child(6)>li:first-child>div{
	width: 310px;background-image:linear-gradient(to top,#222,transparent,transparent);
	background-size:cover;
}
.border_men>ul:nth-child(6)>li:first-child span{
	position: absolute;
	left: 265px;
}
.border_men>ul:nth-child(6)>li:first-child span+span{
	position: absolute;
	left: 280px;
}
.border_men>ul>li>div>div>a{
	color: #aaa;
	padding:10px 0 0 25px;
	cursor: text;
}
#piao>a{display: flex;}
#piao>a>div:first-child{
	position: relative;

}
#piao>a>div>img:nth-child(2){
	width: 120px;height: 89px;
}
#piao>a>div:first-child>img:first-child{
	position: absolute;left: 0px;top: 0px;
}

#piao .men_rfirst{
	box-sizing: border-box;
	height: 89px;
	width: 240px;
}
#pidai>a>div{
	position: relative;
}
#pidai>a>div:first-child>img:first-child{
	position:absolute;
	top: 0px;left: 0;
}
#pidai>a{
	display: flex;
}
#pidai>a>div:first-child>img+img{
	box-sizing: border-box;
	width:140px ;
	height: 190px;
}
#pidai>a>div:nth-child(2){
	width: 230px;
}
#top>a{
	display: flex;
}
#top div:first-child{
	position: relative;
}
#top div:first-child>img:first-child{
	position: absolute;
	top: 0px;
	left: 0px;
}
#top div:first-child>img:last-child{
	height: 80px;
}
#top .men_rfirst{
	box-sizing: border-box;
	width:310px;
	height: 80px;
}
.flex_1{display: flex;width:100%;flex-wrap: wrap;border:1px solid #eee;background-color:rgba(200,200,200,.1);}
.right_flex_div{width: 16px;height: 95px;padding:10px 15px;background-color:orange;color:#fff;font-size:16px;}
.right_span{overflow-block: scroll;}
.right_piao{font-size:30px;color:orange;}
.right_wan{font-size:14px;color:orange;float: right;margin-top:15px ;}
a>span.right_wan{
float: both;
position: absolute;
}
span.right_wan.float_right{
	margin-top: 0px;
}

.right_bei{font-size:14px;color:#aaa;}
.flex_2{width: 255px;padding-top:20px;padding-left: 15px;}
.flex_right{margin-bottom:50px;}
.flex_1>div p+p{float:right;}
.float_right{float:right; padding-top:20px;}
.men_rfirst:hover,.men_text_1:hover,.right_ul>li:hover{background-color:rgba(200,200,200,.1);}
.right_border{border:1px solid #ddd;position: relative;}
#men_right>div.right_border img{
	width: 175px;
	height: 118px;

}
.yi{
	font-style: italic;
	color: #fff;
	background:orange;
	display: inline-block;
    padding:0 5px;
	position: absolute;
	top: 0;
	left: 0;

}
#rbai{
	float: right;margin: 0;
}
#men_right{ display: flex;}
#men_right>div{margin:20px 0;;}
#men_right>div+div{margin-left:15px;}
#men_right>div>p{padding:5px;}
#right_yu{margin-top:25px;margin-left: 9px;}
#pp>div>div:first-child{margin: 0 auto;}
#lunbo1>ul{
	width: 100%;
	display: flex;
	position: relative;
}
#lunbo1>ul>li{
	width: 15px;
	height: 15px;
	background: #fff;
	position: relative;
	left: 47%;
	bottom: 0;
	margin: 0 3px;
	border-radius: 50%;
}
.jiantou>img{
	position: absolute;
	width: 120px;
	height: 120px;
	right: 0px;
	top: -240px;
}
.jiantou>img+img{
	position: absolute;
	left: 0px;
	top: -240px;
}
.active{
	background: #0fa !important;
}
</style>
<script>
		export default{
		data(){
			return{
					lun:[],
					lunbo:'1',
					i:0,
					li:0,
					isTransition:true,
					timer:'',
					lis:'',
					data:[],
					data2:[],
					momment1:[],
					momment2:[],
					data1:[],
					move_time:[],
					maxdata:[],
					maxdata2:[],
					maxdata3:[],
					maxdata4:[],			
				
			}
		},
		mounted(){
			this.axios.get("/move_name").then(res=>{	
				this.lun=res.data.results;
				this.lunbo=res.data.results[0];
			
			});

	 		this.axios.get("/move_img").then(res=>{
				 let data2=res.data.results
				let  data=res.data.results
				 data.sort((a,b)=>{return b.people - a.people})
					this.maxdata.push(data[0])
				let s=[]
				data.forEach((item)=>{
					if(item.xiangkan == null){
					this.data.push(item)
					this.data2.push(item)
					let str=item.move_momment.toString()
					this.momment1.push(str.slice(0,1))
					this.momment2.push(str.slice(-1))	
						}else{
							this.data1.push(item)
							this.move_time.push(item.move_time)
						}	
							
				})
			this.data2.shift()
				function fun(a,b){return b.xiangkan - a.xiangkan}
					data2.sort(fun)
				this.maxdata2.push(data2[0])
				this.maxdata3.push(data2[1],data[2])
				 this.maxdata4=(data2.slice(3))
			
		})	
			this.movesTo()
			this.li=this.i
			this.timer=setInterval(()=>{
				this.li=this.i
				this.i++;
				if(this.i==5){
					this.isTransition=false;
					this.i=0
				}
				if(this.i==1){
					this.isTransition=true
				}
				this.movesTo(this.i)
			},3000)
	},
	methods:{

		right(){
			this.li=this.i
				this.i++;
				if(this.i==5){
					this.isTransition=false;
					this.i=0
				}
				if(this.i==1){
					this.isTransition=true
				}
			this.movesTo(this.i)
				 clearInterval(this.timer)
			
		},
		left(){
			this.li=this.i
				this.i--;
				if(this.i==-1){
					this.isTransition=false;
					this.i=4
				}
				if(this.i==3){
					this.isTransition=true
				}
			this.movesTo(this.i)
				 clearInterval(this.timer)
			
		},
		movesTo(i){
			this.li=this.i

			let lunbo=document.querySelector('.header_1')
				// li.className='active'
			lunbo.style.right=i*1200+'px'
			this.li=i;
			if(this.li==4){
				this.li=0
			}		
	
		},
		clears(){
			 clearInterval(this.timer)
		},
		clearout(){
		this.timer=setInterval(()=>{
				this.li=this.i
				this.i++;
				if(this.i==5){
					this.isTransition=false;
					this.i=0
				}
				if(this.i==1){
					this.isTransition=true
				}
				this.movesTo(this.i)
			},3000)
		},
		
	active(e){
		this.i=e.target.dataset.num;
		this.movesTo(this.i)
		 clearInterval(this.timer)
		// let ul=document.getElementById('yuandian')

	}

	}
}

</script>