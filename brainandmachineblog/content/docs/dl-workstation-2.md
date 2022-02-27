---
title:  深度学习工作站搭建记录 - 2/3 系统篇
date: 2019-06-29
authorbox: true
categories:
- "Data Science"
tags:
- "Deep Learning"
- "Machine Learning"
- "中文"
---

烧个双系统（Windows 10 + Ubuntu 18.04.2 LTS），工作游戏双倍快乐。

<!--more-->

## 准备工作
1. 从[MSDN](https://msdn.itellyou.cn/)下载Win10镜像，从[Ubuntu](https://ubuntu.com/download)下载Ubuntu18镜像
3. 准备一个8G的U盘。安装一个烧USB的软件：Windows系统用[Rufus](https://rufus.ie/)，Mac系统用[balenaEtcher](https://www.balena.io/etcher/)

## 制作装系统的U盘（Bootable USB）

Windows系统用Rufus烧USB：

1. Partition scheme: **GPT** partition scheme for UEFI
2. File system: **FAT32** (Default)
3. Cluster size: 4096 bytes (Default)
4. **Quick format**
5. Create a bootable disk using **ISO Image (选择刚刚下载好的镜像)**
6. Create extended label and icon files

Mac系统用balenaEtcher烧USB：

1. Disk Utility. Erase USB. Format: MS-DOC(FAT)
2. Flash  **ISO Image (选择刚刚下载好的镜像)** to the prepared USB

## 安装Windows 10

先制作装Windows 10的U盘。开机，进入BIOS模式，Secure Boot关掉（Gigabyte的一些主板CSM-Enable和Secure Boot-Disable是一个效果），Boot Mode设置成UEFI模式，Bootable option #1 选U盘，保存重启，按照提示安装Win10（分了100GB的空间）。装好后连网，等着Windows自己安装驱动和软件。

## 安装Ubuntu 18.04.2 LTS
Win10装好后，用Rufus或balenaEtcher制作装Ubuntu的U盘，ISO Image选择刚刚下载好的Ubuntu镜像，其余设置和上面相同。开机进BIOS模式，Bootable option #1 选U盘重启，或者Boot Manu选U盘，开始安装Ubuntu（分了400GB）。装好后联网更新驱动和软件。重启检查。

## 参考资料

[How to Create UEFI Bootable USB flash Drive to Install Windows 10/8.1/7](https://www.youtube.com/watch?v=9ElESiLIFas)

## 深度学习工作站搭建系列

[深度学习工作站搭建记录 - 1/3 硬件篇](https://wenting-wang.github.io/docs/dl-workstation-1/)

[深度学习工作站搭建记录 - 3/3 环境篇](https://wenting-wang.github.io/docs/dl-workstation-3/)

