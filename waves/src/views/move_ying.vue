<template>
    <div>
     <move_header></move_header>
      <div v-for="(x,n) of data" :key="n">
         <div id="beijing"> </div>  
        <div class="ying_div">
			<ul class="flex
			">
				<img :src="x.M_img" alt="">
				<li class="ying_small">
					<p>{{x.name}}</p>
					<p>{{x.move_desc}}</p>
					<p>电话：029-62358787</p>
					<p>影院服务 ————————————————————————</p>
						<span>改签 </span><p>{{x.M_tui}}</p><br>
            <span>安心影院</span><p>{{x.M_gaiq}}</p><br>
						<span>3D眼睛</span><p>{{x.M_yanj}}</p><br>
						<span>儿童优惠</span><p>{{x.M_boby}}</p><br>
						<span>可停车</span><p>{{x.M_stop}}</p><br>
				</li>
				<li class="ying_tu">
          <map2></map2>
        </li>
			</ul>
			<ul class="daohang">
				<a href="">猫眼电影 &gt;</a> 
				<a href="">影院 &gt;</a> 
				<span>香港未来影院 &gt;</span> 
			</ul>
			<ul class="lunbo">
      <div v-for="(p,i) of move2" :key="i">  
				<img :src="p.move_img"  @click="fangda($event,p)" :class="{fangda2:i == sa}" :data-sa="i"  alt="">
      </div>
				<li class="sanjiao"></li>
        <li class="right" @click="right(i)">
          <img src="../../public/move_img/left.png" alt="">
        </li>
        <li class="left" @click="left(i)">
            <img src="../../public/move_img/right.png" alt="">
        </li>
			</ul>
			
			<ul v-for="(p,i) of obj2" :key="i">
				<p class="pingfen">{{ p.move_name}} &nbsp;&nbsp;
				<span>{{p.move_momment}}</span><span>分
        </span>
			</p>
			<li class="ying_xq">
				<p>时长：<span>{{p.move_timelog}}分钟</span></p>
				<p>类型：<span>{{p.move_type}}</span></p>
				<p>主演：<span>{{p.move_music}}</span></p>
			</li>
			<li class="ying_xq2">
				<p>观影时间:</p>
				<span>今天{{new Date().getMonth() + 1}}月{{new Date().getDate()}}</span>
				<span>明天{{new Date().getMonth() + 1}}月{{new Date().getDate() + 1}}</span>
				
			</li>
			</ul>
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <th>放映时间</th>
          <th>语言版本</th>
          <th>放映厅</th>
          <th>售价（元）</th>
          <th>选座购票</th>
       </tr>
        <tr>
          <th>10:27</th>
          <td>英语2D</td>
          <td>5号大屏幕</td>
          <td>37.9元</td>
          <td> <router-link :to="`/ding?move_sid=${move_sid}&M_id=${M_id}`">选座购票</router-link> </td>
        </tr>
      </table>
			<ul class="ying_tfoot">
				<p>相关影院</p>
				<span v-for="(p,i) of obj" :key="i"><router-link to="">{{p.name}}</router-link></span>
			</ul>
        </div>
    </div>
     <move_footer></move_footer>
   </div>
    
</template>
<style  scoped>
	#beijing{
     background:url(../../public/move_img/debg.png) 50%; 
    width:100%;
    height: 330px;
    z-index: -1;
    margin-top:0px;
}
.flex{
display: flex;margin-top: -294px;
}
.ying_div{
  width: 1200px;
  margin: 0 auto;
  position: relative;
}
.ying_div>ul:first-child>img:first-child{
  width: 292px;
  height: 292px;
position: absolute;left:30px;top: -22px;
border: 4px solid #ffffff;
z-index: 10;
}
.ying_small{
  width: 600px;
  height: 294px;
  display: block;
  margin-top: -26px;
  margin-left:360px;
  color: #ffffff;
  font-size: 12px;
  z-index: 5;
}
.ying_div>ul:first-child>li span{
  border:1.5px solid rgba(240, 240, 240, .2);
  padding: 3px 5px;
  border-radius: 3px;  
  width: 50px;
  height: 15px;
  margin-right: 20px;
  display: inline-block;
  margin-bottom: 5px;
  text-align: center;
  box-shadow: 0 0 1px 1px #eee inset;
}
.ying_div>ul:first-child>li span+p{
  display: inline-block;
}
.ying_div>ul:first-child>li>p:first-child{
  font-size: 22px;
  margin-bottom: 10px;
}
.ying_div>ul:first-child>li>p:nth-child(4){
  margin: 20px 0 10px 0;
}
.ying_div>ul:first-child>li>p:nth-child(3){
margin: 10px 0;
}
.ying_tu{
  width: 200px;
  height: 200px;
  border: 1px solid #ff0;
  position: absolute;
  right: 0px;
  top:30px;
}
.daohang{
  margin:60px 0  0 0;
}
.daohang>a,.daohang>span{
  color: #555;
  font-size:14px;
}
.fangda2{
  transition: 0.2s all;
  margin-top: 0 !important;
  width: 160px !important;
  height: 220px !important;
  border: 3px solid orange !important;
}
.lunbo{
  margin:20px 0;
  background-color: #eee;
  height:250px;
  width: 100%;
  overflow: hidden;
  display: flex;
  flex-wrap: nowrap;
  white-space: nowrap;
  text-align: center;
  position: relative;
}
.lunbo>div{
  width: 170px;
  height: 230px;
  display: table;
  margin: 10px 15px;

}
.lunbo div>img{
  width: 132px;
  height: 186px;
  margin-top: 20px;
  border: 3px solid #ffffff;
  box-shadow: 0 1px 3px 0 hsla(0,0%,66%,.5);
	transition: 0.2s all;
}
.lunbo>li>img{
  width: 100px;
  height: 100px;
}
.left{
  position:absolute;
  left: -20px;
  top: 25%;
}
.right{
  position:absolute;
  top: 25%;
 right: -20px;
}

