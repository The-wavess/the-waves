<template>
<div id="appp">
<my-header></my-header>

	<div class="content">
		<!-- 除页头外整个大页面 带边距-->
		<div id="main">
			<!-- 上下部分 -->
			<div id="section">
				<!-- 上 -->
				<div id="search">
					<!-- 第一行 搜索栏 -->
					<div class="search_header_fixed">
						<div class="search_header">
							<!-- 第一框 -->
							<div class="first_select">
								<div class="city_box">
									<span class="input_title">入住城市</span>
									<input type="text" value="西安" class="input_text" @focus="showplace" @blur="hiddenplace">
								</div>
								<div class="city_classify" v-show="isShowPlace">
									<div class="classify_tab">
										<span class="titleplace" @click="showremeng">热门</span>
										<span class="titleplace" @click="showabcde">ABCDE</span>
										<span class="titleplace" @click="showfghijk">FGHIJK</span>
										<span class="titleplace">LMNOP</span>
										<span class="titleplace">QRSTW</span>
										<span class="titleplace">XYZ</span>
									</div>
									<div class="classify_content">
										<div class="hot_content" v-show="remengchengshi">
											<div class="classify_row">
												<em></em>
												<div>
													<a href="javascript:;" class="remeng">北京</a>
													<a href="javascript:;" class="remeng">成都</a>
													<a href="javascript:;" class="remeng">重庆</a>
													<a href="javascript:;" class="remeng">广州</a>
													<a href="javascript:;" class="remeng">杭州</a>
													<a href="javascript:;" class="remeng">南京</a>
													<a href="javascript:;" class="remeng">上海</a>
													<a href="javascript:;" class="remeng">深圳</a>
													<a href="javascript:;" class="remeng">天津</a>
													<a href="javascript:;" class="remeng">武汉</a>
													<a href="javascript:;" class="remeng">西安</a>
												</div>
											</div>
										</div>
										<div class style="display:none" v-show="abcde">
											<div class="classify_row">
												<em>A</em>
												<div>
													<a href="javascript:;">阿拉善盟</a>
													<a href="javascript:;">鞍山</a>
													<a href="javascript:;">安庆</a>
													<a href="javascript:;">安阳</a>
													<a href="javascript:;">安顺</a>
													<a href="javascript:;">安康</a>
													<a href="javascript:;">阿克苏</a>
													<a href="javascript:;">安吉</a>
													<a href="javascript:;">安丘</a>
													<a href="javascript:;">安岳</a>
													<a href="javascript:;">安平</a>
													<a href="javascript:;">安溪</a>
												</div>
											</div>
											<div class="classify_row">
												<em>B</em>
												<div>
													<a href="javascript:;">北京</a>
													<a href="javascript:;">保定</a>
													<a href="javascript:;">包头</a>
													<a href="javascript:;">巴彦淖尔</a>
													<a href="javascript:;">本溪</a>
													<a href="javascript:;">白山</a>
													<a href="javascript:;">白城</a>
													<a href="javascript:;">亳州</a>
													<a href="javascript:;">滨州</a>
													<a href="javascript:;">北海</a>
													<a href="javascript:;">百色</a>
													<a href="javascript:;">巴中</a>
													<a href="javascript:;">毕节</a>
													<a href="javascript:;">宝山</a>
													<a href="javascript:;">宝鸡</a>
													<a href="javascript:;">白银</a>

												</div>
											</div>
											<div class="classify_row">
												<em>C</em>
												<div>
													<a href="javascript:;">重庆</a>
													<a href="javascript:;">长沙</a>
													<a href="javascript:;">常州</a>
													<a href="javascript:;">长春</a>
													<a href="javascript:;">承德</a>
													<a href="javascript:;">沧州</a>
													<a href="javascript:;">长治</a>
													<a href="javascript:;">赤峰</a>
													<a href="javascript:;">朝阳</a>
													<a href="javascript:;">长乐</a>
													<a href="javascript:;">昌吉</a>
													<a href="javascript:;">昌黎</a>
												</div>
											</div>
											<div class="classify_row">
												<em>D</em>
												<div>
													<a href="javascript:;">大连</a>
													<a href="javascript:;">大庆</a>
													<a href="javascript:;">东莞</a>
													<a href="javascript:;">大同</a>
													<a href="javascript:;">丹东</a>
													<a href="javascript:;">登封</a>
													<a href="javascript:;">大竹</a>
													<a href="javascript:;">大洼</a>
													<a href="javascript:;">大石桥</a>
													<a href="javascript:;">达州</a>
													<a href="javascript:;">大理</a>
													<a href="javascript:;">定西</a>
												</div>
											</div>
											<div class="classify_row">
												<em>E</em>
												<div>
													<a href="javascript:;">鄂尔多斯</a>
													<a href="javascript:;">鄂州</a>
													<a href="javascript:;">恩施</a>
													<a href="javascript:;">峨眉山</a>
													<a href="javascript:;">额尔古纳</a>
												</div>
											</div>
										</div>
										<div class style="display:none" v-show="fghijk">
											<div class="classify_row">
												<em>F</em>
												<div>
													<a href="javascript:;">福州</a>
													<a href="javascript:;">佛山</a>
													<a href="javascript:;">抚顺</a>
													<a href="javascript:;">阜阳</a>
													<a href="javascript:;">抚州</a>
													<a href="javascript:;">涪陵</a>
													<a href="javascript:;">凤凰</a>
													<a href="javascript:;">凤城</a>
													<a href="javascript:;">汾阳</a>
													<a href="javascript:;">封丘</a>
													<a href="javascript:;">丰宁</a>
													<a href="javascript:;">富顺</a>
												</div>
											</div>
											<div class="classify_row">
												<em>G</em>
												<div>
													<a href="javascript:;">广州</a>
													<a href="javascript:;">桂林</a>
													<a href="javascript:;">贵阳</a>
													<a href="javascript:;">赣州</a>
													<a href="javascript:;">贵港</a>
													<a href="javascript:;">桂平</a>
													<a href="javascript:;">公主岭</a>
													<a href="javascript:;">广德</a>
													<a href="javascript:;">格尔木</a>
													<a href="javascript:;">高阳</a>
													<a href="javascript:;">高陵</a>
													<a href="javascript:;">鼓浪屿</a>
													<a href="javascript:;">公安</a>
													<a href="javascript:;">盖州</a>
													<a href="javascript:;">古交</a>
													<a href="javascript:;">高州</a>

												</div>
											</div>
											<div class="classify_row">
												<em>H</em>
												<div>
													<a href="javascript:;">杭州</a>
													<a href="javascript:;">合肥</a>
													<a href="javascript:;">海口</a>
													<a href="javascript:;">葫芦岛</a>
													<a href="javascript:;">哈尔滨</a>
													<a href="javascript:;">邯郸</a>
													<a href="javascript:;">衡水</a>
													<a href="javascript:;">呼和浩特</a>
													<a href="javascript:;">黑河</a>
													<a href="javascript:;">淮安</a>
													<a href="javascript:;">湖州</a>
													<a href="javascript:;">汉中</a>
												</div>
											</div>
											<div class="classify_row">
												<em>J</em>
												<div>
													<a href="javascript:;">济南</a>
													<a href="javascript:;">焦作</a>
													<a href="javascript:;">锦州</a>
													<a href="javascript:;">九江</a>
													<a href="javascript:;">晋城</a>
													<a href="javascript:;">晋州</a>
													<a href="javascript:;">巨野</a>
													<a href="javascript:;">金乡</a>
													<a href="javascript:;">嘉善</a>
												</div>
											</div>
											<div class="classify_row">
												<em>K</em>
												<div>
													<a href="javascript:;">昆明</a>
													<a href="javascript:;">开发</a>
													<a href="javascript:;">克拉玛依</a>
													<a href="javascript:;">昆山</a>
													<a href="javascript:;">开平</a>
												</div>
											</div>
										</div>
										<div class style="display:none">
											<div class="classify_row">
												<em>F</em>
												<div>
													<a href="javascript:;">福州</a>
													<a href="javascript:;">佛山</a>
													<a href="javascript:;">抚顺</a>
													<a href="javascript:;">阜阳</a>
													<a href="javascript:;">抚州</a>
													<a href="javascript:;">涪陵</a>
													<a href="javascript:;">凤凰</a>
													<a href="javascript:;">凤城</a>
													<a href="javascript:;">汾阳</a>
													<a href="javascript:;">封丘</a>
													<a href="javascript:;">丰宁</a>
													<a href="javascript:;">富顺</a>
												</div>
											</div>
											<div class="classify_row">
												<em>G</em>
												<div>
													<a href="javascript:;">广州</a>
													<a href="javascript:;">桂林</a>
													<a href="javascript:;">贵阳</a>
													<a href="javascript:;">赣州</a>
													<a href="javascript:;">贵港</a>
													<a href="javascript:;">桂平</a>
													<a href="javascript:;">公主岭</a>
													<a href="javascript:;">广德</a>
													<a href="javascript:;">格尔木</a>
													<a href="javascript:;">高阳</a>
													<a href="javascript:;">高陵</a>
													<a href="javascript:;">鼓浪屿</a>
													<a href="javascript:;">公安</a>
													<a href="javascript:;">盖州</a>
													<a href="javascript:;">古交</a>
													<a href="javascript:;">高州</a>

												</div>
											</div>
											<div class="classify_row">
												<em>H</em>
												<div>
													<a href="javascript:;">杭州</a>
													<a href="javascript:;">合肥</a>
													<a href="javascript:;">海口</a>
													<a href="javascript:;">葫芦岛</a>
													<a href="javascript:;">哈尔滨</a>
													<a href="javascript:;">邯郸</a>
													<a href="javascript:;">衡水</a>
													<a href="javascript:;">呼和浩特</a>
													<a href="javascript:;">黑河</a>
													<a href="javascript:;">淮安</a>
													<a href="javascript:;">湖州</a>
													<a href="javascript:;">汉中</a>
												</div>
											</div>
											<div class="classify_row">
												<em>J</em>
												<div>
													<a href="javascript:;">济南</a>
													<a href="javascript:;">焦作</a>
													<a href="javascript:;">锦州</a>
													<a href="javascript:;">九江</a>
													<a href="javascript:;">晋城</a>
													<a href="javascript:;">晋州</a>
													<a href="javascript:;">巨野</a>
													<a href="javascript:;">金乡</a>
													<a href="javascript:;">嘉善</a>
												</div>
											</div>
											<div class="classify_row">
												<em>K</em>
												<div>
													<a href="javascript:;">昆明</a>
													<a href="javascript:;">开发</a>
													<a href="javascript:;">克拉玛依</a>
													<a href="javascript:;">昆山</a>
													<a href="javascript:;">开平</a>
												</div>
											</div>
										</div>
										<div class style="display:none">
											<div class="classify_row">
												<em>F</em>
												<div>
													<a href="javascript:;">福州</a>
													<a href="javascript:;">佛山</a>
													<a href="javascript:;">抚顺</a>
													<a href="javascript:;">阜阳</a>
													<a href="javascript:;">抚州</a>
													<a href="javascript:;">涪陵</a>
													<a href="javascript:;">凤凰</a>
													<a href="javascript:;">凤城</a>
													<a href="javascript:;">汾阳</a>
													<a href="javascript:;">封丘</a>
													<a href="javascript:;">丰宁</a>
													<a href="javascript:;">富顺</a>
												</div>
											</div>
											<div class="classify_row">
												<em>G</em>
												<div>
													<a href="javascript:;">广州</a>
													<a href="javascript:;">桂林</a>
													<a href="javascript:;">贵阳</a>
													<a href="javascript:;">赣州</a>
													<a href="javascript:;">贵港</a>
													<a href="javascript:;">桂平</a>
													<a href="javascript:;">公主岭</a>
													<a href="javascript:;">广德</a>
													<a href="javascript:;">格尔木</a>
													<a href="javascript:;">高阳</a>
													<a href="javascript:;">高陵</a>
													<a href="javascript:;">鼓浪屿</a>
													<a href="javascript:;">公安</a>
													<a href="javascript:;">盖州</a>
													<a href="javascript:;">古交</a>
													<a href="javascript:;">高州</a>

												</div>
											</div>
											<div class="classify_row">
												<em>H</em>
												<div>
													<a href="javascript:;">杭州</a>
													<a href="javascript:;">合肥</a>
													<a href="javascript:;">海口</a>
													<a href="javascript:;">葫芦岛</a>
													<a href="javascript:;">哈尔滨</a>
													<a href="javascript:;">邯郸</a>
													<a href="javascript:;">衡水</a>
													<a href="javascript:;">呼和浩特</a>
													<a href="javascript:;">黑河</a>
													<a href="javascript:;">淮安</a>
													<a href="javascript:;">湖州</a>
													<a href="javascript:;">汉中</a>
												</div>
											</div>
											<div class="classify_row">
												<em>J</em>
												<div>
													<a href="javascript:;">济南</a>
													<a href="javascript:;">焦作</a>
													<a href="javascript:;">锦州</a>
													<a href="javascript:;">九江</a>
													<a href="javascript:;">晋城</a>
													<a href="javascript:;">晋州</a>
													<a href="javascript:;">巨野</a>
													<a href="javascript:;">金乡</a>
													<a href="javascript:;">嘉善</a>
												</div>
											</div>
											<div class="classify_row">
												<em>K</em>
												<div>
													<a href="javascript:;">昆明</a>
													<a href="javascript:;">开发</a>
													<a href="javascript:;">克拉玛依</a>
													<a href="javascript:;">昆山</a>
													<a href="javascript:;">开平</a>
												</div>
											</div>
										</div>
										<div class style="display:none">
											<div class="classify_row">
												<em>F</em>
												<div>
													<a href="javascript:;">福州</a>
													<a href="javascript:;">佛山</a>
													<a href="javascript:;">抚顺</a>
													<a href="javascript:;">阜阳</a>
													<a href="javascript:;">抚州</a>
													<a href="javascript:;">涪陵</a>
													<a href="javascript:;">凤凰</a>
													<a href="javascript:;">凤城</a>
													<a href="javascript:;">汾阳</a>
													<a href="javascript:;">封丘</a>
													<a href="javascript:;">丰宁</a>
													<a href="javascript:;">富顺</a>
												</div>
											</div>
											<div class="classify_row">
												<em>G</em>
												<div>
													<a href="javascript:;">广州</a>
													<a href="javascript:;">桂林</a>
													<a href="javascript:;">贵阳</a>
													<a href="javascript:;">赣州</a>
													<a href="javascript:;">贵港</a>
													<a href="javascript:;">桂平</a>
													<a href="javascript:;">公主岭</a>
													<a href="javascript:;">广德</a>
													<a href="javascript:;">格尔木</a>
													<a href="javascript:;">高阳</a>
													<a href="javascript:;">高陵</a>
													<a href="javascript:;">鼓浪屿</a>
													<a href="javascript:;">公安</a>
													<a href="javascript:;">盖州</a>
													<a href="javascript:;">古交</a>
													<a href="javascript:;">高州</a>

												</div>
											</div>
											<div class="classify_row">
												<em>H</em>
												<div>
													<a href="javascript:;">杭州</a>
													<a href="javascript:;">合肥</a>
													<a href="javascript:;">海口</a>
													<a href="javascript:;">葫芦岛</a>
													<a href="javascript:;">哈尔滨</a>
													<a href="javascript:;">邯郸</a>
													<a href="javascript:;">衡水</a>
													<a href="javascript:;">呼和浩特</a>
													<a href="javascript:;">黑河</a>
													<a href="javascript:;">淮安</a>
													<a href="javascript:;">湖州</a>
													<a href="javascript:;">汉中</a>
												</div>
											</div>
											<div class="classify_row">
												<em>J</em>
												<div>
													<a href="javascript:;">济南</a>
													<a href="javascript:;">焦作</a>
													<a href="javascript:;">锦州</a>
													<a href="javascript:;">九江</a>
													<a href="javascript:;">晋城</a>
													<a href="javascript:;">晋州</a>
													<a href="javascript:;">巨野</a>
													<a href="javascript:;">金乡</a>
													<a href="javascript:;">嘉善</a>
												</div>
											</div>
											<div class="classify_row">
												<em>K</em>
												<div>
													<a href="javascript:;">昆明</a>
													<a href="javascript:;">开发</a>
													<a href="javascript:;">克拉玛依</a>
													<a href="javascript:;">昆山</a>
													<a href="javascript:;">开平</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 第二框和第三框 -->
							<div class="select_group">
								<!-- 第二框 入住日期-->
								<div class="second_select">
									<!-- <div class="time_item"> -->
										<!-- <span class="time_1">入住</span> -->
										<!-- <input type="text" class="input1"> -->


										<el-date-picker
										v-model="value1"
										type="date"
										placeholder="选择入住日期">
										</el-date-picker>
										
										
										<!-- <span class="icon"></span> -->
										<!-- <span class="weekinfo">今天</span> -->
									<!-- </div> -->
								</div>
								<!-- 中间减号 -->
								<span class="connect_line">-</span>
								<!-- 第三框 离店日期-->
								<div class="third_select">
									<!-- <div class="time_item"> -->
										<!-- <span class="time_1">离店</span> -->
										<!-- <input type="text" class="input1"> -->

										<el-date-picker
										v-model="value2"
										type="date"
										placeholder="选择离店日期">
										</el-date-picker>
										<!-- <span class="icon"></span> -->
										<!-- <span class="weekinfo">星期五</span> -->
									<!-- </div> -->
								</div>
							</div>
							<!-- 第四框 -->
							<div class="fourth_select">
								<input type="text" class="keyword_search" placeholder="(关键词选填) 酒店名/位置/品牌" @focus="isShow" @blur="isHidden" />
							</div>
							<div class="show" v-show="isshow">
								<div class="hot_group">
									<div class="hot_title">热门</div>
									<div class="hot_list">
										<a href="javascript:;" @click="showPlace">钟楼</a>
										<a href="javascript:;">大雁塔</a>
										<a href="javascript:;">小寨</a>
										<a href="javascript:;">回民街</a>
										<a href="javascript:;">南稍门</a>
										<a href="javascript:;">北大街</a>
										<a href="javascript:;">火车站</a>
										<a href="javascript:;">西安北站</a>
										<a href="javascript:;">西京医院</a>
										<a href="javascript:;">五路口</a>
									</div>
									<div class="separate-line"></div>
									<div class="hot_title">品牌</div>
									<div class="hot_list">
										<a href="javascript:;">轻住</a>
										<a href="javascript:;">汉庭</a>
										<a href="javascript:;">如家</a>
										<a href="javascript:;">布丁</a>
										<a href="javascript:;">全季</a>
										<a href="javascript:;">7天</a>
										<a href="javascript:;">怡莱</a>
										<a href="javascript:;">尚客优</a>
										<a href="javascript:;">锦江之星</a>
										<a href="javascript:;">OYO酒店</a>
									</div>
									<div class="separate-line"></div>
									<div class="hot_title">景点</div>
									<div class="hot_list">
										<a href="javascript:;">秦始皇陵</a>
										<a href="javascript:;">明城墙</a>
										<a href="javascript:;">华清池</a>
										<a href="javascript:;">翠华山</a>
										<a href="javascript:;">陕西历史博物馆</a>
										<a href="javascript:;">骊山森林公园</a>
										<a href="javascript:;">秦始皇兵马俑</a>
										<a href="javascript:;">西安关中民俗艺术博物馆</a>
									</div>
									<div class="separate-line"></div>
									<div class="hot_title">行政区/商圈</div>
									<div class="hot_list">
										<a href="javascript:;">东大街</a>
										<a href="javascript:;">南大街</a>
										<a href="javascript:;">新城广场</a>
										<a href="javascript:;">解放路</a>
										<a href="javascript:;">火车站</a>
										<a href="javascript:;">民乐园</a>
										<a href="javascript:;">朱宏路</a>
										<a href="javascript:;">互助立交</a>
									</div>
									<div class="separate-line"></div>
									<div class="hot_title">机场车站</div>
									<div class="hot_list">
										<a href="javascript:;">西安站</a>
										<a href="javascript:;">西安南站</a>
										<a href="javascript:;">西安北站</a>
									</div>
									<div class="separate-line"></div>
								</div>
							</div>
							<!-- 搜索按钮 -->
							<input type="button" class="search_button" value="搜索">
						</div>
					</div>
					<!-- 第二行到第五行  -->
					<div class="search_filter">
						<!-- 第二行 位置-->
						<div class="h_second">
							<div class="search_row">
								<!-- ::before -->
								<div class="search_row_title" style="padding-left:0px">位置</div>
								<div class="search_row_unlimited"><a href="">不限</a></div>
								<div class="search_row_content">
									<div class="search_row_item"><span class="search_arow_tab active">热门<i></i></span></div>
									<div class="search_row_item"><span class="search_arow_tab">行政区/商圈<i></i></span></div>
									<div class="search_row_item"><span class="search_arow_tab">地铁站<i @click="showdtz"></i></span></div>
									<div class="dtz" v-show="dtz"><span class="xianxian"><span>1号线</span><span>2号线</span><span>3号线</span><span>4号线</span></span><a id="close" @click="ishidden" href="javascript:;">×</a></div>
									<div class="search_row_item"><span class="search_arow_tab">高校<i></i></span></div>
									<div class="search_row_item"><span class="search_arow_tab">车站/机场<i></i></span></div>
									<div class="search_row_item"><span class="search_arow_tab">旅游景点<i></i></span></div>
									<div class="search_row_item"><span class="search_arow_tab">医院<i></i></span></div>
								</div>
								<!-- ::after -->
							</div>
							<div class="search_filter_classify" style="display: none;"></div>
						</div>
						<!-- 第三行 星级-->
						<div class="h_third">
							<div class="search_row_title">星级</div>
							<div class="search_row_unlimited"><a href="javascript:;" :class="{'moren':bx}">不限</a></div>
								<div class="row_content">
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox" @click="jjx">经济型</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox" @click="sssx">舒适/三星</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox" @click="gdsx">高档/四星</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox" @click="hhwx">豪华/五星</label>
										</a>
									</span>
								</div>	
						</div>
						<!-- 第四行 类型-->
						<div class="h_fourth">
							<div class="search_row_title">类型</div>
							<div class="search_row_unlimited"><a href="javascript:;">不限</a></div>
							<div class="row_content">
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">经济型酒店</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">主题酒店</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">商务酒店</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">公寓</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">豪华酒店</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">客栈</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">青年旅社</label>
										</a>
									</span>

									<!-- 需要隐藏的酒店类型 -->
									<div class="yincangdejiudian" v-show="yclx">
										<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">度假酒店</label>
										</a>
										</span>
										<span class="row_item">
											<a href="javascript:;">
												<label><input type="checkbox">别墅</label>
											</a>
										</span>
										<span class="row_item">
											<a href="javascript:;">
												<label><input type="checkbox">农家院</label>
											</a>
										</span>
									</div>


									
							</div>
							<div class="search_row_change" @click="showlx" v-show="showlxlx"><span>更多</span></div>	
							<div class="search_row_change" @click="hiddenlx" v-show="hiddenlxlx"><span>收起</span></div>
						</div>
						<!-- 第五行 品牌-->
						<div class="h_fifth">
							<div class="search_row_title">品牌</div>
							<div class="search_row_unlimited"><a href="">不限</a></div>
							<div class="row_content">
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">如家</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">汉庭</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">7天</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">格林豪泰</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">尚客优</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">速8</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">锦江之星</label>
										</a>
									</span>

									<!-- 需要隐藏的品牌 -->
									<div class="yincangpinpai" v-show="ycpp">
										<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">莫泰</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">丽枫</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">花间堂</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">H酒店</label>
										</a>
									</span>
									<span class="row_item">
										<a href="javascript:;">
											<label><input type="checkbox">贝壳酒店</label>
										</a>
									</span>
									</div>
									
								</div>	
								<div class="search_row_change" @click="showpp" v-show="showpppp"><span :class="{'activee':gd_orange}">更多</span></div>
								<div class="search_row_change" @click="hiddenpp" v-show="hiddenpppp"><span :class="{'activee':sq_orange}">收起</span></div>
						</div>
						
						</div>
					
					<!-- 第六行 备注 -->
					<div class="h_foot">
						<span class="search-total-text">
							<span class="search_total">1000+</span>酒店符合要求
						</span>
					</div>
				</div>
				<!-- 下部分 -->
				<div id="contain">
					<!-- 左边内容 -->
					<div id="main_view">
						<!-- 第一行 智能排序 -->
						<div class="order_bar_placeholder">
							<!-- 空div,让头部和主体分开 -->
							<div class="mask-line-fixed" style="top:inherit;"></div>
							<!-- 智能排序 带内边距 -->
							<div class="order_bar" style="top:inherit;">智能排序</div>
						</div>
						<!-- 商家内容 -->
						<div class="list_view">
							<div class="poi_results">
								<!-- 7天酒店·西安理工大学长乐公园地铁站店 -->
								<div class="poi_item" v-for="(value,index) in p" :key="index">
									<!-- 左边图片 -->
									<div class="picture_wrapper">
										<router-link :to="`/jd_details/${value.bid}`"><img :src="value.b_pic" alt="7天酒店·西安理工大学长乐公园地铁站店" class="pictures"></router-link>
									</div>
									<!-- 右边内容 -->
									<div class="info_wrapper">
										<!-- 大标题 -->
										<h3 class="poi_title_wrapper">
											<router-link :to="`/jd_details/${value.bid}`" class="poi_title"><em class="location_icon">{{value.bid}}</em>{{value.b_name}}
											</router-link>
											<span class="poi_type">{{value.b_type}}</span>
										</h3>
										<div class="colum_wrapper">
											<div class="colum_1">
												<div class="poi_address">
													<span class="item_place">{{value.b_place}}</span>
													{{value.b_address}}

													<a href="" class="map">
														<i class="address_icon"></i>查看地图
													</a>

												</div>
												<div class="service_icons">
													<span>
														<div class="service_detail">
															<img src="../../public/jd_img/wifi.png" alt="" class="icons">
															<span class="service_title">{{value.b_service_1}}</span>
														</div>
														<div class="service_detail">
															<img src="../../public/jd_img/上网.png" alt="" class="icons">
															<span class="service_title">{{value.b_service_2}}</span>
														</div>
														<div class="service_detail">
															<img src="../../public/jd_img/收费停车.png" alt="" class="icons">
															<span class="service_title">{{value.b_service_3}}</span>
														</div>
														<div class="service_detail">
															<img src="../../public/jd_img/行李寄存.png" alt="" class="icons">
															<span class="service_title">{{value.b_service_4}}</span>
														</div>
													</span>
												</div>
												<div class="poi_tag_row">
													<span class="poi_tag1">{{value.b_tag_1}}</span>
													<span class="poi_tag2">{{value.b_tag_2}}</span>
													<span class="poi_tag2">{{value.b_tag_3}}</span>
												</div>
											</div>
											<!-- 评分 -->
											<div class="colum_2">
												<div class="poi_grade">{{value.b_score}}
													<span class="small_size">分
														<span class="poi_grade_desc">{{value.b_evaluate}}</span>
													</span>
												</div>
											</div>
											<!-- 微信小程序预定 -->
											<div class="colum_3">
												<div class="dl_redirect">
													<a href="#" class="show_detail">微信小程序预定</a>
													<div class="popper">
														<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- 分页 -->
						<div class="paginator_wrapper">
							<ul class="paginator">
								<li class="disabled previous"><a href="" class="pagination-icon-left"></a></li>
								<li class="page_link" :class="currentPage===1?'page_1':''" @click="onCurrentPage(1)">1</li>
								<li class="page_link" :class="currentPage===2?'page_1':''" @click="onCurrentPage(2)">2</li>
								<span class="pagination-ellipsis">...</span>
								<li class="page_link">10</li>
								<li class="page_link"><i class="pagination-icon-right">&nbsp;</i></li>
							</ul>
						</div>
					</div>
					<!-- 右边地图 -->
					<div class="right_map">
						<div class="map_1" style=""><map_m></map_m></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<my-footer1></my-footer1>
	</div>
	
</template>
<style scoped>
	* {
		margin: 0;
		padding: 0;
	}

	* {
		box-sizing: border-box;
	}

	div {
		color: #666;
	}

	#main {
		width: 1190px;
		margin: 20px auto 0;
		font-size: 12px;
	}

	#section {
		width: 1190px;
		height: 3925px;
		margin: 20px auto 0px;
	}

	#search {
		width: 1190px;
		background: #fff;
		border: 1px solid #e5e5e5;
		border-radius: 4px;
		color: #666;
		font-size: 14px;
	}

	.content {
		background-color: #e5e5e5
	}

	.search_header {
		width: 1188;
		height: 68px;
		padding: 15px 20px;
	}

	.seach_filter {
		width: 1188px;
		padding: 0px 20px;
	}

	.h_second {
		padding:20px 0px 10px;
		border-bottom: 1px solid #e5e5e5;
		margin:0 20px;}
		


	.search_row{
		padding: 0;
		border-bottom: 0;
		line-height: 22px;
		/* margin-left: 20px; */
		font-size: 12px;
		
	}
	.search_row::before{
		display: table;
		content: "";
	}
	.search_row::after{
		display: table;
		content: "";
		clear: both;
	}

	.h_third {
		height: 63px;
		padding: 20px 0px 10px;
		border-bottom: 1px solid #e5e5e5;
		margin-left: 20px;
		font-size: 12px;
		margin-right: 20px;
	}

	.h_fourth {
		height: 63px;
		padding: 20px 0px 10px;
		border-bottom: 1px solid #e5e5e5;
		margin-left: 20px;
		font-size: 12px;
		margin-right: 20px;
	}

	.h_fifth {
		height: 63px;
		padding: 20px 0px 10px;
		border-bottom: 1px solid #e5e5e5;
		margin-left: 20px;
		font-size: 12px;
		margin-right: 20px;
	}

	.h_foot {
		width: 1188;
		height: 43px;
		padding: 10px;
		line-height: 22px;
		/* background-color: #fff; */
	}
	.search-total-text{
		font-size: 16px;
		padding: 10px;

	}
	.search_total{color: #ff8634;}

	#contain {
		position: relative;
		width: 1190px;
		height: 3477px;
		margin: 20px 0px 0px;
	}

	#main_view {
		width: 910px;
		height: 3354px;
		background: #fff;
		padding: 0px 20px;
		border: 1px solid #e5e5e5;
		border-radius: 4px;
	}

	/* 头部第一行 */
	/* 无边距大框 */
	.search_header_fixed {
		background-color: #ebebeb;
		transform: all 3s ease;
		display: block;
		color: #666;
		border-radius: 4px;
	}

	/* 带边距大框 */
	.search_header {
		padding: 15px 20px;
		width: 1148px;
		margin: 0 auto;
		display: block;
	}

	/* 第一个框 */
	.first_select {
		position: relative;
		display: inline-block;
		z-index: 10;
		font-size: 14px;
	}

	/* 外层div */
	.city_box {
		display: inline-block;
		border: 1px solid #e5e5e5;
		width: auto;
		height: 35px;
		line-height: 35px;
		background-color: #fff;
		border-radius: 4px;
		padding: 0 10px;
		outline: none;
		cursor: default;
	}

	/* span */
	.input_title {
		color: #999;
		cursor: default;
	}

	/* input */
	.input_text {
		width: 130px;
		height: 25px;
		font-size: 14px;
		color: #333333;
		line-height: 25px;
		padding: 5px;
		border: 0;
		outline: 0;
		overflow: visible;
	}

	.city_classify {
		position: absolute;
		font-size: 14px;
		left: 0;
		top: 36px;
		padding: 15px 15px 5px;
		border: 1px solid #e5e5e5;
		background-color: #fff;
		border-radius: 4px;
	}

	.classify_tab {
		cursor: pointer;
		white-space: nowrap;
	}

	.titleactive {
		color: #ffc300;
		border-bottom-color: #ffc300;
	}

	.titleplace:hover {
		color: #ffc300;
		border-bottom-color: #ffc300;
	}

	.titleplace {
		display: inline-block;
		padding: 0 50px 5px;
		line-height: 26px;
		border-bottom: 1px solid #e5e5e5;
		letter-spacing: 3px;
	}

	.classify_row {
		border-bottom: none;
		padding: 15px 0 10px;
	}

	.classify-row em {
		margin: 0 10px;
		color: #ffc300;
		display: inline-block;
		width: 20px;
		height: 20px;
		line-height: 20px;
		text-align: center;
		background-color: #f8f8f8;
	}
