<template>
	<div>
		<div class="nav">
			<a href="javascript:#;" :class="{s1:active==i}" v-for="(e,i) of 5" :key="i" @click="a(i)">标题{{i+1}}</a>
		</div>
		<div class="navbar">
			<div v-if="active==0">1</div>
			<div v-else-if="active==1">2</div>
			<div v-else-if="active==2">3</div>
			<div v-else-if="active==3">4</div>
			<div v-else>5</div>
		</div>
	</div>

</template>

<script>
	export default {
		data() {
			return {
				active: 0
			};
		},
		methods: {
			a(i) {
				this.active = i
			}
		}
	};
</script>

<style>
	div>a {
		width: 100px;
		height: 36px;
		line-height: 36px;
		text-align: center;
		background-color: gold;
		color: black;
		font-size: 20px;
		display: inline-block;
		margin-right: 1rem;
		text-decoration: none;
	}
	.nav>a.s1 {
	  color: white;
	  background-color: black;
	}
	.navbar>div {
	  width: 600px;
	  height: 300px;
	  border: 1px solid blue;
	}
</style>
