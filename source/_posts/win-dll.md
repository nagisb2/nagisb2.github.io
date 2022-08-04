---
title: DLL——“动态链接”
date: 2022-08-04 21:12:04
type: 
tags: 文件
---



#### <font color="#F4E539"> 什么是DLL</font>

<font color="#3F3E3F">

> exe程序在执行的时链接到.Dll文件——动态链接库(Dynamic Link Library)*<!-- more -->*
>
> 普通程序符合接口规范下**DLL文件与EXE文件独立**——[动态链接](https://docs.microsoft.com/zh-cn/troubleshoot/windows-client/deployment/dynamic-link-library)
>
> DLL文件可以被许多程序共用。因此可以利用DLL文件,作为一些代码Dll(模块)存放。

</font>



#### <font color="#F4E539">Svchost</font><font color="#3F3E3F">

- 在Windows任务管理器的进程栏里有一大票**svchost.exe**

	> ——它为Windows上的**Dll类服务**例程驱动提供了运行空间(Service Host process)

</font>

#### <font color="#F4E539">rundll</font><font color="#3F3E3F">

- 顾名思义，rundll就是运行dll。这个dll并不是普通的dll, 而是要**符合rundll接口**规范

```shell
rundll32.exe shell32.dll,Control_RunDLL 打开控制面板
rundll32.exe shell32.dll,SHExitWindowsEx 1 执行关机
```





---

</font>

#### <font color="#F4E539">链接</font><font color="#3F3E3F">

> 基本来说它让**一个文件可以拥有多个访问路径**

- Windows NT内核的结构很大程度依赖于DLL**动态链接**机制。
- 从Windows  NT4开始，NTFS文件系统引入了**HardLink**这个概念。
- 到了Windows2000，引入了**Junction** 链接方式，又叫初级的软链接。
- 在Windows Vista之后引入了 **Symbolic Link**, 可以说是Junction链接的增强版。

</font>


</font>

#### <font color="#F4E539">dll注入</font><font color="#3F3E3F">

- **DLL注入简单地定义为将DLL插入另一个进程的空间然后执行其代码的过程**

[『教程』Windows中的窗口注入dll 哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1SY4y1g75J?spm_id_from=..search-card.all.click&vd_source=a9f586ee0f1226cd479b50e1f04dcaea)

</font>

#### <font color="#F4E539">dll编译</font>

[Resource Hacker (angusj.com)](http://angusj.com/resourcehacker/)

[Windows8改oobe_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1Wy4y1q7WR?vd_source=a9f586ee0f1226cd479b50e1f04dcaea)
