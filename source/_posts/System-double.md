---
title: 安卓像微机一样安装双系统
data: 2022-07-20 23:03:38
tag: 双系统
readmore: true
categories:
- [刷机,安卓]
---

## 前言与准备

本教程理论上通用与所有解了BL想要双系统的安卓系统。

1.一部已经解好Bl的手机和一台微机

2.已经做好备份工作和能够承担风险的能力

*<!-- more -->*

### 工具和方式

sgdisk: Android下操作GPT分区的命令工具,一般自带

不限于社区上的REC: 用来刷系统,执行命令

可以执行命令的方式: 包括但不限于adb,第三方REC,解释性脚本bash

## 开始步骤

### 确保权限

打开MT管理器进入终端,输入su,继续输入sgdiak,若终端回显最后一行代表成功执行命令!

![direct](/images/sgdisk-shell.png)

### 终端命令

首先输入; `sgdisk /dev/block/sda --print` 回显查看手机的分区情况 

可能由于设备类型不同,sgdisk[分区块]可能不通用

> UFS闪存分区块:sda,sdb,sdd,sde,sdf
>
> EMMC闪存分区块:mmcblk0

![direct](/images/partition.png)

备份命令: `--backup=/路径/rename.bin`; 恢复命令: `  --load-backup=/路径/rename.bin`

> 修改(恢复)命令后只有重启系统才会限定修改系统分区当前仍是旧分区表备份命令只备份当前分区
>
> 目前命令前缀都是sgdisk /[分区路径]

删除命令: `--delete=[分区号]`; 新建命令: `--new=[分区号:开始:结束]`

改名命令: `--change-name=分区号:名字` 

### 终端操作

#### 删除data

使用删除命令删除分区21[userdata]

#### 新建data

使用新建命令`sgdisk /dev/block/sda --new=0:0+sizeGib`; `sgdisk /dev/block/sda --new:0:0+sizeGib`

> 前者新建大小size分区21,后者表示新建填充剩余空间分区22

#### 进行改名

使用改名命令`sgdisk /dev/block/sda --change-name=21:userdata`; `sgdisk /dev/block/sda --change-name=22:userdata1`

---

> 到上面差不多是完成微机分硬盘装系统的操作,只不过从图形操作变成终端操作

#### 格式化

重启进入TWRP,进入终端界面操作

按照我上面的例子,`mke2fs -t ext4 /dev/block/sda21; mke2fs -t ext4 /dev/block/sda22`

---

~~到以上为之你已经完成了小白最容易踩到坑的部分了~~

---

## 开机

直接重启你会发现进去入厂系统了,用的是刚刚userdata的分区,看看内存是不是已经改变了

## 双系统

>原理: 用命令通过恢复备份的分区镜像来换系统
> >  [下载工具压缩包](https://www.lanzouw.com/iGcPjvvuu9g)

1. 一般修改的分区名: system,boot,vebdor,dtbo,vendor这里用通配符*表示*
2. 将现在所在系统sda分区的一般分区名修改为*1(如:system1),只改5个分区名
3.	使用命令备份sda分区块改名为sda1.bin放入刚刚下载的压缩包手sda1显示位置
4.	再将所在系统sda分区的一般分区名修改为*2(如:system2),只改5个分区名
5.	同上3这次是sda2,使用rec刷入sda1的压缩包这就是主系统
6.	使用rec刷入sda2的压缩包,这时必须格式化data重启rec才能指向系统2
7.	电脑传包后 再用rec刷入你喜欢的系统2,教程就完成了


## 注意事项

切换的方法可以根据工具说明rec刷入切换

当不是官方原版分区表时一定不能线刷,不然必定砖,只能9008

刷双系统尽量是同底层组合避免不必要的bug 如安卓9和安卓10底层差别很大

## 一键切换

[ATMS-ROM激活器](https://www.coolapk.com/apk/com.highsys.systemchanger)













