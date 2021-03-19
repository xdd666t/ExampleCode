# 微信自定义组件库
 自定义的小程序组件（备份下，方便下次使用）



## title-bar

- 需要将相应的title-bar文件夹拷到你的项目里

- 自动适配胶囊高度，动态居中

- 在xx.json文件里面引用

  ```
  {
    "usingComponents": {
      "title-bar": "/component/title-bar/title-bar"
    }
  }
  ```

- 对应xx.wxml里面

  ```
  <!-- 导航栏 一行代码搞定-->
  <title-bar title="测试" statusColor="black"></title-bar>
  ```

- 提供的可设置参数

| 属性值      | 含义                                                         | 使用                 |
| ----------- | ------------------------------------------------------------ | -------------------- |
| title       | 设置导航栏的标题名称                                         | title="测试"         |
| titleColor  | 导航标题颜色；默认颜色：\#333333                             | titleColor="#333333" |
| statusColor | 状态栏字体颜色；可设置：black或white；默认：white            | statusColor="black"  |
| back        | 导航栏左边返回字；默认：返回                                 | back="返回"          |
| backStyle   | 返回模块样式（图标和字体颜色） 可设置：white或black；默认：black | backStyle="white"    |
| hideBack    | 是否隐藏左边的返回模块（返回图标和文字）；可设置：true或false；默认：false（不隐藏） | hideBack="false"     |

