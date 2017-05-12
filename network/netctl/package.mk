################################################################################
#      This file is part of KVMOS - @page@
#      Copyright (C) 2016 KVMOS
#
#  KVMOS is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  KVMOS is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with KVMOS.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="netctl"
PKG_VERSION="1.12"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3"
PKG_SITE="https://wiki.archlinux.org/index.php/Netctl"
PKG_URL="https://sources.archlinux.org/other/packages/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain bash findutils systemd dhcpcd openresolv wpa_supplicant iproute2 iptables ifenslave"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="netctl: Profile based network connection tool from Arch Linux."
PKG_LONGDESC="netctl: Profile based network connection tool from Arch Linux."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
PKG_MAKE_OPTS_TARGET="DESTDIR=$INSTALL/usr SHELL=bash"

pre_make_target() {
  # search and replace all /etc/netctl
  sed -i "s_/var/lib/netctl/netctl.state_/storage/.config/netctl/states/netctl.state_g" src/lib/globals
  sed -i "s/wheel/root/g" src/lib/wpa
}

make_target() {
  : # nop()
}

post_makeinstall_target() {
  sed -i "s_/etc/systemd/system_/storage/.config/system.d_g" $INSTALL/usr/bin/netctl
  mkdir -p $INSTALL/usr/config/
  cp $INSTALL/etc/netctl $INSTALL/usr/config -Rf
  rm -Rf $INSTALL/etc/netctl

  mkdir -p $INSTALL/usr/config/netctl/hooks
  mkdir -p $INSTALL/usr/config/netctl/states
  ln -sf /storage/.config/netctl $INSTALL/etc

  ln -sf /run/network/hosts $INSTALL/etc/hosts
}

post_install() {
  enable_service netctl.service
}
