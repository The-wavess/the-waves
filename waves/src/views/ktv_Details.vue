<template>
  <div>
     <my-header></my-header>
    <div class="daohang" >
      <span>西安美团></span>
      <span>西安休闲娱乐></span>
      <span>西安密室逃脱</span>
    </div>
    <div id="d1">
      <div class="into_head">
        <div class="title_1">{{title}}</div>
        <div class="title_2">
          <span class="c1">5分</span>
          <span>人均￥{{price_per}}</span>
          <a style="color: #666" href="#" class="title_a">分享到微信</a>
        </div>
        <div class="title_3">
          <div class="one">
            <span>地址：</span>
            <a href="#">
              <span>{{detailed_address}}</span>
            </a>
          </div>
          <div class="one">
            <span>电话：</span>
            <span>{{phone}}</span>
          </div>
          <div class="one">
            <span>营业时间：</span>
            <span>{{opening_hours }}</span>
          </div>
        </div>
        <div class="title_4">
          <div class="service">
            <i class="icon icon_wifi"></i>
            <br />
            <span>{{service}}</span>
          </div>
          <div class="service">
            <i class="icon icon_park"></i>
            <br />
            <span>{{tingchewei}}</span>
          </div>
        </div>
      </div>
      <div class="pc-gallery">
        <div class="piv">
          <div class="piv-preview" style="display:block;">
            <div class="now-img">
              <img  class="now-img" :src="tupian[i]" >
            </div>
            <div class="zoom-in" @click="fdj">
              <i class="iconfont icon-zoom_iocn"></i>
            </div>
            <div class="btn-next" @click="next">
              <i class="iconfont icon-btn_right" ></i>
            </div>
            <div class="btn-pre" @click="pre">
              <i class="iconfont icon-btn_left"></i>
            </div>
          </div>
          <div class="piv-album" style="display:block;" >
            <div class="btn-next" @click="moveright">
              <i class="iconfont icon-btn_right" ></i>
            </div>
            <div class="btn-pre" @click="moveleft">
              <i class="iconfont icon-btn_left" ></i>
            </div>
            <div class="album-ls"  @mouseover="dyz">
              <div class="album-ul clearfix" :style="{'margin-left':-388*times+'px',width:97*(lunbo.length)+'px'}" v-for="(p,i) of lunbo" :key="i">
                <div class="img-item"   >
                  <img class="img-item" :src="p.tupian" :data-i="i">
                </div>
              </div>
            </div>
          </div>
          <div class="zoom" style="display: block;" v-if="fd">
            <div class="zoom-bg"></div>
            <div class="zoom-view">
              <div class="zoom-box" style="margin-left: -340.5px; margin-top: -322px;">
                <img src="/KTV-img/8.jpg" id="zoomView">
                <div class="img-desc">
                  <span>1 / 14</span>
                </div>
              </div>
              <div class="btn-close" @click="cha">
                <i class="iconfont icon-close_icon"></i>
              </div>
              <div class="btn btn-next">
                <i class="iconfont icon-btn_right"></i>
              </div>
              <div class="btn btn-pre">
                <i class="iconfont icon-btn_left"></i>
              </div>
            </div>
            <div class="album-ls">
              <div class="btn-next">
                <i class="iconfont icon-btn_right"></i>
              </div>
              <div class="btn-pre">
                <i class="iconfont icon-btn_left"></i>
              </div>
              <div class="album-ul" style="width:3298px; left:0px; transition:left 0.5s;">
                <div class="img-item" style="background-image:url(/KTV-img/8.jpg);border:1px solid #fff"></div>
                <div class="img-item" style="background-image:url(/KTV-img/9.jpg);border:1px solid #fff" ></div>
                <div class="img-item" style="background-image:url(/KTV-img/10.jpg);border:1px solid #fff"></div>
                <div class="img-item" style="background-image:url(/KTV-img/11.jpg);border:1px solid #fff"></div>
                <div class="img-item" style="background-image:url(/KTV-img/12.jpg);border:1px solid #fff"></div>
                <div class="img-item" style="background-image:url(/KTV-img/17.jpg);border:1px solid #fff"></div>
                <div class="img-item" style="background-image:url(/KTV-img/18.jpg);border:1px solid #fff"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 商品 -->
    <div class="decal">
      <div class="poi-group-offer">
        <p class="desc" style="padding-left:5px;margin-bottom:10px;margin-top:20px">商家优惠促销</p>
        <div class="group-combo">
          <p class="sub-desc">5款套餐</p>

          <div class="group-combo_title" v-for="(p, i) of info" :key="i">
            <div class="group-combo_1">
              <div class="group-combo_img">
                <img :src="p.image" />
              </div>
              <div class="info">
                <a href="javascript:;">
                  <span class="info_title">
                    {{ p.title }}
                  </span>
                  <i class="icon"></i>
                </a>
                <div class="info_title_1">
                  <span class="info_s">已售{{ p.sold_out }}</span>
                  <span> 截止日期: {{ p.expiration_data }}</span>
                </div>
                <div class="combo-prices">
                  <span class="price-symbol">¥</span>
                  <span class="cur-price numfont">{{ p.price }}</span>
                  <span class="market-price">门店价{{ p.original_price }}</span>
                </div>
              </div>
            </div>
            <div class="operation">
              <router-link :to="`/xiangqing/${p.lid}`" style="text-decoration: none"
                ><span class="panic-buy-btn">立即抢购</span></router-link
              >
            </div>
          </div>
        </div>

        <div>
          <div class="book-box">
            <p class="book-desc">其他优惠</p>
            <ul style="margin-left: 20px">
              <li>
                <span>预定优惠</span>
                <div class="book-item-content">
                  <span class="tip">提前预订享优惠，不用排队更方便!</span>
                  <span class="num">已有29239人预订</span>
                  <span class="panic-buy-btn">立即预订</span>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <div class="comment">
          <div class="comment-title-bar">
            <span class="comment-count">网友评论</span>
            <div class="comment-sort">
              <span class="active">默认排序</span>
              <span class="">时间排序</span>
            </div>
          </div>
          <div class="comment-box">
            <div class="labels-box">
              <div :class="{ label_active: lab_1 }" @click="xuanxiang_1">
                全部(30)
              </div>
              <div :class="{ label_active: lab_2 }" @click="xuanxiang_2">
                 商圈附近(8)
              </div>
              <div :class="{ label_active: lab_3 }" @click="xuanxiang_3">
                体验很棒(8)
              </div>
              <div :class="{ label_active: lab_4 }" @click="xuanxiang_4">
                环境很好(7)
              </div>
              <div :class="{ label_active: lab_5 }" @click="xuanxiang_5">
                服务热情(7)
              </div>
              <div :class="{ label_active: lab_6 }" @click="xuanxiang_6">
                交通便利(7)
              </div>
              <div :class="{ label_active: lab_7 }" @click="xuanxiang_7">
                刺激好玩(5)
              </div>
              <div :class="{ label_active: lab_8 }" @click="xuanxiang_8">
                干净整洁(5)
              </div>
              <div :class="{ label_active: lab_9 }" @click="xuanxiang_9">
                价格实惠(5)
              </div>
              <div :class="{ label_active: lab_10 }" @click="xuanxiang_10">
                高大上(4)
              </div>
            </div>
            <div class="comment-options">
              <label>
                <input type="checkbox" />
                <span class="des-text">只看有图片的评论</span>
              </label>
              <label>
                <input type="checkbox" />
                <span class="des-text">只看低分</span>
              </label>
            </div>
            <div class="comment-main" v-for="(p, i) of pinglun" :key="i">
              <div class="comment-item">
                <div class="comment-rel">
                  <div class="user-photo">
                    <img src="/KTV-img/anonymous.png" alt="" />
                  </div>
                  <div class="comment-des">
                    <div class="user-info">
                      <span class="user-name">{{ p.uname }}</span>
                    </div>
                    <div class="deal-name">
                      <a href="javascript:;">单人周内早场单人剧本杀</a>
                      <a href="javascript:;">{{ p.times }}</a>
                    </div>
                  </div>
                </div>
                <div class="comment-detail">
                  <div class="user-comment">
                    <div class="user-comment-inner">
                      {{ p.e_comment }}
                    </div>
                    <div class="user-photo">
                      <div style="width: 200px; float: left; margin-top: 10px">
                        <img style="width: 90%" :src="p.image" alt="" />
                      </div>
                      <div
                        style="
                          width: 200px;
                          float: left;
                          margin-left: 20px;
                          margin-top: 10px;
                        "
                      >
                        <img style="width: 90%" :src="p.images" alt="" />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div id="shower">
        <div style="width:230px; height:210px;border:#ccc solid 1px;margin-top:-223px; float:left;z-index:5;" id="dituContent"></div>
        <div class="show-title">
          <div class="top_box">
            <div class="lebal">猜你喜欢</div>
          </div>
          <div class="recommend-list" v-for="(p, i) of likes" :key="i">
            <a href="javascript:;" class="recommend-item">
              <div class="recommend-card-wrapper">
                <div class="img-box">
                  <img style="width: 100%" :src="p.image" />
                </div>
                <div class="info-box">
                  <div class="info-box-title">
                    {{ p.title }}
                  </div>
                  <div class="comment-number">{{ p.pingjia }}个评价</div>
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
    </div>
    <my-footer0></my-footer0>
    <my-footer1></my-footer1>
    <my-footer2></my-footer2>
  </div>
