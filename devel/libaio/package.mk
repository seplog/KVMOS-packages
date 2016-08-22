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

PKG_NAME="libaio"
PKG_VERSION="0.3.110"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2"
PKG_SITE="http://lse.sourceforge.net/io/aio.html"
PKG_URL="https://fedorahosted.org/releases/l/i/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="Asynchronous input/output library that uses the kernels native interface"
PKG_LONGDESC="Asynchronous input/output library that uses the kernels native interface"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

export CFLAGS="-march=${ARCH/_/-} -mtune=generic -O2 -pipe"

configure_target() {
  : # nop
}

makeinstall_target() {
  make prefix=$SYSROOT_PREFIX/usr install
}
