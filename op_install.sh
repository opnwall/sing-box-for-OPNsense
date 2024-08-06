#!/bin/bash

##############  sing-box安装脚本  #################
echo -e ''
echo -e "\033[32m====== sing-box for OPNsense一键安装脚本 ======\033[0m"
echo -e ''

#  设定目录变量
root=/usr/local

#  创建目录
mkdir -p $root/etc/sing-box/

#  移动文件
cp sing-box $root/bin/
cp config.json $root/etc/sing-box/
cp rc $root/etc/rc.d/sing-box
echo -e '文件复制完成！'
echo -e ''
#  向/etc/rc.conf添加以下内容
sysrc singbox_enable="YES"
echo -e '\n启动参数添加完成!'

#  赋予程序权限
chmod +x /usr/local/bin/sing-box
chmod +x /usr/local/etc/rc.d/sing-box
echo -e '执行权限添加完成！'

echo -e ''
echo -e "\033[32msing-box安装完成！\033[0m"

#  测试配置文件是否正确
echo -e '\n测试配置文件是否正确：'
sing-box check -c /usr/local/etc/sing-box/config.json
echo -e '\n根据出错提示修改config.json，没有显示任何内容表示配置文件OK。'

#  手动启动调试
echo -e '\n配置文件测试OK，可以使用以下命令进行手动进行调试：'
echo -e "\033[32msing-box run -c /usr/local/etc/sing-box/config.json\033[0m"

#  显示命令说明
echo -e '\n代理使用说明：'
echo -e "\033[32m启动sing-box: service sing-box start\033[0m"
echo -e "\033[32m停止sing-box: service sing-box stop\033[0m"
echo -e "\033[32m重启sing-box: service sing-box restart\033[0m"