.classify-row a:hover {
	color: #333;
    background-color: #ffc300;
}
.classify-row a{
	display: inline-block;
    color: #555;
    margin: 3px 5px;
    padding: 2px 5px;
    transition: all .1s ease;
	text-decoration: none;
	width: 38px;
	height: 23px;
}


	/* 第二框和第三框 */
	.select_group {
		display: inline-block;
	}

	/* 第二框 */
	.second_select {
		padding: 0 6px 0 20px;
		position: relative;
		line-height: 35px;
		display: inline-block;
		background-size: 20px;
		background-repeat: no-repeat;
		background-position: 235px;
	}

	.time_item {
		position: relative;
		background-color: #FFFFFF;
		padding: 0 10px;
		border: 1px solid #e5e5e5;
		border-radius: 4px;
		display: block;
	}

	.time_1 {
		left: 0;
		width: 100px;
		padding-top: 2px;
		font-size: 12px;
		text-align: right;
		color: #999;
		cursor: default;
	}

	.input1 {
		width: 136px;
		margin-top: -3px;
		border: 0;
		outline: 0;
		background-color: transparent;
		font-size: 14px;
		vertical-align: middle;
		overflow: visible;
	}

	.icon {
		display: inline-block;
		vertical-align: middle;
		margin-top: -2px;
		width: 12px;
		height: 12px;
		background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IArs4c6QAAARhJREFUKBV9kL8uRFEQxn/nLMUSQvYBtvcGEt2KaBQ6RImKN5B4Ea1dJDQSDY2wQiVRaPXbrIh/G67xnbP3rOtPdpK58535Zua7M5CbGc4uuJeP9HJXjIZceofo7JxpHCvC+xgHlFjik8VY5GmQUVduXrkF8duh4Y5BZijT5pEnNVcZ4jU2dBjmQwolZTwV4RMkeRNJfeySWsIpFnOqvQ0KLU3dSQV9o7E8oIIHSe72LUxkxpzX9Gc3ybWW25Cv5nhdS679wfASFLrmdBF4z18NDcr+wXw3jOkCE5obbJxT3ckCdFMch5jMJ6CjHtHMl29zyBt7Pa4AgkKcpF/Y1PKdyBlbwl21QrGgd9YUaczK3U/u18vFAWdfuYBd68RMm5EAAAAASUVORK5CYII=);
	}

	.weekinfo {
		position: absolute;
		top: 0;
		color: #999;
		line-height: 37px;
		right: 34px;
		font-size: 12px;
	}

	/* 中间- */
	.connect_line {
		color: #999
	}

	/* 第三框 */
	.third_select {
		padding: 0 20px 0 6px;
		position: relative;
		line-height: 35px;
		display: inline-block;
		background-size: 20px;
		background-repeat: no-repeat;
		background-position: 235px;
	}

	/* 第四框 */
	.fourth_select {
		position: relative;
		display: inline-block;
		z-index: 10;
	}

	.keyword_search {
		display: inline-block;
		border: 1px solid #e5e5e5;
		border-radius: 4px;
		height: 35px;
		line-height: 35px;
		background-color: #FFFFFF;
		padding: 0 10px;
		outline: 0;
		width: 218px;
		overflow: visible;
		position: relative;
	}

	/* .keyword_search:hover+.show{display: block;} */
	.search_button {
		margin-top: 2px;
		line-height: 35px;
		border: none;
		padding: 0 29px;
		background-color: #ffc300;
		font-size: 14px;
		color: #333;
		display: block;
		font-weight: 700;
		letter-spacing: .1em;
		text-align: center;
		border-radius: 2.15em;
		cursor: pointer;
		outline: 0;
		transition: all 3s ease;
		overflow: visible;
		float: right;
	}

	.search_button:hover {
		background-color: #cc9c00;
		border-color: #cc9c00;
	}

	/* 第二行-第五行 */
	.search_row {
		padding: 0;
		border-bottom: 0;
		line-height: 22px;
		display: block;
	}

	.search_row_title {
		float: left;
		width: 60px;
		color: #000;
		display: block;
		font-size: 14px;
	}

	.search_row_unlimited {
		float: left;
		width: 80px;
		display: block;
		font-size: 14px;
	}
		
	.search_row_unlimited a{
		background-color: rgb(255,195,0);
		color:  rgb(51, 51, 51);
		display: inline-block;
		padding: 0 10px;
		border-radius: 12px;
		text-decoration: none;
		cursor: pointer;
	}

	/* .active {
		background-color: rgb(255,195,0);
		color:  rgb(51, 51, 51);
		display: inline-block;
		padding: 0 10px;
		border-radius: 12px;
		text-decoration: none;
		cursor: pointer;
	} */
	.search_row_content{float: left;
		width: 968px;}

	.search_row_item{
		    width: auto;
    padding: 0 10px;
float: left;word-break: break-all;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;margin-right: 40px;
	}
	.search_row_tab{
		background-color: #f8f8f8;
    color: #333;cursor: pointer;
    display: inline-block;
    padding: 0 10px;
	cursor: pointer;
	margin-right: 16px;

	}

	.search_arow_tab i{border-color: #333 transparent transparent;display: inline-block;
    margin: 0 2px;
    vertical-align: middle;
    border-width: 3px;
    border-style: solid dashed dotted;}




	.row_content {
		float: left;
		width: 968px;
		margin: 0;
		padding: 0;
		border: 0;
		display: block;
	}

	.row_item {
		width: 125px;
		padding-bottom: 10px;
		float: left;
		color: rgb(102, 102, 102);
		word-break: break-all;
		white-space: nowrap;
		overflow: hidden;
		/* text-overflow: ellipsis;
		font-size: 13px;*/
		display: block; 
	}
	.row_item input{margin-right: 4px;bottom: 5px;vertical-align: baseline;}

	
	.search_row_item a{color: rgb(102, 102, 102);background-color: transparent;text-decoration: none;display: block;}
	.search_row_item label{cursor: pointer;}
