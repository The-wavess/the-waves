<template>
  <div>
    <my-header></my-header>
    <div id="head">
      <!--1.头部 -->
      <div id="header">
        <div class="a1">
          <a href="javascript:;">西安美团</a>>
          <a href="javascript:;">西安休闲娱乐</a>
        </div>
        <div class="title">
          <div class="one">
            <div class="label">
              <label>分类</label>
              <a href="javascript:;" class="all">
                <span :class="{ alls: dell }" @click="show">全部</span>
              </a>
            </div>
          </div>
          <div class="title_first">
            <div class="tittle_one">
              <ul>
                <li><a href="javascript:;"><span>新奇体验</span></a></li>
                <li><a href="javascript:;" >电玩/游戏厅</a></li>
                <li><a href="javascript:;"  >茶馆</a></li>
                <li><a href="javascript:;">VR</a></li>
              </ul>
            </div>
            <div class="tittle_two">
              <ul>
                <li><a href="javascript:;"><span >团建拓展</span></a></li>
                <li><a href="javascript:;" class=" tag-expend " >运动健身</a></li>
                <li><a href="javascript:;" >棋牌室</a></li>
                <li><a href="javascript:;">文化艺术</a></li>
              </ul>
            </div>
            <div class="tittle_three">
              <ul>
                <li><a href="javascript:;">足疗/按摩</a></li>
                <li><a href="javascript:;">私人影院</a></li>
                <li><a href="javascript:;">轰趴馆</a></li>
              </ul>
            </div>
            <div class="tittle_four">
              <ul>
                <li><a href="javascript:;">洗浴/汗蒸</a></li>
                <li><a href="javascript:;">DIY手工坊</a></li>
                <li><a href="javascript:;">桌游</a></li>
              </ul>
            </div>
            <div class="tittle_fife">
              <ul >
                <li @mouseover="enter" @mouseout="over"><a href="#" class=" tag-expend " >KTV</a>
                <div class="tv-title" v-show="tv"  >
                  <div ><a href=""><span style="color:#999;">KTV</span></a></div>
                  <div class="tv-fiex"><a href=""><span style="font-size :10px;">全部</span></a></div>
                  <div class="tv-fiex"><a href=""><span style="font-size :10px;">录音棚</span></a></div>
                  <div class="tv-fiex"><a href=""><span style="font-size :10px;">量贩式KTV</span></a></div>
                </div>
                </li>
                <li>
                  <a href="javascript:;"><span style="display:block; width:65px;" :class="{ alls: tj }" @click="tuanjian">密室逃脱</span> </a>
                </li>
                <li><a href="javascript:;">真人CS</a></li>
              </ul>
            </div>
            <div class="tittle_six">
              <ul>
                <li @mouseout="yc" @mouseover="xs"><a href="#" class=" tag-expend " >酒吧</a>
                <div class="jb-title" v-show="jb"  >
                  <div ><a href=""><span style="color:#999;">酒吧</span></a></div>
                  <div class="tv-fiex"><a href=""><span style="font-size :10px;">全部</span></a></div>
                  <div class="tv-fiex"><a href=""><span style="font-size :10px;">夜店</span></a></div>
                  <div class="tv-fiex"><a href=""><span style="font-size :10px;">Live House</span></a></div>
                  <div class="tv-fiex"><a href=""><span style="font-size :10px;">清吧</span></a></div>
                </div>
                </li>
                <li><a href="javascript:;"><span style="display:block; width:65px;" :class="{ alls: deta }" @click="open">网吧网咖</span></a></li>
                <li><a href="javascript:;">采摘/农家乐</a></li>
              </ul>
            </div>
          </div>
          <div>
            <div class="label_two">
              <label>区域</label>
              <a href="javascript:;" class="all">
                <span class="alls">全部</span>
              </a>
            </div>
            <div class="tittle_seven">
              <ul>
                <li><a href="javascript:;" class=" tag-expend " >推荐商圈</a></li>
                <li><a href="javascript:;" class=" tag-expend " >新城区</a></li>
                <li><a href="javascript:;" class=" tag-expend " >蓝天县</a></li>
              </ul>
            </div>
            <div class="tittle_eight">
              <ul>
                <li><a href="javascript:;" class=" tag-expend " >碑林区</a></li>
                <li><a href="javascript:;" class=" tag-expend " >灞桥区</a></li>
                <li><a href="javascript:;" class=" tag-expend " >周至县</a></li>
              </ul>
            </div>
            <div class="tittle_nine">
              <ul>
                <li><a href="javascript:;" class=" tag-expend " >雁塔区</a></li>
                <li><a href="javascript:;" class=" tag-expend " >临潼区</a></li>
                <li><a href="javascript:;" class=" tag-expend " >鄠邑区</a></li>
              </ul>
            </div>
            <div class="tittle_ten">
              <ul>
                <li><a href="javascript:;" class=" tag-expend " >高新区</a></li>
                <li><a href="javascript:;" class=" tag-expend " >长安区</a></li>
              </ul>
            </div>
            <div class="tittle_eleven">
              <ul>
                <li><a href="#" class=" tag-expend " >莲湖区</a></li>
                <li><a href="#" class=" tag-expend " >高陵区</a></li>
              </ul>
            </div>
            <div class="tittle_twelve">
              <ul>
                <li><a href="#" class=" tag-expend " >未央区</a></li>
                <li><a href="#" class=" tag-expend " >阎良区</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div style="width:230px; height:210px;border:#ccc solid 1px;  margin-top:20px; float:left;z-index:99;margin-left:10px;position: sticky;" id="dituContent"></div>
        <!-- 2.身体 -->
        <div id="bodyer">
          <div class="title_a">
            <ul class="u_l">
              <li class="l_i">
                <a
                   :class="{jiage:zn,ys:sx}"
                  href="javascript:;"
                 >智能排序</a
                >
              </li>
              <li class="l_i">
                <a
                   :class="{jiage:jg,ys:px}"
                  href="javascript:;"
                  @click="jiage">价格排序</a
                >
              </li>
              <li class="l_i">
                <a
                   class="jiage"
                  href="javascript:;"
                  >人气最高</a
                >
              </li>
              <li class="l_i">
                <a
                   class="jiage"
                  href="javascript:;"
                  >评价最高</a
                >
              </li>
            </ul>
          </div>
          <div class="b_first" v-for="(p, i) of results" :key="i">
            <div>
               <img style="width: 20%; margin-top: 20px" :src="p.image" />
            </div>
            <div class="b_two">
              <router-link
                :to="`/ktv_details/${p.fid}`"
                style="text-decoration: none; color: #222222; font-size: 16px"
                ><span>{{ p.title }}</span></router-link
              >
              <p class="p1">{{ p.num }}人评论</p>
              <p class="p2">{{p.leixing}}|{{ p.site }} {{ p.detailed_address }}</p>
              <p class="p3">人均¥{{ p.price_per }}</p>
              <div class="b_two_img">
                <img
                  src="../../public/KTV-img/66e6ab0f49b056f98d2b2a3f21567c731145.png"
                />
                <p class="p4">
                 {{p.shangpin}}
                </p>
              </div>
            </div>
          </div>
 
        </div>
        
        <!-- 右侧提示栏 -->
        <div id="shower">
          <div class="show-title">
            <div class="top_box">
              <div class="lebal">猜你喜欢</div>
            </div>
            <div class="recommend-list" v-for="(p, i) of like" :key="i">
              <a href="javascript:;" class="recommend-item">
                <div class="recommend-card-wrapper">
                  <div class="img-box">
                    <img style="width: 100%" :src="p.image" />
                  </div>
                  <div class="info-box">
                    <div class="info-box-title">
                      {{ p.title }}
                    </div>
                    <div class="comment-number">{{ p.pingjia }} 个评价</div>
                    <div class="descd">三桥</div>
                    <div class="bottom-line">
                      <div class="price-box">
                        <span>
                          <span class="yuan">￥</span>
                          <span class="price-number">{{ p.price }}</span>
                          <span class="price-desc">起</span>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
        </div>
                 <div class="mt-pagination">
            <ul class="clearfix">
              <li class="pagination_item prev-btn">
                <a class="left-arrow iconfont icon-btn_left"><img src="/ktv-img/47.png" alt="" style="  margin-top:4px;"></a>
              </li>
              <li :class="{pagination_item:true,select:FY1}" @click="fenye_1">
                <a href="#">1</a>
              </li>
              <li :class="{pagination_item:true,select:FY2}" @click="fenye_2">
                <a href="#">2</a>
              </li>
              <li :class="{pagination_item:true,select:FY3}" @click="fenye_3">
                <a href="javacript:;">3</a>
              </li>
              <li :class="{pagination_item:true,select:FY4}" @click="fenye_4">
                <a href="javacript:;">4</a>
              </li>
              <li class="pagination_item next-btn active">
                <a href="javacript:;" class="right-arrow iconfont icon-btn_right"><img src="/ktv-img/48.png" alt="" style="  margin-top:4px;"></a>
              </li>
            </ul>
          </div>
          <my-footer0></my-footer0>
          <my-footer1></my-footer1>
          <my-footer2></my-footer2>
      </div>
    </div>
   
  </div>
