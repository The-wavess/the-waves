<template>
    <div>
       	<div id="container"></div>
    </div>
</template>
<script>
  export default{
      data(){
          return{}
      },
		mounted(){ 		
			//地址数组循环		
			//获取定位对象
			let geo=navigator.geolocation;
			//调取对应方法
			geo.getCurrentPosition(
				(position)=>{
					//获取到geolocationpositioncoordinates对象
					let coords=position.coords;
					//获取经纬度
					let longitude=coords.longitude;
					let latitude=coords.latitude;
						console.log(longitude,latitude)
					//创建地图实例
					let map=new BMap.Map('container');
					//创建地图坐标对象
					// let point=new BMap.Point(longitude,latitude)
					//反地址解析的经纬度
					let point=new BMap.Point(109.006768,34.227885)
					//初始化地图实例
					map.centerAndZoom(point,15)
					//禁止地图拖拽gognn
					map.disableDragging()
					//启动鼠标滚动时缩放图
					map.enableScrollWheelZoom();
/////////////				///////////////////////////////////////////	
					//禁止鼠标滚动缩放图（默认禁止）
					// map.disableScrolWheelZoom();
					//创建size对象，用来控制缩放平移的距离
					let size=new BMap.Size(20,20)
					//创建navigation（）控件
					let nc=new BMap.NavigationControl(
					{
						//控件停靠位置(左上角)
						anchor:BMAP_ANCHOR_TOP_LEFT,
						//距离容易左上部的距离
						offset:size,
						//控件类型平移缩放以及滑块
						type:BMAP_NAVIGATION_CONTROL_LARGE,
						
					})
					//添加navigationcontrol()平移缩放控件
					map.addControl(nc);
	///////////////////////////////////////////////////////////
					//创建覆盖物(标记)
					//创建size对象
					let iconsize=new BMap.Size(32,32);
					//创建图标对象
					let icon=new BMap.Icon('../jd_img/map.png',iconsize)
					//创建图像覆盖物对象
					let marker=new BMap.Marker(point,{
						icon:icon
					});
					//将覆盖物添加到地图上
					map.addOverlay(marker);														
				}				
			)
  }
  }
///////////////////////////////////////////////////////////////
</script>
<style scoped>
			#container{
			width: 772px;
			height: 412px;
            /* z-index: 100; */
	}
</style>