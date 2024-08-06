#  sing-box for OPNsense

# 项目介绍

此项目是通过使用开源项目[sing-box](https://github.com/SagerNet/sing-box) 作为核心程序，再结合脚本实现简单的代理功能。

由于sing-box在freeBSD平台不提供tun支持，使用http或socks进行代理。

本项目同时提供了对pfSesne的支持。

<br>

## 使用方法

-  修改config.json文件，输入自己的节点信息和代理接口地址。

-  将sing-box目录上传到pfSense或OPNsense的root目录下。

-  进入目录，运行安装脚本，OPNsense防火墙运行op_install.sh脚本，pfSesne防火墙运行pf_install.sh脚本。
```bash
cd sing-box
sh op_install.sh 或
sh pf_install.sh
```
-  启动sing-box:
```bash
service sing-box start
```
-  停止sing-box:
```bash
service sing-box stop
```
-  重启sing-box:
```bash
service sing-box restart
```
-  添加开机启动脚本：pfSense安装shellcmd插件，添加开机启动shellcmd命令(OPNsense不需要)。
```bash
service sing-box start
```
<br>

## 透明代理

透明代理设置，请参阅[pfSense、OPNsense设置Clash透明代理](https://pfchina.org/?p=10526)。

<br>

## 控制面板

- 访问控制面板

配置文件如果包含clash api的功能，那么在启动sing-box后，即可访问clash控制面板，例如：http://192.168.0.1:9090/ui

- 登录管理界面

在`API Base URL`一栏中输入：http://\<ip\>:9090 ，在`Secret(optional)`一栏中输入访问密钥。

点击Add并选择刚刚输入的管理界面地址，之后便可在浏览器上查看代理信息。