</template>
<style scoped>
#head::after{
  content: "";
  clear: both;
  display: block;
}
#head{
  background-color: #f8f8f8;
}
.ys{
  color: #000; 
  text-decoration: none; 
  font-size: 14px;
}
.jiage{
  color: #666; 
  text-decoration: none; 
  font-size: 14px;
}
  .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
  .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}

.jb-title{
  display: block;
  z-index: 5;
  width:300px;
  height:50px;
  background: #FFF;
  border: 1px solid #E5E5E5;
  box-shadow: 0 5px 14px 0 rgba(0,0,0,.1);
  border-radius: 10px;
  padding: 15px;
  position: absolute;
}
.tv-fiex{
  display: inline-block;
  margin-top: 15px;
  margin-right: 35px;
}
.tv-title{
  display: block;
  z-index: 5;
  width:250px;
  height:50px;
  background: #FFF;
  border: 1px solid #E5E5E5;
  box-shadow: 0 5px 14px 0 rgba(0,0,0,.1);
  border-radius: 10px;
  padding: 15px;
  position: absolute;
}
.tag-expend::after{
    content: "";
    display: inline-block;
    margin-left: 4px;
    vertical-align: -2px;
    height: 0;
    width: 0;
    border: 4px solid transparent;
    border-top-color: #666;
}
.list-container .center-content .left-content>nav:last-child {
    text-align: center;
    margin-top: 40px;
}
.mt-pagination {
    margin: 0 auto;
    margin-left: 350px;
    margin-bottom: 100px;
}
ul {
    margin: 0;
    padding: 0;
}
.list-container .center-content .left-content>nav:last-child ul {
    display: inline-block;
}
.clearfix:after {
    content: " ";
    visibility: hidden;
    display: block;
    height: 0;
    clear: both;
}
.mt-pagination .prev-btn, .mt-pagination .next-btn {
    cursor: not-allowed;
}
.mt-pagination .pagination_item {
    width: 40px;
    height: 40px;
    line-height: 40px;
    border: 1px solid #E5E5E5;
    border-radius: 50%;
    float: left;
    margin: 0 10px;
    text-align: center;
    font-size: 16px;
    color: #999;
    cursor: pointer;
    user-select: none;
    -webkit-transition: background-color 500ms;
    -ms-transition: background-color 500ms;
    transition: background-color 500ms;
    text-decoration: none;
}
li {
    list-style: none;
    padding: 0;
    margin: 0;
}
.mt-pagination .pagination_item a {
    display: block;
    color: #999;
}
.iconfont {
    font-family: "iconfont" !important;
    font-size: 12px;
    font-style: normal;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}
