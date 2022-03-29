#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 修改openwrt登陆地址,把下面的192.168.9.1修改成你想要的就可以了
sed -i 's/192.168.1.1/192.168.9.1/g' package/base-files/files/bin/config_generate

# 修改主机名字，把XMR修改你喜欢的就行（不能使用中文）
sed -i '/uci commit system/i\uci set system.@system[0].hostname='XMR'' package/lean/default-settings/files/zzz-default-settings

# 固件版本里增加自己个性名称（XPK build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些为后期增加）
sed -i "s/OpenWrt /XPK build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 修改 opentopd 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
sed -i 's/luci-theme-bootstrap/luci-theme-opentopd/g' feeds/luci/collections/luci/Makefile
# 路由器登陆密码设置为空
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings



