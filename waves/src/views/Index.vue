<template>
  <div>
	<!-- 表头 -->
	<my-header></my-header>
	<router-view/>
    <!-- 头部 -->
    <div class="header">
      <!-- 全部分类 -->
      <div style="position:relative;">
        <div class="header_left">
          <ul>
            <p class="header_left1">全部分类</p>
            <li @mouseover="meishi_pop1" @mouseout="meishi_pop2">
              <span
                id="icon"
                style="background: url(img/mt/mt-header/美食.png)"
              ></span
              ><span class="index_text"><a href="#">美食</a></span>
            </li>
            <li @mouseover="waimai_pop1" @mouseout="waimai_pop2">
              <span
                id="icon"
                style="background: url(img/mt/mt-header/waimai.png)"
              ></span
              ><span class="index_text"><a href="#">外卖</a></span>
            </li>
            <li @mouseover="jiudian_pop1" @mouseout="jiudian_pop2">
              <span
                id="icon"
                style="background: url(img/mt/mt-header/酒店.png)"
              ></span
              ><span class="index_text"><a href="#">酒店
                  <span class="HOT">HOT</span>
                </a></span
              >
            </li>
            <li @mouseover="minsu_pop1" @mouseout="minsu_pop2">
              <span
                id="icon"
                style="background: url(img/mt/mt-header/民宿.png)"
              ></span
              ><span class="index_text"><a href="#">民宿</a></span>
            </li>
            <li @mouseover="maoyan_pop1" @mouseout="maoyan_pop2">
              <span
                id="icon"
                style="background: url(img/mt/mt-header/maoyan.png)"
              ></span
              ><span class="index_text"><a href="#">猫眼电影</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/机票火车票.png)"
              ></span
              ><span class="index_text"><a href="#">机票/火车票</a></span>
            </li>
            <li >
              <span
                id="icon"
                style="background: url(img/mt/mt-header/KTV.png)"
              ></span
              ><span class="index_text"><a href="#">休闲娱乐 / KTV</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/生活服务.png)"
              ></span
              ><span class="index_text"><a href="#">生活服务</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/丽人美发.png)"
              ></span
              ><span class="index_text"><a href="#">丽人 / 美发 / 医学美容</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/结婚登记.png)"
              ></span
              ><span class="index_text"><a href="#">结婚 / 婚纱摄影 / 婚宴</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/亲子.png)"
              ></span
              ><span class="index_text"><a href="#">亲子 / 儿童乐园 / 幼教</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/运动健身.png)"
              ></span
              ><span class="index_text"><a href="#">运动健身 / 健身中心</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/家装建材.png)"
              ></span
              ><span class="index_text"><a href="#">家装 / 建材 / 家居</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/学习培训2.png)"
              ></span
              ><span class="index_text"><a href="#">学习培训 / 音乐培训</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/医疗健康.png)"
              ></span
              ><span class="index_text"><a href="#">医疗健康 / 宠物 / 爱车</a></span>
            </li>
            <li>
              <span
                id="icon"
                style="background: url(img/mt/mt-header/酒吧.png)"
              ></span
              ><span class="index_text"><a href="#">酒吧 / 密室逃脱</a></span>
            </li>
          </ul>
        </div>
      <!--    分类弹窗    -->
        <!-- 美食 -->
        <div class="left_tan" v-show="meishiShow" @mouseover="meishi_pop1" @mouseout="meishi_pop2">
          <div class="left_nav leibie_tan">
            <a href="#" class="leibie_a">美食</a>
            <a href="#" class="gengduo_tan">更多></a>
          </div>
          <div class="left_nav tan_title">
            <a href="#">代金券</a>
            <a href="#">甜点饮品</a>
            <a href="#">火锅</a>
            <a href="#">自助餐</a>
            <a href="#">小吃快餐</a>
            <a href="#">日韩料理</a>
            <a href="#">西餐</a>
            <a href="#">聚餐宴请</a>
            <a href="#">烧烤烤肉</a>
            <a href="#">东北菜</a>
            <a href="#">川湘菜</a>
            <a href="#">江浙菜</a>
            <a href="#">香锅烤鱼</a>
            <a href="#">粤港菜</a>
            <a href="#">中式烧烤/烤串</a>
            <a href="#">西北菜</a>
            <a href="#">咖啡酒吧茶馆</a>
            <a href="#">云贵菜</a>
            <a href="#">东南亚菜</a>
            <a href="#">海鲜</a>
            <a href="#">素食</a>
            <a href="#">台湾/客家菜</a>
            <a href="#">创意菜</a>
            <a href="#">汤/粥/炖菜</a>
            <a href="#">蒙餐</a>
            <a href="#">新疆菜</a>
            <a href="#">其他美食</a>
            <a href="#">京菜鲁菜</a>
          </div>
        </div>
        <!-- 外卖 -->
        <div class="left_tan" v-show="waimaiShow" @mouseover="waimai_pop1" @mouseout="waimai_pop2">
          <div class="left_nav leibie_tan">
            <a href="#" class="leibie_a">外卖</a>
            <a href="#" class="gengduo_tan">更多></a>
          </div>
          <div class="left_nav tan_title">
            <a href="#">美团外卖</a>
            
          </div>
        </div>
        <!-- 酒店 -->
        <div class="left_tan" v-show="jiudianShow" @mouseover="jiudian_pop1" @mouseout="jiudian_pop2">
          <div class="left_nav leibie_tan">
            <a href="#" class="leibie_a">酒店星级</a>
            <a href="#" class="gengduo_tan">更多></a>
          </div>
          <div class="left_nav tan_title">
            <a href="#">经济型</a>
            <a href="#">舒适/三星</a>
            <a href="#">高档/四星</a>
            <a href="#">豪华/五星</a>
          </div>
        </div>
        <!-- 民宿 -->
        <div class="left_tan" v-show="minsuShow" @mouseover="minsu_pop1" @mouseout="minsu_pop2">
          <div class="left_nav leibie_tan">
            <a href="#" class="leibie_a">热门城市</a>
            <a href="#" class="gengduo_tan">更多></a>
          </div>
          <div class="left_nav tan_title">
            <a href="#">上海</a>
            <a href="#">成都</a>
            <a href="#">北京</a>
            <a href="#">重庆</a>
            <a href="#">南京</a>
            <a href="#">杭州</a>
            <a href="#">广州</a>
            <a href="#">西安</a>
            <a href="#">武汉</a>
            <a href="#">厦门</a>
            <a href="#">长沙</a>
            <a href="#">青岛</a>
            <a href="#">深圳</a>
            <a href="#">粤港菜</a>
            <a href="#">天津</a>
            <a href="#">苏州</a>
          </div>
          <div class="left_nav leibie_tan">
            <a href="#" class="leibie_a">热门房源</a>
            <a href="#" class="gengduo_tan">更多></a>
          </div>
          <div class="left_nav tan_title">
            <a href="#">复式Loft</a>
            <a href="#">别墅</a>
          </div>
        </div>
        <!-- 猫眼电影 -->
        <div class="left_tan" v-show="maoyanShow" @mouseover="maoyan_pop1" @mouseout="maoyan_pop2">
          <div class="left_nav leibie_tan">
            <a href="#" class="leibie_a">热映电影</a>
            <a href="#" class="gengduo_tan">更多></a>
          </div>
          <div class="left_nav tan_title">
            <a href="#">我和我的家乡</a>
            <a href="#">姜子牙</a>
            <a href="#">金刚川</a>
            <a href="#">夺冠</a>
            <a href="#">一点就到家</a>
            <a href="#">喜宝</a>
            <a href="#">七号房的礼物</a>
            <a href="#">急先锋</a>
            <a href="#">天道王</a>
            <a href="#">八佰</a>
          </div>
          <div class="left_nav leibie_tan">
            <a href="#" class="leibie_a">热门影院</a>
            <a href="#" class="gengduo_tan">更多></a>
          </div>
          <div class="left_nav tan_title">
            <a href="#">万达影城</a>
            <a href="#">大地影院</a>
            <a href="#">文投国际影城</a>
            <a href="#">CGV影城</a>
            <a href="#">横店电影城</a>
            <a href="#">太平洋电影城</a>
            <a href="#">曲江国际影城</a>
            <a href="#">橙天嘉禾影城</a>
            <a href="#">奥斯卡国际影城</a>
            <a href="#">博纳国际影城</a>
          </div>
        </div>
        
      </div>
      
      <!-- 头部右边 -->
      <div class="header_right">
        <div class="header_right1">
          <ul class="header_right1-1">
            <li><a href="#">美团外卖</a></li>
            <li><a href="#">猫眼电影</a></li>
            <li><a href="#">美团酒店</a></li>
            <li><a href="#">民宿/公寓</a></li>
            <li><a href="#">商家入驻</a></li>
            <li><a href="#">美团公益</a></li>
          </ul>
        </div>
   
        <!-- 轮播图，注册 -->
        <div class="header_right2">
          <div class="header_right2-1">
            <a href="#"
              ><div
                class="header_right2-1_"
                style="background-image: url(img/mt/mt-header/carousel1.jpg)"
              ></div
            ></a>
          </div>
          <div class="">
            <a href="#"
              ><div
                class="header_right2-2"
                style="background-image: url(img/mt/mt-header/xssh.jpg)"
              ></div
            ></a>
          </div>
          <div class="header_right2-3">
            <div class="header_right2-3_">
              <div class="header_right2-3_1"></div>
              <p class="header_right2-3_2">Hi！你好</p>
              <a class="header_right2-3_3" href="/register">注册</a><br />
              <a class="header_right2-3_4" href="/login">立即登录</a>
            </div>
          </div>
          <div class="">
            <a href="#"
              ><div
                class="header_right2-4"
                style="background-image: url(img/mt/mt-header/zjd.png)"
              ></div
            ></a>
          </div>
          <div class="">
            <a href="#"
              ><div
                class="header_right2-5"
                style="background-image: url(img/mt/mt-header/zzs.jpg)"
              ></div
            ></a>
          </div>
          <div class="">
            <a href="#"
              ><div
                class="header_right2-6"
                style="background-image: url(img/mt/mt-header/wssj.jpg)"
              ></div
            ></a>
          </div>
          <div class="header_right2-7">
            <div class="">
              <img class="header_right2-7_1" src="img/mt/mt-header/ma.png" />
            </div>
            <p>美团APP手机版</p>
            <p>
              <span style="color: red">1元起</span>
              <span>吃喝玩乐</span>
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- 猫眼电影 -->
    <div class="imax media">
      <!--  -->
      <div class="imax1">
        <ul>
          <li class="imax1_1" >猫眼电影</li>
          <li class="imax1_2" @mouseover="doing_pop1">
            正在热映
            <span class="sanjiao" v-show="doingShow"></span>
          </li>
          <li class="imax1_3" @mouseover="will_pop1">即将上映
            <span class="sanjiao" v-show="willShow"></span>
          </li>
          <li class="quanbu">
            <a href="#">
              <span style="color: #fff">全部</span>
              <span style="color: #fff" class="">&gt;</span>
            </a>
          </li>
        </ul>
      </div>
      <div class="media index_hidden">
        <div class="imax2">
          <a href="#">
            <div
              class="imax2_1"
              style="background-image: url(img/mt/mt-imax/八佰.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>9.2</span>
                </p>
                <span class="imax2_s1">八佰</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
          <a href="#">
            <div
              class="imax2_2"
              style="background-image: url(img/mt/mt-imax/信条.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>8.4</span>
                </p>
                <span class="imax2_s1">信条</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
          <a href="#">
            <div
              class="imax2_3"
              style="background-image: url(img/mt/mt-imax/盗梦空间.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>9.1</span>
                </p>
                <span class="imax2_s1">盗梦空间</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
          <a href="#">
            <div
              class="imax2_4"
              style="background-image: url(img/mt/mt-imax/我在时间尽头等你.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>7.9</span>
                </p>
                <span class="imax2_s1">我在时间尽头...</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
          <a href="#">
            <div
              class="imax2_5"
              style="background-image: url(img/mt/mt-imax/小妇人.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>8.8</span>
                </p>
                <span class="imax2_s1">小妇人</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
              <a href="#">
            <div
              class="imax2_1"
              style="background-image: url(img/mt/mt-imax/八佰.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>9.2</span>
                </p>
                <span class="imax2_s1">八佰</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
          <a href="#">
            <div
              class="imax2_2"
              style="background-image: url(img/mt/mt-imax/信条.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>8.4</span>
                </p>
                <span class="imax2_s1">信条</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
          <a href="#">
            <div
              class="imax2_3"
              style="background-image: url(img/mt/mt-imax/盗梦空间.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>9.1</span>
                </p>
                <span class="imax2_s1">盗梦空间</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
          <a href="#">
            <div
              class="imax2_4"
              style="background-image: url(img/mt/mt-imax/我在时间尽头等你.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>7.9</span>
                </p>
                <span class="imax2_s1">我在时间尽头...</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
          <a href="#">
            <div
              class="imax2_5"
              style="background-image: url(img/mt/mt-imax/小妇人.jpg)"
            >
              <div class="">
                <p class="imax2_p1">
                  观众评
                  <span>8.8</span>
                </p>
                <span class="imax2_s1">小妇人</span>
                <span class="imax2_s2">购票</span>
              </div>
            </div></a>
        </div>
      </div>
      
    </div>
    <!-- 推荐名宿 -->
    <div class="minsu media">
      <div
        class="minsu1"
        style="background: linear-gradient(to right,rgb(243, 184, 74) 2%,rgb(242, 197, 69) 97%) rgb(243, 182, 74);">
        <ul>
          <li class="minsu1_1">推荐民宿</li>
          <li class="minsu1_2" @mouseover="zhengzhou_pop">
            郑州
            <span class="sanjiao" v-show="zhengzhouShow"></span>
          </li>
          <li class="minsu1_2" @mouseover="luoyang_pop">洛阳
            <span class="sanjiao" v-show="luoyangShow"></span>
          </li>
          <li class="minsu1_2">开封</li>
          <li class="minsu1_2">宜昌</li>
          <li class="minsu1_2">咸阳</li>
          <li class="minsu1_2">新乡</li>
          <li class="minsu1_2">恩施土家族苗族自治州</li>
          <li class="minsu1_2">南阳</li>
          <li class="minsu1_2">襄阳</li>
          <li class="minsu1_2">焦作</li>
          <li class="quanbu">
            <a href="#">
              <span style="color: #fff">全部</span>
              <span style="color: #fff" class="">&gt;</span>
            </a>
          </li>
        </ul>
      </div>
      <!-- 郑州 -->
      <div class="minsu2" v-show="zhengzhouShow">
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/01.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                曼哈顿•青春大床房05 姚寨地铁口 近肿瘤医院、CBD 月租6折
              </p>
              <p class="minsu2_2_2">
                <span>整套3居室·</span>
                <span>可住2人|</span>
                <span>曼哈顿广场</span>
              </p>
              <p class="minsu2_2_3">￥119</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/02.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                医学院地铁口旁 一附院 铁六中 附近特惠单间
              </p>
              <p class="minsu2_2_2">
                <span>整套2居室·</span>
                <span>可住2人|</span>
                <span>郑州大学</span>
              </p>
              <p class="minsu2_2_3">￥35</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/03.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                【Z先生简约轻奢民宿】黄科大/橄榄城/落地窗/近地铁/月光智能影院
              </p>
              <p class="minsu2_2_2">
                <span>整套1居室·</span>
                <span>可住2人|</span>
                <span>橄榄城</span>
              </p>
              <p class="minsu2_2_3">￥168</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/04.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                二七广场火车站，大卫城，大上海，人民公园，百货大楼，地铁1号线H口，金博大城特惠大床房大床房
              </p>
              <p class="minsu2_2_2">
                <span>整套5居室·</span>
                <span>可住2人|</span>
                <span>大商金博大</span>
              </p>
              <p class="minsu2_2_3">￥59</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/05.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                现代简约，泰国进口乳胶床垫/二里岗地铁口/近二七广场/大润发/紫金山公园/动物园/曼哈顿
              </p>
              <p class="minsu2_2_2">
                <span>整套1居室·</span>
                <span>可住3人|</span>
                <span>富都生活广场</span>
              </p>
              <p class="minsu2_2_3">￥110</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/06.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                地铁1号线医学院地铁口 火车站附近阳光大床房
              </p>
              <p class="minsu2_2_2">
                <span>整套1居室·</span>
                <span>可住2人|</span>
                <span>郑州大学</span>
              </p>
              <p class="minsu2_2_3">￥59</p>
            </div>
          </div>
        </a>
      </div>
      <!-- 洛阳 -->
      <div class="minsu2" v-show="luoyangShow">
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/03.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                曼哈顿•青春大床房05 姚寨地铁口 近肿瘤医院、CBD 月租6折
              </p>
              <p class="minsu2_2_2">
                <span>整套3居室·</span>
                <span>可住2人|</span>
                <span>曼哈顿广场</span>
              </p>
              <p class="minsu2_2_3">￥119</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/05.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                医学院地铁口旁 一附院 铁六中 附近特惠单间
              </p>
              <p class="minsu2_2_2">
                <span>整套2居室·</span>
                <span>可住2人|</span>
                <span>郑州大学</span>
              </p>
              <p class="minsu2_2_3">￥35</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/01.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                【Z先生简约轻奢民宿】黄科大/橄榄城/落地窗/近地铁/月光智能影院
              </p>
              <p class="minsu2_2_2">
                <span>整套1居室·</span>
                <span>可住2人|</span>
                <span>橄榄城</span>
              </p>
              <p class="minsu2_2_3">￥168</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/06.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                二七广场火车站，大卫城，大上海，人民公园，百货大楼，地铁1号线H口，金博大城特惠大床房大床房
              </p>
              <p class="minsu2_2_2">
                <span>整套5居室·</span>
                <span>可住2人|</span>
                <span>大商金博大</span>
              </p>
              <p class="minsu2_2_3">￥59</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/04.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                现代简约，泰国进口乳胶床垫/二里岗地铁口/近二七广场/大润发/紫金山公园/动物园/曼哈顿
              </p>
              <p class="minsu2_2_2">
                <span>整套1居室·</span>
                <span>可住3人|</span>
                <span>富都生活广场</span>
              </p>
              <p class="minsu2_2_3">￥110</p>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="minsu2_1"
              style="background-image: url(img/mt/mt-minsu/02.jpg)"
            ></div>
            <div class="minsu2_2">
              <p class="minsu2_2_1">
                地铁1号线医学院地铁口 火车站附近阳光大床房
              </p>
              <p class="minsu2_2_2">
                <span>整套1居室·</span>
                <span>可住2人|</span>
                <span>郑州大学</span>
              </p>
              <p class="minsu2_2_3">￥59</p>
            </div>
          </div>
        </a>
      </div>
    </div>
    <!-- 猜你喜欢 -->
    <div class="love media">
      <div
        class="love1"
        style="
          background: linear-gradient(to right,rgb(88, 174, 221) 2%,rgb(66, 191, 205) 97%) rgb(88, 174, 221);">
        <ul>
          <li class="love1_1">猜你喜欢</li>
          <li class="love1_2">
            为你甄选最合适的
            <span class="sanjiao"></span>
          </li>
        </ul>
      </div>
      <div class="love2" style="padding: 10px 10px 20px">
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/01.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="杨翔豆皮涮牛肚（西咸万象城店）">
                杨翔豆皮涮牛肚（西咸万象城店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>818个评价</span>
              </div>
              <div class="love2_4">三桥</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">89.0</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/02.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="冒之屋">冒之屋</div>
              <div class="love2_3">
                <div></div>
                <span>728个评价</span>
              </div>
              <div class="love2_4">未央路</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">19.9</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/03.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="金迈源自助涮烤王">
                金迈源自助涮烤王
              </div>
              <div class="love2_3">
                <div></div>
                <span>18695个评价</span>
              </div>
              <div class="love2_4">建工路</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">54.9</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/04.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="拉菲达牛排自助（赛格国际店）">
                拉菲达牛排自助（赛格国际店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>18804个评价</span>
              </div>
              <div class="love2_4">小寨</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">66.0</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/05.png)"
            ></div>
            <div class="box">
              <div class="love2_2" title="阿香米线（中贸广场店）">
                阿香米线（中贸广场店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>223个评价</span>
              </div>
              <div class="love2_4">南稍门</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">28.1</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/06.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="成都钢管厂五区小郡肝串串香（半坡店）">
                成都钢管厂五区小郡肝串串香（半坡店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>392个评价</span>
              </div>
              <div class="love2_4">纺织城</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">85.0</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/07.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="螺小胖螺蛳粉（凤城一路店）">
                螺小胖螺蛳粉（凤城一路店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>72个评价</span>
              </div>
              <div class="love2_4">未央路</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">13.8</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/08.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="御品轩（锦园店）">
                御品轩（锦园店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>1749个评价</span>
              </div>
              <div class="love2_4">南稍门</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">29.9</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/09.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="勇利赵家烤肉坊（丈八路店）">
                勇利赵家烤肉坊（丈八路店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>1936个评价</span>
              </div>
              <div class="love2_4">明德门</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">93.0</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/10.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="聚海国际健身俱乐部">
                聚海国际健身俱乐部
              </div>
              <div class="love2_3">
                <div></div>
                <span>2636个评价</span>
              </div>
              <div class="love2_4">大寨路</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">38.0</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/11.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="哆啦乐图（钟楼店）">
                哆啦乐图（钟楼店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>12182个评价</span>
              </div>
              <div class="love2_4">钟楼/鼓楼</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">35.0</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/12.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="东东包（盛龙广场店）">
                东东包（盛龙广场店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>2253个评价</span>
              </div>
              <div class="love2_4">未央路</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">5.0</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a class="yinchang" href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/13.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="百富烤霸（北大街店）">
                百富烤霸（北大街店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>2297个评价</span>
              </div>
              <div class="love2_4">钟楼/鼓楼</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">6.8</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a class="yinchang" href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/14.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="纯萃盲人推拿（文景小区店）">
                纯萃盲人推拿（文景小区店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>82个评价</span>
              </div>
              <div class="love2_4">明光路</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">49.0</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
        <a class="yinchang" href="#">
          <div>
            <div
              class="love2_1"
              style="background-image: url(img/mt/mt-love/15.jpg)"
            ></div>
            <div class="box">
              <div class="love2_2" title="千家粗粮王（盛龙广场店）">
                千家粗粮王（盛龙广场店）
              </div>
              <div class="love2_3">
                <div></div>
                <span>1704个评价</span>
              </div>
              <div class="love2_4">未央路</div>
              <div class="love2_5">
                <span class="yuan">￥</span>
                <span class="price">67.1</span>
                <span class="qi">起</span>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
    <!-- 美团导航 -->
	  <my-footer0></my-footer0>
	  <!-- 页脚 -->
	  <my-footer1></my-footer1>
	  <my-footer2></my-footer2>
  </div>
