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

PKG_NAME="openresolv"
PKG_VERSION="3.9.2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD-2"
PKG_SITE="http://roy.marples.name/projects/openresolv/"
PKG_URL="http://roy.marples.name/downloads/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="openresolv: A framework for managing DNS information"
PKG_LONGDESC="openresolv: A framework for managing DNS information"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--libexecdir=/lib/resolvconf"

pre_configure_target() {
  cd $PKG_BUILD
  rm -rf .$TARGET_NAME
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config
  cp $PKG_DIR/config/resolvconf.conf $INSTALL/usr/config

  rm -f $INSTALL/etc/resolvconf.conf

  mkdir -p $INSTALL/etc
  ln -sf /storage/.config/resolvconf.conf

  ln -sf /run/network/resolv.conf $INSTALL/etc/resolv.conf
}
