<template>
    <div id="pp">
        <div >
			<div class="header_1 flex" >
				<img v-for="(p,i) of lunbo" :key="i"  :src="p" alt="图片加载出错" >
			</div>
		<div class="men">
			<div class="flex _center">
				<div class="border_men">
					<div class="posin">
						<p class="border_p">正在热映(40部)</p>
						<a href="#" class="men_font">全部</a>
					</div>
					<ul class="men_border_ul">
						<li  v-for="(p,i) of move_img" :key="i" >
							<img :src="p" alt="">
								<p><a href="">购票</a></p>
						</li>
						
					</ul>
					<div class="posin">
						<p class="border_p">即将上映(121部)</p>
						<a href="#" class="men_font ">全部</a>
					</div>
					<ul class="men_border_ul">
						<li v-for="(p,i) of  
						 move_img2" :key="i">	
								<img :src="p" alt="">
							<div>
								<p>{{}}</p>
								<span>{{}}</span>
								<div>
									<router-link to="s.yugao">{{}}</router-link>
								</div>
							</div>
							<p>9月30日上映</p>
						</li>
						
					</ul>
					<div class="posin">
						<p class="border_p">热播电影(121部)</p>
						<div id="rebo">
							<a href="#" class="">爱情</a>
							<a href="#" class="">喜剧</a>
							<a href="#" class="">动作</a>
							<a href="#" class="">恐怖</a>
							<a href="#" class="">动画</a>
						</div>
					</div>
					<ul class="men_border_ul">
						<li v-for="(p,i) of move_img" :key="i">
							<img :src="p" alt="">
							<p><a href="">购票</a></p>
						</li>
						
					</ul>
				</div>
				<div class="men_div_2">
					<p class="border_p">今日票房</p>
				<div>
				<div class="flex">		
					<img src="../../public/move_img/body_right.jpg" alt="">
					<div class="men_rfirst">
						<a class="men_rbai" href="#">八佰</a>
						<p><a class="men_text" href="#">1.25亿</a></p>
					</div>
				</div>
			<ul class="right_ul">
				<li>
					<a href="#" class="men_text_1"><span class="men_text_2">2 </span> 我在时间尽头等你<span>560万</span> </a>
				</li>
				<li>
					<a href="#" class="men_text_1"><span class="men_text_2">3 </span> 小妇人<span>163万</span> </a>
				</li>
				<li>
					<a href="#" class="men_text_1"><span class="men_text_3">4 </span> 荞麦生长<span>110万</span> </a>
				</li>
				<li>
					<a href="#" class="men_text_1"><span class="men_text_3">5 </span>哈利·波特与魔法石<span>90万</span> </a>
				</li>
			</ul>
				<div class="flex_1">
					<div class="right_flex_div">今日大盘</div>
					<div class="flex_2">
						<a href="" class="right_piao">3428.3<span class="right_wan">万</span></a>
						<a href="" class="right_wan">查看更多></a>			
						<p class="right_bei">北京时间 08:42:38</p>
						<p class="right_bei">猫眼专业版实时票房数据</p>
					</div>
				</div>
				<div>
					<div class="border_p1">最受期待
						<span class="right_wan float_right">查看今日票房</span>
					</div>
					<div class="flex">
						<img src="../../public/move_img/body_right2.jpg" alt="">
						<div class="men_rfirst">
							<a class="men_rbai _center" href="#">唐人街探案3</a>
							<p class="right_bei">上映时间：2020</p>
							<p><a class="men_text" href="#">22654114人想看</a></p>
						</div>
					</div>
					<div id="men_right" class="flex">
						<div class="right_border">
							<img src="../../public/move_img/body_right3.jpg" alt="">
							<p class="men_text_1">我的家乡</p>
							<p class="right_wan">1298059人想看</p>
						</div>	
						<div class="right_border">
							<img src="../../public/move_img/body_right4.jpg" alt="">
							<p class="men_text_1">姜子牙</p>
							<p class="right_wan">915805人想看</p>
						</div>	
					</div>
				<ul class="right_ul">
					<li>
						<a href="#" class="men_text_1"><span class="men_text_3">4 </span> 紧急救援<span>562338人想看</span> </a>
					</li>
					<li>
						<a href="#" class="men_text_1"><span class="men_text_3">5</span> 木兰：横空出世<span>559939人想看</span> </a>
					</li>
					<li>
						<a href="#" class="men_text_1"><span class="men_text_3">6 </span> 夺冠<span>446956人想看</span> </a>
					</li>
					<li>
						<a href="#" class="men_text_1"><span class="men_text_3">7</span>信条<span>31977人想看</span> </a>
					</li>
					<li>
						<a href="#" class="men_text_1"><span class="men_text_3">8</span>盗梦空间<span>24879人想看</span> </a>
					</li>
					<li>
						<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
					</li>
					<li>
						<a href="#" class="men_text_1"><span class="men_text_3">10</span>拆弹专家2<span>114251人想看</span> </a>
					</li>
				</ul>
				<p class="border_p1">TOP 100
					<span class="right_wan">查看完整榜单></span>
				</p>
				<div >
					<div class="flex">
						<img src="../../public/move_img/body_right5.jpg" alt="">
						<div class="men_rfirst">
							<a class="men_rbai">射雕英雄之东成西就</a><br>
							<p class="right_wan">8.8分</p>
						</div>
					</div>
					<ul class="right_ul">
						<li>
							<a href="#" class="men_text_1"><span class="men_text_2">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_2">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>

					</ul>
				</div>
				<p class="border_p1">娱乐热点</p>
				<div>
					<div class="flex">
					<img src="../../public/move_img/body_right7.jpg" alt="">
						<div>
							<p id="right_yu">
								科技商战巅峰对决 《电力之战》极客点映好评不断</p>
						</div>
					</div>
					<ul class="right_ul">
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>
						<li>
							<a href="#" class="men_text_1"><span class="men_text_3">9</span>侍神令<span>167058人想看</span> </a>
						</li>

					</ul>
				</div>
				</div>
			</div>
		</div>								
	</div>
