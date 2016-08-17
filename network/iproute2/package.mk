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

PKG_NAME="iproute2"
PKG_VERSION="4.6.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="http://www.linuxfoundation.org/collaborate/workgroups/networking/iproute2"
PKG_URL="https://www.kernel.org/pub/linux/utils/net/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libmnl iptables xz bison:host flex:host"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="kernel routing and traffic control utilities"
PKG_LONGDESC="kernel routing and traffic control utilities"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_configure_target() {
  cd $ROOT/$PKG_BUILD
  rm -rf .$TARGET_NAME

  # Disable ARPd
  sed -i /ARPD/d Makefile
  sed -i 's/arpd.8//' man/man8/Makefile
  rm -f doc/arpd.sgml
}

configure_target() {
  : # nop()
}

export CFLAGS="$CFLAGS -I$SYSROOT_PREFIX/usr/include"

make_target() {
  make \
    CC="$TARGET_CC" \
    AR="$TARGET_AR" \
    KERNEL_INCLUDE="$SYSROOT_PREFIX/usr/include" \
    all
}
