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

# Modify default IP
sed -i 's/192.168.1.1/192.168.11.2/g' package/base-files/files/bin/config_generate

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/OpenWrt/White/g' package/base-files/files/bin/config_generate

sed -i 's/option mediaurlbase \/luci-static\/bootstrap/option mediaurlbase \/luci-static\/argon/g' feeds/luci/modules/luci-base/root/etc/config/luci

# 删除 kenzo 源中有问题的包
rm -rf feeds/kenzo/luci-app-fchomo
rm -rf feeds/kenzo/luci-theme-alpha
rm -rf feeds/kenzo/luci-app-dockerman
rm -rf feeds/kenzo/luci-theme-ifit