.mt-pagination .icon-btn_left:before {
    display: block;
    color: #E5E5E5;
}

.mt-pagination .icon-btn_right:before {
    display: block;
    color: #E5E5E5;
}
a {
    text-decoration: none;
}
.mt-pagination .pagination_item.select {
    background: linear-gradient(to bottom right,#FFD000,#FFBD00);
    border: 1px solid #FFD000;
    cursor: default;
}
#head {
  position: relative;
}
.a1 a {
  text-decoration: none;
  color: #222;
  font-size: 12px;
}
.a1 a:hover {
  color: coral;
}
#header {
  width: 80%;
  margin-left: 200px;
  float: left;
  width: 1240px;
}
.title {
  height: 230px;
  border: 2px solid #fff;
  background: #fff;
  margin-top: 20px;
  margin-right: 0;
  position: relative;
  float: left;
}
.title_first ul{
  display: block;
  width: 200px;
}
.label {
  font-size: 16px;
  color: #222;
  position: absolute;
  top: 14px;
  left: 20px;
}
.one {
  position: relative;
}
.all {
  margin-top: -18px;
  margin-left: 30px;
  display: inline-block;
  color: #666;
}
.alls{
  text-align: center;
  color: #222;
  width: 40px;
  height: 20px;
  display: inline-block;
  background-image: linear-gradient(to bottom right, #ffd000, #ffbd00);
  border-radius: 100px;
  line-height: 20px;
}
.title ul li{
  padding-bottom:8px ;
}
.tittle_one {
  position: absolute;
  top: 15px;
  left: 150px;
}
.tittle_two {
  position: absolute;
  top: 15px;
  left: 280px;
}
.tittle_three {
  position: absolute;
  top: 15px;
  left: 390px;
}
.tittle_four {
  position: absolute;
  top: 15px;
  left: 490px;
}
.tittle_fife {
  position: absolute;
  top: 15px;
  left: 600px;
}
.tittle_six {
  position: absolute;
  top: 15px;
  left: 700px;
}
.title ul {
  list-style: none;
}
.title ul li a {
  text-decoration: none;
  color: #666;
  font-size: 14px;
}
.title_first {
  margin-left: 150px;
  width: 840px;
  height: 120px;
  border-bottom: 1px solid #e8e8e8;
}
.label_two {
  position: absolute;
  top: 150px;
  left: 20px;
}
.tittle_seven {
  position: absolute;
  top: 150px;
  left: 150px;
}
.tittle_eight {
  position: absolute;
  top: 150px;
  left: 280px;
}
.tittle_nine {
  position: absolute;
  top: 150px;
  left: 390px;
}
.tittle_ten {
  position: absolute;
  top: 150px;
  left: 490px;
}
.tittle_eleven {
  position: absolute;
  top: 150px;
  left: 600px;
}
.tittle_twelve {
  position: absolute;
  top: 150px;
  left: 700px;
}
#bodyer {
  width: 994px;
  background-color: white;
  margin-top: 20px;
  float: left;
}
.title_a::before {
  content: "";
  display: table;
}
.u_l {
  display: flex;
  list-style: none;
  margin-top: 20px;
  margin-left: 20px;
}
.l_i + .l_i {
  margin-left: 20px;
}
.b_first {
  margin: 20px 20px 40px 20px;
  border-top: 1px solid #999;
  position: relative;
}
.b_two {
  position: absolute;
  top: 20px;
  left: 220px;
}
.p1 {
  color: #ff9900;
  font-size: 12px;
  margin-top: 10px;
}
.p2 {
  font-size: 12px;
  color: #666;
  margin-top: 10px;
}
.p3 {
  font-size: 12px;
  color: #666;
  margin-top: 10px;
  margin-bottom: 10px;
}
.b_two_img {
  display: flex;
  width: 740px;
  border-top: 1px dashed #c8c8c8;
}
.b_two_img > img {
  width: 2%;
  margin-right: 10px;
  margin-top: 10px;
}
.p4 {
  font-size: 12px;
  color: #666;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  margin-top: 10px;
}
.b_scound {
  margin: 20px 20px;
  border-top: 1px solid #999;
  position: relative;
}
.b_three {
  position: absolute;
  top: 20px;
  left: 220px;
}
.b_three_2 {
  display: flex;
  width: 740px;
  border-top: 1px dashed #c8c8c8;
}
.b_three_2 > img {
  width: 2%;
  margin-right: 10px;
  margin-top: 10px;
}
.b_three_2 > span {
  font-size: 12px;
  color: #666;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  margin-top: 10px;
}
#shower {
  float: left;
  margin-top: -20px;
  margin-left: 10px;
}
#shower::before {
  content: "";
  display: table;
}
#shower .show-title {
  background-color: #fff;
  border: 1px solid #e5e5e5;
  border-radius: 4px;
  padding: 16px 20px 0;
  width: 230px;
  box-sizing: border-box;
}
.top_box {
  margin-bottom: 12px;
}
.show-title .top_box .lebal {
  font-size: 16px;
  color: #333333;
  line-height: 22px;
  font-weight: 500;
}
.recommend-list .recommend-item {
  margin-bottom: 20px;
  display: inline-block;
  width: 190px;
  text-decoration: none;
}
.recommend-card-wrapper {
  width: 100%;
  box-sizing: border-box;
}
.recommend-card-wrapper .img-box {
  height: 0;
  width: 100%;
  padding-bottom: 56.25%;
  background-color: #f4f4f4;
  background-image: url(../../public/KTV-img/27.png);
  background-size: cover;
  background-position: 50% 50%;
  border-radius: 4px;
  overflow: hidden;
}
.info-box .info-box-title {
  font-size: 14px;
  color: #222222;
  line-height: 20px;
  width: 100%;
  margin: 0;
  font-weight: 500;
}
.comment-number {
  font-size: 12px;
  color: #999;
  height: 24px;
  line-height: 24px;
  margin-left: 10px;
}
.descd {
  font-size: 12px;
  color: #999999;
  width: 100%;
  height: 18px;
  line-height: 18px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  margin-top: 4px;
}
.bottom-line {
  position: relative;
}
.bottom-line .price-box {
  color: #ff6600;
  display: inline-block;
  margin: 0;
}
.bottom-line .price-box .yuan {
  font-size: 14px;
  font-weight: 700;
}
.bottom-line .price-box .price-number {
  font-size: 22px;
}
.bottom-line .price-box .price-desc {
  font-size: 12px;
  margin-left: 4px;
  font-weight: 700;
}
</style>
 <script>
