# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Mod zzz-default-settings
# pushd package/lean/default-settings/files
# sed -i '/http/d' zzz-default-settings
# export orig_version="$(cat "zzz-default-settings" | grep DISTRIB_REVISION= | awk -F "'" '{print $2}')"
# sed -i "s/${orig_version}/${orig_version} ($(date +"%Y-%m-%d-%H%M"))/g" zzz-default-settings
# popd

# Add luci-app-dnsfilter
# git clone https://github.com/garypang13/luci-app-dnsfilter package/luci-app-dnsfilter

# Add luci-app-godproxy
# git clone https://github.com/project-lede/luci-app-godproxy package/luci-app-godproxy

# Add luci-app-bypass
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

git clone https://github.com/coolsnowwolf/lede.git
mkdir /workdir/openwrt/package/lean
cp -r lede/package/lean/adbyby  /workdir/openwrt/package/lean/adbyby
cp -r lede/package/lean/vlmcsd  /workdir/openwrt/package/lean/vlmcsd
cp -r lede/package/lean/luci-app-vlmcsd  /workdir/openwrt/package/lean/luci-app-vlmcsd
cp -r lede/package/lean/luci-app-adbyby-plus /workdir/openwrt/package/lean/luci-app-adbyby-plus
cp -r lede/package/lean/luci-app-sfe  /workdir/openwrt/package/lean/luci-app-sfe
cp -r lede/package/lean/luci-theme-argon /workdir/openwrt/package/lean/luci-theme-argon
cp -r lede/package/lean/luci-theme-netgear /workdir/openwrt/package/lean/luci-theme-netgear
# git clone https://github.com/kenzok8/openwrt-packages
# cp -r openwrt-packages/luci-app-ssr-plus /workdir/openwrt/package/lean/luci-app-ssr-plus
# cp -r openwrt-packages/luci-app-passwall /workdir/openwrt/package/lean/luci-app-passwall
# ls /workdir/openwrt/package/lean/ -l

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

#git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}



# 为lean源补充v2包
#svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lean/v2ray package/lean/v2ray
# git clone https://github.com/xiaorouji/openwrt-passwall package/lean/openwrt-passwall
# Add Jerrykuku's packages(vssr/jd-daily/argon theme)
# rm -rf package/lean/luci-theme-argon
# rm -rf package/lean/luci-app-jd-dailybonus
# git clone https://github.com/jerrykuku/lua-maxminddb package/jerrykuku/lua-maxminddb
# git clone https://github.com/jerrykuku/luci-app-argon-config package/jerrykuku/luci-app-argon-config
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus package/jerrykuku/luci-app-jd-dailybonus
# git clone https://github.com/jerrykuku/luci-app-vssr package/jerrykuku/luci-app-vssr
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/jerrykuku/luci-theme-argon

# Add Lienol's Packages
# git clone --depth=1 https://github.com/Lienol/openwrt-package package/Lienol-package
# git clone https://github.com/Lienol/openwrt-package package/Lienol-package

# Add luci-app-passwall
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall
# git clone  https://github.com/xiaorouji/openwrt-passwall package/openwrt-passwall

# Add OpenClash.
# git clone -b master --depth=1 https://github.com/vernesong/OpenClash package/openclash

# Add po2lmo
# git clone https://github.com/openwrt-dev/po2lmo.git package/po2lmo
# pushd package/po2lmo
# make && sudo make install
# popd

# Add ServerChan
# git clone --depth=1 https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan

# Add luci-app-adguardhome
# git clone https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
# svn co https://github.com/281677160/openwrt-package/trunk/adguardhome package/adguardhome


# Add luci-theme-opentopd
# svn co https://github.com/281677160/openwrt-package/trunk/luci-theme-opentopd package/luci-theme-opentopd

# Add luci-app-diskman
# git clone --depth=1 https://github.com/SuLingGG/luci-app-diskman package/luci-app-diskman
# mkdir package/parted
# cp package/luci-app-diskman/Parted.Makefile package/parted/Makefile

# Add luci-app-dockerman
# rm -rf package/lean/luci-app-docker
# git clone --depth=1 https://github.com/KFERMercer/luci-app-dockerman package/luci-app-dockerman
# git clone --depth=1 https://github.com/lisaac/luci-lib-docker package/lisaac/luci-lib-docker

# Add smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns

# Use Lienol's https-dns-proxy package
# pushd feeds/packages/net
# rm -rf https-dns-proxy
# svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy
# popd

# Add luci-theme-edge
# git clone -b 18.06 --depth=1 https://github.com/garypang13/luci-theme-edge package/luci-theme-edge

# Fix libssh
# pushd feeds/packages/libs
# rm -rf libssh
# svn co https://github.com/openwrt/packages/trunk/libs/libssh
# popd

# Use snapshots syncthing package
# pushd feeds/packages/utils
# rm -rf syncthing
# svn co https://github.com/openwrt/packages/trunk/utils/syncthing
# popd


# preset cores for openclash
# mkdir -p files/etc/openclash/core
# open_clash_main_url=$(curl -sL https://api.github.com/repos/vernesong/OpenClash/releases/tags/Clash | grep /clash-linux-armv7 | sed 's/.*url\": \"//g' | sed 's/\"//g')
# clash_tun_url=$(curl -sL https://api.github.com/repos/vernesong/OpenClash/releases/tags/TUN-Premium | grep /clash-linux-armv7 | sed 's/.*url\": \"//g' | sed 's/\"//g')
# clash_game_url=$(curl -sL https://api.github.com/repos/vernesong/OpenClash/releases/tags/TUN | grep /clash-linux-armv7 | sed 's/.*url\": \"//g' | sed 's/\"//g')
# wget -qO- $open_clash_main_url | tar xOvz > files/etc/openclash/core/clash
# wget -qO- $clash_tun_url | gunzip -c > files/etc/openclash/core/clash_tun
# wget -qO- $clash_game_url | tar xOvz > files/etc/openclash/core/clash_game
# chmod +x files/etc/openclash/core/clash*


# preset terminal tools(oh-my-zsh)

# mkdir -p files/root
# pushd files/root

## Install oh-my-zsh
# Clone oh-my-zsh repository
# git clone https://github.com/robbyrussell/oh-my-zsh ./.oh-my-zsh

# Install extra plugins
# git clone https://github.com/zsh-users/zsh-autosuggestions ./.oh-my-zsh/custom/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ./.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-completions ./.oh-my-zsh/custom/plugins/zsh-completions

# Get .zshrc dotfile
# cp $GITHUB_WORKSPACE/data/zsh/.zshrc .
# popd

# Change default shell to zsh
# sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