.search_row_item input{
	margin-right: 5px;background-color: rgb(255, 255, 255);
	width: 15px;height: 15px;border-width:1px ;border-style:solid ;border-color:rgb(215, 215, 215) ;border-image:initial ;
	position: relative;background-clip: border-box;vertical-align: text-bottom;margin: -0.15px 0.6px 0 0;border-radius: 3px;transition: background-color 0.25s ease 0s;overflow: visible;
}


.search_row_change{
	cursor: pointer;
    float: right;
    text-align: right;
    margin-right: 8px;
    color: #666;
}
.search_row_change:after{
	content: "";
    position: absolute;
    margin-top: 16px;
    margin-right: 20px;
    -webkit-transform: translateY(-50%);
    -ms-transform: translateY(-50%);
    transform: translateY(-50%);
    height: 16px;
    width: 0;
    border: none;
    border-top: 4px solid #666;
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
}
.search_row_change>span{padding-right: 2px;margin-right: 0px;}
	.search_row_tab {
		cursor: pointer;
		display: inline-block;
		padding: 0 10px;
	}

	.search_row_tab .active {
		background-color: #f8f8f8;
		color: #333;
	}

	.box_item {
		font-size: 12px;
		margin: 5px;
	}

	.search_row_tab .active i {
		border-color: #333 transparent transparent;
	}

	.search_row_tab i {
		display: inline-block;
		margin: 0 2px;
		vertical-align: middle;
		border-width: 3px;
		border-style: solid dashed dotted;
		border-color: #666 transparent transparent;
	}

	.search_total {
		color: #ff8634;
		font-size: 14px;

	}

	.letter-spacing {
		display: none;
		position: relative;
		margin-left: 60px;
		background-color: #f8f8f8;
		padding: 10px 20px;
		border: 0;
		margin: 0;
	}

	/* 下部分 */
	.order_bar_placeholder {
		width: 865px;
		height: 53px;
	}
	/* .mask-line-fixed{
		position: fixed;
		top: 68px!important;
		left: 0;
		right: 0;
		height: 20px;
		z-index: 10;
		background-color: #f8f8f8;
	} */

	.order_bar {
		width: 865px;
		height: 52px;
		
		/* border-bottom: 1px solid #e5e5e5; */
		color: #ff8634;
		font-size: 16px;
		z-index: 1;
		    /* position: fixed; */
		    top: 88px!important;
		    left: calc((100% - 1190px) / 2);
		    right: calc((100% - 1190px) / 2 + 270px + 10px);
			    background-color: #fff;
			    /* border: 1px solid #e5e5e5; */
			    padding-left: 20px;
			    padding-right: 20px;
				padding: 16px 0;
				border-radius: 4px 4px 0 0;
				border-bottom: 1px solid #e5e5e5;;
				}
	

	.list_view {
		width: 868px;
		height: 3299px;
		color: #666
	}

	.poi_results {
		width: 868px;
		height: 3299px;
		color: #666
	}

	.poi_item {
		width: 868px;
		height: 165px;
		padding: 20px 0px;
		border-bottom: 1px solid #e5e5e5;
		;
	}

	/* 商家具体内容 */
	.picture_wrapper {
		width: 200px;
		float: left;
		margin-right: 20px;
		position: relative;
		display: block;
	}

	.info_wrapper {
		margin-left: 220px;
	}

	.poi_title_wrapper {
		font-size: 18px;
		color: #06c1ae;
		transition: coloe .3s ease;
		display: block;
		margin-block-start: 1em;
		margin-block-end: 1em;
		margin-top: 2px;
		margin-bottom: 0;
		margin-left: 0px;
	}

	.poi_title {
		color: #fe8c00;
		font-size: 18px;
		font: inherit;
		text-decoration: none;
		background-color: transparent;
		cursor: pointer;
	}
	.poi_title:hover {
		color: #fe8c00;
		font-size: 18px;
		font: inherit;
		background-color: transparent;
		cursor: pointer;
	}
	.location_icon {
		display: inline-block;
		width: 17px;
		height: 20px;
		line-height: 18px;
		vertical-align: middle;
		background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAAUCAYAAABroNZJAAAAAXNSR0IArs4c6QAAAXJJREFUOBGllLFKA0EQhv/ZgIhFUuQRJIW9+BaeomJABAkk5wP4EjY+gJfCBAStFRFBQWwUsbcQHyBCiqSIiQbWfy45uTuJ5LILm51/dv4vc3vcClLDniKPHipMe7BYgqDItc31lbkLLOBEdtGN2yQu7DH2qI84i/F8Km5TH8g+mlHeRIENcMi4wfkfQMt1vzGuV80mOZioseVA40xD4IuPutgmyX2801zIBBgVdzCPRYMBqjMCFFNQv56Jp8pheAopOQDUWjI80LwThH7t5MMJArQMX/KjE0TwpJ2cO0EszsRa9hLgmaDlGWAv8LFiRHi0c9ghIPFRTQHsqk/9+jiQCt5gsMbwcwqzlvSQw2roowghmpUa7vlgHmdf9cSh+zl4UsVDVPML0QQ/plsuGwR9RQWpdUC9TsBdPJ+A6AZB1+xvi+F3vHAM3uT+TSJP8QeiBfynS5rKDIeqOYY8/jIvoquRzPDLe2abt13L1kPgROcPzktThyzyEl8AAAAASUVORK5CYII=) no-repeat;
		background-size: 100%;
		font-size: 9px;
		color: #fff;
		text-align: center;
		margin-right: 5px;
		margin-top: -5px;
	}

	.poi_type {
		font-size: 12px;
		color: #999;
		margin-left: 5px;
	}

	.colum_wrapper {
		height: 90px;
		display: block;
		color: #666;
	}

	.colum_1 {
		border-right: 1px solid #e5e5e5;
		height: 100%;
		float: left;
		width: calc(100% - 10px - 300px - 2px);
		padding: 10px;
		display: block;
		color: #666;
	}

	.poi_address {
		height: 40px;
		overflow: hidden;
		line-height: 20px;
		margin-bottom: 2px;
		display: block;
		color: #666;
		font-size: 12px;
	}

	.map {
		text-decoration: none;
		color: #000;
		cursor: default;
	}

	.address_icon {
		display: inline-block;
		width: 9px;
		height: 13px;
		background-size: contain;
		vertical-align: middle;
		background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAMCAYAAABfnvydAAAAAXNSR0IArs4c6QAAAP9JREFUGBmFjqFOA2EQhGePw7UYgjjfCiSFBEEfgOBRJEU1VVVVCHiBShyvQdIGhwABgUDSEAQKBMFAWkFaaO6Wb8+hupf9d3dmZ/akBWHB+5NqmqsvV5PxW6Yh/ZFtaGx+D2l6AKj8MzM9a02bCURfOaQDmPbIFv0EbF0f6qYqsHW0iXrWwJrwW9Upx2QzFqblgms1yDIK+hBJ01gY0HQATv2a/0m4nDNHLOnc/IbtX40YM+7jT0Y1XdiOdhPb1ifgPjlHKRwj35TqgA7DiEx3LJyUatcM9aFeNQ7K/EpbEFkMOLR5X7h9iUtOfUwB3vFZZlwBOENd8P2Af6mqyR+C71MgXUdVnwAAAABJRU5ErkJggg==);
		color: #333333;
	}

	.service_icons {
		padding-bottom: 5px;
		overflow: hidden;
		white-space: nowrap;
		height: 20px;
		display: block;
		color: #666
	}

	.service_detail {
		float: left;
	}

	.poi_tag_row {
		overflow: hidden;
		display: block;
		color: #666;
		padding: 4px;
	}

	.poi_tag1 {
		border-color: #f5716e;
		color: #f5716e;
		display: inline-block;
		font-size: 12px;
		line-height: 16px;
		border: 1px solid #50b6f5;
		border-radius: 2px;
		padding: 1px 2px;
		margin: 0 5px 0 0;
		vertical-align: middle;
	}

	.poi_tag2 {
		border-color: #569cea;
		color: #569cea;
		display: inline-block;
		font-size: 12px;
		line-height: 16px;
		border: 1px solid #50b6f5;
		border-radius: 2px;
		padding: 1px 2px;
		margin: 0 5px 0 0;
		vertical-align: middle;
	}

	.colum_2 {
		border-right: 1px solid #e5e5e5;
		height: 100%;
		float: left;
		max-width: 150px;
		min-width: 150px;
		text-align: center;
		display: block;
		color: #666;
	}

	.poi_grade {
		position: relative;
		top: 50%;
		margin-bottom: 5px;
		margin-top: -12px;
		color: #fe8c00;
		font-size: 23px;
		text-align: center;
		display: block;
	}

	.small_size {
		font-size: 14px;
		color: #fe8c00;
		text-align: center;
	}

	.poi_grade_desc {
		margin-left: 5px;
		color: #fe8c00;
		text-align: center;
	}

	.colum_3 {
		border-right: none;
		height: 100%;
		float: left;
		max-width: 150px;
		min-width: 150px;
		text-align: center;
		display: block;
		color: #666;
	}

	.dl_redirect {
		text-align: center;
		display: block;
		color: #666;
		border: 0;
	}

	.show_detail {
		background-color: #ffc300;
		border-color: #ffc300;
		font-size: 14px;
		color: #333333;
		display: inline-block;
		vertical-align: middle;
		font-weight: 700;
		-webkit-font-smoothing: antialiased;
		line-height: 2.15;
		padding: 0 18px;
		letter-spacing: .1em;
		text-align: center;
		border-radius: 2.15em;
		user-select: none;
		cursor: pointer;
		transition: all .3s ease;
		text-decoration: none;
		outline: 0;
		margin-top: 22px;
	}

	.popper {
		display: none;
	}

	.show_detail:hover+.popper {
		display: block;
		margin-left: 15px;
	}

	.popper {
		display: none;
		top: 35px;
		right: 15px;
		width: 120px;
		height: 120px;
		box-shadow: 1px 1px 3px hsla(0, 0%, 39%, .1), -1px -1px 3px hsla(0, 0%, 39%, .1);
		border-radius: 4px;
		background-color: #fff;
		text-align: center;
		color: #666666;
		border: 0;
	}

	.mp_code {
		width: 110px;
		height: 110px;
		margin: 5px;
		border-style: none;
		text-align: center;
		color: #666666;
	}

	.service_icons div {
		white-space: nowrap;
	}

	.item_place {
		font-size: 12px;
		color: #fe8c00
	}

	.pictures {
		width: 200px;
		height: 125px;
		border-radius: 4px;
	}

	.icons {
		width: 20px;
		height: 20px;
		white-space: nowrap;
		vertical-align: middle;
	}

	.service_title {
		white-space: nowrap;
		font-size: 12px;
		margin-top: 0px;
		vertical-align: middle;
	}

	/* 分页 */
	.paginator_wrapper {
		width: 868px;
		height: 43px;
		margin-top: 40px;
		margin-bottom: 40px;
		color: #666;
		text-align: center;
	}

	.paginator {
		display: inline-block;
		white-space: nowrap;
		font-size: 12px;
		line-height: 12px;
		list-style: none;
		text-align: center;
		color: #666;
		width: 250PX;
	}

	.disabled previous {
		pointer-events: none;
		display: none;
		vertical-align: top;
		margin: 0 10px;
	}

	.pagination-icon-left {
		background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAARCAYAAADkIz3lAAAABGdBTUEAALGPC/xhBQAAAOFJREFUKBWF0TEOgjAUBmD7QkjUWzi5eQQ1cfYOJkAMi2fwCg7GwMYRTNhMuISj3byDdKH+D6ERC/UlUNp+fX0tYuSILMumSqkDEeXekGNUlmWutV7imYk++I2EEE/AlZXxF2HbdRAEspNxAD14VwNdyMB/iCEVReG1p+PCm5rq7Ri0QVLKOV8BD6A9onAL8Rxh4o5MF+4gTkmSbD6f3TdxNwzDuMFjZL32YXNqAJGm6RntHmtfWLiNoujW5jWQB1y4A13Ygn3Y9/2F9a8Zoj5UoWPUrNDuqqqa8LgzAOubeQMiZrKgShCnzgAAAABJRU5ErkJggg==);
		position: absolute;
		left: 50%;
		top: 50%;
	}

	.page_link {
		display: inline-block;
		vertical-align: top;
		margin: 0 20px;
		list-style: none;
		font-size: 16px;
		display: inline-block;
		line-height: 41px;
		position: relative;
		min-width: 10px;
		border: 1px solid #999;
		border-radius: 50%;
		text-align: center;
		text-decoration: none;
		color: #999;
		background-color: transparent;
		cursor: pointer;
		width: 41px;
		height: 41px;
	}

	.page_link a {
		text-decoration: none;
		text-align: center;
	}

	.current {
		display: inline;
		vertical-align: top;
		margin: 0 10px;
		white-space: nowrap;
		list-style: none;
		color: #666666;
	}

	.pagination-ellipsis {
		border: none;
		margin-left: 5px;
		font-size: 16px;
		display: inline-block;
		width: 41px;
		height: 41px;
		line-height: 41px;
		position: relative;
		min-width: 10px;
		border-radius: 50%;
		text-align: center;
		text-decoration: none;
		color: #999;
		white-space: nowrap;
		list-style: none;
	}

	.next {
		display: inline;
		vertical-align: top;
		margin: 0 10px;
		white-space: nowrap;
		list-style: none;
	}

	.pagination-icon-right {
		background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAARCAYAAADkIz3lAAAABGdBTUEAALGPC/xhBQAAAORJREFUKBWF0DEOgjAUBmDbMGhcOIa3UBMTN6/gAsS46w28gjEwyRFM3Ehwdnaz3Vw8gSyA/2toA0qhy4PXj7+vsDRNHSHEnjGWeJ53H1gWl1JOiqI45Hl+C8NwYXEDjpQH0k4Ao7IsLzbMKcH3/W0fZvoopLEoio6oG/Q++HAVBEGi9w2kRhduwC78B9sw53ypLkOb9YX5Std1d6hv9OlvrFsT4zgeZ1l2BZgCv1BnTj2Jnn8Rjp3jX8tGogUJCjCwCxnYhwiqW2Pwsx68mkkdR0AvBYGGaDxtSGNVgc28jY3q5QshsqihGvHOSgAAAABJRU5ErkJggg==);
		position: absolute;
		left: 35%;
		top: 27%;
		transform: translate(-50% -50%);
		width: 10px;
		height: 19px;
		background-size: cover;
		text-align: center;
		color: #999;
		cursor: pointer;
		text-align: center;
	}

	.page_1 {
		border-color: #ffc300;
		color: #333;
		background-color: #ffc300;
		font-size: 16px;
		display: inline-block;
		width: 41px;
		height: 41px;
		line-height: 41px;
		position: relative;
		min-width: 10px;
		border: 1px solid #999;
		border-radius: 50%;
		text-align: center;
		text-decoration: none;
		white-space: nowrap;
	}

	.show {
		background: #fff;
		border: 1px solid #e5e5e5;
		box-shadow: 0 3px 5px 0 rgba(0, 0, 0, .1);
		border-radius: 4px;
		position: absolute;
		left: 134px;
		top: 88px;
		padding: 10px;
		width: 460px;
		margin-left: 810px;
		margin-top: 140px;
	}

	.hot_group {
		margin-bottom: 10px;
	}

	.hot_title {
		font-size: 16px;
		padding: 0 10px;
		color: #ccc;
	}

	.hot_list {
		padding: 5px 0;
	}

	.hot_list a {
		float: left;
		color: #666;
		padding: 1px 5px;
		margin: 2px 5px;
		border-radius: 22px;
		text-decoration: none;
		background-color: transparent;
	}

	.hot_list::before {
		display: table;
		content: "";
	}

	.hot_list::after {
		clear: both;
		display: table;
		content: "";
	}

	.separate_line {
		height: 0;
		margin: 0 10px;
		border-bottom: 1px solid #e5e5e5;
	}

	.right_map {
		position: relative;
		float: right;
		width: 270px;
		
		background-color: #fff;
	}
	.map_1{
		position: absolute;;
		margin-top: -3354px;
		border: 1px solid #e5e5e5;
		height: 400px;
		width: 270px;
		border-radius: 4px;
	}

	.yincnagdejiudian{
		padding-bottom: 20px;
	}

	.remeng{margin-right: 20px;display: inline-block;}

	.search_filter{font-size: 14px;}

	.activee{color: orange;}
	.oranges{color: #ffc300;background-color: #ffc300;}



.moren{background-color: rgb(255,195,0);
		color:  rgb(51, 51, 51);
		display: inline-block;
		padding: 0 10px;
		border-radius: 12px;
		text-decoration: none;
	}
.dtz{display: block;
 z-index: 5;
 width: 300px;
 height: 50px;
 background: #e5e5e5;
 border: 1px solid #E5E5E5;
 box-shadow: 0 5px 14px 0 rgba(0,0,0,.1);
 border-radius: 10px;
 padding: 15px;
 position: absolute;text-align: center;top:275px;left: 469px;}
.xianxian{box-shadow: 0 5px 14px 0 rgba(0,0,0,.1);}
.xianxian span{margin: 8px;}

 .cont {
				/* position: absolute; */
				position:fixed;
				top: 50%;
				left: 50%;
				z-index: 1001;
				width: 560px;
				height: 200px;
				background-color: #f8f8f8;
				border: #e5e5e5;
				border-radius: 10px;
				margin: -98px 0 0 -280px;
				box-shadow: 0 10px 67px 0 rgba(0, 0, 0, .05);
			}
			.cont:after {
				/* content: "\D7"; */
				position: absolute;
				right: 15px;
				top: 10px;
				font-size: 26px;
				font-weight:lighter ;
			}

			#close {
				position: absolute;
				right: 11px;
				top: 4px;
				cursor: pointer;
				width: 15.19px;
				height: 31px;
				
			}

</style>
<style>
 .second_select .el-input__inner{
	 height: 35px;
 }
 .third_select .el-input__inner{
	 height: 35px;
 }


#appp .t2{display: none;}
</style>
<script>
	export default {
		data() {
			return {
				currentPage: 1,
				pageSize: 20,
				p: [],
				isshow: false,
				isShowPlace: false,
				yclx:false,
				showlxlx:true,
				hiddenlxlx:false,
				ycpp:false,
				showpppp:true,
				hiddenpppp:false,
				value1: '',value2: '',
				gd_orange:false,
				sq_orange:false,
				remengchengshi:true,
				abcde:false,
				fghijk:false,
				bx:true,
				b:[],
				dtz:false,



					pickerOptions: {
			disabledDate(time) {
				return time.getTime() > Date.now();
			}, value1: '',value2: '',}
		  

			}
		},
		mounted() {
			this.getData(this.currentPage);
		},
		methods: {
			getData(currentPage) {
				this.axios.get(`/index?currentPage=${currentPage}&pageSize=${this.pageSize}`).then(res => {
					console.log(res.data.results);
					let data = res.data.results;
					this.p = data;
				})
			},
			onCurrentPage(event) {
				this.currentPage = event;
				this.getData(this.currentPage)
			},
			showPlace(){
				this.axios.get('/zhonglou').then(res=>{
					console.log(res.data);
					let data = res.data;
					this.p = data;
				
				})
			},

			showdtz(){
				this.dtz=true
			},
			ishidden(){
				this.dtz=false
			},




			isShow() {
				this.isshow = true;
			},
			isHidden() {
				this.isshow = false;
			},
			showplace() {
				this.isShowPlace = true;
			},
			hiddenplace() {
				this.isShowPlace = false;
			},


			//酒店类型的显示与隐藏
			showlx(){
				this.yclx=true;
				this.showlxlx=false;
				this.hiddenlxlx=true;
			},
			hiddenlx(){
				this.yclx=false;
				this.showlxlx=true;
				this.hiddenlxlx=false;
			},



			//酒店品牌的显示与隐藏
			showpp(){
				this.ycpp=true,
				this.showpppp=false,
				this.hiddenpppp=true,
				this.gd_orange=true
			},
			hiddenpp(){
				this.ycpp=false,
				this.showpppp=true,
				this.hiddenpppp=false,
				this.sq_orange=true
			},

			//热门城市一列的显示隐藏
			showremeng(){
				this.remengchengshi=true,
				this.abcde=false,
				this.fghijk=false
			},
			showabcde(){
				this.remengchengshi=false,
				this.abcde=true,
				this.fghijk=false
			},
			showfghijk(){
				this.remengchengshi=false,
				this.abcde=false,
				this.fghijk=true
			},




			jjx(){
				this.axios.get('/jingjixing').then(res=>{
					console.log(res.data);
					let data = res.data;
					this.p = data;
				})
				
				this.bx=false
			},
			sssx(){
				this.bx=false
				
			},
			gdsx(){
				this.bx=false
				
			},
			hhwx(){
				this.bx=false
			}
			
		}
	}
</script>
