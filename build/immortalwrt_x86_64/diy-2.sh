#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 修改openwrt登陆地址,把下面的10.10.10.5修改成你想要的就可以了
sed -i 's/192.168.1.1/10.10.10.5/g' package/base-files/files/bin/config_generate

# 修改主机名字，把VMR修改你喜欢的就行（不能纯数字或者使用中文）
#sed -i '/uci commit system/i\uci set system.@system[0].hostname='VMR'' package/emortal/default-settings/files/99-default-settings

# 内核版本号里显示一个自己的名字（XPK build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i "s/ImmortalWrt /XPK $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/emortal/default-settings/files/99-default-settings
#sed -i "s/ImmortalWrt /XPK compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/emortal/default-settings/files/99-default-settings
# 修改opentopd为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）注意：opentopd与immortalwrt不兼容
#sed -i 's/luci-theme-bootstrap/luci-theme-opentopd/g' feeds/luci/collections/luci/Makefile

# 路由器设置密码为空
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/emortal/default-settings/files/99-default-settings
# 修改默认时间格式
#sed -i 's#localtime  = os.date()#localtime  = os.date("%Y年%m月%d日") .. " " .. translate(os.date("%A")) .. " " .. os.date("%X")#g' package/emortal/autocore/files/*/index.htm
# 修改内核版本
#sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=4.19/g' target/linux/x86/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=4.19/g' target/linux/x86/Makefile

