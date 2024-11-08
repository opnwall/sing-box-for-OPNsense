#  sing-box for OPNsense

# 项目介绍

- 此项目是通过使用[sing-box](https://github.com/SagerNet/sing-box) 作为核心程序，再结合脚本实现简单的代理功能。

- 由于sing-box在freeBSD平台不提供tun支持，使用http或socks协议进行代理配置。

- 本项目支持在pfSesne和OPNsense防火墙中安装使用。

## 使用方法

- 编辑config.json文件，修改出站信息和代理接口地址。

- 将sing-box目录上传到pfSense或OPNsense的root目录下。

- 进入目录，运行安装脚本。
```bash
cd sing-box
sh install.sh
```
- 启动sing-box:
```bash
service sing-box start
```
- 停止sing-box:
```bash
service sing-box stop
```
- 重启sing-box:
```bash
service sing-box restart
```
- 开机自启，pfSense安装shellcmd插件，添加开机启动shellcmd命令，OPNsense不需要设置。
```bash
service sing-box start
```

## 透明代理

[pfSense、OPNsense设置http透明代理教程](https://pfchina.org/?p=13572)

[pfSense、OPNsense配置tun2socks透明代理教程](https://pfchina.org/?p=13437)

## 控制面板

- 访问控制面板

配置文件如果包含clash api的功能，那么在启动sing-box后，即可访问clash控制面板，例如：http://192.168.0.1:9090/ui

- 登录管理界面

在`API Base URL`一栏中输入：http://\<ip\>:9090 ，在`Secret(optional)`一栏中输入访问密钥。

点击Add并选择刚刚输入的管理界面地址，之后便可在浏览器上查看代理信息。

## 相关文章

[pfSense、OPNsense配置Xray代理教程](https://pfchina.org/?p=13013)

[pfSense、OPNsense配置trojan-go教程](https://pfchina.org/?p=9885)

[pfSense、OPNsense配置v2ray代理教程](https://pfchina.org/?p=4032)

[pfSense、OPNsense配置Clash代理教程](https://pfchina.org/?p=10526)

[pfSense、OPNsense配置hysteria代理教程](https://pfchina.org/?p=9524)

[pfSense、OPNsense配置sing-box代理教程](https://pfchina.org/?p=12933)

[pfSense、OPNsense配置http透明代理教程](https://pfchina.org/?p=13572)

[pfSense、OPNsense配置hysteria2代理教程](https://pfchina.org/?p=13065)

[pfSense、OPNsense配置tun2socks透明代理](https://pfchina.org/?p=13437)

[pfSense、OPNsense配置hysteria(TUN) 透明代理教程](https://pfchina.org/?p=13480)
