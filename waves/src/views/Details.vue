<template>
	<!-- 大框 -->
	<main id="poidetail">
		<div id="bg" v-if="hiddenhidden"></div>
		<div class="cont" v-if="showshow">
			<!-- 好好学习 天天向上 -->
			<!-- <ul> -->
				<span class="line_1_title">使用规则</span>
				<li style="font-size: 12px;color: #666;margin: 0 0 0 21px;">· 直接消费，无需美团券，携带所有入住人的有效身份证办理入住，入住必须按照一人一证</li>
				<li style="font-size: 12px;color: #666;margin: 0 0 0 21px;">· 请在12:00之后入住并于次日13:00之前退房；如需提前入住或延时退房，请咨询商家</li>
			<!-- </ul> -->
			<a id="close" @click="ishidden" href="javascript:;">×</a>
		</div>
		<!-- 大框 -->
		<div class="site_wrapper_wide">
			<!-- 大框 带外边距 -->
			<div class="site_wrapper">
				<!-- 头部导航栏 -->
				<div class="breadcrumb-nav">
					<a href="" class="breadcrumb-item">西安</a>
					<span class="breadcrumb-divider"></span>
					<a href="" class="breadcrumb-item">长安区大学城</a>
					<span class="breadcrumb-divider"></span>
					7天酒店·西安理工大学长乐公园地铁站店
				</div>
				<!-- 大图片 -->
				<div class="base_info">
					<div class="poi_header">
						<!-- 标题 -->
						<div class="relative">
							<!-- 标题_第一行 -->
							<div class="row1">
								<span class="left_title">{{b.b_name}}</span>
								<div class="right_type">
									<span class="hotel_type">{{b.b_type}}</span>
								</div>
							</div>
							<!-- 标题_第二行 -->
							<div class="row2">
								<a href="#" target="_blank">{{b.b_place}}</a>
								<span>{{b.b_address}}</span>
								<a href="#">
									<span class="map_icon"></span>查看地图
								</a>
							</div>
						</div>
						<!-- 标题下边图片 -->
						<div class="poi_display">
							<!-- 左 -->
							<div class="img_detail">
								<div class="pc_album">
									<div class="pc_album_fullScreen">
										<i class="close_icon"></i>
										<div class="main_img">
											<img src="/jd_img/qt.jpg" class="big_img">
											<div class="arrow_left"></div>
											<div class="arrow_right"></div>
											<div class="main_bottom">
												<section>
													<span class="pc_album_item_hover">全部图片(108)</span>
													<span class="pc_album_item">外观(6)</span>
													<span class="pc_album_item">客房(79)</span>
													<span class="pc_album_item">公共区域(5)</span>
													<span class="pc_album_item">大厅(8)</span>
													<span class="pc_album_item">周边(7)</span>
													<span class="pc_album_item">其他(2)</span>
												</section>
											</div>
										</div>
										<!-- 大图下边七张小图 -->
										<div class="pc_album_tabs">
											<div class="fullScreen_box">
												<div class="pc-album-flipsnap">
													<div class="album_common_image_1"></div>
													<div class="album_common_image_2" style="background-image: url(/jd_img/7_2.jpg);"></div>
													<div class="album_common_image_2" style="background-image: url(/jd_img/7_3.jpg);"></div>
													<div class="album_common_image_2" style="background-image: url(/jd_img/7_4.jpg);"></div>
													<div class="album_common_image_2" style="background-image: url(/jd_img/7_5.jpg);"></div>
													<div class="album_common_image_2" style="background-image: url(/jd_img/7_6.jpg);"></div>
													<div class="album_common_image_2" style="background-image: url(/jd_img/7_7.jpg);"></div>
													<div class="album_common_image_2" style="background-image: url(/jd_img/7_8.jpg);"></div>
													<div class="album_common_image_2" style="background-image: url(/jd_img/7_9.jpg);"></div>
													<div class="album_common_image_2" style="background-image: url(/jd_img/7_10.jpg);"></div>
												</div>
											</div>
											<div class="album_cursor_left">

											</div>
											<div class="album_cursor_right">

											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 右 -->
							<ul class="other_detail">
								<li class="other_detail_line1">
									<div class="other_detail_line1_score">
										<span class="score_number">{{b.b_score}}</span>分
									</div>
									<div class="other_detail_line1_level">{{b.b_evaluate}}</div>
								</li>
								<li class="other_detail_line2">
									<div class="line_1">
										<span>{{b.b_mg}}</span>
									</div>
									<div class="line_2">
										{{b.b_phone}}
									</div>
									<ul class="line_3">
										<li class="service_icon">
											<div class="icon_img">
												<img src="/jd_img/wifi.png">
											</div>
											<div class="service_text">{{b.b_service_1}}</div>
										</li>
										<li class="service_icon">
											<div class="icon_img">
												<img src="/jd_img/上网.png">
											</div>
											<div class="service_text">{{b.b_service_2}}</div>
										</li>
										<li class="service_icon">
											<div class="icon_img">
												<img src="/jd_img/收费停车.png">
											</div>
											<div class="service_text">{{b.b_service_3}}</div>
										</li>
										<li class="service_icon">
											<div class="icon_img">
												<img src="/jd_img/行李寄存.png">
											</div>
											<div class="service_text">{{b.b_service_4}}</div>
										</li>
										<!-- <li class="service_icon">
												<div class="icon_img">
													<img src="jd_img/餐厅.png">
												</div>
												<div class="service_text">餐厅</div>
											</li>
											<li class="service_icon">
												<div class="icon_img">
													<img src="jd_img/电吹风.png">
												</div>
												<div class="service_text">电吹风</div>
											</li>
											<li class="service_icon">
												<div class="icon_img">
													<img src="jd_img/会议室.png">
												</div>
												<div class="service_text">会议室</div>
											</li>
											<li class="service_icon">
												<div class="icon_img">
													<img src="jd_img/接送服务.png">
												</div>
												<div class="service_text">接送服务</div>
											</li>
											<li class="service_icon">
												<div class="icon_img">
													<img src="jd_img/洗浴.png">
												</div>
												<div class="service_text">热水洗浴</div>
											</li> -->
									</ul>
								</li>
								<!-- 小地图 -->
								<li class="other_detail_line3">
									<!-- <map_s class="map_s"></map_s> -->
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 房型 -->
				<div class="deal" id="info3">
					<ul class="nav_tabs clear_fix">
						<div class="nav_tabs_content">
							<li class="li_fir"><a href="#info3">房型预定</a></li>
							<li><a href="#info2">交通位置</a></li>
							<li><a href="#info1">酒店信息</a></li>
						</div>
					</ul>
					<div class="second_row">
						<div class="select_group">
							<!-- 第二框 入住日期-->
							<div class="second_select">
								<div class="time_item">
									<span class="time_1">入住</span>
									<input type="text" class="input1">
									<!--<el-date-picker
										v-model="value1"
										type="date"
										placeholder="选择日期">
									</el-date-picker>-->
									<span class="icon"></span>
									<span class="weekinfo">今天</span>
								</div>
							</div>
							<!-- 中间减号 -->
							<span class="connect_line">-</span>
							<!-- 第三框 离店日期-->
							<div class="third_select">
								<div class="time_item">
									<span class="time_1">离店</span>
									<input type="text" class="input1">
									<span class="icon"></span>
									<span class="weekinfo">星期五</span>
								</div>
							</div>
							<!-- 共一晚 -->
							<span class="one_night">共1晚</span>
							<!-- 搜索按钮 -->
							<input type="button" class="search_button" value="重新搜索">
						</div>
					</div>
					<!-- 各种房型 -->
					<div class="room_type">
						<!-- 第一种房型 -->
						<div class="first_room">
							<div class="first_line">
								<!-- 左边图片 -->
								<div class="img_1">
									<img src="/jd_img/qt_s2.jpg" alt="" class="bed_img">
								</div>
								<!-- 中间 -->
								<div class="type_2">
									<div><span class="title">自主大床房</span></div>
									<div class="facility">
										<span>上网 wifi</span>
										<span>|</span>
										<span>卫浴 独立</span>
										<span>|</span>
										<span>窗户 有</span>
										<span>|</span>
										<span>可住 2人</span>
										<span>|</span>
										<span>面积 10-20</span>
									</div>
									<div>
										<span> </span>
									</div>
								</div>
								<!-- 右上角 -->
								<div class="right_3">
									<a href="">共4个产品</a>
									<span></span>
								</div>
							</div>
							<!-- 具体各种房型 -->
							<div class="">
								<div class="room_type_detail">
									<table border="0">
										<tr class="tr_line">
											<td class="first_row" width="265px">特惠价[普卡价]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px" @click="isshow">使用规则</td>
											
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">特惠价[贴心早餐-双早]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">含两份早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										
										
										<tr class="tr_line">
											<td class="first_row" width="265px">标准价[7天特惠]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">标准价</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">标准价[当季特惠]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<!-- 第2种房型 -->
						<div class="second_room">
							<div class="first_line">
								<!-- 左边图片 -->
								<div class="img_1">
									<img src="/jd_img/qt_s2.jpg" alt="" class="bed_img">
								</div>
								<!-- 中间 -->
								<div class="type_2">
									<div><span class="title">自主双床房</span></div>
									<div class="facility">
										<span>上网 wifi</span>
										<span>|</span>
										<span>卫浴 独立</span>
										<span>|</span>
										<span>窗户 有</span>
										<span>|</span>
										<span>可住 2人</span>
										<span>|</span>
										<span>面积 10-20</span>
									</div>
									<div>
										<span> </span>
									</div>
								</div>
								<!-- 右上角 -->
								<div class="right_3">
									<a href="">共4个产品</a>
									<span></span>
								</div>
							</div>
							<!-- 具体各种房型 -->
							<div class="">
								<div class="room_type_detail">
									<table border="0">
										<tr class="tr_line">
											<td class="first_row" width="265px">特惠价[普卡价]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">特惠价[贴心早餐-双早]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">含两份早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">标准价[金秋狂欢]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">标准价</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">特惠价(延迟退房＋免费停车)[♥ 人气热销 ❀延迟退房❀免費停车自助洗车♥]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						<!-- 第3种房型 -->
						<div class="third_room">
							<div class="first_line">
								<!-- 左边图片 -->
								<div class="img_1">
									<img src="/jd_img/qt_s2.jpg" alt="" class="bed_img">
								</div>
								<!-- 中间 -->
								<div class="type_2">
									<div><span class="title">自主双床房</span></div>
									<div class="facility">
										<span>上网 wifi</span>
										<span>|</span>
										<span>卫浴 独立</span>
										<span>|</span>
										<span>窗户 有</span>
										<span>|</span>
										<span>可住 2人</span>
										<span>|</span>
										<span>面积 10-20</span>
									</div>
									<div>
										<span> </span>
									</div>
								</div>
								<!-- 右上角 -->
								<div class="right_3">
									<a href="">共4个产品</a>
									<span></span>
								</div>
							</div>
							<!-- 具体各种房型 -->
							<div>
								<div class="room_type_detail">
									<table border="0">
										<tr class="tr_line">
											<td class="first_row" width="265px">特惠价[普卡价]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">特惠价[贴心早餐-双早]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">含两份早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">标准价[7天特惠]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
										<tr class="tr_line">
											<td class="first_row" width="265px">特惠价(延迟退房＋免费停车)[♥ 人气热销 ❀延迟退房❀免費停车自助洗车♥]</td>
											<td class="second_row_ch" width="118px">有窗户</td>
											<td class="third_row_zc" width="118px">无早餐</td>
											<td width="150px"><span id="cancel">
													不可取消
													<div class="hidden_text">
														入住日当天18点前可免费取消，当前已过最晚可取消时间（10月21日18点），订单确认后不可取消/变更，如未入住，酒店将扣除全额房费
													</div>
												</span></td>
											<td class="use_rules" width="150px">使用规则</td>
											<td>
												<!-- 微信小程序预定 -->
												<div class="colum_3">
													<div class="dl_redirect">
														<a href="#" class="show_detail">微信小程序预定</a>
														<div class="popper">
															<img src="https://p0.meituan.net/travelcube/ce83f11af2812946a1bf8d3c995ddc7094277.jpg" alt="" class="mp_code">
														</div>
													</div>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="content">
					<!-- 不带外边距，包含交通位置和酒店信息 -->
					<div class="main_info">
						<!-- 交通位置 -->
						<h2 class="map" id="info2">交通位置</h2>
						<div class="map_text">
							<!-- 左边地图 -->
							<div class="big_map">
								<map_b></map_b>
							</div>
							<!-- 右边文字 -->
							<div class="near_place clear">
								<div class="p20">
									<ul class="ul1 clear">
										<li class="place_btn current">机场/车站</li>
										<li class="place_btn">购物</li>
										<li class="place_btn">景点</li>
										<li class="place_btn">餐厅</li>
										<li class="place_btn tail">娱乐</li>
									</ul>
									<ul class="around_detail">
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">关山站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">61.2km</span>
												</p>
											</div>
										</li>
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">鄠邑站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">33.6km</span>
												</p>
											</div>
										</li>
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">阿房宫站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">17.8km</span>
												</p>
											</div>
										</li>
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">大程站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">45.8km</span>
												</p>
											</div>
										</li>
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">西安阎良站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">45.8km</span>
												</p>
											</div>
										</li>
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">阎良火车站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">49.8km</span>
												</p>
											</div>
										</li>
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">西安北站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">10.1km</span>
												</p>
											</div>
										</li>
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">新丰镇站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">35.1km</span>
												</p>
											</div>
										</li>
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">西安南站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">25.5km</span>
												</p>
											</div>
										</li>
										<li class="place_line_item">
											<span class="around-icon-station"></span>
											<div class="ml25">
												<p class="fs14_fc3">西安火车站</p>
												<p class="fs12_mt5">距离约
													<span class="number_color">1.5km</span>
												</p>
											</div>
										</li>
									</ul>
								</div>
								<!-- <span>:after</span> -->
							</div>
						</div>
						<!-- 酒店信息 -->
						<h2 class="info" id="info1">酒店信息</h2>
						<div class="hotel_info clear_fix_info">
							<div class="hotel_info_details clear_fix_info">
								<div class="details_clear">
									<dt class="poi-hotelinfo-title">联系方式</dt>
									<dd>
										<span>{{b.b_phone}}</span>
									</dd>
								</div>
								<div class="details_clear">
									<dt class="poi-hotelinfo-title">酒店信息</dt>
									<dd>
										<span>{{b.b_mg}}</span>
									</dd>
								</div>
								<div class="details_clear"><dt class="poi-hotelinfo-title">酒店简介</dt>
									<dd>
										<span>{{b.b_intro}}</span>
									</dd>
								</div>
								<div class="details_clear">
									<dt class="poi-hotelinfo-title">酒店政策</dt>
									<dd>
										<span>入住时间: 14:00以后 离店时间: 13:00之前</span>
									</dd>
								</div>
								<div class="details_clear">
									<dt class="poi-hotelinfo-title">住宿预订提供方</dt>
									<dd>
										<span class="look"><router-link to="/img" target="_blank">查看</router-link></span>
									</dd>
								</div>
							</div>
						</div>
					</div>
					<div>

					</div>
				</div>

			</div>
			<!-- 交通位置 、酒店信息-->
			<!-- 带外边距 -->

		</div>
		<!-- </div> -->
	</main>
