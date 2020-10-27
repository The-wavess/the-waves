<template>
 <div>
	<p>{{title}}</p>
   <button @click="toGo">点击我跳转页面哦</button>
  <mo-ban ref="hellosss"></mo-ban>
</div>
</template>

<script>
import moBan from '../views/Parent.vue'
export default {
 components: {
  moBan
 },
 data() {
  return {
   title: ''
  };
 },

 methods: {
  toGo() {
    this.title=this.$refs.hellosss.hello;
  }
 }
};
</script>