<template>
    <div id="pp">
        <div class="foot_div _center ">
			<p>关于猫眼：
			<a class="font_color" href="">关于我们 &nbsp;</a>|
			<a class="font_color" href="">&nbsp;管理团队&nbsp;</a>|
			<a class="font_color" href="">投资者关系 </a>
			 友情链接:
			<a class="font_color" href="">美团网&nbsp;</a>|
			<a class="font_color" href="">&nbsp;格瓦拉&nbsp;</a>|
			<a class="font_color" href="">美团下载&nbsp;</a>|
			<a class="font_color" href="">&nbsp;欢喜首映</a>
			</p>
			<p>商务合作邮箱：v@maoyan.com 客服电话：10105335 违法和不良信息举报电话：4006018900</p>
			<p>用户投诉邮箱：tousujubao@meituan.com 舞弊线索举报邮箱：wubijubao@maoyan.com </p>
			<p>
				<a href="">中华人民共和国增值电信业务经营许可证 京B2-20190350</a>
				<a href=""> 营业性演出许可证 京演（机构）（2019）4094号</a>
			</p>
			<p>
				
				<a href="">广播电视节目制作经营许可证 （京）字第08478号</a>&nbsp;|&nbsp;
				<a href=""> 网络文化经营许可证 京网文（2019）3837-369号 </a>
			</p>
			<p>
				<a href="">猫眼用户服务协议</a>&nbsp;|&nbsp;
				<a href="">猫眼平台交易规则总则 </a>&nbsp;|&nbsp;
				<a href="">隐私政策 </a>
			</p>
			<p>
				<a href="">京公网安备 11010102003232号</a>
				<a href=""> 京ICP备16022489号</a>&nbsp;|&nbsp;
			</p>
			<p>北京猫眼文化传媒有限公司</p>
			<p>©2020 猫眼电影 maoyan.com</p>
			<div >
				<img class="foot_img" src="../../public/move_img/00_1.png" >
				<img class="foot_img" src="../../public/move_img/00_2.png" >
				<img class="foot_img" src="../../public/move_img/00_3.png" >
					
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
.foot_img{margin: 20px 4px;}
.move_footer{width: 100%;	height:27.5rem;border: 0;}
.move_header{width: 100%;height:50rem ;border: 0;z-index: 2;position: fixed;top:0;}
</style>>