</div>	
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
.header_1{width:1200px;height: 226px;margin-top: -51px;font-size: 14px;

}
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

.header_1{height: 441px;position: relative;top:51px;overflow: hidden;
text-align: start;}
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
	border:1px solid #ddd;
	padding-top:20px;
	text-align:start;
	padding:  10px ;
}
#rebo{position:absolute;left: 240px; top: 20px;}
#rebo>a{color: #000;margin-left:10px}
.right_ul{margin-top:10px;text-align: start;}
.right_ul>li{width: 100%;height: 40px;padding:5px 0;line-height: 40px;}
.men_div_2>div>li{margin:35px 0;}
.men_div_2>div a>span+span{color:orange;float: right;font-size:14px;}
.men_text_1{font-size:16px;color:#000;}
.men_text_2{color:orange;font-style: italic;margin-right:10px;}
.men_text_3{color:#aaa;font-style: italic;margin-right:10px;}
.men_border_ul{
			width: 100%;
			height:520px;
			display: block;
			display: flex;
			justify-content: space-around;
			flex-wrap: wrap;
			padding-top:30px ;
			overflow: hidden;
			margin-bottom: 30px;

}
.men_border_ul>li{
	margin-bottom: 30px;
}

.men_border_ul>li img{width: 140px;height: 200px;}
.men_border_ul>li>p{display: flex;display: block;text-align: center;
width: 140px;height: 25px;border: 1px solid #eee;padding-top: 5px;
}
.men_border_ul>li>p>a{color: #FFA500;}
.men_border_ul>li>p:hover{background-color: orange;
box-shadow:0 1px 6px 1px  #eee;
}
.men_border_ul>li>p:hover>a{color: #fff;}
.men_border_ul>li>div{
	width: 140px;
	border: 1px solid #ddd;
	border-top:none;
	font-size: 14px;
	margin-top:-5px;
	margin-right: 2px;
	display: flex;
	flex-wrap: wrap;
	
}
.men_border_ul>li>div>p{
	color: orange;
	text-align: start;
	padding: 10px;
}
.men_border_ul>li>div>span:nth-child(2){
		border-right: 1px dotted #ddd;
	margin: 0 0px 5px 13px;
	padding-right: 13px;
		color: #bbb;
		padding-top: 5px;
}
.men_border_ul>li>div>span:nth-child(3){
	margin: 0 10px 5px 20px;
	padding-top:5px;

}
.men_border_ul>li>div>span>a{
color: lightskyblue;
}
.men_border_ul>li>div>span:hover:nth-child(3){
	background: lightskyblue;
}
.men_border_ul>li>div>span:hover>a{
color:#fff ;
}
.men_div_2{
	width: 360px;padding-left: 90px;
}
.flex_1{display: flex;width:100%;flex-wrap: wrap;border:1px solid #eee;background-color:rgba(200,200,200,.1);}
.right_flex_div{width: 16px;height: 95px;padding:10px 15px;background-color:orange;color:#fff;font-size:16px;}
.right_span{overflow-block: scroll;}
.right_piao{font-size:30px;color:orange;}
.right_wan{font-size:14px;color:orange;}
.right_bei{font-size:14px;color:#aaa;}
.flex_2{width: 255px;padding-top:20px;padding-left: 15px;}
.flex_right{margin-bottom:50px;}
.flex_1>div p+p{float:right;}
.float_right{float:right; padding-top:20px;}
.men_rfirst:hover,.men_text_1:hover,.right_ul>li:hover{background-color:rgba(200,200,200,.1);}
.right_border{border:1px solid #ddd;}
#men_right>div{margin:20px 0; }
#men_right>div+div{margin-left:15px;}
#men_right>div>p{padding:5px;}
#right_yu{margin-top:25px;margin-left: 9px;}
#pp>div>div:first-child{margin: 0 auto;}
</style>
<script>
		export default{
		data(){
			return{
					lunbo:[],
					move_img:[],	
					move_img2:[],
					
				
			}
		},
		mounted(){
			this.axios.get("/move_name").then(res=>{	
				let lun=res.data.results;
				lun.forEach(element => {
				
				element.lunbo=require("../../public/move_img/" + element.lunbo)
				this.lunbo.push(element.lunbo)
	
				});	
			});
			this.axios.get("/move_img").then(res=>{
				let data=res.data.results
				console.log(data)
			data.forEach(item=>{
				item.move_img=require("../../public/move_img/"+item.move_img)
			if(item.xiangkan==null){
				this.move_img.push(item.move_img)
			}else{
					this.move_img2.push(item.move_img)	

			}

			
			})	
	
		})

	}
}

</script>