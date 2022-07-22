---
title: 来给你的u盘实现一盘多系统
data: 2022-07-22 11:10:47
tag: u盘
categories:
- [刷机,windows]
post_wordcount_enable: true
---

![ventoy](/images/ventoy-logo.png)*<!-- more -->*

## Ventoy

![界面](/images/ventoy-menu.png)

<center>UI</centry>
</center>

有了Ventoy你就无需反复地格式化U盘,你只需要吧 ISO/WIM/IMG/VHD(x)/EFI 等类型的文件拷贝到U盘里面就可以启动了,无需(换系统反复重新写盘)其他操作。ventoy与普通U盘启动器来说ventoy制作的U盘**仍然可以作为一个普通U盘存储文件**

---

<center>一个U盘通吃200多款操作系统安装</center>

你可以一次性拷贝多个不同类型的镜像文件,Ventoy会在启动时显示一个菜单供你选择,支持大部分常见类型的操作系统其中包括主流的 Windows11 /Win10 /8.1 /8 /7 ,WinPE(PE系统等等) Ubuntu CentOS Debian Linux ...

## 制作启动器

### 软件部署

官网下载相应版本后,分区类型选择MBR兼容性好,然后开始安装一个U盘启动器就做好了,期间会格式化U盘

### U盘部署

随意选择U盘目录将系统文件复制到U盘 比如我的是>>/IMG

## 从U盘启动

![efi](/images/efi.jpg)

重启进入EFI选择U盘名字,以上是不同品牌EFI快捷键

---

### DIY

> 好的瑞士军刀怎么能少的了DIY呢

在U盘根目录新建`themes`文件夹,由于更改主题需要编译json文件所以ventoy自带了VentoyPlugson方便傻瓜式操作

[GRUB Themes - Gnome-look.org](https://www.gnome-look.org/browse?cat=109&ord=latest)在里面下载你喜欢的主题.tg,解包后再解压知道只有文件夹,放到你的themes文件夹

找到你的ventoy安装路径打开`VentoyPlugson.exe`选择启动; 或者点击链接[链接](http://127.0.0.1:24681/)

选择主题插件设置你的主题样式,教程就结束了!

### UI

<center>在界面使用F5可以切换主题</center>

![ventoy](/images/theme-ventoy.png)
