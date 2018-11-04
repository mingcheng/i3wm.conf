# 明城的 i3wm 环境配置

![Screenshot](screenshots/main.png)

## 简介

您好，这里是明城的 Linux 图形配置文件列表，这里包括了 i3wm、xorg 相关的配置。抱歉，由于都是出于需求出发(主要是开发)，因此这里可能没有美化相关的配置，所以看起来会「很丑」。

图形界面下，搭配的窗口管理器使用的是 i3wm 以及 mate 相关的些工具保证基本的操作(例如电源管理、网络管理等)。不要过于折腾 Linux 的图形环境，应该将更多的精力花在更有意义的事情上面(哪怕是发呆)。

## 安装软件

安装必要的 xorg 相关、以及 i3wm 相关的必要软件包:

```bash
sudo pacman -S i3-wm py3status rofi clipmenu
sudo pacman -S xorg-xsetroot xorg-xinput xorg-xbacklight xclip xsel
sudo pacman -S mate-power-manager dunst
```

因为 py3status 获取系统信息需要额外的 Python 模块，因此都需要安装上:

```bash
pip3 install pydbus pytz tzlocal
```

这样子软件包就安装好了。


## 配置项

具体的配置项目在各个目录以及文件中都有说明，这里不再复述。

## 杂项说明

### CapsLock

将 Capslock 这个键位映射成了 Ctrl，详细可参见 Xmodmap 文件。

### 剪贴板管理

剪贴板历史使用 ClipMenu + rofi 方案，详细可以在对应的 Arch Wiki 上找到。

### 鼠标加速度

因为个人习惯，默认去除了鼠标和触摸板的加速度，可以在 i3wm 的主配置中修改。

### Apple Color Emoji

![Screenshot](screenshots/emoji.png)

因为项目本身使用了 gitmoji 等插件，所以需要终端以及网页显示 emoji，其实 Arch 下有很多 Emoji 的方案，但是我个人还是使用了 macOS 的 Apple Color Emoji 。原因主要有两点，一来是苹果的 Emoji 比较全二来显示方面能够和 macOS 保持一致。

注意:单独使用 Apple Color Emoji 在其它非 Apple 设备以及系统，可能在版权方面会有问题，哪怕已经拥有了台 Mac。

`- eof -`