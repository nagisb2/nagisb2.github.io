---
title: Windows作为服务器发布静态网址
data: 2022-07-25 4:35:40
tag: [服务器]
categories:
- [渗透]
---

## 什么是IIS

> Internet Information Service`（IIS）是windows开设web网页服务的组件，用来搭载网站运行程序的平台的。还能提供FTP，SMTP等服务`

*<!-- more -->*

我们想要实现将静态网址放到公网上面,需要用到微软的IIS服务

---

### 设置打开IIS

![](/images/IIS-ser.png)

设置→控制面板→程序→启用或关闭Windows功能→找到`Internet Information Services`并勾选→确定

## 创建静态网址

- [index.html](https://www.aliyundrive.com/s/EiA6LXj9GKQ)

	> 下载静态网址放到本地 , 如我的地址为 > 桌面/web/index.html

双击打开这个网址可以看到在浏览器上这个页面 , 现在就把它放到公网上

## [什么是IPV6](https://zhuanlan.zhihu.com/p/36542469)

- 总而言之使用IPV6的地址可以直接将本地地址映射到公网地址上面 
-  IPV4想要实现可以申请公网IP,或者使用内网穿透

### [测试IPV6](http://test-ipv6.com/)

若网址显示没有接入IPV6可以去路由器设置开启IPV6

---

### 获取IPV6地址

打开CMD , 在出来的DOS界面里，输入`ipconfig`  , 回显显示IPV6地址

![](/images/IPV6-ip.png)

## 搜索IIS程序打开

点击红色下拉标,可以看到一个默认网站,右键网站 , 选择添加网址,物理路径选择静态网址所在文件夹,如: `F:\Users\Administrator\Desktop\Web`,ip地址输入IPV6地址.点击确认

![](/images/IIS-ip.png)

## 部署网址

- 在浏览器上`http://[ipv6地址]:端口(`不填默认80) , 显示错误页面 , 提示无权访问，是因为我们没有开启权限

	> 在本地电脑找到网址所在文件夹,右键属性共享页面,选择不共享下面的共享设置,输入添加everyone用户共享

- 再次输入`http://[ipv6地址]:端口`可以看到.html页面 , 使用不再局域网下的设备输入网址测试IPV6地址

![](/images/ipv6-index.png)

---

## 参考文章

> [让你的windows电脑变成服务器 ](https://www.bilibili.com/read/cv6429435/)**---陈就就**<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="none" d="M0 0h24v24H0z"/><path d="M7.172 2.757L10.414 6h3.171l3.243-3.242a1 1 0 0 1 1.415 1.415l-1.829 1.827L18.5 6A3.5 3.5 0 0 1 22 9.5v8a3.5 3.5 0 0 1-3.5 3.5h-13A3.5 3.5 0 0 1 2 17.5v-8A3.5 3.5 0 0 1 5.5 6h2.085L5.757 4.171a1 1 0 0 1 1.415-1.415zM18.5 8h-13a1.5 1.5 0 0 0-1.493 1.356L4 9.5v8a1.5 1.5 0 0 0 1.356 1.493L5.5 19h13a1.5 1.5 0 0 0 1.493-1.356L20 17.5v-8A1.5 1.5 0 0 0 18.5 8zM8 11a1 1 0 0 1 1 1v2a1 1 0 0 1-2 0v-2a1 1 0 0 1 1-1zm8 0a1 1 0 0 1 1 1v2a1 1 0 0 1-2 0v-2a1 1 0 0 1 1-1z"/></svg>
