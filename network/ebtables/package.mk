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

PKG_NAME="ebtables"
PKG_VERSION="v2.0.10-4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="http://ebtables.sourceforge.net/"
PKG_URL="ftp://ftp.netfilter.org/pub/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="Utility that enables basic Ethernet frame filtering on a Linux bridge, MAC NAT and brouting"
PKG_LONGDESC="Utility that enables basic Ethernet frame filtering on a Linux bridge, MAC NAT and brouting"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_configure_target() {
  # cannot build in build dir
  cd $PKG_BUILD
  rm -rf .$TARGET_NAME
}

configure_target() {
  sed -i -e "s,^MANDIR:=.*,MANDIR:=/usr/share/man," \
         -e "s,^BINDIR:=.*,BINDIR:=/usr/sbin," \
         -e "s,^INITDIR:=.*,INITDIR:=/usr/share/doc/$PKG_NAME," \
         -e "s,^SYSCONFIGDIR:=.*,SYSCONFIGDIR:=/usr/share/doc/$PKG_NAME," \
         -e "s,^LIBDIR:=.*,LIBDIR:=/usr/lib,"  Makefile
}

makeinstall_target() {
  make install DESTDIR=$INSTALL
}