</template>

<script>
export default {
  data(){
    return{
      meishiShow:false,
      waimaiShow:false,
      jiudianShow:false,
      minsuShow:false,
      maoyanShow:false,
      doingShow:true,
      willShow:false,
      zhengzhouShow:true,
      luoyangShow:false
    }
  },
  methods:{
    meishi_pop1(){
      this.meishiShow=true;
    },
    meishi_pop2(){
      this.meishiShow=false;
    },
    waimai_pop1(){
      this.waimaiShow=true;
    },
    waimai_pop2(){
      this.waimaiShow=false;
    },
    jiudian_pop1(){
      this.jiudianShow=true;
    },
    jiudian_pop2(){
      this.jiudianShow=false;
    },
    minsu_pop1(){
      this.minsuShow=true;
    },
    minsu_pop2(){
      this.minsuShow=false;
    },
    maoyan_pop1(){
      this.maoyanShow=true;
    },
    maoyan_pop2(){
      this.maoyanShow=false;
    },
    doing_pop1(){
      this.doingShow=true;
      this.willShow=false;
    },
    will_pop1(){
      this.doingShow=false;
      this.willShow=true;
    },
    zhengzhou_pop(){
      this.zhengzhouShow=true;
      this.luoyangShow=false
    },
    luoyang_pop(){
      this.zhengzhouShow=false;
      this.luoyangShow=true
    }
  }
}
</script>