</template>
<style scoped>
	/* 导航栏 */
	* {
		margin: 0;
		padding: 0;
	}

	* {
		box-sizing: border-box;
	}

	body {
		width: 1349px;
		height: 3878.5px;
		color: #666;
	}

	#poidetail {
		background: #f8f8f8;
		display: block;
		color: #666;
		height: 3120.5px;
	}

	.site_wrapper_wide {
		height: 3120.5px;
		background: linear-gradient(180deg, #e6e6e6, #f8f8f8);
		background-size: 100% 20px;
		background-repeat: no-repeat;
		display: block;
	}

	.site_wrapper {
		width: 1190px;
		margin: 0 auto;
	}

	.breadcrumb-nav {
		font-size: 12px;
		height: 52px;
		line-height: 52px;
		font-weight: 700;
	}

	.breadcrumb-item {
		color: #333333;
		text-decoration: none;
		background-color: transparent;
		cursor: pointer;
	}

	.breadcrumb-divider {
		margin: 0 5px;
		color: #777;
	}

	/* 中间 */
	.base_info {
		display: block;
		color: #666666;
		height: 443px;
	}

	.poi_header {
		display: block;
		color: #666666;
	}

	.relative {
		position: relative;
		width: 990px;
		height: 53px;
	}

	.row1:after {
		clear: both;
		content: "";
		display: block;
		visibility: hidden;
	}

	.left_title {
		font-weight: 700;
		float: left;
		color: #333;
		font-size: 25px;
		width: 465.13px;
		height: 35px;
	}

	.right_type {
		text-indent: 20px;
		height: 37px;
		line-height: 37px;
		float: left;
		display: block;
		color: #666666;
	}

	.hotel_type {
		color: #999;
		font-size: 12px;
		text-indent: 20px;
		width: 36px;
		height: 14px;
	}

	.row2 {
		margin-bottom: 10px;
		font-size: 12px;
	}

	.poi_header a {
		color: #ffc300;
		text-decoration: none;
		background-color: transparent;
		cursor: pointer;
	}

	.map_icon {
		margin: 0 4px -2px;
		width: 8px;
		height: 12px;
		background-size: 100% 100%;
		background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAMCAYAAABfnvydAAAAAXNSR0IArs4c6QAAAP9JREFUGBmFjqFOA2EQhGePw7UYgjjfCiSFBEEfgOBRJEU1VVVVCHiBShyvQdIGhwABgUDSEAQKBMFAWkFaaO6Wb8+hupf9d3dmZ/akBWHB+5NqmqsvV5PxW6Yh/ZFtaGx+D2l6AKj8MzM9a02bCURfOaQDmPbIFv0EbF0f6qYqsHW0iXrWwJrwW9Upx2QzFqblgms1yDIK+hBJ01gY0HQATv2a/0m4nDNHLOnc/IbtX40YM+7jT0Y1XdiOdhPb1ifgPjlHKRwj35TqgA7DiEx3LJyUatcM9aFeNQ7K/EpbEFkMOLR5X7h9iUtOfUwB3vFZZlwBOENd8P2Af6mqyR+C71MgXUdVnwAAAABJRU5ErkJggg==);
		display: inline-block !important;
		color: #ffc300;
		cursor: pointer;
	}

	.poi_display {
		position: relative;
		height: 380px;
		max-width: 1190px;
		display: block;
		color: #666666;
		margin-top: 8px;
	}

	.img_detail {
		width: 63.2%;
		height: 100%;
		float: left;
	}

	.pc_album {
		width: 100%;
		min-height: 270px;
		max-width: 752px;
		overflow: hidden;
	}

	.pc_album_fullScreen {
		background-image: url(//p1.meituan.net/codeman/a65630ced2eecd6e3a19c66a2ffebeb46975.gif);
		background-repeat: no-repeat;
		background-position: 50% 25%;
	}

	.close_icon {
		color: #666666;
	}

	.main_img {
		/* background-image: url(jd_img/qt.jpg); */
		position: relative;
		width: 100%;
		height: 270px;
		border-radius: 4px;
		transition: background-image .2s;
		background-size: cover;
		background-color: rgba(0, 0, 0, .05);
		background-position: 50% 50%;
	}

	.big_img {
		width: 752px;
		height: 270px;
	}

	.arrow_left {
		display: none;
	}

	.arrow_right {
		display: block;
	}

	.main_bottom {
		position: absolute;
		bottom: 0;
		width: 100%;
		color: #aaa;
		font-size: 14px;
		line-height: 30px;
		background-color: rgba(0, 0, 0, .05);
		font-weight: lighter;
		border-bottom-left-radius: 4px;
		border-bottom-right-radius: 4px;
	}

	.main_bottom>section {
		padding-left: 12px;
		display: block;
		color: #aaa;
		height: 30px;
		background-color: rgba(0, 0, 0, .6);
	}

	.pc_album_item_hover {
		cursor: pointer;
		color: #fff;
	}

	.pc_album_item:before {
		cursor: pointer;
		content: "|";
		padding: 0 8px;
		color: #fff;
	}

	.pc_album_tabs {
		position: relative;
		white-space: nowrap;
		margin-top: 10px;
		display: block;
		color: #666666;
	}

	.fullScreen_box {
		white-space: nowrap;
		display: block;
		color: #666666;
	}

	.pc-album-flipsnap {
		transition-property: transform;
		transition-timing-function: cubic-bezier(0, 0, 0.25, 1);
		transition-duration: 350ms;
		transform: translate3d(0px, 0px, 0px);
		width: 100%;
		white-space: nowrap;
	}

	.album_common_image_1 {
		background-image: url(../../public/jd_img/7_2.jpg);
		margin-left: 0;
		border: 2px solid #ffc300;
		border-radius: 4px;
		width: 113px;
		height: 96px;
		display: inline-block;
		position: relative;
		cursor: pointer;
		background-size: 150% 150%;
		background-color: rgba(0, 0, 0, .05);
		background-position: 50% 50%;
		white-space: nowrap;
	}

	.album_common_image_2 {
		display: inline-block;
		position: relative;
		cursor: pointer;
		width: 117px;
		height: 100px;
		margin: 0 0 0 10px;
		border-radius: 4px;
		background-size: 150% 150%;
		background-color: rgba(0 0 0 .05);
		background-position: 50% 50%;
	}

	.album_cursor_left {
		left: -2px;
		cursor: pointer;
		position: absolute;
		top: 0;
		height: 100%;
		color: #fff;
		font-size: 30px;
		text-align: center;
		width: 40px;
		line-height: 100px;
		white-space: nowrap;
	}

	.album_cursor_left::before {
		left: 14px;
		transform: translateY(-50%) rotate(45deg);
		content: " ";
		display: block;
		position: absolute;
		top: 50%;
		width: 10px;
		height: 10px;
		border: none;
		border-bottom: 2px solid #fff;
		border-left: 2px solid #fff;
	}

	/* .album_cursor_right::before{} */
	.album_cursor_right {
		right: -2px;
		cursor: pointer;
		position: absolute;
		top: 0;
		height: 100%;
		color: #fff;
		font-size: 30px;
		text-align: center;
		width: 40px;
		line-height: 100px;
		white-space: nowrap;
	}

	/* 右 */
	.other_detail {
		position: relative;
		width: 35.6%;
		background: #fff;
		border: 1px solid #e5e5e5;
		border-radius: 4px;
		height: 100%;
		float: right;
		list-style: none;
		display: block;
		margin-block-start: 1em;
		margin-block-end: 1em;
		margin-inline-start: 0;
		margin-inline-end: 0;
		padding-inline-start: 0px;
		margin-top: 0px;
	}

	.other_detail_line1 {
		height: 115px;
		margin: 0 20px;
		border-bottom: 1px solid #e5e5e5;
		display: list-item;
		list-style: none;
	}

	.other_detail_line1_score {
		border: 2px dotted #f90;
		border-radius: 50%;
		height: 87px;
		width: 87px;
		float: left;
		line-height: 87px;
		text-align: center;
		color: #f90;
		margin: 12px 0 0;
		display: block;
	}

	.score_number {
		font-weight: 500;
		padding-right: 2px;
		font-size: 34px;
		text-align: center;
		color: #f90;
	}

	.other_detail_line1_level {
		margin-left: 11px;
		float: left;
		line-height: 115px;
		color: #f90;
		font-size: 16px;
		display: block;
	}

	.other_detail_line2 {
		margin: 20px;
		font-size: 14px;
	}

	.line_1 {
		color: #666;
		line-height: 20px;
		margin-bottom: 10px;
		overflow: hidden;
		text-overflow: ellipsis;
		word-break: break-all;
		white-space: nowrap;
	}

	.line_2 {
		margin-bottom: 10px;
	}

	.line_3 {
		overflow: hidden;
		white-space: nowrap;
		height: 53px;
		list-style: none;
		color: #666;
	}

	.service_icon {
		width: 60px;
		height: 46px;
		margin: 5px 10px 0;
		float: left;
		text-align: center;
	}

	.icon_img>img {
		width: 28px;
		height: 28px;
	}

	.service_text {
		color: #999;
		font-size: 12px;
	}

	/* 房型 */
	.deal {
		margin-top: 10px;
		background: #fff;
		border: 1px solid #e5e5e5;
		border-radius: 4px;
		padding: 20px;
	}

	.nav_tabs {
		height: 63px;
		box-shadow: none;
		transition: none;
		border-bottom: 1px solid #e5e5e5;
		background: #fff;
		list-style: none;
		text-align: center;
		vertical-align: middle;
	}

	.clear_fix:before {
		display: table;
		content: "";
	}

	.clear_fix:after {
		display: table;
		content: "";
		clear: both;
	}

	.nav_tabs_content {
		display: block;
	}

	.nav_tabs_content a {
		font-size: 23px;
		font-weight: 500;
	}

	.nav_tabs_content>li>a {
		text-decoration: none;
		color: #666;
	}

	.nav_tabs_content>li>a:hover {
		color: #FFC300;
	}

	.li_fir {
		margin-left: 0;
		text-align: center;
		vertical-align: middle;
	}

	.nav_tabs li {
		float: left;
		text-align: center;
		margin: 0 25px;
	}

	.nav_tabs li_fir>a {
		color: #FFC300;
		text-decoration: none;
		border-bottom: 2px solid #ffc300;
	}

	/* .nav_tabs li a{position: relative;display: block;font-size: 16px;line-height: 62px;background-color: transparent;}
	.filter-box{vertical-align: middle;margin-top: 5px;height: 55px;float: right;}
	.checkin{padding: 0 6px 0 20px;position: relative;display: inline-block;background-size: 20px;background-repeat: no-repeat;background-position: 235px;color: #666666;}
	.checkin_item{position: relative;background-color: #fff;padding: 0 10px;border: 1px solid #e5e5e5;border-radius: 4px;}
	._label{left: 0;width: 100px;padding-top: 2px;font-size: 12px;text-align: right;color: #999999;cursor: default;}
	.input_1{width: 136px;margin-top: -3px;color: #666;border: 0;outline: 0;background-color: transparent;font-size: 14px;vertical-align: middle;overflow: visible;}
	.icon_candle{display: inline-block;vertical-align: middle;margin-top: -2px;width: 12px;height: 12px;background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAYAAABWdVznAAAAAXNSR0IArs4c6QAAARhJREFUKBV9kL8uRFEQxn/nLMUSQvYBtvcGEt2KaBQ6RImKN5B4Ea1dJDQSDY2wQiVRaPXbrIh/G67xnbP3rOtPdpK58535Zua7M5CbGc4uuJeP9HJXjIZceofo7JxpHCvC+xgHlFjik8VY5GmQUVduXrkF8duh4Y5BZijT5pEnNVcZ4jU2dBjmQwolZTwV4RMkeRNJfeySWsIpFnOqvQ0KLU3dSQV9o7E8oIIHSe72LUxkxpzX9Gc3ybWW25Cv5nhdS679wfASFLrmdBF4z18NDcr+wXw3jOkCE5obbJxT3ckCdFMch5jMJ6CjHtHMl29zyBt7Pa4AgkKcpF/Y1PKdyBlbwl21QrGgd9YUaczK3U/u18vFAWdfuYBd68RMm5EAAAAASUVORK5CYII=);background-size: 100% 100%;color: #666;}
	.weekinfo{position: absolute;top: 0;color: #999;line-height: 37px;right: 34px;font-size: 12px;pointer-events: none;}
	.calendar{position: absolute;z-index: 1000;right: -8px;top: 32px;width: 230px;line-height: 30px;border-top: none;background-color: #fff;text-align: center;box-shadow: 0 0 20px 2px rgba(0,0,0,.1);
};}
.cal_header{height: 44px;line-height: 44px;font-size: 14px;font-weight: 700px;color: #fff;background-color: #ffc300;padding: 0;border: 0;text-align: center;display: block;}

 */


	/* .deal_list_box{padding-top: 15px;border-top: 0;}
.filter-box{vertical-align: middle;display: inline-block;height: 55px;}
.clearfix::before{display: table;content: "";}
.clearfix::after{display: table;content: "";clear: both;}






.deal_section{margin: 0 20px;}
.deal_table{width: 100%;max-width: 100%;margin-bottom: 0;border-collapse: collapse;border-spacing: 0;list-style: none;margin-block-start: 1em;margin-block-end: 1em;margin-inline-start: 0px;margin-inline-end: 0px;padding-inline-start: 40px;}
.deal_item{padding-top: 30px;border-top: 1px solid #e5e5e5;display: list-item;text-align: -webkit-match-parent;}
.deal_img{float: left;position: relative;}
.pull_right{float: right;display: block;}
.book_info{}
.border_radius_2{border-radius: 2px;border-style: none;width: 128px;height: 80px;}
.deal-img-number{position: absolute;right: 5px;bottom: 8px;width: 30px;height: 18px;text-align: center;color: #fff;border-radius: 2px;background-color: rgba(0,0,0,.8);font-weight: lighter;font-size: 12px;line-height: 18px;}
.pull-right_fs{padding-top: 5px;float: right;font-weight: 300;font-size: 12px;}
.pull-right_fs_a{color: #fe8c00;text-decoration: none;background-color: transparent;}	
.icon-triangle-up:after{content: "";display: inline-block;margin-left: 5px; width: 0;border-left: 5px solid transparent;border-right: 5px solid transparent;transition: all .2s;border-bottom: 8px solid;}
.hotel_service_info+ */

	/* 第二框和第三框 */
	.second_row {
		width: 1168px;
		border-bottom: 1px solid #e5e5e5;
	}

	.select_group {
		display: inline-block;
		padding-top: 20px;
		padding-bottom: 20px;
	}

	/* 第二框 */
	.second_select {
		padding: 0 6px 0 0;
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
		padding: 0 0 0 6px;
		position: relative;
		line-height: 35px;
		display: inline-block;
		background-size: 20px;
		background-repeat: no-repeat;
		background-position: 235px;
	}

	.one_night {
		font-size: 12px;
		color: #999;
	}

	.search_button {
		margin-top: 2px;
		line-height: 35px;
		border: none;
		padding: 0 20px;
		background-color: #ffc300;
		font-size: 14px;
		color: #333;
		display: inline-block;
		vertical-align: middle;
		font-weight: 700;
		letter-spacing: .1em;
		text-align: center;
		border-radius: 5px;
		cursor: pointer;
		outline: 0;
		transition: all 3s ease;
		overflow: visible;
		margin-left: 20px;
	}

	.room_type {
		margin: 10px;
		padding: 30px 0 0;
	}

	.first_room {
		border-bottom: 1px solid #e5e5e5;
	}

	.second_room {
		padding-top: 30px;
		border-bottom: 1px solid #e5e5e5;
	}

	.third_room {
		padding-top: 30px;
		border-bottom: 1px solid #e5e5e5;
	}

	.first_line {
		height: 100px;
	}

	.img_1 {
		float: left;
	}

	.bed_img {
		border-radius: 4px;
	}

	.type_2 {
		float: left;
		padding-left: 15px;
		font-size: 12px;
	}

	.title {
		font-size: 20px;
		font-weight: 700;
		color: #000000;
	}

	.facility {
		margin-top: 15px;
		margin-bottom: 15px;
	}

	.facility>span {
		margin: 10px 5px
	}

	.right_3 {
		float: right;
		padding-right: 5px;
		color: #fe8c00;
		font-size: 10px;
	}

	/* .4p{text-decoration: none;} */
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
		border: 0;
		transition: all .3s ease;
		text-decoration: none;
		outline: 0;
		margin-top: 22px;
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
	}

	.mp_code {
		width: 110px;
		height: 110px;
		margin: 5px;
		border-style: none;
		text-align: center;
		color: #666666;
	}

	.popper {
		display: none;
	}

	.show_detail:hover+.popper {
		display: block;
	}

	.room_type_detail {
		border-top: 1px dotted #e5e5e5;
	}

	table {
		font-size: 12px;
		color: #333;
		margin-top: 20px;
	}

	.tr_line {
		border-bottom: 1px solid #e5e5e5;
		height: 68px;
	}

	.first_row {
		font-size: 12px;
		color: #000000;
		font-weight: 700;
		padding-left: 5px;
	}

	#cancel {
		padding-bottom: 2px;
		cursor: pointer;
		border-bottom: 1px dotted #333;
	}

	.hidden_text {
		display: none;
	}

	.hidden_text {
		color: #999;
		box-shadow: 0 3px 5px 0 #ccc;
		border-radius: 4px;
		display: none;
		position: absolute;
		width: 131px;
		background: #fff;
		z-index: 2;
		padding: 10px;
		border: 1px solid #e5e5e5;
		margin-left: -8px;
		margin-top: 10px;
	}

	#cancel:hover>.hidden_text {
		display: block;
	}

	.use_rules {
		color: #ffc300;
		cursor: pointer;
	}

	.content {
		padding: 10px 0 64px;
		margin: 0 auto;
		width: 1190px;
	}

	.main_info {
		position: relative;
		float: left;
	}

	.map {
		position: relative;
		font-size: 20px;
		padding-bottom: 10px;
		color: #333;
		line-height: 2;
		margin-top: 8px;
	}

	.map_text {
		border-radius: 4px;
		border: 1px solid #e5e5e5;
		background: #fff;
		float: left;
		display: block;
	}

	.big_map {
		float: left;
		width: 775px;
		height: 415px;
		display: block;
		border: 1px solid #e5e5e5;
	}

	.near_place {
		width: 412px;
		height: 412px;
		display: inline-block;
	}

	.p20 {
		padding: 20px;
	}

	.ul1 {
		border-bottom: 1px solid #e5e5e5;
		font-size: 14px;
		color: #666;
		list-style: none;
		float: left;
		display: block;
	}

	.clear:after {
		clear: both;
		content: "";
		display: block;
		width: 0;
		height: 0;
		visibility: hidden;
		position: fixed;
	}

	.current {
		color: #ffc300;
		border-bottom: 2px solid #ffc300;
	}

	.place_btn {
		float: left;
		cursor: pointer;
		margin-right: 46px;
		padding-bottom: 20px;
		display: list-item;
	}

	.tail {
		margin-right: 0;
	}

	.around_detail {
		height: 347.5px;
		overflow: auto;
		list-style: none;
		margin-top: 45px;
	}

	.place_line_item {
		padding: 13.5px 0;
		border-bottom: 1px solid #e5e5e5;
		display: list-item;
	}

	.around_icon_station {
		background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAMAAAC6V+0/AAAAAXNSR0IB2cksfwAAAAlwSFlzAAALEwAACxMBAJqcGAAAALFQTFRFAAAA/8MA/8MA/8MA/8MA/8MA/8MA/8MA/sMA/8MA/8IA/8MA/8MA/8MA/8MA/8MA/8MA/sMA/8MA/8MA/8IA/8IA/8MA/8MA/8MA/8MA/8MA/8MA/8QA/sMA/8IA/8IA/8MA/8MA/8MA/8MA/8MA/8IA/8MA/8MA/8MA/8MA/8MA/8IA/8MB/8EApshD/8EA/8EA/8IA/8MA/8MA/8IA/8EA/8IA/8MA/8MA/8IA/8MA7uUfygAAADt0Uk5TAP/29PP1/uO+u7u5urzL++i2tLO1tLfC2f3itrGxsbCysND66+np+fznlLaRchexcKfmoaZ1VeD499a32CdNAAAAkklEQVR4nGNgoBgwMjIxs7AyM7EyAgFMkI2dg5OLm4eTl48FIciIrAlJOxMrCzMrP7J2RgFBIWFhEVExcQlJbNqxCiLZLiUtIysnr6CopIxkpqSKlKqagIo6m4YmknYJLRCHkUVbGElQRxfI0WPUNzBECBoZm4BVmpqZIzle3QLkbkZLK4RFDIwIgBJOaK4kFgAAmUQIEEGGshgAAAAASUVORK5CYII=);
		width: 20px;
		height: 20px;
		background-size: 100% 100%;
		float: left;
	}

	.ml25 {
		margin-left: 25px;
	}

	.fs14_fc3 {
		color: #333;
		font-size: 14px;
	}

	.fs12_mt5 {
		font-size: 12px;
		margin-top: 5px;
	}

	.number_color {
		color: #f90;
	}

	.info {
		position: relative;
		font-size: 20px;
		padding-bottom: 10px;
		color: #333;
		line-height: 2;
		margin-top: 20px;
	}

	.hotel_info {
		background: #fff;
		border: 1px solid #e5e5e5;
		border-radius: 4px;
		height: 404;
	}

	.hotel_info_details {
		line-height: 20px;
		font-size: 12px;
		color: #666;
	}

	/* .clear_fix_info::before{display: table;content: "";}
		.clear_fix_info::after{display: table;content: "";clear: both;} */
	.hotel_info div {
		border-bottom: 1px solid #e5e5e5;
		padding-bottom: 20px;
		padding-top: 20px;
		margin-left: 20px;
		margin-right: 20px;
	}

	/* .details_clear::after{clear: both;content: "";display: block;width: 0;height: 0;visibility: hidden;} */
	.hotel_info_details hotel_info_details {
		border-bottom: none;
	}

	.poi-hotelinfo-title {
		color: #222;
		font-weight: 700;
		margin-right: 10px;
		width: 55px;
		clear: left;
		position: relative;
		min-height: 1px;
		padding-right: 0px;
		float: left;
		display: block;
	}

	.map_s{
		border:1px solid #e5e5e5 ;
		width:423px ;
		height:115.5px ;
	}
	.look{
		color: #ffc300;;
	}






	.btn1{display: block;position: relative;}