</template>
<style scoped>
.daohang>span:hover{
    color: #31BBAC;
    cursor: pointer;
}
.daohang{
    margin-left:200px;
    margin-top:20px;
    font-size: 12px;
    color: #222;
    margin-right: 13px;
    position: relative;
}
.pc-gallery .piv .zoom .album-ls .btn-pre{
    background: linear-gradient(90deg,#222 0,rgba(0,0,0,0) 100%);
    position: absolute;
    bottom: 0;
    left: 0;
    line-height: 83px;
    text-align: right;
    border-radius: 4px;
    transition: opacity .4s;
    cursor: pointer;
    z-index: 9;
    width: 40px;
    height: 81px;
    opacity: .8;
}
.pc-gallery .piv .zoom .album-ls .album-ul .img-item{
    width: 140px;
    height: 79px;
    border-radius: 4px;
    margin-right: 5px;
    border: 0;
    float: left;
    background-position: 50%;
    background-repeat: no-repeat;
    background-size: 100%;
}
.pc-gallery .piv .zoom .album-ls .btn-next{
    background: linear-gradient(-90deg,#222 0,rgba(0,0,0,0) 100%);
    position: absolute;
    bottom: 1px;
    right: 0;
    line-height: 83px;
    text-align: right;
    border-radius: 4px;
    transition: opacity .4s;
    cursor: pointer;
    z-index: 9;
    width: 40px;
    height: 80px;
    opacity: .8;
}
.pc-gallery .piv .zoom .album-ls{
    position: absolute;
    z-index: 10;
    bottom: 0;
    overflow: hidden;
    width: 877px;
    left: 50%;
    margin-bottom: 10px;
    margin-left: -438.5px;
}
.pc-gallery .piv .zoom .zoom-view .btn-pre{
    left: 40px;
}
.pc-gallery .icon-btn_right{
    background-image: url(/KTV-img/you.png);
}
.pc-gallery .piv .zoom .zoom-view .btn{
    height: 50px;
    width: 50px;
    border-radius: 50%;
    background: #000;
    position: absolute;
    opacity: .8;
    z-index: 10;
    top: 33%;
}
.pc-gallery .piv .zoom .zoom-view .btn-next{
    right: 40px;
}
.iconfont {
    font-family: iconfont!important;
    font-size: 12px;
    font-style: normal;
    -moz-osx-font-smoothing: grayscale;
}
.pc-gallery .piv .zoom .zoom-view .btn-close{
    position: absolute;
    top: 20px;
    right: 30px;
    height: 30px;
    width: 30px;
    opacity: .6;
    transition: opacity .5s;
    z-index: 10;
    background-image: url(/KTV-img/cha.png);
    background-size: 30px 30px;
}
.pc-gallery .piv .zoom .zoom-view .img-desc span{
    margin-left: 10px;
}
.pc-gallery .piv .zoom .zoom-view .img-desc{
    color: #fff;
    background: #000;
    opacity: .7;
    width: 100%;
    font-size: 14px;
    position: relative;
    top: -29px;
    line-height: 27px;
}
.pc-gallery .piv .zoom .zoom-view img{
    max-height: 500px;
    width: auto;
}
.pc-gallery .piv .zoom .zoom-view .zoom-box{
    position: absolute;
    z-index: 999;
    left: 50%;
    top: 50%;
    margin-left: -230px;
}
.pc-gallery .piv .zoom .zoom-bg{
    background: #000;
    position: absolute;
    top: 0;
    left: 0;
    opacity: .8;
    z-index: 2;
    height: 100%;
    width: 100%;
    transition: opacity .6s;
}
.pc-gallery .piv .zoom{
    display: none;
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    transition: opactiy .5s;
    z-index: 9999;
}
.pc-gallery .piv .piv-album .album-ls .album-ul {
 
  transition-duration: 0.5s;
  left: 0;
}
.pc-gallery .piv .piv-album .album-ls .album-ul .img-item{
    width: 91px;
    height: 50px;
    float: left;
    margin-right: 6px;
    background-position: 100%;
    background-size: 100%;
    border-radius: 4px;
}
.pc-gallery .piv .piv-album .album-ls{
    width: 100%;
    overflow: hidden;
}
.pc-gallery .piv .piv-album{
    margin-top: 10px;
    position: relative;
    width: 384px;
   
}
.pc-gallery .piv .piv-album .btn-pre:hover{
  opacity: 1;
}
.pc-gallery .piv .piv-album .btn-pre{
    background: linear-gradient(90deg,#222 0,rgba(0,0,0,0) 100%);
    top: 1px;
    left: 1px;
    text-align: left;
    opacity: 0;
}
.pc-gallery .icon-btn_left, .pc-gallery .icon-btn_right{
    position: absolute;
    width: 32px;
    height: 32px;
    top: 50%;
    left: 50%;
    margin-left: -16px;
    margin-top: -16px;
    background-size: 32px 32px;
}
.pc-gallery .icon-btn_left{
    background-image: url(/KTV-img/zuo.png);
}
.pc-gallery .icon-btn_right{
    background-image: url(/KTV-img/you.png);
}
.pc-gallery .piv .piv-album .btn-next .iconfont , .pc-gallery .piv .piv-album .btn-pre .iconfont{
    font-size: 20px;
    color: #fff;
}
.pc-gallery .piv .piv-album .btn-next , .pc-gallery .piv .piv-album .btn-pre{
    position: absolute;
    line-height: 50px;
    border-radius: 4px;
    z-index: 9;
    transition: opacity .4s;
    width: 40px;
    height: 50px;
    cursor: pointer;
}
.pc-gallery .piv .piv-album .btn-next:hover{
  opacity: 1;
}
.pc-gallery .piv .piv-album .btn-next{
    background: linear-gradient(-90deg,#222 0,rgba(0,0,0,0) 100%);
    bottom: 1px;
    right: 2px;
    text-align: right;
    opacity: 0;
}
.pc-gallery .piv .piv-preview .btn-pre .iconfont{
    position: absolute;
    width: 32px;
    height: 32px;
    top: 50%;
    left: 50%;
    margin-left: -16px;
    margin-top: -16px;
    background-image: url(/KTV-img/zuo.png);
    background-size: 32px 32px;
}
.pc-gallery .icon-btn_left{
    background-image: url(/KTV-img/zuo.png);
}
.pc-gallery .piv .piv-preview .btn-pre:hover{
 opacity: 1;
}
.pc-gallery .piv .piv-preview .btn-pre{
    
    background-image: linear-gradient(90deg,#222 0,rgba(0,0,0,0) 100%);
    position: absolute;
    bottom: 0;
    left: 0;
    line-height: 209px;
    text-align: left;
    border-bottom-left-radius: 4px;
    border-top-left-radius: 4px;
    opacity: 0;
    transition: opacity .4s;
    cursor: pointer;
    width: 40px;
    top: 0;
}
.pc-gallery .piv .piv-preview .btn-next .iconfont{
    position: absolute;
    width: 32px;
    height: 32px;
    top: 50%;
    left: 50%;
    margin-left: -16px;
    margin-top: -16px;
    background-image: url(/KTV-img/you.png);
    background-size: 32px 32px;
}
 .pc-gallery .piv .piv-preview .btn-next:hover{
  opacity: 1;

}
.pc-gallery .piv .piv-preview .btn-next{
    background-image: linear-gradient(-90deg,#222 0,rgba(0,0,0,0) 100%);
    position: absolute;
    bottom: 0;
    right: 0;
    line-height: 209px;
    text-align: right;
    border-bottom-right-radius: 4px;
    border-top-right-radius: 4px;
    opacity: 0;
    transition: opacity .4s;
    cursor: pointer;
    width: 40px;
    top: 0;
}
.iconfont {
    font-family: iconfont!important;
    font-size: 12px;
    font-style: normal;
}
.pc-gallery .piv .piv-preview .zoom-in .iconfont{
    position: absolute;
    width: 24px;
    height: 24px;
    top: 50%;
    left: 50%;
    margin-left: -12px;
    margin-top: -12px;
    background-image: url(/KTV-img/fd.png);
    background-size: 24px 24px;
}
.pc-gallery .piv .piv-preview .zoom-in:hover{
  opacity: 1;
}
.pc-gallery .piv .piv-preview .zoom-in{
    background-color: #000;
    opacity: 0;
    transition: opacity .4s;
    height: 48px;
    width: 48px;
    border-radius: 50%;
    position: absolute;
    bottom: 83px;
    left: 166px;
}
.pc-gallery .piv .piv-preview .now-img{
    width: 100%;
    height: 100%;
    display: inline-block;
    background-position: 50%;
    background-repeat: no-repeat;
    background-size: 100%;
    border-radius: 4px;
}
.pc-gallery .piv .piv-preview{
    position: relative;
    height: 214px;
    width: 383px;
    background: url(/KTV-img/fd.png) 50% no-repeat;
    background-size: 100%;
    border-radius: 4px;
}
 .pc-gallery{
    float: right;
}
.comment-photo {
  width: auto;
  height: auto;
  padding: 7px 0 0;
  overflow: hidden;
  position: relative;
}
.comment-item .comment-detail .user-comment {
  width: 100%;
  font-size: 14px;
  color: #666;
  line-height: 20px;
  overflow: hidden;
  text-overflow: ellipsis;
  position: relative;
}
.comment-item .comment-detail {
  width: 690px;
  height: auto;
  margin-top: 13px;
  float: right;
  padding-bottom: 15.5px;
  border-bottom: 1px solid #e5e5e5;
  position: relative;
}
.comment-item .comment-rel .comment-des .deal-name a:last-child {
  margin-left: 440px;
}
.comment-item .comment-rel .comment-des .deal-name a {
  text-decoration: none;
  font-size: 12px;
  color: #999;
  line-height: 20px;
}
.comment-item .comment-rel .comment-des .user-info {
  width: auto;
  height: 22px;
  padding-top: 0;
}
.comment-item .comment-rel .user-photo img {
  width: 100%;
  border-radius: 50%;
}
.comment-item .comment-rel .comment-des {
  margin-top: 6px;
  width: 670px;
  float: left;
  position: relative;
}
.comment-item .comment-rel .user-photo {
  width: 60px;
  height: 60px;
  margin-right: 20px;
  float: left;
  border: none;
  border-radius: 50%;
}
.comment-item .comment-rel {
  width: 100%;
  height: 60px;
}
.comment-item {
  width: 100%;
  height: auto;
  overflow: hidden;
  margin-bottom: 20px;
}
.comment .comment-box .comment-main {
  width: 100%;
  height: auto;
  margin-top: 30px;
}
.comment-options label .des-text {
  width: auto;
  height: 100%;
  display: inline-block;
  vertical-align: baseline;
  background: 0 0;
}
.comment-options label input {
  width: 16px;
  height: 16px;
  display: inline-block;
  vertical-align: -15%;
  margin-right: 4px;
  position: relative;
  background-size: cover;
  background-repeat: no-repeat;
  transition: background 0.3s ease;
}
.comment-options label {
  width: auto;
  height: 20px;
  font-size: 14px;
  color: #666;
  display: inline-block;
  -webkit-box-align: center;
  -webkit-align-items: center;
  align-items: center;
  margin-right: 23px;
}
.comment-options {
  width: 100%;
  height: auto;
  margin: 10px 0;
  -webkit-tap-highlight-color: transparent;
}
.labels-box div {
  width: auto;
  height: 20px;
  float: left;
  padding: 8px 10px;
  font-size: 14px;
  color: #666;
  border: 1px solid #e5e5e5;
  border-radius: 2px;
  margin: 0 10px 10px 0;
  cursor: pointer;
}
.labels-box .label_active {
  height: 22px;
  color: #222;
  background-color: #fffbf5;
  border: 1px solid #ffc700;
}
.labels-box {
  width: 100%;
  height: auto;
  display: -webkit-box;
  display: -webkit-flex;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-flex-flow: row wrap;
  flex-flow: row wrap;
  -webkit-box-pack: start;
  -webkit-justify-content: flex-start;
  justify-content: flex-start;
  -webkit-align-content: space-between;
  align-content: space-between;
}
.comment .comment-box {
  width: 100%;
  height: auto;
  padding: 15px 20px;
  box-sizing: border-box;
  background-color: #fff;
  border: 1px solid #e5e5e5;
  border-radius: 4px;
}
.comment .comment-sort span {
  font-size: 12px;
  font-weight: 400;
  color: #999;
  cursor: pointer;
  float: left;
  padding-top: 10px;
  margin-right: 20px;
}
.comment .comment-sort span:hover {
  color: #222;
}
.comment .comment-sort {
  width: 140px;
  height: 100%;
  display: inline-flex;
  flex-flow: row nowrap;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
  justify-content: space-between;
  -webkit-box-align: end;
  -webkit-align-items: flex-end;
  align-items: flex-end;
  float: right;
}
.comment .comment-count {
  width: auto;
  height: 100%;
  font-size: 20px;
  font-weight: 500;
  color: #222;
  line-height: 26px;
  float: left;
}
.comment .comment-title-bar {
  width: 100%;
  height: 26px;
  padding: 8px 0;
  display: -webkit-box;
  display: -webkit-flex;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-flex-flow: row nowrap;
  flex-flow: row nowrap;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
  justify-content: space-between;
  -webkit-box-align: center;
  -webkit-align-items: center;
  align-items: center;
}
.comment .comment-sort,
.comment .comment-title-bar,
.labels-box {
  -webkit-box-direction: normal;
  overflow: hidden;
}
.comment {
  width: 800px;
  height: auto;
  margin-top: 34px;
}
.decal {
  width: 1350px;
}
.decal::before {
  content: "";
  display: table;
}
.decal::after {
  content: "";
  display: block;
  clear: both;
}
#d1 {
  width: 1000px;
  background-color: #fff;
  border: 1px solid #e5e5e5;
  box-shadow: 0 5px 14px 0 rgba(0, 0, 0, 0.1);
  border-radius: 10px;
  margin: 20px auto;
  padding: 20px;
  position: relative;
  float: left;
  margin-left: 200px;
}
#d1 .into_head {
  float: left;
  width: 494px;
}
#d1::after {
  content: "";
  display: block;
  clear: both;
}
#d1::before {
  content: "";
  display: table;
}
.title_1 {
  font-size: 26px;
  font-weight: 500;
  color: #222;
}
.title_2 {
  font-size: 14px;
  color: #666;
  line-height: 14px;
  padding-left: 6px;
  border-bottom: 1px solid #c8c8c8;
  padding-bottom: 20px;
  margin-top: 10px;
}
.c1 {
  margin-left: 110px;
}
.title_a {
  text-decoration: none;
  margin-left: 210px;
  margin-top: 5px;
}
.title_3 {
  padding: 10px 0;
  border-bottom: 1px solid #c8c8c8;
}
.one {
  font-size: 14px;
  color: #666;
  padding: 7px 0;
}
.one a {
  text-decoration: none;
  color: #666;
}
.title_4 .service {
  float: left;
  text-align: center;
  margin: 18px 15px 0;
}
.title_4::after {
  content: "";
  display: block;
  clear: both;
}
.title_4 .service .icon_wifi {
  background-position: 98%;
}
.title_4 .service .icon {
  background-image: url(../../public/KTV-img/dbfe4329dfab5f362a13d9ffbe60c557.png);
  height: 30px;
  width: 30px;
  display: inline-block;
  background-repeat: no-repeat;
  background-size: 180px;
}
.title_4.service i {
  position: relative;
  left: 12px;
  margin-bottom: 4px;
}
.title_4 .service span {
  font-size: 12px;
  color: #666;
}
.title_4 .service .icon_park {
  background-position: 74%;
}
#d1 .title_5 {
  width: 400px;
  float: right;
}
.poi-group-offer {
  width: 800px;
  margin: 0 0 0 200px;
  float: left;
}
.poi-group-offer .desc {
  font-size: 20px;
  font-weight: 500;
  color: #222;
  width: 100%;
  height: 26px;
  padding: 0;
  overflow: hidden;
}

.poi-group-offer .group-combo {
  background-color: #fff;
  padding: 20px 20px 0;
  border-radius: 4px;
  position: relative;
}
.poi-group-offer .group-combo .group-combo_title {
  border-bottom: 1px solid #e5e5e5;
  float: left;
  width: 100%;
}
.poi-group-offer .sub-desc {
  font-size: 16px;
  color: #333;
  line-height: 26px;
  font-weight: 500;
}

.group-combo_1 {
  float: left;
  padding: 20px 0;
  height: 100px;
}
.group-combo::after {
  content: " ";
  display: block;
  clear: both;
}
.group-combo::before {
  content: "";
  display: table;
}
.group-combo_img {
  width: 100px;
  height: 100px;
  float: left;
  margin-right: 20px;
  cursor: pointer;
}
.group-combo_img > img {
  width: 100%;
  height: 100%;
  border-radius: 4px;
}
.info {
  float: left;
}
.info > a {
  font-size: 16px;
  color: #222;
  font-weight: 500;
  height: 22px;
  line-height: 22px;
  margin-bottom: 4px;
  cursor: pointer;
  text-decoration: none;
}
.info > a > .info_title {
  vertical-align: middle;
  margin-right: 12px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  max-width: 300px;
  display: inline-block;
}
.info > a > .info_title:hover {
  color: lightseagreen;
}
.info > a > .info_title + .icon {
  width: 16px;
  height: 16px;
  vertical-align: middle;
  border: 0;
  background-image: url(../../public/KTV-img/66e6ab0f49b056f98d2b2a3f21567c731145.png);
  display: inline-block;
  background-size: contain;
}
.info > .info_title_1 {
  font-size: 12px;
  color: #666;
  height: 17px;
  line-height: 17px;
  margin-bottom: 22px;
}
.info > .info_title_1 > .info_s {
  margin-right: 10px;
}
.info > .combo-prices .price-symbol {
  font-size: 14px;
  color: #f60;
  font-weight: 500;
}
.info > .combo-prices .cur-price {
  font-size: 30px;
  color: #f60;
  margin-right: 10px;
}
.info > .combo-prices .market-price {
  font-size: 12px;
  color: #999;
}
.group-combo .operation {
  float: right;
  height: 100px;
  line-height: 100px;
}
.panic-buy-btn {
  font-weight: 500px;
  color: #fff;
  font-size: 14px;
  padding: 10px 32px;
  background-color: #f90;
  transition: background-color 0.5s;
  border: none;
  cursor: pointer;
  border-radius: 100px;
}
.panic-buy-btn:hover {
  background-color: #f99;
}
#shower {
  float: left;
  margin-left: 10px;
  margin-top: 250px;
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
.book-box {
  width: 100%;
  height: auto;
  padding: 15px 20px;
  box-sizing: border-box;
  background-color: #fff;
  border: 1px solid #e5e5e5;
  border-radius: 4px;
  position: relative;
  margin-top: 20px;
}
.book-box .book-desc {
  font-size: 16px;
  color: #333;
  line-height: 26px;
  font-weight: 500;
  margin-bottom: 10px;
}
.book-item-content {
  display: flex;
  color: #838383;
  font-size: 12px;
  margin-top: -10px;
}
.book-item-content .tip {
  flex: 1;
  display: block;
  line-height: 40px;
}
.book-item-content .num {
  margin-right: 30px;
  display: block;
  line-height: 40px;
}
</style>
<script>
export default {
  data() {
    return {
      lab_1: true,
      lab_2: false,
      lab_3: false,
      lab_4: false,
      lab_5: false,
      lab_6: false,
      lab_7: false,
      lab_8: false,
      lab_9: false,
      lab_10: false,
      info: [],
      likes: [],
      pinglun: [],
      lunbo:[],
      tupian:[],
      title:'',
      price_per:'',
      phone :'',
      opening_hours :'',
      service: '',
      tingchewei:'',
      detailed_address:'',
      fd:false,
      times:0,
      i:0,
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
    pre(){
       if(this.i>0){
        this.i--
      }
      if((this.i+1)%4==0){
        this.moveleft()
      }
    },
    next(){
      if(this.i<this.tupian.length-1){
        this.i++
      }
      if(this.i%4==0){
        this.moveright()
      }
    },
    moveleft(){
      if(this.times>0){
         this.times--;
      }
     
    },
    moveright(){
      if(this.times<3){
        this.times++;
      }
      
    },
    dyz(e){
      //e.target代替this
      //只允许img元素触发事件
      if(e.target.nodeName == "IMG"){
        this.i = e.target.dataset.i
      }
    },
    cha(){
      this.fd = false;
    },
    fdj(){
      this.fd = true;
    },
    xuanxiang_1() {
      this.lab_1 = true;
      this.lab_2 = false;
      this.lab_3 = false;
      this.lab_4 = false;
      this.lab_5 = false;
      this.lab_6 = false;
      this.lab_7 = false;
      this.lab_8 = false;
      this.lab_9 = false;
      this.lab_10 = false;
    },
    xuanxiang_2() {
      this.lab_1 = false;
      this.lab_2 = true;
      this.lab_3 = false;
      this.lab_4 = false;
      this.lab_5 = false;
      this.lab_6 = false;
      this.lab_7 = false;
      this.lab_8 = false;
      this.lab_9 = false;
      this.lab_10 = false;
    },
    xuanxiang_3() {
      this.lab_1 = false;
      this.lab_2 = false;
      this.lab_3 = true;
      this.lab_4 = false;
      this.lab_5 = false;
      this.lab_6 = false;
      this.lab_7 = false;
      this.lab_8 = false;
      this.lab_9 = false;
      this.lab_10 = false;
    },
    xuanxiang_4() {
      this.lab_1 = false;
      this.lab_2 = false;
      this.lab_3 = false;
      this.lab_4 = true;
      this.lab_5 = false;
      this.lab_6 = false;
      this.lab_7 = false;
      this.lab_8 = false;
      this.lab_9 = false;
      this.lab_10 = false;
    },
    xuanxiang_5() {
      this.lab_1 = false;
      this.lab_2 = false;
      this.lab_3 = false;
      this.lab_4 = false;
      this.lab_5 = true;
      this.lab_6 = false;
      this.lab_7 = false;
      this.lab_8 = false;
      this.lab_9 = false;
      this.lab_10 = false;
    },
    xuanxiang_6() {
      this.lab_1 = false;
      this.lab_2 = false;
      this.lab_3 = false;
      this.lab_4 = false;
      this.lab_5 = false;
      this.lab_6 = true;
      this.lab_7 = false;
      this.lab_8 = false;
      this.lab_9 = false;
      this.lab_10 = false;
    },
    xuanxiang_7() {
      this.lab_1 = false;
      this.lab_2 = false;
      this.lab_3 = false;
      this.lab_4 = false;
      this.lab_5 = false;
      this.lab_6 = false;
      this.lab_7 = true;
      this.lab_8 = false;
      this.lab_9 = false;
      this.lab_10 = false;
    },
    xuanxiang_8() {
      this.lab_1 = false;
      this.lab_2 = false;
      this.lab_3 = false;
      this.lab_4 = false;
      this.lab_5 = false;
      this.lab_6 = false;
      this.lab_7 = false;
      this.lab_8 = true;
      this.lab_9 = false;
      this.lab_10 = false;
    },
    xuanxiang_9() {
      this.lab_1 = false;
      this.lab_2 = false;
      this.lab_3 = false;
      this.lab_4 = false;
      this.lab_5 = false;
      this.lab_6 = false;
      this.lab_7 = false;
      this.lab_8 = false;
      this.lab_9 = true;
      this.lab_10 = false;
    },
    xuanxiang_10() {
      this.lab_1 = false;
      this.lab_2 = false;
      this.lab_3 = false;
      this.lab_4 = false;
      this.lab_5 = false;
      this.lab_6 = false;
      this.lab_7 = false;
      this.lab_8 = false;
      this.lab_9 = false;
      this.lab_10 = true;
    },
  },
  mounted() {
    let fid = this.$route.params.fid;

    this.axios.get("/likes").then((result) => {
      this.likes = result.data;
    });
    this.axios.get(`/details?fid=${fid}`).then((res) => {
      this.info = res.data;
    });
    this.axios.get("/pinglun").then((result) => {
      this.pinglun = result.data;
    });
    this.axios.get(`/list?fid=${fid}`).then((result) => {
      this.title = result.data[0].title;
      this.price_per= result.data[0].price_per;
      this.phone = result.data[0].phone;
      this.opening_hours = result.data[0].opening_hours;
      this.service = result.data[0].service;
      this.tingchewei = result.data[0].tingchewei;
      this.detailed_address=result.data[0].detailed_address;
    });
     this.createMap();//创建地图
     this.axios.get('/lunbo').then(res=>{
       this.lunbo = res.data
       res.data.forEach(item=>{
         this.tupian.push(item.tupian)
         
       })
     })
  },
};
</script>