<template>
    <div id="pp">
	 <move_header></move_header>
        <div class="header_div font_small">
	<table></table>
	<div v-for="(p,i) of data" :key="i">
	<div id="heade_id">
					
		<img :src="p.move_img" alt="">

	</div>
	<div id="header_p">
			
		<p>{{p.move_name}}</p>
		<p>{{p.move_yinname}}</p>
		<a>{{p.move_type}}</a>
		<p>{{p.move_distrit}}/ {{p.move_timelog}}</p>
		<p>{{p.move_time + ' '}} {{p.move_distrit}}上映</p>
		<div>
			<button class="kan_button">
				<img src="../../public/move_img/aixin.png" >
								想看
			</button>
						
			<button class="kan_button">
				<img src="../../public/move_img/star0.png" >
								
				评分</button>
		</div>
	<router-link :to="`/detail?move_sid=${p.move_sid}`"><button class="te_button"> 查看更多电影详情</button></router-link>
	</div>
	<div class="kou_header">
	<p>猫眼口碑</p>
	<p>
		<span class="star_p">{{p.move_momment}}
			<span>
			<img src="../../public/move_img/star.png" alt="">
			<img src="../../public/move_img/star.png" alt="">
			<img src="../../public/move_img/star.png" alt="">
			<img src="../../public/move_img/star.png" alt="">
			<img src="../../public/move_img/star.png" alt=""><br>
			{{p.xiangkan}}万人评分
		</span>
	</span>
	</p>
	<p>累计票房</p>
	<p class="mao_p">{{p.people}}
					<span class="font_small span_color">万</span>
				</p>
	</div>
	</div>
	</div>
		<!-- body上半部分 -->
		<div class="xiang_div">
			<div>
			<ul>
				
				<li>
				<span><a href="#">日期：</a>
					<span><a href="#">明天 {{new Date().getMonth()+1}}月{{new Date().getDate() + 1}}日</a></span>
					<span><a href="#">后天 {{new Date().getMonth()+1}}月{{new Date().getDate() + 2}}日</a></span>
					<span><a href="#">{{new Date().getMonth()+1}}月{{new Date().getDate() + 3}}日</a></span>
					<span><a href="#">{{new Date().getMonth()+1}}月{{new Date().getDate() + 4}}日</a></span>
					<span><a href="#">{{new Date().getMonth()+1}}月{{new Date().getDate() + 5}}日</a></span>	
			</span>
				</li>
			</ul>
			<ul>
				<li>
					<span><router-link to="">品牌：</router-link>
					<span><router-link to="">全部</router-link></span>
					<span v-for="(p,i) of obj" :key='i'><router-link  :to="`/ying?sid=${p.sid}&move_sid=${move_sid}`">{{p.name}}</router-link></span>
				</span>
				</li>
				
			</ul>
			<ul>
				<li><span><a href="javascript:;">行政区：</a>
					<span><a href="javascript:;">全部</a></span>
					<span><a href="javascript:;">地铁附近</a></span>
					<span><a href="javascript:;">高陵区</a></span>	
					<span><a href="javascript:;">未央区</a></span>
					<span><a href="javascript:;">雁塔区</a></span>
					<span><a href="javascript:;">新城区</a></span>
					<span><a href="javascript:;">高新区</a></span>	
					<span><a href="javascript:;">碑林区</a></span>	
					<span><a href="javascript:;">灞桥区</a></span>	
					<span><a href="javascript:;">莲湖区</a></span>	
					<span><a href="javascript:;">长安区</a></span>	
					<span><a href="javascript:;">临潼区</a></span>	
					<span><a href="javascript:;">阎良区</a></span>	
					<span><a href="javascript:;">蓝田县</a></span>	
					<span><a href="javascript:;">周至县</a></span>	
			</span>	
				</li>
			</ul>
			<ul>
				<li>
					<span><a href="#">特殊厅：</a>

					<span><a href="#">全部</a></span>
					<span><a href="#">IMAX厅</a></span>
					<span><a href="#">CGS中国巨幕厅</a></span>
					<span><a href="#">杜比全景声厅</a></span>
					<span><a href="#">Dolby Cinema厅</a></span>
					<span><a href="#">RealD厅</a></span>	
					<span><a herf="#">RealD 6FL厅</a></span>	
					<span><a href="#">4DX厅</a></span>	
					<span><a href="#">DTS:X厅</a></span>	
					<span><a href="#">4K厅</a></span>	
					<span><a href="#">4D厅</a></span>	
					<span><a href="#">60帧厅</a></span>	
					<span><a href="#">巨幕厅</a></span>	
					<span><a href="#">CINITY厅</a></span>	
					<span><a href="#">MX4D厅</a></span>	
				</span>
				</li>
			</ul>
			<ul>
				<li>
					<span><a href="#">服务：</a>
					
					<span><a href="#">全部</a></span>
					<span><a href="#">可改签</a></span>
					<span><a href="#">可退签</a></span>
				</span>
				</li>
			</ul>
		</div>
		
		<div class="xiang_body_div">
			<li><a href=""><h3>影院列表</h3></a></li>
		<ul   v-for="(p,i) of obj" :key="i">
			
			<li>
				<router-link :to="`/ying?sid=${p.sid}&move_sid=${move_sid}`">{{p.name}}</router-link>
				<p>地址：
						<span>{{p.move_desc}}</span>
				</p>
				<span class="border_lan">改签</span>
				<span class="border_lan">折扣卡</span>
				</li>
				<li class="saixuan">
					<a href="">
						<img src="move_img/saixuan.png" >
						筛选</a>
						<p>
							<span>￥</span><span>37.9</span>
							起</p>
