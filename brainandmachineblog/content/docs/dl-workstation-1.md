---
title:  深度学习工作站搭建记录 - 1/3 硬件篇
date: 2019-06-21
authorbox: true
categories:
- "Data Science"
tags:
- "Deep Learning"
- "Machine Learning"
- "中文"
---

折腾了大半个月搞丹炉，再也不怕笔记本哪天烧了。读书和实习期间经常搬家，一直是用笔记本跑程序，也用过AWS和Google Cloud搞过几个小项目。这么将就了几年，终于醒悟还是需要一个台式机提高工作效率。加上云计算越来越贵，服务器不够稳定，跑跑小demo讲真还是装个台式机经济实惠。

<!--more-->

记录下搭建过程，给需要的朋友或者以后作参考。坐标德国，Altenate上入手的大部分，eBay淘的二手机箱。

| Type | Product | Price |
| --- | --- | --- |
| CPU | AMD Ryzen Threadripper 1920X WOF, Prozessor | € 380.20 |
| CPU Fan | Noctua NH-U14S TR4-SP3, CPU-Kühler | € 76.10 |
| GPU | Gainward GeForce RTX 2070, Grafikkarte | € 493.70 |
| Motherboard | GIGABYTE X399 AORUS PRO, Mainboard  | € 302.94 |
| RAM | Corsair DIMM 32 GB DDR4-3200 Quad-Kit, Arbeitsspeicher | € 239.31 |
| SSD | Samsung 970 EVO Plus 500 GB, Solid State Drive | € 113.20 |
| Display | AOC e2460Sh, LED-Monitor  | € 118.71 |
| Power | Corsair RM1000i 1000W, PC-Netzteil  | € 148.38  |
| Case | Corsair Air 540  | € 90 |
| HDD | 拆的朋友的  | 0 |

总计2054.91欧元，折合人民币大约15900元。

硬件的兼容就是谜中谜，一不小心两次买错CPU风扇，退货重订，德村的快递等到怀疑人生。硬件的更新换代很快，性价比合适的情况下最好买新不买旧，同时多参考最新的文章。

装机看说明书和视频一步步来还是很快的。基本步骤：

1. CPU, SSD, RAM, GPU 插上主板；
2. 主板装进机箱，装上CPU散热；
3. 装上电源，硬盘，光驱，机箱风扇，键盘鼠标显示器；
4. 走线（CPU-电源，GPU-电源，硬盘-电源，光驱-电源，风扇-主板），通上电，愉快点亮这位Frankenstein。

注意有些主板上有多个SSD（M.2）插槽，每个存取速度不同，GPU插槽每个也不一样，主板上的插槽旁边会标数字，选最大的就可以了（这里用的SSD x8，PCIe x16），一般在靠近CPU的地方。

## 参考资料

[How to build the perfect Deep Learning Computer and save thousands of dollars](https://medium.com/the-mission/how-to-build-the-perfect-deep-learning-computer-and-save-thousands-of-dollars-9ec3b2eb4ce2)

[A Full Hardware Guide to Deep Learning](https://timdettmers.com/2018/12/16/deep-learning-hardware-guide/)

[我的深度学习工作站攒机过程记录](http://cn.soulmachine.me/2016-08-13-my-deep-learning-workstation-assemble-process-note/)

[装机系列教程](https://www.bilibili.com/video/av32201007/?spm_id_from=333.788.videocard.0)

## 深度学习工作站搭建系列

[深度学习工作站搭建记录 - 2/3 系统篇](https://wenting-wang.github.io/docs/dl-workstation-2/)

[深度学习工作站搭建记录 - 3/3 环境篇](https://wenting-wang.github.io/docs/dl-workstation-3/)