.sanjiao{
display: inline-block;
border-top: 12px solid transparent;
border-bottom: 12px solid transparent;
border-left: 12px solid #ffffff;
transform: rotate(-90deg);
position: absolute;
bottom: -8px;
left: 90px;

}
.pingfen{
  margin: 30px 0;
  font-size: 24px;
}
.pingfen>span:first-child{
  color: orange;
}
.pingfen>span:last-child{
  color: orange;
  font-size: 12px;
}
.ying_xq{
  border-bottom:1px solid #eee;
  padding-bottom:20px;
  font-size:14px
}
.ying_xq>p{
  display: inline-block;
  color: #aaa;  
  margin-right: 20px;
}
.ying_xq>p>span{
  color: #000;  
}
.ying_xq2{
  
  font-size:14px;
  padding: 40px 0;
}
.ying_xq2>p{
  display: inline-block;
color: #aaa;
}
.ying_xq2>span:nth-child(2){
  color: #fff;
  background-color: orange;
  border-radius: 30px;
  padding: 3px 10px;
  margin: 0 20px;
  }

  .ying_tfoot{
    margin-top:80px;
  }
  
  .ying_tfoot>p:first-child{
    font-weight: bold;
    margin: 20px 0;
  }
  .ying_tfoot>span>a{
    color: black;
    margin:0 10px;
  }
table{
  width: 1200px;
  height: 50px;
  margin: 0 auto;
  border:none;
  box-sizing: border-box;

}
table>tr{
 text-align: center;
 line-height:50px;
}
table>tr:nth-child(odd){
  background:#eee;
}
table>tr:nth-child(2)>td:last-child>a{
  background-color: orange;
  border-radius: 30px;
  padding: 5px 10px;
  color: #fff;
  box-shadow: 0 1px 3px 1px orange;
  text-decoration: none;
}


</style>
<script>
    export default{
      data(){
        return{
          data:[],
          move:[],
          move2:[],
          move_sid:0,
          M_id:0,
          move_name:[],
          move_momment:[],
          move_type:[],
          actor:[],
          move_timelog:[],
          actor:[],
          obj:[],
					sa:0,
          i:0,
          n:1,
          pagecount:0,
          obj2:[],
        }
      },
  mounted(){
    // 调用分页函数
      this.moveLimit()
      //电影院的ID
    let sid=this.$route.query.sid;
    //接收电影的ID
    let lid = this.$route.query.move_sid
    //如果没有ID传参，默认为1
    if(lid == undefined || NaN){
      lid = 1
    }
    this.move_sid = parseInt(lid)
    this.M_id = parseInt(sid)
    //获取传参影院详情接口
    this.axios.get('/ying/' + sid).then(res=>{
      this.data=res.data.results;
      })
      // 获取电影详情接口
    this.axios.get(`/detail/${lid}`).then(res=>{
      this.move = res.data.result 
      
      this.move.forEach((item)=>{
        this.actor.push(item.actor)
      })
      })  
      
    this.axios.get('/xiang').then(res=>{
      this.obj=res.data.results;
    })
  },
  methods:{
    moveLimit(){
      this.axios.get('/move_index?n=' + this.n).then(res=>{
      this.move2=res.data.results
      if(this.obj2.length == 0){
        this.obj2[0] = this.move2[0]
      }
       
      this.move_sid = this.move2[0].move_sid
      this.pagecount = res.data.pagecount
      this.move2.forEach((item ,i)=>{
        this.move_name.push(item.move_name)
        this.move_momment.push(item.move_momment)
        this.move_timelog.push(item.move_timelog)
        this.move_type.push(item.move_type)
       })  
      })
    },
    fangda(e,p){
        let img = e.target
        this.sa=e.target.dataset.sa
        this.i = this.sa
        this.move_sid = p.move_sid
         this. obj2[0] = p 
        let sanjiao = document.getElementsByClassName('sanjiao')
        if(this.i == 0){
            sanjiao[0].style.left='90px'
        }else{
          sanjiao[0].style.left= (this.i * 202) + 90 + 'px'
        }
        }	,
    right(){
  
      if(this.n < this.pagecount){
        this.n++
      }
      
      this.moveLimit()
    },
     
  left(){
    if(this.n > 1){
      this.n--
    }
    this.moveLimit()  
    },					
        
    }
 }   
    
</script>