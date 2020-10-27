<template>
<div>
    <div id="container"></div>
</div>
</template>
<style scoped>
      #container {
      width: 200px;
      height: 200px;
      margin: 0 auto;
      border: 1px solid #ccc;
    }
</style>
<script>
export default {
    data(){
        return{

        }
    },
    mounted(){
  
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
      let point=new BMap.Point(108.952865,34.240007)
      //初始化地图实例
      map.centerAndZoom(point,15)
      //启动鼠标滚动时缩放图
      map.enableScrollWheelZoom();
      //禁止鼠标滚动缩放图（默认禁止）
      // map.disableScrolWheelZoom();
    //创建一个size对象，以控制缩放控件的距离离
    ///////////////////////////////////////////////////////////////**创建缩放平移**
      let size = new BMap.Size(0,10)
      //创建NavigationControl
  
      let nc= new BMap.NavigationControl({
          anchor:BMAP_ANCHOR_TOP_RIGHT,//控件停留位置,
          offset:size,//局容器坐上不得位置,
          type:BMAP_NAVIGATION_CONTROL_SMALL,//想有平移，缩放，还是滑块,
      })
      //添加NavigationControl（平移缩放控件）
      map.addControl(nc)
      /////////////////////////////////////////////////////////////**创建覆盖类**
    //创建size对象
    let iconsize= new BMap.Size(32,32)
      //创建图标对象
      let icon = new BMap.Icon('./move_img/icon2.png',iconsize)
      
      //创建图像覆盖物对象
      let marker = new BMap.Marker(point,{
          icon:icon
        });
      //将图像覆盖物添加到地图上
        map.addOverlay(marker);//<--覆盖物对象
    
    })
    } 

}
</script>