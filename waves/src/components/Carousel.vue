<template>
     <div id="demo" class="header_right2-1 carousel" :style="{width:innerWidth+'px'}" @mouseenter="stop" @mouseleave="start">
         <!-- 1.轮播图 -->
        <div class="carousel-inner" :class="ulClass" :style="ulStyle">
            <div v-for="(img,i) of imgs" :key="i" class="carousel-item" :style="{width:innerWidth+'px'}">
                <router-link :to="imgs.to" :title="imgs[i].title">
                    <img :src="imgs.src" :style="{width:innerWidth+'px'}"/>
                </router-link>
            </div>
            
            <div class="carousel-item" :style="{width:innerWidth+'px'}">
                <router-link :to="imgs[0].to" :title="imgs[0].title">
                    <img :src="imgs[0].to" :style="{width:innerWidth+'px'}"/>
                </router-link>
                <router-link :to="imgs[0].to" v-text="imgs[0].title"></router-link>
            </div>
        </div>
        <!-- 左右箭头 -->
        <a href="javascript:;" @click="move(1)" class="carousel-control-next">
            <span class="carousel-controul-next-icon"></span>
        </a>
        <a href="javascript:;" @click="move(-1)" class="carousel-control-prev">
            <span class="carousel-controul-prev-icon"></span>
        </a>
        <!-- 轮播指示符 -->
        <ul class="carousel-indicators">
            <li v-for="(img,idx) of imgs" :key="idx" :class="idx==i?'active':''" @click="moveTo(idx)"></li>
        </ul>
    </div>
</template>

<script>
export default {
    data(){
        return{
            innerWidth:550,
            ulClass:{hasTrans:true},
            i:0,//当前正在播放的是那张图片
            imgs:[
                {
                    src:"http://p0.meituan.net/codeman/a97baf515235f4c5a2b1323a741e577185048.jpg",
                    title:"01",
                    to:"javascript:;",
                    
                },
                {
                    src:"https://p1.meituan.net/travelcube/01d2ab1efac6e2b7adcfcdf57b8cb5481085686.png",
                    title:"02",
                    to:"javascript:;",
                    
                },
                {
                    src:"http://p1.meituan.net/codeman/826a5ed09dab49af658c34624d75491861404.jpg",
                    title:"03",
                    to:"javascript:;",
                    
                },
                {
                    src:"http://p0.meituan.net/codeman/33ff80dc00f832d697f3e20fc030799560495.jpg",
                    title:"04",
                    to:"javascript:;",
                    
                },
                {
                    src:"../../public/img/mt/mt-header/carousel5.png",
                    title:"05",
                    to:"javascript:;",
                    
                }
            ],
            canClick:true,
            timer:null
        }
    },
    created(){
        window.addEventListener("resize",()=>{
            this.innerWidth=window.innerWidth;
        })
        this.start();
    },
    methods:{
        stop(){
            clearInterval(this.timer)
        },
        start(){
            this.timer=setInterval(()=>{
                this.move(1);
            },3000)
        },
        move(i){
            if (this.canClick) {
                this.canClick=false;
                if (i==-1&&this.i==0) {//如果向右移动，且正在显示第一张图片，就要骗
                    this.ulClass.hasTrans=false;
                    setTimeout(()=>{
                        this.i=this.imgs.length;
                        setTimeout(()=>{
                            this.ulClass.hasTrans=true;
                            this.i+=i;
                            setTimeout(()=>{
                                this.canClick=true;
                            },200)
                        },50)
                    },50)
                }else if (i==1&&this.imgs.length-1) {
                    this.i+=i;
                    setTimeout(()=>{
                        this.ulClass.hasTrans=false;
                        setTimeout(()=>{
                            this.i=0;
                            setTimeout(()=>{
                                this.ulClass.hasTrans=true;
                                setTimeout(()=>{
                                    this.canClick=true;
                                })
                            },50)
                        },50)
                    },200)
                }else{
                    this.i+=i;
                    setTimeout(()=>{
                        this.canClick=true
                    },300)
                }
            }
        },
        moveTo(i){
            if (this.canClick) {
                this.i=i;
                this.canClick=false;
                setTimeout(()=>{
                    this.canClick=true
                },300)
            }
        }
    },    
    computed:{
        ulStyle(){
            var width=this.innerWidth*(this.imgs.length+1)+'px';
            var marginLeft=-this.i*this.innerWidth+'px';
            return {width,marginLeft}
        }
    }
}

</script>

<style scoped>
.carousel{
    margin-top: 60px;
    overflow: hidden;
}
.carousel::after{
    content: "";
    display: block;
    clear: both;
}
.carousel>.carousel-inner.hasTrans{
    transition:all .2s linear;
}
.carousel>.carousel-inner>.carousel-item{
    display: block;
    float: left;
}
.carousel>.carousel-inner>.carousel-item>a:last-child{
    display: block;
    height: 50px;
    color: #fff;
    text-align: center;
    font-size: 15px;
    line-height: 50px;
    text-decoration: none;
    background-color: #f68cc6;
}
.carousel>.carousel-inner>.carousel-item:nth-child(2)>a:last-child{
    background-color: #fa9c77;
}
.carousel>.carousel-inner>.carousel-item:nth-child(3)>a:last-child{
    background-color: #ba4b5d;
}
.carousel>.carousel-inner>.carousel-item:nth-child(4)>a:last-child{
    background-color: #02c0f0f5;
}
.carousel>.carousel-inner>.carousel-item:nth-child(5)>a:last-child{
    background-color: #bc76dd;
}
/* 重写指标符的样式 */
.carousel-indicators{
    bottom: 130px;
}
.carousel-indicators li{
    width: 15px;height: 15px;
    background-color: #fff;
    margin-left: 6px;
    margin-right: 6px;
    border-radius: 50%;
    top: 60px;
}
.carousel-indicators>li:hover,.carousel-indicators>li.active{
    transform: scale(1.3);
}
.carousel-indicators>li:first-child{
    background-color: #f68cc6;
}
.carousel-indicators>li:nth-child(2){
    background-color: #fa9c77;
}
.carousel-indicators>li:nth-child(3){
    background-color: #ba4b5d;
}
.carousel-indicators>li:nth-child(4){
    background-color: #02c0f0f5;
}
.carousel-indicators>li:nth-child(5){
    background-color: #bc76dd;
}
/* 重写左右箭头的样式 */
.carousel-control-prev,
.carousel-control-next{
    width: 40px;height: 100px;
    background-color: rgb(95,95,92,0.3);
    top: 20%;
    margin-left: 40px;
    border-radius: 0.25rem;
}
.carousel-control-next{
    margin-right: 40px;
}
</style>