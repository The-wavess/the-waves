<template>
  <div>
    <div class="container">
      <div class="card flex">
          <div class="pc-gallery">
        <div class="piv">
          <div class="piv-preview" style="display:block;">
            <div class="now-img" :style="sy">
            </div>
            <div class="zoom-in"  @click="fdj">
              <i class="iconfont icon-zoom_iocn"></i>
            </div>
            <div class="btn-next">
              <i class="iconfont icon-btn_right"></i>
            </div>
            <div class="btn-pre">
              <i class="iconfont icon-btn_left"></i>
            </div>
          </div>
          <div class="piv-album" style="display:block;">
            <div class="btn-next" >
              <i class="iconfont icon-btn_right" ></i>
            </div>
            <div class="btn-pre">
              <i class="iconfont icon-btn_left"></i>
            </div>
            <div class="album-ls">
              <div class="album-ul clearfix" style="width:3298px; left:0px; transition:left 0.5s;">
                <div class="img-item" :style="dy"  @mouseover="dyz"></div>
                <div class="img-item" :style="de" @mouseover="dez"></div>
                <div class="img-item" :style="ds" @mouseover="dsz"></div>
                <div class="img-item" :style="fo" @mouseover="foz"></div>
                <div class="img-item" style="background-image:url(/KTV-img/12.jpg);border:1px solid #fff"></div>
                <div class="img-item" style="background-image:url(/KTV-img/16.jpg);border:1px solid #fff"></div>
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
              <div class="album-ul" style="width:2100px;left:0px;transition:left 0.5s;">
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
        <div class="major">
          <div class="one-line">西安、太原通用优惠券【精品主题18选1】</div>
          <div class="subtitle">
            仅售89元，价值100元西安、太原通用优惠券【精品主题18选1】，免费WiFi！
          </div>
          <div class="item flexs">
            <div class="key">团购价</div>
            <div class="major flexs">
              <div class="major price flexs">
                ¥
                <div class="king">89</div>
                <del class="deprecated">门市价¥100</del>
                <div class="compared">8.9折</div>
              </div>
              <div class="sold">半年消费7738</div>
            </div>
          </div>
          <div class="item flexs">
            <div class="key">&nbsp;</div>
            <button class="buy">¥83 限时抢购</button>
          </div>
          <div class="item flexs">
            <div class="key">服务承诺</div>
            <div class="promises flexs">
              <div class="promise">随时退</div>
              <div class="promise">随时换</div>
            </div>
          </div>
        </div>
      </div>
      <div style="position: relative">
        <div class="nav-lp">
          <div class="nav-lp_tab">
            <ul class="clearfix">
              <li class="is-active">
                <a href="javascript:;" class="tab-description">适用门店</a>
              </li>
              <li>
                <a href="javascript:;" class="tab-description">团购详情</a>
              </li>
              <li>
                <a href="javascript:;" class="tab-description">购买须知</a>
              </li>
              <li>
                <a href="javascript:;" class="tab-description">用户评价</a>
              </li>
            </ul>
          </div>
        </div>
        <div id="nav-lp_content">
          <div id="nav-lp_section_0">
            <div class="shops-into">
              <div class="section-header">2家适用门店</div>
              <div class="shops">
                <div class="clearfix">
                  <div class="major">
                    <a href="javascript:;">
                      <div class="name">柯洛克机械式沉浸密室（小寨华旗店）</div>
                    </a>
                    <div class="line">
                      <div class="rate-stars">5分</div>
                    </div>
                    <div class="line">电话：<span>4009003690</span></div>
                    <div class="line">
                      地址:
                      雁塔区长安中路小寨地铁口C出口旁华旗国际商场4层（麦当劳左侧电梯口）
                    </div>
                    <div class="line">营业时间: 周一至周日10:00-24:00</div>
                  </div>
                  <div class="major">
                    <a href="javascript:;">
                      <div class="name">柯洛克机械式沉浸密室（小寨金莎店）</div>
                    </a>
                    <div class="line">
                      <div class="rate-stars">4.8分</div>
                    </div>
                    <div class="line">电话：<span>4009003690</span></div>
                    <div class="line">
                      地址: 雁塔区长安中路金莎国际商场7楼（美食城旁边）
                    </div>
                    <div class="line">营业时间: 周一至周日10:00-24:00</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div id="nav-lp_section_1">
            <div class="detail-into group-detail">
              <div class="detail-into_group">
                <div class="struct-detail">
                  <div class="section-header">团购详情</div>
                  <div class="body">
                    <div>
                      <div>
                        <div class="detail-tit"></div>
                        <table
                          width="100%"
                          cellpadding="0"
                          class="detail-table"
                        >
                          <thead>
                            <tr>
                              <th width="50%">名称</th>
                              <th width="25%">数量</th>
                              <th width="25%">价值</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th colspan="3">18选1, 不可重复选</th>
                            </tr>
                            <tr>
                              <td>【太原钟楼街店】命运之轮</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【太原钟楼街店】人偶の家</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【太原钟楼街店】灾厄纪元</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【太原钟楼街店】天火计划</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【太原食品街店】殊途</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【太原食品街店】极限实验</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【太原食品街店】深空危机</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【太原铜锣湾店】谍雨魂（剧情模式）</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【太原铜锣湾店】始作俑者（剧情模式）</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【太原铜锣湾店】后会无期（剧情模式）</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【西安小寨金莎店】人偶の家</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【西安小寨金莎店】血祭封印</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【西安小寨金莎店】殊途</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【西安小寨金莎店】天火计划</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【西安小寨华旗店】始作俑者</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【西安小寨华旗店】蝶与魂</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【西安小寨华旗店】后会无期</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr>
                              <td>【西安小寨华旗店】极限实验</td>
                              <td class="tc">1份</td>
                              <td class="tc">100.0元</td>
                            </tr>
                            <tr class="total">
                              <td></td>
                              <td class="tc">
                                总价
                                <br />
                                <strong>团购价</strong>
                              </td>
                              <td class="tc">
                                100元
                                <br />
                                <strong>89元</strong>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                        <div>
                          <p>
                            太原钟楼街店主题：命运之轮、人偶の家、灾厄纪元、天火计划
                          </p>
                          <p>太原食品街店主题：殊途、极限实验、深空危机</p>
                          <p>太原铜锣湾店主题：始作俑者、后会无期、谍雨魂</p>
                          <p>场次安排：11:00-22:00</p>
                          <p></p>
                          <p>
                            成都盐市口茂业店主题：人偶の家、血祭封印、殊途、天火计划
                          </p>
                          <p>
                            长沙五一广场新百店主题：人偶の家、殊途、天火计划
                          </p>
                          <p>
                            武汉俊华广场店主题：人偶の家、天火计划、殊途、极限实验、始作俑者
                          </p>
                          <p>武汉江汉路新长盛店主题：啡语奇妙夜</p>
                          <p>
                            西安小寨金莎店主题：人偶の家、血祭封印、殊途、天火计划
                          </p>
                          <p>
                            西安小寨华旗店主题：始作俑者、后会无期、蝶与魂、极限实验
                          </p>
                          <p>场次安排：10:00-22:00</p>
                          <p></p>
                          <p>游戏时长：1-1.5小时</p>
                          <p>
                            不可用时间：2019年12月31日至2020年1月1日、2020年1月25日至2020年1月31日（元旦、春节期间不可用）
                          </p>
                          <p>
                            主题体验至少2人同行，最多8人 提供免费桌游、游戏合影
                          </p>
                          <p>11月6日前购买的消费者按原有套餐内容进行接待。</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div id="nav-lp_section_2" class="struct-detail">
                  <div class="section-header">购买须知</div>
                  <div class="body">
                    <div>
                      <div>
                        <div class="detail-box">
                          <div class="purchase-notes">
                            <dl>
                              <dt>有效期</dt>
                              <dd>
                                <p>购买后30天内有效</p>
                              </dd>
                            </dl>
                            <dl>
                              <dt>除外日期</dt>
                              <dd>
                                <p>元旦、春节不可用</p>
                              </dd>
                            </dl>
                            <dl>
                              <dt>使用时间</dt>
                              <dd>
                                <p>10:00-22:00</p>
                              </dd>
                            </dl>
                            <dl>
                              <dt>预约信息</dt>
                              <dd>
                                <p>
                                  请您提前1小时预约，预约保留详情请您咨询商家，改约详情请您咨询商家
                                </p>
                              </dd>
                            </dl>
                            <dl>
                              <dt>适用人数</dt>
                              <dd>
                                <p>每张团购券最多1人使用</p>
                              </dd>
                            </dl>
                            <dl>
                              <dt>规则提醒</dt>
                              <dd>
                                <p>可与其他优惠同享</p>
                              </dd>
                            </dl>
                            <dl>
                              <dt>商家服务</dt>
                              <dd>
                                <p class="listitem">提供免费WiFi</p>
                                <p class="listitem">停车位信息详询商户</p>
                                <p class="listitem">免费提供储物柜</p>
                                <p class="listitem">
                                  免费提供wifi、热水，具体以商家提供为准
                                </p>
                              </dd>
                            </dl>
                            <dl>
                              <dt>温馨提示</dt>
                              <dd>
                                <p class="listitem">
                                  如需团购券发票，请您在消费时向商户咨询
                                </p>
                                <p class="listitem">
                                  为了保障您的权益，建议使用美团、点评网线上支付。若使用其他支付方式导致纠纷，美团、点评网不承担任何责任，感谢您的理解和支持！
                                </p>
                                <p class="listitem">
                                  美团点评温馨提醒：您在到店使用本商品/服务期间，如涉及潜水、骑马、滑雪、热气球、游艇等项目，请关注商家的安全提示内容，了解相关注意事项，做好安全防护措施，保护您的安全。
                                </p>
                              </dd>
                            </dl>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="struct-detail">
                  <div class="section-header">产品介绍</div>
                  <div class="body">
                    <div class="detail-content">
                      <div>
                        <div>
                          <div>
                            <p>【玩家须知】</p>
                            <p>1 使用时间：</p>
                            <p>
                              店铺正常营业期间均可使用，节假日及周末请提前一天预约；非节假日周末可提前1小时预约即可。
                            </p>
                            <p>
                              <br />
                            </p>
                            <p>2 使用规则：</p>
                            <p>
                              本团购仅限于1人使用，团购请注意有效期，预期作废不予补发。
                            </p>
                            <p>
                              <br />
                            </p>
                            <p>3 适用门店：</p>
                            <p>柯洛克机械式沉浸密室【西安小寨华旗店】</p>
                            <p>【极限实验】</p>
                            <p>【始作俑者】</p>
                            <p>【蝶与魂】</p>
                            <p>【后会无期】</p>
                            <p>柯洛克机械式沉浸密室【西安小寨金莎店】</p>
                            <p>【人偶の家】</p>
                            <p>【殊途】</p>
                            <p>【血祭封印】</p>
                            <p>【天火计划】</p>
                            <p>柯洛克机械式沉浸密室【太原食品街店】</p>
                            <p>【深空危机】</p>
                            <p>【极限实验】</p>
                            <p>【殊途】</p>
                            <p>柯洛克机械式沉浸密室【太原钟楼街店】</p>
                            <p>【啡语奇妙夜】</p>
                            <p>【天火计划】</p>
                            <p>【人偶の家】</p>
                            <p>【灾厄纪元】</p>
                            <p>柯洛克机械式沉浸密室【太原铜锣湾店】</p>
                            <p>【蝶与魂】</p>
                            <p>【后会无期】</p>
                            <p>【始作俑者】</p>
                          </div>
                        </div>
                      </div>
                    </div>
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
                      <div
                        :class="{ label_active: lab_1 }"
                        @click="xuanxiang_1"
                      >
                        全部(30)
                      </div>
                      <div
                        :class="{ label_active: lab_2 }"
                        @click="xuanxiang_2"
                      >
                        体验很棒(8)
                      </div>
                      <div
                        :class="{ label_active: lab_3 }"
                        @click="xuanxiang_3"
                      >
                        体验很棒(8)
                      </div>
                      <div
                        :class="{ label_active: lab_4 }"
                        @click="xuanxiang_4"
                      >
                        环境很好(7)
                      </div>
                      <div
                        :class="{ label_active: lab_5 }"
                        @click="xuanxiang_5"
                      >
                        服务热情(7)
                      </div>
                      <div
                        :class="{ label_active: lab_6 }"
                        @click="xuanxiang_6"
                      >
                        交通便利(7)
                      </div>
                      <div
                        :class="{ label_active: lab_7 }"
                        @click="xuanxiang_7"
                      >
                        刺激好玩(5)
                      </div>
                      <div
                        :class="{ label_active: lab_8 }"
                        @click="xuanxiang_8"
                      >
                        干净整洁(5)
                      </div>
                      <div
                        :class="{ label_active: lab_9 }"
                        @click="xuanxiang_9"
                      >
                        价格实惠(5)
                      </div>
                      <div
                        :class="{ label_active: lab_10 }"
                        @click="xuanxiang_10"
                      >
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
                    <div
                      class="comment-main"
                      v-for="(p, i) of pinglun"
                      :key="i"
                    >
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
                              <div
                                style="
                                  width: 200px;
                                  float: left;
                                  margin-top: 10px;
                                "
                              >
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
                                <img
                                  style="width: 90%"
                                  :src="p.images"
                                  alt=""
                                />
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
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
.pc-gallery .piv .piv-album .album-ls .album-ul .img-item{
    width: 90px;
    height: 50px;
    float: left;
    margin-right: 5px;
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
    -moz-osx-font-smoothing: grayscale;
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
    background: url(/KTV-img/27.png) 50% no-repeat;
    background-size: 100%;
    border-radius: 4px;
}
 .pc-gallery{
    float: left;
	margin-right: 20px;
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
  width: 1190px;
  height: auto;
  margin-top: 13px;
  float: left;
  margin-left: 60px;
  padding-bottom: 15.5px;
  border-bottom: 1px solid #e5e5e5;
  position: relative;
}
.comment-item .comment-rel .comment-des .deal-name a:last-child {
  display: block;
  float: right;
  margin-right: 50px;
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
  width: 1190px;
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
  width: 1190px;
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
  width: 1190px;
  height: auto;
  margin-top: 34px;
}
body,
html {
  background-color: #f0f0f0;
  font-size: 14px;
}
.container {
  margin: 0 auto;
  padding: 20px 0;
  box-sizing: border-box;
}
.pictures {
  margin-right: 1rem;
}
.pictures > img {
  width: 400px;
}
.card {
  margin: 0 auto;
  padding: 2rem;
  width: 1190px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 1rem;
  box-shadow: 0 0.5rem 1.5rem 0 rgba(0, 0, 0, 0.1);
  align-items: flex-start;
}
.flex {
  display: flex;
}
.major {
  flex: 4;
}
.card .one-line {
  font-size: 26px;
  font-weight: 700;
}
.subtitle {
  padding: 1rem 0;
  font-size: 20px;
  font-weight: 400;
  color: #222;
  border-bottom: 1px solid #ddd;
}
.item {
  padding-top: 2rem;
}
.key {
  width: 10rem;
}
.price {
  color: orange;
}
.flexs {
  display: flex;
  align-items: flex-end;
}
.king {
  font-size: 38px;
  line-height: 38px;
}
.deprecated {
  color: #999;
  margin-left: 1rem;
}
.compared {
  color: #fa952f;
  background-color: #fef4ea;
  margin-left: 1rem;
}
.sold {
  color: #666;
}
.buy {
  padding: 0 15px;
  height: 3.5rem;
  border: none;
  color: #fff;
  font-size: 18px;
  line-height: 3rem;
  text-align: center;
  border-radius: 6rem;
  background-color: orange;
}
button {
  cursor: pointer;
  outline: 0;
}
.promises {
  color: #666;
}
.promise {
  padding-right: 1rem;
  margin-right: 1rem;
  border-right: 1px solid #ddd;
}
.card .promises .promise:last-child {
  border-right: none;
}
.nav-lp {
  position: sticky;
  z-index: 99;
  top: -1px;
  padding-bottom: 30px;
  margin: 40px 0;
  display: -ms-flexbox;
  display: flex;
  transition: background 0.2s ease, width 0.2s ease, box-shadow 0.2s ease;
}
.nav-lp_tab {
  margin: 0 auto;
  width: 1190px;
}
.nav-lp_tab ul {
  border-bottom: 2px solid #e5e5e5;
}
.clearfix {
  display: block;
  zoom: 1;
}
li,
ol,
ul {
  list-style: none;
}
.clearfix::after {
  content: "";
  display: block;
  height: 0;
  clear: both;
  visibility: hidden;
}
.nav-lp_tab ul li.is-active {
  color: #31bbac;
  /* border-bottom: 6px solid #31BBAC; */
}
.nav-lp_tab ul li {
  float: left;
  padding: 26px 0 19px;
  margin-right: 21px;
  transition: color 0.3s ease, border-color 0.3s ease;
  border-color: #fff;
}
.nav-lp a {
  width: 0;
  color: #222;
}
a,
a:hover {
  text-decoration: none;
}
#nav-lp_content {
  margin: 0 auto;
  width: 1190px;
}
#nav-lp_section_0 {
  margin-top: -30px;
}
.shops-into {
  margin: 0 auto;
  width: 1190px;
}
.section-header {
  margin: 2rem 0 1rem;
  color: #222;
  font-size: 20px;
  font-weight: 700;
}
.shops {
  padding: 2rem;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 0.3rem;
}
.shops .major {
  padding-right: 10px;
  margin-bottom: 1rem;
  float: left;
  width: 33%;
  box-sizing: border-box;
}
.shops .name {
  font-size: 16px;
  color: #222;
  line-height: 2rem;
}
.shops .line {
  font-size: 14px;
  color: #666;
  line-height: 2rem;
}
.body {
  font-size: 12px;
  color: #666;
}
.struct-detail .detail-tit {
  font-size: 1.2rem;
  font-weight: 700;
}
.body .detail-table {
  margin-top: 10px;
}
.body .detail-box,
.body .detail-content,
.body .detail-table {
  padding: 0 2rem;
  border: 1px solid #ddd;
  border-radius: 0.3rem;
  background-color: #fff;
  font-size: 14px;
}
.body {
  line-height: 20px;
}
.body .detail-table td.tc {
  text-align: right;
}
.body .detail-table td,
.body .detail-table th {
  padding: 1rem 0;
}
.body .detail-table tbody tr {
  border-top: 1px solid red;
}
.body .detail-table th:first-child {
  text-align: left;
}
.body .detail-table th {
  text-align: right;
  color: #111;
  font-weight: 700;
}
.body .detail-table th {
  text-align: center;
  color: #111;
}
.body .detail-table tr.total .tc {
  color: #999;
  text-decoration: line-through;
}
.body .detail-table tr.total .tc strong {
  margin-top: 0.5rem;
  color: #06c1ae;
  display: inline-block;
}
.detail-table + div {
  margin-top: 1rem;
}
.body .detail-box {
  padding-top: 1rem;
  padding-bottom: 1rem;
}
.body .detail-box dl {
  margin-top: 1rem;
}
.purchase-notes dl {
  display: flex;
}
.body .detail-box dl dt {
  display: inline-block;
  width: 6rem;
  color: #222;
}
.body .detail-box dl dd {
  display: inline-block;
  margin-left: 1rem;
  color: #666;
  font-size: 12px;
}
.purchase-notes dl dd {
  flex: 1 !important;
}
.body .detail-content {
  padding-top: 2rem;
  padding-bottom: 2rem;
  color: #333;
  font-size: 14px;
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
	  pinglun: [],
	  fd:false,
      sy:"background-image:url(/KTV-img/18.jpg);border:1px solid #fff",
      dy:"background-image:url(/KTV-img/18.jpg);border:1px solid #fff",
      de:"background-image:url(/KTV-img/8.jpg);border:1px solid #fff",
      ds:"background-image:url(/KTV-img/6.jpg);border:1px solid #fff",
      fo:"background-image:url(/KTV-img/11.jpg);border:1px solid #fff"
    }
  },
  methods: {
	   foz(){
      this.sy = this.fo
    },
    dsz(){
      this.sy = this.ds
    },
    dez(){
      this.sy = this.de
    },
    dyz(){
      this.sy = this.dy
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
    this.axios.get("/pinglun").then((result) => {
      this.pinglun = result.data;
      console.log(this.pinglun);
	});
	
  },
};
</script>