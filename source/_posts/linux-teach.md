---
title: 基础Linux&shell
date: 2022-07-24 6:12:28
tags: Linux
hide: index
password: fuyou218
categories:
- [笔记]
---

## 回顾

关机： shutdown -h     halt init 0    poweroff

重启： shutdown -r     reboot init 6

pwd: 查看工作目录

{% spoiler "- ls: 查看指定目录的内容" %}

-l: 列表显示 

-a: 显示所有， 包括隐藏文件

-h: 人性化的显示

-d: 只显示目录，不查看内容

cd: 切换工作目录

.: 当前目录 

..: 上一级目录

～：当前用户家目录

{% endspoiler %}

---

## 目录结构

linux目录与win完全不同， 是从'/'开始的， 只有它没有上一级目录， 因此也叫根目录

{% spoiler "目录介绍" %}

- /bin: 大部分的系统命令
- /boot: 启动相关
- /dev：设备文件目录，linux下一切设备皆文件
- /etc：配置文件
- /home：普通用户家目录，一个用户对应一个文件夹
- /lib：库文件
- /lib64：64位库文件
- /lost+found：系统异常时临时保存数据，用于恢复等操作
- /media：媒体目录
- /mnt：挂载目录通用挂载点
- /opt：安装系统非必须软件目录
- /proc：虚拟文件系统，会映射硬件信息
- /root：root用户的家目录
- /sbin：超级用户才能执行的命令目录
- /selinux：linux一套安全机制，非常复杂，通常不用
- /srv：存放本机或本机服务器的数据或服务
- sys：类似于/proc，也是虚拟文件系统，可以映射系统信息
- tmp：临时文件，可能随时销毁
- /usr：存放用户安装的应用程序
- /var：系统产生的不可自动销毁的文件，如：日志，缓存等

{% endspoiler %}