<style scoped>
@media (min-width: 576px) {
  .media,
  .header {
    width: 960px;
  }
  .header_right {
    width: 725px;
  }
  .header_right2-1 {
    width: 470px;
  }
  .header_right2-4,
  .header_right2-5 {
    width: 230px;
  }
  .header_right2_2 {
    display: none;
  }
  .header_right2_2,
  .header_right2_6,
  .yinchang {
    display: none;
  }
}
@media (min-width: 992px) {
  .media,
  .header {
    width: 1190px;
    margin: 0 auto;
  }
  .header_right {
    width: 960px;
  }
  .header_right2-1 {
    width: 550px;
  }
  .header_right2-4,
  .header_right2-5 {
    width: 270px;
  }
  .header_right2-2,
  .header_right2-6,
  .yinchang {
    display: block;
  }
}
body::after {
  content: "";
  display: block;
  clear: both;
}
.header a:hover {
  color: #222;
  font-weight: 700;
}
.header {
  height: 470px;
  display: flex;
  display: block;
  margin: 0 auto;
}
.header ul {
  background: #fff;
}
.header_left {
  width: 228px;
  height: 431px;
  border: 1px solid #e5e5e5;
  float: left;
}
.header_left > ul li {
  position: relative;
}
.header_left > ul li > .index_text {
  width: 142px;
  height: 22px;
  text-align: left;
  line-height: 18px;
  position: absolute;
}
.header_left > ul li > #icon {
  display: inline-block;
  width: 16px;
  height: 16px;
  background-position: 50% !important ;
  background-size: cover !important;
  background-repeat: no-repeat !important;
  margin-right: 11px;
}