export default {
  data() {
    return {
      dell: true,
      deta: false,
      tj:false,
      tv:false,
      jb:false,
      results: [],
      like:[],
      FY1:true,
      FY2:false,
      FY3:false,
      FY4:false,
      zn:false,
      sx:true,
      jg:true,
      px:false,
    };
  },
  methods: {
    //创建地图函数：
	  createMap(){
      let map = new BMap.Map('dituContent');
      let point = new BMap.Point(108.952806,34.240016);
      map.centerAndZoom(point,15);
      map.enableScrollWheelZoom();
      map.enableDragging();
      //创建Size对象
        let iconsize = new BMap.Size(64,64);
        // 创建图标对象
        let icon = new BMap.Icon('/KTV-img/position-fill.png',iconsize);
        // 创建图像覆盖物对象
        let marker = new BMap.Marker(point,{
          icon:icon
        });
        // 将覆盖物对象添加到地图上
        map.addOverlay(marker);
    },
    jiage(){
      this.jg = false;
      this.px = true;
      this.zn=true;
      this.sx=false;
      this.axios.get("/jiage").then(result=>{
       this.results =result.data;
      })
    },
    tuanjian(){
      this.dell = false;
      this.deta = false;
      this.tj = true;
      this.axios.get("/mishi").then(result=>{
      this.results =result.data;
      })
    },
    open() {
      this.dell = false;
      this.deta = true;
      this.tj = false;
      this.axios.get("/wangba").then(result=>{
        this.results =result.data;
        console.log(this.results)
      })
    },
    show() {
      this.dell = true;
      this.deta = false;
      this.tj = false;
      this.axios.get("/login").then((result) => {
      this.results = result.data;
    });
    },
    enter(){
      this.tv=true;
    },
    over(){
      this.tv=false;
    },
    xs(){
      this.jb=true;
    },
    yc(){
      this.jb=false;
    },
    fenye_1(){
     this.FY1=true;
     this.FY2=false;
     this.FY3=false;
     this.FY4=false;
      this.axios.get("/login").then((result) => {
      this.results = result.data;
    });
    },
    fenye_2(){
     this.FY1=false;
     this.FY2=true;
     this.FY3=false;
     this.FY4=false;
     this.axios.get("/login2").then((result) => {
     this.results = result.data;
    });
    },
    fenye_3(){
     this.FY1=false;
     this.FY2=false;
     this.FY3=true;
     this.FY4=false;
    },
    fenye_4(){
     this.FY1=false;
     this.FY2=false;
     this.FY3=false;
     this.FY4=true;
    }
  },

  mounted() {
    this.axios.get("/login").then((result) => {
      this.results = result.data;
    });
    this.axios.get("/like").then((result) => {
      this.like = result.data;
    });
    this.createMap();//创建地图
  },
};
</script>