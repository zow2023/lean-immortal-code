#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

#git clone https://github.com/kiddin9/luci-app-dnsfilter package/luic-app-dnsfilter
#git clone https://github.com/sirpdboy/luci-app-parentcontrol package/luci-app-parentcontrol
#git clone https://github.com/kingyond/luci-app-accesscontrol-plus package/luci-app-accesscontrol-plus 
#git clone https://github.com/sirpdboy/sirpdboy-package package/sirpdboy-package
git clone https://github.com/xiaoxiao29/luci-app-adguardhome package/luci-app-adguardhome
#git clone https://github.com/animegasan/luci-app-quickstart package/luci-app-quickstart
##git clone https://github.com/brvphoenix/luci-app-wrtbwmon package/luci-app-wrtbwmon

#git clone https://github.com/gSpotx2f/luci-app-cpu-status package/luci-app-cpu-status
#git clone https://github.com/gSpotx2f/luci-app-cpu-perf package/luci-app-cpu-perf
#git clone https://github.com/gSpotx2f/luci-app-interfaces-statistics package/luci-app-interfaces-statistics
#git clone https://github.com/gSpotx2f/luci-app-temp-status package/luci-app-temp-status
#git clone https://github.com/muink/luci-app-tinyfilemanager package/luci-app-tinyfilemanager
#git clone https://github.com/muink/luci-app-tn-netports package/luci-app-tn-netports
#rm -rf feeds/packages/net/daed
#git clone https://github.com/QiuSimons/luci-app-daed package/dae

#git clone https://github.com/QiuSimons/luci-app-daed-next package/daed-next

#rm -rf feeds/packages/net/{xray-core,chinadns-ng,hysteria,v2ray-plugin}

#rm -rf feeds/luci/applications/luci-app-passwall
#git clone https://github.com/xiaorouji/openwrt-passwall-packages.git package/passwall/packages
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall/luci  
#git clone https://github.com/xiaorouji/openwrt-passwall.git -b  luci-smartdns-dev package/passwall/luci
#git clone https://github.com/fw876/helloworld.git -b master package/helloworld
#rm -rf package/helloworld
#git clone https://github.com/fw876/helloworld.git package/helloworld

#git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-theme-argon-config

#rm -rf feeds/packages/lang/golang
#git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
#git clone https://github.com/kenzok8/golang -b 1.21 feeds/packages/lang/golang

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/LINKJAY/g' package/base-files/files/bin/config_generate
