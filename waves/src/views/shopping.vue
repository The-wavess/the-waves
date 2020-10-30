<template>
	<div class="bd">
		<table>
			<tbody>
				<tr>
					<th class="desc">项目</th>
					<th class="unit-price">单价</th>
					<th class="num">数量</th>
					<th class="total-price">总价</th>
				</tr>
				<tr v-for='(item, index) in cart' :key="index">
					<td>
						<a href="#">{{item.u_name}}</a>
					</td>
					<td>
						￥{{item.u_price}}
					</td>
					<td>
						<div class="input-number">
							<button @click="reduce(index)">-</button>
							 <input type="text" v-model="number">
							<button @click="add(index)">+</button>
						</div>
					</td>
					<td>
						￥{{totalPrice}}
					</td>
				</tr>
			</tbody>
		</table>
		<div class=" row discount">
</div>
		<div class=" row price">
			<span class="total-price">
				应付金额：
			</span>
			<span>
				<i>￥{{totalPrice}}</i>
			</span>
		</div>
		<div class="mobile-info">
			将发送美团券码至手机号码
			<a href="#">绑定新的手机号</a>
		</div>
		<router-link to="/pay"> 
			<div class="form-submit">
				<input type="button" class="btn" value="提交订单"/>
			</div>
		</router-link>
	</div>
</template>
<script>
	export default {
   data(){
    return{
		cart:[],
		number:0
		 }
	},
	methods:{
		add(index) {
		 this.number++
		},
		reduce(index) {
		if (this.number === 0) {
		return
		}
		this.number--
			}
		},
  computed:{
    totalPrice(){
    let total = 0;
    for(let i = 0; i<this.cart.length;i++){
	    total += this.number * this.cart[i].u_price;
     }
	    return total;
	  }
 },
 mounted(){
  this.axios.get('/buy').then(res=>{
			 this.cart= res.data.results;
	})
 }
	}
</script>
<style scoped>
.bd{
	width: 980px;
	margin: 10px auto 0;
	padding:10px 0 65px;
	
}

form>table{
	width: 100%;
	text-align: center;
	border: none;
	border-collapse: collapse;
	border-spacing: 0;
	
	}
	tbody{
		display: table-row-group;
		vertical-align: middle;
		border-color: inherit;
	}
	
	.desc{
		width: 500px;
		text-align:left;
		
	}
	table>tbody>tr>th{
		padding: 6px 16px;
		font-size: 14px;
		font-weight:700;
		background-color: #f7f7f7;
	}
	.unit-price{
		width: 100px;
		
	}
	.num{
		width: 180px;
		
	}
	.total-price{
		text-align:right;
	}
	
	table>tbody>tr>td>a{
		text-decoration:none;
		color: #666;
		cursor: pointer;
		text-align:left;
		
	}
	table>tbody>tr>td{
		padding: 12px 16px;
		color:#666;
	}
	 .input-number{
		display:inline-block;
		border: 1px solid #e5e5e5;
		border-radius: 2px;
		
	}
	
	.input-number button{
		position: relative;
	  box-sizing:content-box;
  	outline: 0;
		background-color: #fff;
		cursor: pointer;
		vertical-align: top;
	}
	
	.input-number button,
	.input-number input{
		padding: 0;
		width: 34px;
		height: 34px;
		border:none;
	} 
	.input-number input{
		color: #222;
		border: 1px solid #e5e5e5;
		border-top: none;
		border-bottom:none;
		vertical-align: top;
		text-align: center;
		font-size:14px;
	}
	table>tbody>tr>td:first-child{
		text-align:left;
	}
	
	table>tbody>tr>td:last-child{
		text-align:right;
		color: #f76120;
	}
	
	.discount{
		font-size:14px;
		letter-spacing: 1px;
		color: #666;
	}
	.row{
		padding:12px;
		border-top:1px solid #e5e5e5;
       text-align: right;
	   font-size: 20px;
	   color: #F76120;
	   
	}
	.total-price{
		font-size: 12px;
		font-weight: bolder;
		color:#666;
		line-height: 30px;
		
	}
	.mobile-info{
		text-align: left;
		font-size: 12px;
	}
	.mobile-info a{
		color: #2bb8aa;
		text-decoration: none;
	}
	.form-submit{
		text-align: right;
	}
	.form-submit>.btn{
		display: inline-block;
		padding:5px 20px 4px;
		font-size: 20px;
		font-weight: 400;
		color: #fff;
		background-color: #2db3a6;
		background-image: linear-gradient(to bottom, #2ec3b4,#2db3a6);
		border-width: 0 0 1px;
		border-color:#008177;
		border-radius:2px;
	}
</style>

