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

PKG_NAME="seabios"
PKG_VERSION="1.13.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-3"
PKG_SITE="http://www.seabios.org"
PKG_URL="https://www.seabios.org/downloads/bios.bin-$PKG_VERSION.gz"
PKG_DEPENDS_TARGET=""
PKG_PRIORITY="optional"
PKG_SECTION="sysutils"
PKG_SHORTDESC="Open Source implementation of a 16-bit x86 BIOS"
PKG_LONGDESC=""
PKG_IS_ADDON="no"
PKG_TOOLCHAIN="manual"

PKG_AUTORECONF="no"

unpack() {
  mkdir -p $PKG_BUILD
  gunzip -k -c $SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.gz > $PKG_BUILD/bios.bin
}

configure_target() {
  : # nop
}

make_target() {
  : # nop
}

makeinstall_target() {
  : #nop
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/share/seabios
  cp -pf bios.bin $INSTALL/usr/share/seabios/
}
