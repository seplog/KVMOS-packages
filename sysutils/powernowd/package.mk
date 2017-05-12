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

PKG_NAME="powernowd"
PKG_VERSION="1.00"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="http://www.deater.net/john/powernowd.html"
PKG_URL="http://www.deater.net/john/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="sysutils"
PKG_SHORTDESC="Daemon to control the speed and voltage of CPUs"
PKG_LONGDESC="Daemon to control the speed and voltage of CPUs"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

make_target() {
  $CC $CFLAGS $LDFLAGS $PKG_NAME.c -o $PKG_NAME
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp $PKG_NAME $INSTALL/usr/bin/
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/systemd/system
  cp $PKG_DIR/services/$PKG_NAME.service $INSTALL/usr/lib/systemd/system/

  enable_service powernowd.service
}