.header_left > ul li{
  height: 26px;
  padding: 2px 12px;
  box-sizing: border-box;
  font-size: 13px;
  color: #646464;
}
.header_left > ul li:hover{
  background: #fceed0;
}
.header_left1 {
  height: 34px;
  padding-top: 15px;
  font-size: 16px;
  color: #222 ;
  margin-left: -1px ;
  margin-right: -1px ;
  font-weight: bold;
  position: relative;
  margin-top: -35px;
  border: 1px solid #e5e5e5;
  border-bottom: 0;
  padding-left: 12px;
}
.HOT {
  background: linear-gradient(to bottom right, #fdd000, #ffbd00);
  font-size: 12px;
  color: #222;
  border-radius: 10px;
  padding: 0 7px;
  transform: scale(0.9);
  position: relative;
  margin-top: 10px;
}
.header_right {
  float: left;
}
.header_right1 {
  height: 35px;
  background: #fff;
  position: relative;
  margin-top: -35px;
}
.header_right1-1 {
  width: 640px;
  display: flex;
  justify-content: space-around;
  margin-left: 20px;
}
.header_right1-1 li > a {
  color: #222;
  font-weight: 700;
  font-size: 16px;
  margin: 0 20px;
}
.header_right2 {
  margin-top: 10px;
  background: #fff;
}
.header_right2-1 {
  height: 240px;
  float: left;
  margin-left: 10px;
}
.header_right2-1_ {
  width: 100%;
  height: 100%;
  background-size: cover;
  background-position: 50%;
  background-repeat: no-repeat;
}
.header_right2-2 {
  width: 150px;
  height: 240px;
  float: left;
  margin: 0 10px;
  background-size: cover;
  background-position: 50%;
  background-repeat: no-repeat;
}
.header_right2-3 {
  width: 230px;
  height: 240px;
  float: left;
  background: #fff;
}
.header_right2-3_ {
  padding-top: 30px;
  position: relative;
}
.header_right2-3_1 {
  height: 59px;
  margin: 0 auto;
  margin-bottom: 4px;
}
.header_right2-3_2 {
  width: 96px;
  height: 21px;
  font-size: 16px;
  color: #222;
  text-align: center;
  font-weight: 500;
  padding: 0 67px;
}

.header_right2-3_3,
.header_right2-3_4 {
  width: 120px;
  height: 40px;
  color: #333;
  border: 1px solid #e5e5e5;
  text-align: center;
  font-size: 14px;
  border-radius: 40px;
  line-height: 38px;
  margin: 10px 54px 15px 54px;
  text-decoration: none;
  position: absolute;
}
.header_right2-3_4 {
  margin-top: 45px;
}
.header_right2-4,
.header_right2-5 {
  height: 165px;
  float: left;
  margin-top: 10px;
  margin-right: 10px;
  background: #fff;
  background-size: cover;
  background-position: 50%;
  background-repeat: no-repeat;
}
.header_right2-4 {
  margin-left: 10px;
}
.header_right2-6 {
  width: 150px;
  height: 165px;
  margin-top: 10px;
  margin-right: 10px;
  float: left;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 50%;
}
.header_right2-7 {
  width: 230px;
  height: 167px;
  float: left;
  margin-top: 10px;
  background: #fff;
  position: relative;
}
.header_right2-7 > div {
  width: 228px;
  height: 99px;
  margin-top: 10px;
  position: relative;
}
.header_right2-7_1 {
  padding: 18px;
  margin: 0 58px;
  position: absolute;
}
.header_right2-7 p {
  font-size: 16px;
  text-align: center;
}
.header_right2-7 > p > span {
  font-size: 12px;
}

/* 猫眼电影 */
.imax {
  margin: 30px auto;
}
.imax1,
.minsu1,
.love1 {
  width: 100%;
  height: 44px;
  font-size: 14px;
  line-height: 44px;
  color: #fff;
  border-top-right-radius: 5px;
  border-top-left-radius: 5px;
  background: linear-gradient(
    to right,
    rgb(250, 60, 104) 2%,
    rgb(254, 70, 77) 97%
  );
}
.imax1 > ul {
  display: block;
}
.imax1_1,
.minsu1_1,
.love1_1 {
  font-size: 18px;
  margin-left: 13px;
  margin-right: 10px;
  padding: 0 5px;
  float: left;
  position: relative;
  cursor: pointer;
  font-family: "MFShangHei-Regular";
}
.imax1_2,
.love1_2 {
  padding: 0 5px;
  float: left;
  position: relative;
  cursor: pointer;
}
.sanjiao {
  position: absolute;
  border-left: 5px solid transparent;
  border-right: 5px solid transparent;
  border-bottom: 7px solid #fff;
  content: " ";
  display: block;
  width: 2px;
  height: 0;
  top: 37px;
  left: 0;
  right: 0;
  margin: auto;
}
.imax1_3 {
  padding: 0 5px;
  float: left;
  position: relative;
  cursor: pointer;
}
.quanbu {
  margin-right: 12px;
  padding: 0 5px;
  float: right;
  position: relative;
  cursor: pointer;
}
.imax2::after {
  content: "";
  display: block;
  clear: both;
}
.index_hidden{
  width: 100%;height: 100%;
  overflow: hidden;
  position: relative;
}
.imax2 {
  width: 10000px;
  margin-bottom: 30px;
}
.imax2_1 {
  width: 214px;
  height: 297px;
  float: left;
  margin-right: 19px;
  margin-left: 20px;
  margin-top: 1px;
  background-size: 100%;
  background-repeat: no-repeat;
  background-position: 50%;
  position: relative;
  border-radius: 4px;
}
.imax2_2,
.imax2_3,
.imax2_4,
.imax2_5 {
  width: 214px;
  height: 297px;
  float: left;
  margin-right: 19px;
  margin-top: 1px;
  background-size: 100%;
  background-repeat: no-repeat;
  background-position: 50%;
  position: relative;
  border-radius: 4px;
}

.imax2_1 > div,
.imax2_2 > div,
.imax2_3 > div,
.imax2_4 > div,
.imax2_5 > div {
  width: 214px;
  height: 100px;
  color: #fff;
  margin-top: 197px;
  position: absolute;
}
.imax2_p1 {
  font-size: 12px;
  margin-top: 48px;
  padding-left: 10px;
  font-weight: 500;
}
.imax2_p1 > span {
  color: #fd9827;
  font-size: 16px;
}
.imax2_s1 {
  padding-left: 10px;
  font-size: 16px;
}
.imax2_s2 {
  background: #ff4949;
  border-radius: 100px;
  padding: 2px 12px 3px 12px;
  font-size: 14px;
  cursor: pointer;
  text-align: center;
  float: right;
  margin-right: 10px;
}
/* 推荐民宿 */
.minsu {
  margin: 0 auto;
  margin-top: 30px;
  clear: both;
  position: relative;
}

.minsu1_2 {
  padding: 0 5px;
  float: left;
  position: relative;
  cursor: pointer;
}
.minsu2,
.love2 {
  border: 1px solid #e5e5e5;
  border-top: 0px;
  padding: 20px 10px;
  padding-bottom: 0;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  background: #fff;
  display: flex;
  justify-content: space-around;
  flex-wrap: wrap;
}
.minsu2 > a > div {
  width: 370px;
}
.minsu2_1 {
  width: 370px;
  height: 208px;
  margin-bottom: 10px;
  background-size: cover;
  background-position: 50%;
  border-radius: 4px;
  margin-bottom: 11px;
  cursor: pointer;
}
.minsu2_2 {
  text-align: left;
  padding-bottom: 25px;
}
.minsu2_2_1 {
  color: #222;
  font-size: 16px;
  margin: 7px 0;
  width: 297px;
  font-weight: 400;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}
.minsu2_2_2 span {
  width: 370px;
  font-size: 12px;
  color: #999;
}
.minsu2_2_3 {
  width: 370px;
  font-weight: 500;
  font-size: 22px;
  color: #ff6600;
  letter-spacing: -0.8px;
  padding: 4px 0;
}

/* 猜你喜欢 */
.love {
  margin-top: 40px;
}
.love2 > a > div {
  width: 212px;
  padding: 10px;
}
.love2_1 {
  width: 212px;
  height: 119px;
  background-position: 50%;
  background-size: cover;
  border-radius: 4px;
  overflow: hidden;
}
.love2_2 {
  width: 100%;
  height: 22px;
  font-size: 16px;
  line-height: 22px;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  color: #222;
}
.box {
  margin-top: 10px;
  position: relative;
}
.love2_3 {
  height: 24px;
}
.love2_3 > div {
  width: 85px;
}
.love2_3 > span {
  font-size: 12px;
  height: 24px;
  line-height: 24px;
  margin-left: 10px;
}
.love2_4 {
  height: 18px;
  font-size: 12px;
  line-height: 18px;
  /* margin-top: 4px; */
}
.love2_5 {
  height: 28px;
  color: #ff6600;
}
.yuan,
.qi {
  font-size: 14px;
  font-weight: 700;
}
.price {
  font-size: 22px;
  letter-spacing: -0.5px;
  font-weight: 500;
  font-family: "numbers";
}
.qi {
  margin-left: 4px;
}
/* 全部分类的弹窗 */
.left_tan{
  position: absolute;
  z-index: 1;
  top: 11px;
  left: 230px;
  height: 415px;
  background: #fff;

}
.left_nav{
  width: 400px;
  margin: 0 30px;
}
.leibie_tan{
  margin-top: 30px;
  padding-bottom: 10px;
  border-bottom: 1px solid #e5e5e5;
}
.leibie_a{
  color: #444;
  font-size: 20px;
}
.gengduo_tan{
  float: right;
  font-size: 14px;
}
.tan_title>a{
  margin-right: 20px;
  font-size: 14px;
  line-height: 15px;
  margin-top: 10px;
  display: inline-block;
}
</style>