<router-link :to="`/ying?sid=${p.sid}&move_sid=${move_sid}`"><button>选座购票</button></router-link>
						<p>7.0km</p>
			</li>
		</ul>
	</div>	
	</div>	
	 <move_footer></move_footer>
	</div>
</template>
<style scoped>
*{margin: 0; padding: 0;}

*{border: 0;outline:0 ;}
a{text-decoration: none;}
ul,li{margin: 0;padding: 0;list-style:none;outline:0 ;}

div>ul>li>span>span a{
	padding: 0 20px;background: #fff;border-radius: 30px;
}
div>ul>li>span>span a:hover{
	color: orange;
}
div>ul>li>span>span a:focus {
padding: 0 20px;background: orange;border-radius: 20px; color: #fff;
}

.xiang_div{border: 1px solid #aaa;width:75rem;border: 1px dashed #555;
margin: 0 auto;padding-bottom: 50px;
margin-top: 3.625rem;font-size: 14px;text-align: start;line-height: 40px;;}
.xiang_div>div:first-child>ul:first-child{margin-top:1.25rem ;}
.xiang_div>div:first-child>ul{
font-size: 0.875rem;
border-bottom: 1px dotted #aaa;
margin: 0  1.25rem  0.5rem  1.25rem;
padding-bottom: 0.625rem;
}

