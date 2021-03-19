// component/title-bar/title-bar.js
Component({

  options: {
    // 在组件定义时的选项中启用多slot支持,
    multipleSlots: true, 
  },
  /**
   * 组件的属性列表
   */
  properties: {
    title: {      // 属性名
      // 类型（必填），目前接受的类型包括：String, Number, Boolean, Object, Array, null（表示任意类型）
      type: String,
      value: '标题名'     // 属性初始值（可选），如果未指定则会根据类型选择一个
    },
    titleColor:{
      type: String,
      value: '#333333'   
    },
    statusColor:{ //顶部状态字体颜色，可设置：black或white；默认：white
      type: String,
      value: 'white' 
    }, 
    back: {    
      type: String,    
      value: '返回'    
    },
    backStyle: {
      type: String,
      value: 'black' //返回模块样式 可设置：white或black；默认：black
    },
    hideBack:{
      type: String,
      value: false
    }
  },

  /**
   * 组件的初始数据
   */
  data: {
    statusBar: 0, //状态栏的高度
    navBarHeight: 0,  //与胶囊同级的导航栏高度
  },

  // 组件所在页面的生命周期函数
  pageLifetimes: {
    
    show: function () { 
      //初始化一些操作
      wx.getSystemInfo({
        success: e => {
          let statusBar = e.statusBarHeight; //状态栏高度
          let rect = wx.getMenuButtonBoundingClientRect(); //导航栏的对象
          //导航栏和顶部状态栏还有一个空隙,需要计算出来
          let gap = rect.top - e.statusBarHeight; //动态计算每台手机状态栏到胶囊按钮间距
          //导航栏高度 + 空隙(导航栏的上空隙和下空隙)) 这样就能在该高度上直接将布局居中了
          let navBarHeight = 2 * gap + rect.height;

          this.setData({
            statusBar: statusBar,
            navBarHeight: navBarHeight
          })
        },
      });

      //设置导航栏字体颜色
      var color = this.properties.statusColor == "white" ? "#ffffff" : "#000000";
      wx.setNavigationBarColor({
        frontColor: color, //前景颜色值，包括按钮、标题、状态栏的颜色，仅支持 #ffffff 和 #000000
        backgroundColor: '#ff0000',
        animation: {
          duration: 400,
          timingFunc: 'easeIn'
        }
      })

    },

    hide: function () { },
    resize: function () { },
  },

  /**
   * 组件的方法列表
   */
  methods: {
    /*
    * 内部私有方法建议以下划线开头
    * triggerEvent 用于触发事件
    */
    _back() {
      //返回操作
      wx.navigateBack({
      })
      
      //触发取消回调
      this.triggerEvent("back")
    },
  }
})
