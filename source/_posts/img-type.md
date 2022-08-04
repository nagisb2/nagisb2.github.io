---
title: 计算机通用图像格式 
time: 2022-08-01 5:05:21
tags: 文件
---

<p id="div-border-left-red"><font color="#D0087E" size="4" face="STFangsong">计算机通用“<a href="https://blog.csdn.net/weixin_44191535/article/details/105022799"><strong>图像知识</strong></a>“,文件格式(BMP、JPG、PNG、GIF、WebP、AVIF、HEIF、JXL)</font></p>

*<!-- more -->*

#### <span id="inline-blue">分辨率/像素</span>



- 像素(LCD、OLED)
    - Pixel
    
    - 像素点、像素颗粒

- 分辨率(1080p -HD -FHD)
    - Resolution
    
    - 图片尺寸(不会随着缩放级别的变化而变化)


####  <span id="inline-yellow">BMP</span>

- 全名
    - BItmap
    
    - 位图
      

> Windows3.0为[画图程序](https://apps.microsoft.com/store/detail/画图-3d/9NBLGGH5FV99?hl=zh-cn&gl=CN)研发的图片格式,  **不支持压缩** , 多种色深(颜色位深), 不支持半透明

####  <span id="inline-yellow">JPEG</span>

- 全名
    - J-Peg
    
    - jpg、jpeg

> 有损压缩、失真、 兼容性、相比于BMP **20高压缩倍率**
---
#### <span id="inline-blue">EXIF</span>

> 相机camera设备相关、包括不等图片GPS信息

####  <span id="inline-yellow">PNG</span>

- PNG
    - Portable Network Graphics
    
    - 便携网络图像

> 无损压缩、~~鉴定为丁真~~

####  <span id="inline-blue">Alpha</span>

- RGB-A
    - Logo、ico图片 A透明通道
    
####  <span id="inline-yellow">GIF</span>

- 动图


> 无损压缩、半透明、插入图帧

####  <span id="inline-yellow">APNG</span>

- 动图
	- PNG兼容版

####  <span id="inline-yellow">Webp</span>

- Webp
	- Google2010收购、编码VP8

> 有损(2/3 JPG)&无损(3/4 PNG) 、半透明、动画、大多数现代浏览器支持

####  <span id="inline-yellow">缩略图</span>

- Thumbnail

> 文件管理器、看图软件-->解码前的预览效果

####  <span id="inline-yellow">Avif/Heif</span>

- 压缩比例最好、解码率感人
	- 2/3 Webp 、1/2 JPG、PNG
	- avif、只兼容Chrome
	- hevc 收费

####  <span id="inline-yellow">JXL</span>

- 尚未兼容浏览器
	- .JXL---JPEG XL
	- ~~NO,硬编码器~~
---
####  <span id="inline-yellow">SVG</span>

- 可代替ico、logo
	- Scalable Vector Graphics
	- 可缩放矢量图

> 坐标位置, xml源代码存储, 局限在简单几何形

####  <span id="inline-yellow">TGA</span>

- 1987古老格式
	- 近似PNG、压缩率稍低
	- 广泛用于游戏CG


####  <span id="inline-blue">全景图</span>

- 拍摄周围所有画面
	- Panorama
	- 全景图

> 用于地图软件全景街道、3D动画、3D游戏开发	

####  <span id="inline-blue">RAW</span>

- 原始图像、厂商不统
	- 未经软件处理和加工
	- ~~生肉资源~~、体积大

####  <span id="inline-yellow">PSD</span>

- PS图像存档格式、厂商不统
	- 分层源文件
	- 图层、特效、路径、选区的保存类型

####  <span id="inline-yellow">TIFF</span>

- TIFF
	- 用于扫描、打印、印刷、图层、PDF多页
#### Web-images

![](/images/images-html.jpg)