.xiang_div>div:first-child>ul>li>span:first-child>a{color: #AAAAAA;}
.xiang_div>div:first-child>ul>li>span:first-child>span>a{margin: 0 0.5rem;color: #000000;
display: inline-block;
}
.xiang_body_div>li{
	margin-left:10px;
}
.xiang_body_div>li>a{
	font-size: 18px;
	color: #000;
}
.xiang_body_div{margin: 10px 0;width: 75rem;margin-bottom: 120px;}
	.xiang_body_div ul{
		position: relative;
		border-bottom: 1px dashed #ddd;
		margin: 0  20px 10px  20px;
		padding-bottom:10px;
	}
	.xiang_body_div>ul:nth-child(2)>li:first-child h3{
		position: absolute;
		top: -9px;
	}
	.xiang_body_div>ul>li:first-child a{color:blue;}
	.xiang_body_div>ul>li:nth-child(2) a{color:#000;}
	.border_lan{
	
		color:#0056B3;
		border: 1px solid #0056B3;
		border-radius: 0.2rem;
		padding:0 2px;
		font-size: 0.75rem;
		margin-right:5px;
		}
	
		.xiang_body_div>ul:first-child>li:nth-child(3){
			position: absolute;
			right:20px;
			top: .3rem;
			display: block;
			
			}
				
	.xiang_body_div>ul:first-child>li:nth-child(3)>a{color: #666;font-size: 0.75rem;
	margin-bottom:-12px;display: block;}
	.xiang_body_div>ul:first-child>li:nth-child(3)>a>img{position: absolute;top: 0.85rem;right: 3.2rem;}
	.xiang_body_div>ul:first-child>li:nth-child(3)>p{color:#aaa;;display: block;margin-top:15px;margin-right:50px ;}
	.xiang_body_div>ul:first-child>li:nth-child(3)>p>span:first-child{color: orange;font-size: 0.75rem;
	margin-left:-120px;font-weight:1000;}
	.xiang_body_div>ul:first-child>li:nth-child(3)>p>span{color: orange;font-weight: 1000;font-size: 16px;}
	.xiang_body_div>ul:first-child>li:nth-child(3) button{
		position: absolute;top: 45px;right:10px;width: 80px;padding: 7px;
		border-radius:50px;background: orange;cursor: pointer;
	}
	.xiang_body_div>ul:first-child>li:nth-child(3) p:last-child{
		position: absolute;
		font-weight: 200;
		right: 65px;top: 50px;
	}
	.saixuan{
		position: absolute;
		right: 0px;
		top: 0px;
		width: 300px;
		height: 120px;
	}
	.saixuan>a{
		margin-left:200px;
		color: #555;
	}
	.saixuan>p{
		margin-left:70px ;
		margin-top: 10px;
		color: #999;
	}
	.saixuan>p>span{
		font-size: 12px;
		color:orange;
	}
	.saixuan>p>span+span{
		font-size: 16px;
	}
	.saixuan button{
		position: absolute;
		right: 50px;
		top: 55px;
		font-size: 14px;
		padding: 5px 10px;
		border-radius:40px ;
		background-color: orange;
		box-shadow: 0px 1px 5px .2px orange;
		color: #fff;
	}
	.saixuan>p:last-child{
		margin-top: -50px;
		margin-left: 90px;
	}
	.font_small{font-size:14px !important;}
.font_smalls{font-size: 12px;}
.float_re{position: relative;}
.detail_div{width:100%;}
.span_color{color:#fff !important;}
.font_we{font-family: Microsoft YaHei,Helvetica,Arial,sans-serif;font-size:14px;}
.header_div{width: 100%;height:376px;
background-image: url(../../public/move_img/debg.png);
color:#fff;position: relative;top:0;}
#heade_id{position: relative;}
#heade_id img{width: 240px;height: 330px;float: left;border: 4px solid #fff;margin-top:60px;margin-left:130px;margin-right:30px;}
#header_p{margin-top:60px;position: absolute;left: 420px;text-align: start;}
#header_p>p:first-child{font-size: 26px;color:#fff;}
#header_p>p:nth-child(2){font-size: 18px;color: #fff;margin-bottom:20px;}
#header_p>p:nth-child(4){font-size: 14px;color: #fff;margin:5px 0;}
.kan_button{width: 120px;height: 36px;margin-right:10px;margin-top:60px;
background: rgba(250,250,255,.2);color:#fff;position: relative;padding-left:1.25rem;}
.kan_button>img{position: absolute;top: 0.5625rem;left: 2rem;}

.te_button{width: 255px; height: 40px;margin-top:10px;background: #f00;color:#fff;font-size: 16px;}
.kou_header{position:absolute;left:740px;bottom:0;}
.star_p{display: block;display: flex;width: 140px;}
.star_p>span>img{margin: 0 -0.1rem;}
.kou_header>p:nth-child(2){margin:3px 0;}
.kou_header>p>span:first-child{font-size: 26px;color: orange;}
.kou_header>p>span>span{font-size: 12px;color: #fff;margin-left:10px;padding-top:5px;}
.mao_p{font-size: 26px;color: #fff;display: block;margin:13px 0;}
.body_div{width: 730px;margin:120px  100px 0;}
.body_p2{border-bottom:1.5px solid #ddd;padding-bottom:10px;margin:20px 0;}
.body_p2>a{margin-right:30px;font-size: 16px;margin-bottom:30px;color:#000;padding-bottom:10px;}
.body_p2>a:focus{color:orange;border-bottom:1.5px solid orange;}
.juqing{margin-top:-5px;font-size: 16px;display:inline-block; margin-bottom:20px;}
.juqing_div{width: 3px;height: 17px;background: orange;display:inline-block;margin-top:3px;margin-right:3px;}
.far_div{padding:0px;margin-top:40px;}
.flex>ul{width: 128px;height: 242px;text-align: center;}
.daoyan{float: left;}
.quanbu{float: right;}
#daoyan_img{margin-right: 0.8rem;}
.font_small>ul>li>img{margin:10px 0;}
.ul_img{display: inline-block;}
#ul_li{display:flex;margin-top:0.625rem;}
#ul_li>li{margin-left:1.2rem;}
#ul_li>p:first-child{display:block;width:100%;}
.nezha{font-size: 12px;color: #aaa;}
.jiang{border-bottom:1px dashed #ccc;padding-bottom:20px;}
.mar_right{margin-right: 5px;}
.duanp{color: orange;border: 1px solid orange;border-radius: 1rem;float: right;font-size: 0.75rem;padding:0.25rem 0.625rem;}
.pinglun{margin-top: 1.25rem; display: flex;position: relative;}
.pinglun>img{width: 3.125rem;height: 3.125rem;border-radius: 50%;}
.pinglun>div{position: absolute;top: 2.1rem;z-index: 3;left: 2.1rem;}
.pinglun>li{margin-left:1.25rem;border-bottom: 0.0625rem solid #DDDDDD;width: 100%;}
.pinglun>li>p{position: relative;}

.pinglun>li>p>span:first-child{
	border:0.0625rem solid #005CBF;
	color: #005cbf;
	border-radius: 0.15rem;
	position: absolute;left: 6.15rem;top: 0.1625rem;
	padding:0 0.1125rem;
	font-size: 0.75rem;
	opacity: .6;
	}
.zan{color: #aaa;float: right;}
.pinglun_l{
	color: #999;
	margin: 1.5rem 0;
}











/* right */

.right_div{width: 360px; margin-top:100px;}
#yugao{padding-bottom:10px; border-bottom:1.5px solid #ddd;}
#yugao>a{margin-right:20px;color:#000;}
#yugao>a:focus{color:orange;border-bottom:1.5px solid orange;padding-bottom:10px;}
.bg_18{width: 18px;height: 18px;background:orange;font-style: italic;text-align: center;position: absolute;left:0;bottom: 4px;}
.right_div ul>li{margin-top:20px;position: relative;}
.right_div ul>li>span{margin: 15px 0 15px 15px;display: block;font-size: 14px;}
.right_div ul>li>span+span{font-size: 12px; color:#aaa;padding-left:13px}
.sanjiao{border-left:7px solid #ddd;
    border-top:4px solid transparent;
    border-bottom:4px solid  transparent;
    float: left;margin-left: 18px;margin-top:-26px;
}
.xiang_ul{display: flex;flex-wrap: wrap;justify-content: space-between;}
.xiang_li{width:6.625rem;height:12.5625rem;text-align: center;}
.xiang_li>a{color:#000000;}
.xiang_li>p{color:orange;font-size: 18px;font-style: italic;}
.xiang_li>p>span{color:orange;font-size: 12px;font-style: italic;margin-left: -0.3125rem;}

</style>
<script>
export default {
	provide(){
        return{
            reload:this.reload
        }
    },
	data(){
		return{
			data:[],
			obj:[],
			move_sid:'',
			week:[],

		}
	},
	mounted(){
		
		let lid=this.$route.query.move_sid
		let div=document.getElementsByClassName('header_div font_small')
			console.log(div)
		if(!lid){
		
			div[0].style.display = 'none'
		}
		this.move_sid=lid
		this.axios.get('/detail/' + lid).then(res=>{
			this.data=res.data.results;
			 })

		this.axios.get('/xiang').then(res=>{
			this.obj=res.data.results;
			 })
		let week=new Date().getDay() + 3
		let day = new Date().getDate()
		let	arr = ['周日','周一','周二','周三','周四','周五','周六']
			for(let i in arr){
				i = week 
				this.week = arr[i]
			}

	}
}
</script>