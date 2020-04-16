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

PKG_NAME="edk2-ovmf"
PKG_VERSION="201905"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD-2 MIT"
PKG_SITE="https://github.com/tianocore/edk2"
PKG_URL="https://dev.gentoo.org/~tamiko/distfiles/$PKG_NAME-$PKG_VERSION-bin.tar.xz"
PKG_SHA256="5eb57f3640b66fa569bb8d93756dccda9eb04adee2059c3db8304a28b33f1798"
PKG_DEPENDS_TARGET=""
PKG_PRIORITY="optional"
PKG_SECTION="firmware"
PKG_SHORTDESC="UEFI firmware for 64-bit x86 virtual machines"
PKG_LONGDESC=""
PKG_IS_ADDON="no"
PKG_TOOLCHAIN="manual"

PKG_AUTORECONF="no"

unpack() {
  mkdir -p $PKG_BUILD
  tar xpf $SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz -C $PKG_BUILD/
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
  mkdir -p $INSTALL/usr/share/$PKG_NAME
  cp -pf edk2-edk2-stable$PKG_VERSION/ovmf/* $INSTALL/usr/share/$PKG_NAME/
}
