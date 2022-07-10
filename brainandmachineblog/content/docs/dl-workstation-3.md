---
title:  深度学习工作站搭建记录 - 3/3 环境篇
date: 2019-06-30
authorbox: false
categories:
- "Data Science"
tags:
- "Deep Learning"
- "Machine Learning"
---

安装记录：Nvidia Driver + CUDA + cuDNN + Anaconda + Tensorflow GPU  + PyCharm。至今摸索出的最快捷的方法。

<!--more-->

配置：
- AMD Ryzen 1920X
- GeForce RTX 2070
- Ubuntu 18.04.2 LTS

## 安装NVIDIA Driver

首先把其他的旧的NVIDIA Driver移除，重启：

```bash
sudo apt-get update
sudo apt-get purge nvidia*
sudo reboot
```

添加显卡驱动ppa，自动安装系统推荐的驱动，重启：

```bash
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo ubuntu-drivers autoinstall
sudo reboot
```

也可以通过`sudo ubuntu-drivers devices`查看可安装的驱动，用命令安装指定的驱动，如`sudo apt install nvidia-390`手动安装`nvidia-390`。

查看是否安装成功：

```bash
nvidia-smi
```

## 安装Anaconda + CUDA + cuDNN + Tensorflow GPU

下载[Anaconda 5.2](https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh)，下载后放在`/usr/opt/`供所有用户使用，安装sh文件。安装好后创建一个新的virtual environment，用python3.6做解释器（避坑：python3.7暂时不支持tensorflow-gpu）。

```bash
conda create -n tf-gpu python=3.6
conda activate tf-gpu
```

注意版本，安装可以相互兼容的CUDA、cuDNN、Tensorflow GPU：

```bash
conda install \
tensorflow-gpu==1.12 \
cudatoolkit==9.0 \
cudnn=7.1.2 \
h5py
```

## 安装PyCharm

官网下载PyCharm，新建Project，Interpreter选择Anaconda的tf-gpu环境，用以下代码测试一下是否安装成功：

```python
import tensorflow as tf
with tf.device('/gpu:0'):
    a = tf.constant([1.0, 2.0, 3.0, 4.0, 5.0, 6.0], shape=[2, 3], name='a')
    b = tf.constant([1.0, 2.0, 3.0, 4.0, 5.0, 6.0], shape=[3, 2], name='b')
    c = tf.matmul(a, b)

with tf.Session() as sess:
    print(sess.run(c))
```

如果成功安装，可以看到输出结果：

```python
tf version = 1.12.0
[[22. 28.]
[49. 64.]]
```
    
到这里工作站就搞好啦。Have Fun！

## 参考资料

[No Bullshit Guide on Installing Tensorflow GPU (Ubuntu 18.04/18.10)](https://medium.com/@redowan/no-bullshit-guide-on-installing-tensorflow-gpu-ubuntu-18-04-18-10-238924cc4a6a)

## 深度学习工作站搭建系列

[深度学习工作站搭建记录 - 1/3 硬件篇](https://wenting-wang.github.io/docs/dl-workstation-1/)

[深度学习工作站搭建记录 - 2/3 系统篇](https://wenting-wang.github.io/docs/dl-workstation-2/)
