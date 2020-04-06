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

PKG_NAME="ifenslave"
PKG_VERSION="1.1.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="http://sf.net/projects/bonding/"
PKG_URL="http://distfiles.gentoo.org/distfiles/$PKG_NAME-2.6_$PKG_VERSION.orig.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="ifenslave: Attach and detach slave interfaces to a bonding device"
PKG_LONGDESC="ifenslave: Attach and detach slave interfaces to a bonding device"
PKG_TOOLCHAIN="make"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
PKG_MAKE_OPTS_TARGET="DESTDIR=$INSTALL/usr"

make_target() {
  $CC $CFLAGS $LDFLAGS $PKG_NAME.c -o $PKG_NAME
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp $PKG_NAME $INSTALL/usr/bin/
}