#bg {
				width: 100%;
				height: 3120.5px;
				/* height: 100%; */
				
				position: absolute;
				left: 0;
				top: 0;
				background: rgba(0, 0, 0, 0.5);
				z-index: 1000;
				text-align: center;
			}

			.cont {
				/* position: absolute; */
				position: fixed;
				top: 58%;
				left: 48%;
				z-index: 1001;
				width: 560px;
				height: 200px;
				text-align: center;
				background-color: #f8f8f8;
				border: #e5e5e5;
				border-radius: 4px;
				margin: -98px 0 0 -280px;
			}

			.close {
				position: absolute;
				right: -100px;
				top: 0px;
				cursor: pointer;

			}

		.line_1_title{font-size: 16px;color: #333;margin: 40px 0 0 31px;padding: 0 0 5px;}
		.count ul{list-style: none;vertical-align: middle;}
		/* .count ul li{font-size: 12px;color: #666;margin: 0 0 0 21px;} */
			
</style>
<script>
	export default {
		data() {
			return {
				b: [],
				showshow: false,
				hiddenhidden: false,


				pickerOptions: {
          			disabledDate(time) {
            		return time.getTime() > Date.now();
				    },
				},value1: '',
			}
		},
		mounted() {
			let id = this.$route.params.id;
			console.log(id)
			this.axios.get(`/jd_details?id=${id}`).then(res => {
				console.log(res.data.results);
				let data = res.data.results;
				this.b = data[0];
			})
		},
		methods: {
			showtext() {
				alert('333')
			},
			isshow() {
				this.showshow = true;
				this.hiddenhidden=true;
				},
			ishidden() {
				this.showshow = false;
				this.hiddenhidden=false;
			}
		}
	}
</script>>
