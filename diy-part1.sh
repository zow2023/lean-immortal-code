#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.


# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#cd package/libs && mkdir -p libcron && mkdir -p Package/libcron/libs && wget -O Package/libcron/libs/Makefile https://raw.githubusercontent.com/immortalwrt/packages/refs/heads/master/libs/libcron/Makefile
sed -i 's/--set=llvm.download-ci-llvm=true/--set=source.crates-io.replace-with=mirror \\\
        --set=source.mirror.registry=sparse+https:\/\/mirrors.bfsu.edu.cn\/crates.io-index\/ \\\
        --set=llvm.download-ci-llvm=false/' package/feeds/packages/rust/Makefile
