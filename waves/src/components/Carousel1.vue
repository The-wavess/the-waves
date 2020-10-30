<template>
  <div id="slider">
    <div class="window" @mouseover="stop" @mouseleave="play">
    <!-- 1.轮播图 -->
      <ul class="container" :style="containerStyle">
        <li>
          <router-link :to="sliders[sliders.length - 1].to">
            <img
            style=""
            :style="{ width: imgWidth + 'px' }"
            :src="sliders[sliders.length - 1].img"
            alt=""
          />
          </router-link>
        </li>
        <li v-for="(item, index) in sliders" :key="index">
          <router-link :to="item.to">
            <img :style="{ width: imgWidth + 'px' }" :src="item.img" alt="" />
          </router-link>
        </li>
        <li>
          <img
            :style="{ width: imgWidth + 'px' }"
            :src="sliders[0].img"
            alt=""
          />
        </li>
      </ul>
      <!-- 左右箭头 -->
      <ul class="direction" v-show="carShow">
        <li class="left" @click="move(600, 1, speed)">
          <svg
            class="icon"
            width="20px"
            height="20px"
            viewBox="0 0 1010 1010"
            version="1.1"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill="#ffffff"
              d="M481.233 904c8.189 0 16.379-3.124 22.628-9.372 12.496-12.497 12.496-32.759 0-45.256L166.488 512l337.373-337.373c12.496-12.497 12.496-32.758 0-45.255-12.498-12.497-32.758-12.497-45.256 0l-360 360c-12.496 12.497-12.496 32.758 0 45.255l360 360c6.249 6.249 14.439 9.373 22.628 9.373z"
            />
          </svg>
        </li>
        <li class="right" @click="move(600, -1, speed)">
          <svg
            class="icon"
            width="20px"
            height="20px"
            viewBox="0 0 1020 1020"
            version="1.1"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill="#ffffff"
              d="M557.179 904c-8.189 0-16.379-3.124-22.628-9.372-12.496-12.497-12.496-32.759 0-45.256L871.924 512 534.551 174.627c-12.496-12.497-12.496-32.758 0-45.255 12.498-12.497 32.758-12.497 45.256 0l360 360c12.496 12.497 12.496 32.758 0 45.255l-360 360c-6.249 6.249-14.439 9.373-22.628 9.373z"
            />
          </svg>
        </li>
      </ul>
      <!-- 轮播指示符 -->
      <ul class="dots">
        <li
          v-for="(dot, i) in sliders"
          :key="i"
          :class="{ dotted: i === currentIndex - 1 }"
          @click="jump(i + 1)"
        ></li>
      </ul>
    </div>
  </div>
</template>

<style scoped>
#slider {
  text-align: center;
}
.window {
  position: relative;
  width: 550px;
  height: 240px;
  margin: 0 auto;
  overflow: hidden;
}
.container {
  display: flex;
  position: absolute;
}
.left,
.right {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  width: 30px;
  height: 30px;
  background-color: rgba(0, 0, 0, 0.3);
  border-radius: 50%;
  cursor: pointer;
}
.left {
  left: 3%;
  padding-left: 12px;
  padding-top: 10px;
}
.right {
  right: 3%;
  padding-right: 12px;
  padding-top: 10px;
}
img {
  user-select: none;
}
.dots {
  position: absolute;
  bottom: 10px;
  left: 50%;
  transform: translateX(-50%);
}
.dots li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 0 3px;
  border: 1px solid white;
  border-radius: 50%;
  background-color: #fff;
  cursor: pointer;
}
.dots .dotted {
  background-color: orange;
}
</style>

<script>
export default {
  name: "slider",
  props: {
    initialSpeed: {
      type: Number,
      default: 30,
    },
    initialInterval: {
      type: Number,
      default: 3,
    },
  },
  data() {
    return {
      sliders: [
        {
          img: "http://p0.meituan.net/codeman/a97baf515235f4c5a2b1323a741e577185048.jpg",
          to:"#"
        },
        {
          img: "http://p0.meituan.net/codeman/daa73310c9e57454dc97f0146640fd9f69772.jpg",
          to:"/jd_index"
        },
        {
          img: "http://p0.meituan.net/codeman/33ff80dc00f832d697f3e20fc030799560495.jpg",
          to:"/men"
        },
        {
          img: "http://p1.meituan.net/codeman/826a5ed09dab49af658c34624d75491861404.jpg",
          to:"/ms_Home"
        },
        {
          img: "https://p1.meituan.net/travelcube/01d2ab1efac6e2b7adcfcdf57b8cb5481085686.png",
          to:"#"
        },
      ],
      imgWidth: 600,
      currentIndex: 1,
      distance: -600,
      transitionEnd: true,
      speed: this.initialSpeed,
      carShow:false
    };
  },
  computed: {
    containerStyle() {
      return {
        transform: `translate3d(${this.distance}px, 0, 0)`,
      };
    },
    interval() {
      return this.initialInterval * 1000;
    },
  },
  mounted() {
    this.init();
  },
  methods: {
    init() {
      this.play();
      window.onblur = function () {
        this.stop();
      }.bind(this);
      window.onfocus = function () {
        this.play();
      }.bind(this);
    },
    move(offset, direction, speed) {
      console.log(speed);
      if (!this.transitionEnd) return;
      this.transitionEnd = false;
      direction === -1
        ? (this.currentIndex += offset / 600)
        : (this.currentIndex -= offset / 600);
      if (this.currentIndex > 5) this.currentIndex = 1;
      if (this.currentIndex < 1) this.currentIndex = 5;

      const destination = this.distance + offset * direction;
      this.animate(destination, direction, speed);
    },
    animate(des, direc, speed) {
      if (this.temp) {
        window.clearInterval(this.temp);
        this.temp = null;
      }
      this.temp = window.setInterval(() => {
        if (
          (direc === -1 && des < this.distance) ||
          (direc === 1 && des > this.distance)
        ) {
          this.distance += speed * direc;
        } else {
          this.transitionEnd = true;
          window.clearInterval(this.temp);
          this.distance = des;
          if (des < -3000) this.distance = -600;
          if (des > -600) this.distance = -3000;
        }
      }, 20);
    },
    jump(index) {
      const direction = index - this.currentIndex >= 0 ? -1 : 1;
      const offset = Math.abs(index - this.currentIndex) * 600;
      const jumpSpeed =
        Math.abs(index - this.currentIndex) === 0
          ? this.speed
          : Math.abs(index - this.currentIndex) * this.speed;
      this.move(offset, direction, jumpSpeed);
    },
    play() {
      this.carShow=false;
      if (this.timer) {
        window.clearInterval(this.timer);
        this.timer = null;
      }
      this.timer = window.setInterval(() => {
        this.move(600, -1, this.speed);
      }, this.interval);
    },
    stop() {
      this.carShow=true;
      window.clearInterval(this.timer);
      this.timer = null;
    },
  },
};
</script>