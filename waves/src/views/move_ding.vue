<template>
	<div id="pp">
	 <move_header></move_header>
		<div id="zhezhao" v-show="zhezhao">
			<div>
				<h4>您最多可以选择4个座位</h4>
				<button @click="zhezhao2">朕知道了</button>
			</div>
			
		</div>
		<div class="ding_div">
			<ul>
				<li>
					<div class="del_li"></div>
					<span>1</span>
					<p>选择影片场次</p>
				</li>
				<li>
					<div class="del_li"></div>
					<span>2</span>
					<p>选择座位</p>
				</li>
				<li>
					<div class="del_li"></div>
					<span>3</span>
					<p>14分钟内付款</p>
				</li>
				<li>
					<div class="del_li"></div>
					<span>4</span>
					<p>影院取票</p>
				</li>
			</ul>

			<!-- 座位 -->
			<div class="ding_body_div">
				<div>
					<ul>
						<li>
							<img src="../../public/move_img/zuo_0.png">
							<span>可选座位</span>
						</li>
						<li>
							<img src="../../public/move_img/zuo_1.png">
							<span>已售座位</span>
						</li>
						<li>
							<img src="../../public/move_img/zuo_2.png">
							<span>已选座位</span>
						</li>
						<li>
							<img src="../../public/move_img/zuo_3.png">
							<span>情侣座位</span>
						</li>
					</ul>
					<!-- 银幕中央 -->
					<div class="ding_ying">
						<div>
							<img src="../../public/move_img/yingmu.png">
							<p>银幕中央</p>
						</div>
						<!-- 座位 -->
						<ol v-for="(p,i) of data" :key="i">
							<li>
								<span id="row">{{i+1}}</span>
								<li><img @click="ding($event,i)" data-index="1" :src=" p.row1 "></li>
								<li><img @click="ding($event,i)" data-index="2" :src=" p.row2 "></li>
								<li><img @click="ding($event,i)" data-index="3" :src=" p.row3 "></li>
								<li><img @click="ding($event,i)" data-index="4" :src=" p.row4 "></li>
								<li><img @click="ding($event,i)" data-index="5" :src=" p.row5 "></li>
								<li><img @click="ding($event,i)" data-index="6" :src=" p.row6 "></li>
								<li><img @click="ding($event,i)" data-index="7" :src=" p.row7 "></li>
								<li><img @click="ding($event,i)" data-index="8" :src=" p.row8 "></li>
								<li><img @click="ding($event,i)" data-index="9" :src=" p.row9 "></li>
								<li><img @click="ding($event,i)" data-index="10" :src=" p.row10 "></li>
								<li><img @click="ding($event,i)" data-index="11" :src=" p.row11 "></li>
								<li><img @click="ding($event,i)" data-index="12" :src=" p.row12 "></li>
							</li>
						</ol>
					</div>
				</div>

				<!-- 右侧 -->
				<div class="ding_right">
					<ul v-for="(p,i) of move" :key="i">
						<li>
							<img :src="p.move_img">
						</li>
						<li>
							<h2>{{p.move_name}}</h2>
							<span>类型：</span>
							<span>{{p.move_type}}</span><br>
							<span>时长：</span>
							<span>{{p.move_timelog}}分钟</span>
						</li>
					</ul>
					<ul>
						<li v-for="(p,i) of data2" :key="i">
							<p>影院：
								<span>{{p.name}}</span>
							</p>
							<p>影厅：
								<span>5号大屏幕厅</span>
							</p>
							<p>版本：
								<span>英语2D</span>
							</p>
							<p>场次：
								<span>今天 {{new Date().getMonth() + 1}}月{{new Date().getDate()}} 10:27</span>
							</p>
							<p>票价：
								<span>￥37.9/张</span>
							</p>
						</li>
						<li>
							<p>座位：
								<span v-show="show">一次最多选4个座位</span>
								<div id="zuowei" v-for="(p,i) of zuo" :key="i">
									<p> 第{{p.i + 1}}排第{{p.index}}座</p>
								</div>
							</p>
						</li>
						<li>
							<p v-show="show">请
								<span>点击左侧</span>座位图选择座位</p>

						</li>
						<li>
							<span>总价：</span>
							<span>￥</span>
							<span>{{price.toFixed(1)}}</span>
						</li>
					</ul>
					<ul id="input">

						<input v-model="phone" maxlength="11" @keydown="phone1()" placeholder="输入手机号" /><br>
						<input v-model="password" maxlength="6" @blur="password1()" placeholder="填写验证码" />
						<span id="yanzheng">获取验证码</span>
					</ul>
					<ul>
						<button type="button">确认选座</button>
					</ul>
				</div>
			</div>
		</div>
	 <move_footer></move_footer>
	</div>
