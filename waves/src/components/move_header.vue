<template>
  <div id="pp">
      <div class="bordeer_xia" @click="display">
		<div class="index head_center">
			<div class="header_mao  flex">
				<img class="_center" src="../../public/move_img/logo.png" >
			</div>
			<div class="header_an flex">
				<button type="button">西安
					<div class="deg"></div>
					<div>
						<p>定位城市：<router-link to="">西安</router-link></p>
						<p>
							A  
							<router-link to=""> <span>阿拉善</span></router-link>
							<router-link to=""><span>鞍山</span></router-link>
							<router-link to=""><span>安庆</span></router-link>
							<router-link to=""><span>安阳</span></router-link>
					    </p>
						<p>
							B 
							<router-link to=""><span>北京</span> </router-link>
							<router-link to=""><span>保定</span> </router-link>
							<router-link to=""><span>蚌埠</span> </router-link>
							<router-link to=""><span>包头</span> </router-link>
						</p>
						<p>
							C
								<router-link to=""><span>重庆</span></router-link>
								<router-link to=""><span>成都</span></router-link>
								<router-link to=""><span>长沙</span></router-link>
								<router-link to=""><span>常州</span></router-link>
						</p>
					</div>
				</button>
				
			</div>
			<div id="anniu">
				<li><router-link :class="{active:data=='/men'}" to="/men" data-name="move_index">首页</router-link></li>
				<li><router-link  :class="{active:data=='/move_index'}" to="/move_index" data-name='men'>电影</router-link></li>
				<li><router-link   :class="{active:data=='/xiang'}" to="/xiang" data-name='xiang'>影院</router-link></li>
				<li><router-link   to="">演出</router-link></li>
				<li><router-link   to="">榜单</router-link></li>
				<li><router-link   to="">热点</router-link></li>
				<li><router-link   to="">商城</router-link></li>
			</div>	
				<div id="app" class="flex">
					<button>
					<img src="../../public/move_img/001.png" >
					<span class="flex"> &nbsp;APP下载</span>
					<div class="deg"></div>
						<div>
							<img src="../../public/move_img/erwm.jpg" alt="">
							<p>扫码下载app</p>
							<p>选座更优惠</p>
						</div>
					</button>
				</div>
				<div id="sousuo" class="index flex">
					<input class="_center" placeholder="找影视剧,影人,影剧"/>
					<div id="sousuo2">
					<router-link v-for="(p,i) of arr" :key="i" :to="`/detail?move_sid=${p.move_sid}`"  >
						<li>
							<img :src="p.move_img"    alt="">
							<span>{{p.move_name}}</span>
						</li>
					</router-link>
					</div>
					<img src="../../public/move_img/002.jpg" @click="seach($event)" alt="">
					<div class="ul_px flex _center">
						<img src="../../public/move_img/user.png" >
						<div class="deg _center"></div>
						<div>
							<router-link to="/login">登录</router-link>
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
#anniu{
	list-style: none;
	display: flex;
	text-align: center;
}
#anniu>li>a{
	padding-top:50% ;
	color: #000;
	width: 60px;

}


ul,li{margin: 0 ;padding: 0;}
.index{
	height:5rem;
	display: flex;
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
	z-index: 888;
	background-color: #fff;
}
.header_an>button:hover>div:nth-child(2){
	display:block ;
	
}
.header_an>button>div:nth-child(2)>p{
margin-left:-120px;
line-height: 40px;
}
.header_an>button>div:nth-child(2)>p span{
	padding: 3px 5px;
	color: #000;
}
.header_an>button>div:nth-child(2)>p+p{
	margin-left: -70px;
}
.header_an>button>div:nth-child(2)>p:nth-child(2){
	margin-left:-60px ;
}
.header_an>button>div:nth-child(2)>p:hover{
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
#sousuo2{
	border: 1px solid #ddd;
	width: 250px;
	height: 300px;
	background: #fff;
	position: absolute;
	top: 65px;
	left: 0;
	z-index: 10;
	display: none;
	overflow: hidden;
	overflow-y: scroll;
}
#sousuo2 li{
	line-height: 50px;
	padding: 10px 5px;
	border-bottom: 1px dotted #ddd;
	color: #000;
}
#sousuo2 li:hover{
	background-color: #eee;
}
#sousuo2 img{
	width: 50px;
	height:50px;
	margin-right: 15px;
	
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
.active{
	background-color: orange;
	color: #fff !important;
}
.foot_img{margin: 20px 4px;}
.move_footer{width: 100%;	height:27.5rem;border: 0;}
.move_header{width: 100%;height:50rem ;border: 0;z-index: 2;position: fixed;top:0;}
</style>

<script>
	export default{
	data(){
		return{
			data:"",
			active:false,
			active2:false,
			like:'动作',
			arr:[],

		}
	},
	mounted(){
		// 获取地址栏信息
		let data=this.$route.path
		this.data=data
		if(data == 'men'){
			this.active =true
		}else{
			this.active = false
		}
		if(data == 'move_index'){
			this.active2 = true
		}else{
			this.active2 = false
		}
		if(data == 'xiang'){
		this.active2 = true
		}else{
		this.active2 = false
		}
	},
	watch:{
		//监听地址栏
		'$route'(){
			this.data=this.$route.path
			this.$router.go(0)
		}
	},
methods:{
	seach(e){
		let input = document.querySelector('input._center')
		let div = document.getElementById('sousuo2')
		
		let value=input.value
		this.like = value
		// 按照搜索框输入信息查找相关电影
			this.axios.get('/header/'+ this.like).then(res=>{
			 let obj=res.data.results
	for(let i=0;i<obj.length - 1 ;i++){
		if(!i == 0){
			if(obj[i].move_name != obj[i-1].move_name){
				this.arr.push(obj[i])
			}
		}else{
			this.arr.push(obj[0])
			}
		 
		 }
		if(this.arr.length >= 0){
			 	div.style.display = 'block'
		 }


		  })


		},
		display(){
			let div = document.getElementById('sousuo2')
				div.style.display = 'none'
		}
	}
}
</script>