</template>
<style scoped>
	* {
		margin: 0;
		padding: 0;
	}

	body {
		font-family: Microsoft YaHei, Helvetica, Arial, sans-serif;
		width: 100%;
		min-width: 1200px;
	}

	* {
		border: 0;
		outline: 0;
	}

	a {
		text-decoration: none;
	}

	ul,
	li {
		margin: 0;
		padding: 0;
		list-style: none;
		outline: 0;
	}
	#zhezhao{
		width: 100%;
		height: 100%;
		position: absolute;
		background: rgba(44, 43, 43, 0.5);
		z-index: 999;
	}
	#zhezhao>div{
		width: 300px;
		height: 180px;
		background: #fff;
		position:absolute;
		left: 40%;
		top: 40%;
		text-align: center;
	}
	#zhezhao h4{
		margin-top: 50px;
		color: #222;
	}
	#zhezhao button{
		width: 150px;
		height: 40px;
		font-size: 14px;
		font-weight: bold;
		padding: 5px 10px;
		border-radius: 30px;
		background: rgb(190, 24, 74);
		margin-top:30px;
		color: #fff;
		cursor: pointer;
	}
	.ding_div {
		width: 1200px;
		margin: 0 auto;
		position: relative;
		top: 100px;
		margin-bottom: 250px;
	}

	.ding_div>ul:first-child {
		width: 100%;
		height: 3.75rem;
		margin-bottom: 2.5rem;
		display: flex;
		justify-content: space-around;
		font-size: 12px;
	}

	#zuowei {
		width: 80px;
		height: 30px;
		background: #fff;
		box-shadow: 0 0 3px 0.3px rgb(236, 186, 180);
		display: inline-flex;
		margin: 10px 10px 10px 0;
	}

	#zuowei>p {
		line-height: 30px;
		margin: 0 auto;
		color: orange;
	}

	.del_li {
		position: absolute;
		top: 0.45rem;
		z-index: -1;
		border-top: 0.3rem solid #ffeed9;
		width: 18.6875rem;
	}

	.ding_div>ul>li {
		width: 18.625rem;
		text-align: center;
		color: #fff;
	}

	.ding_div>ul>li:first-child {
		position: relative;
	}

	.ding_div>ul>li:first-child>span {
		background-color: orange;
	}

	.ding_div>ul>li:first-child>p {
		color: orange;
	}

	.ding_div>ul>li:nth-child(2)>span {
		background-color: orange;
	}

	.ding_div>ul>li:nth-child(2)>p {
		color: orange;
	}

	.ding_div>ul>li:nth-child(2)>div {
		border-color: orange;
	}

	.ding_div>ul>li:last-child {
		position: relative;
	}

	.ding_div>ul>li:first-child>div {
		width: 9.375rem;
		position: absolute;
		right: 0;
		border-color: orange;
	}

	.ding_div>ul>li:last-child>div {
		width: 9.375rem;
		position: absolute;
		left: 0;
	}

	.ding_div>ul>li>span {
		background-color: #ffeed9;
		border-radius: 50%;
		padding: 0 0.35rem;
	}

	.ding_div>ul>li>p {
		color: #999;
		font-size: 14px;
	}

	.ding_body_div {
		border: 1px solid #DDDDDD;
		display: flex;
	}

	.ding_body_div>div:first-child {
		width: 51.25rem;
	}

	.ding_body_div>div:first-child>ul:first-child {
		display: flex;
		justify-content: space-between;
		padding: 1.875rem 0 1.875rem 7.5rem;
	}

	.ding_body_div>div:first-child>ul>li:last-child {
		margin-right: 7.5rem;
	}

	/* 银幕中央 */
	.ding_ying>div {
		text-align: center;
		position: relative;
		margin-bottom: 60px;
	}

	.ding_ying>div:first-child>p:last-child {
		color: #777;
	}

	.ding_ying>ol {
		overflow-x: hidden;
		display: flex;
		justify-content: center;
	}

	.ding_ying>ol li {
		margin: 0;
		text-align: center;
		width: 40px;
		height: 30px;
	}

	.ding_ying>ol li>img {
		margin: 0 auto;
	}

	.ding_ying>ol li>span {
		margin: 0 20px;
		color: #AAAAAA;
		position: absolute;
		left: 0;
	}

	/* 右边 */
	.ding_right {
		width: 23.75rem;
		padding: 1.25rem;
		background: rgba(190, 190, 190, .1);
	}

	.ding_right>ul:first-child {
		margin-bottom: 1.25rem;
		display: flex;
	}

	.ding_right>ul>li>img {
		border: 2px solid #fff;
		box-shadow: 0 0 10px 1px #ccc;
		margin-right: 1.25rem;
		width: 115px;
		height: 158px;
	}

	.ding_right>ul>li>h2 {
		margin-bottom: 1.25rem !important;
	}

	.ding_right>ul:nth-child(2)>li>p:nth-child(4)>span {
		color: orange;
	}

	.ding_right>ul>li {
		font-size: 12px;
	}

	.ding_right>ul>li>span:nth-child(2),
	.ding_right>ul>li>span:nth-child(5) {
		color: #999;
	}

	.ding_right>ul:nth-child(2)>li>p {
		color: #999;
		font-size: 0.875rem;
		margin: 0.625rem 0;
	}

	.ding_right>ul:nth-child(2)>li>p>span {
		color: #000000;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(2)>p>span {
		color: #999;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(3)>p {
		color: black;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(3)>p>span {
		color: orange;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(2) {
		margin-top: 2rem;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(3) {
		text-align: center;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(3)>p {
		margin-top: 1.5625rem;
		margin-bottom: 2.5rem;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(4)>span:nth-child(1) {
		color: #000000;
		font-size: 0.875rem;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(4)>span:nth-child(2) {
		color: orange;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(4)>span:nth-child(3) {
		color: orange;
		font-size: 1.375rem;
	}

	.ding_right>ul:nth-child(2)>li:nth-child(4) {
		border-bottom: 0.0625rem dotted #DDDDDD;
	}

	.ding_right>ul:nth-child(3) {
		margin-top: 1.25rem;
		text-align: center;
		position: relative;
	}

	.ding_right>ul:nth-child(3)>input {
		box-sizing: border-box;
		border: 1px solid #ddd;
		height: 2.5rem;
		margin: 5px;
		width: 13.625rem;
		padding-left: 0.9375rem;
		border-radius: 50px;
	}

	.ding_right>ul:nth-child(3)>span {
		position: absolute;
		right: 5.625rem;
		bottom: 0.9375rem;
		color: #DDDDDD;
	}

	.ding_right>ul:nth-child(4) {
		text-align: center;
	}

	.ding_right>ul:nth-child(4)>button {
		width: 13.625rem;
		height: 2.5rem;
		border-radius: 50px;
		font: 1.125rem;
		color: #FFF;
		background-color: #AAAAAA;
	}

	#input>input:focus {
		border: 1px solid orange;
		box-sizing: border-box;
	}
</style>
<script>
	export default {
		data() {
			return {
				data: [],
				data2: [],
				move: [],
				phone: '',
				password: '',
				M_id: '',
				img_0: 'move_img/zuo_0.png',
				img_1: 'move_img/zuo_1.png',
				img_2: 'move_img/zuo_2.png',
				zuo: [],
				show: true,
				price: 0,
				zhezhao:false,
			}
		},
		mounted() {
			let lid = this.$route.query.move_sid
			this.M_id = this.$route.query.M_id

			this.axios.get('/zuowei').then(res => {
				this.data = res.data.result
			})
			this.axios.get(`/detail/${lid}`).then(res => {
				this.move = res.data.results
			})
			this.axios.get('/ying/' + this.M_id).then(res => {
				this.data2 = res.data.results;

			})
		},
		methods: {
			phone1(e) {
				let reg = /^1[3|4|5|7|8][0-9]{9}$/
				let span = document.getElementById('yanzheng')

				if (reg.test(this.phone)) {
					span.style.color = "orange"
				}


			},
			password1(e) {

			},
			zhezhao2(){
				this.zhezhao = false
			},
			ding(e, i) {
				let index = e.target.dataset.index
				console.log(e, index)
				let img = e.path[0]
				//判定电影座位如果未被买走，可选座，反之不可购买，重复选择取消选座
				if (img.src == 'http://localhost:8080/move_img/zuo_0.png') {
					//最多只能选择4个座位
					if (this.zuo.length < 4) {
						img.src = this.img_2
						this.zuo.push({
							i,
							index
						})

					} else {
						this.zuo.push({
							i,
							index
						})
						this.zhezhao = true
					}
				//如果电影座位已经被买走，不可选座
				} else if (img.src == 'http://localhost:8080/move_img/zuo_2.png') {
					img.src = this.img_0
				}
				if (this.zuo.length > 0 && img.src == 'http://localhost:8080/move_img/zuo_0.png') {
					this.zuo.pop()
				}
				if (this.zuo.length > 0) {
					this.show = false
				} else {
					this.show = true
				}
				this.price = this.zuo.length * 37.9
				console.log(this.zuo)
			}
		}
	}
</script>
