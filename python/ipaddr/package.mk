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

PKG_NAME="ipaddr"
PKG_VERSION="2.1.11"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="Apache 2.0"
PKG_SITE="https://pypi.python.org/pypi/ipaddr"
PKG_URL="https://pypi.python.org/packages/08/80/7539938aca4901864b7767a23eb6861fac18ef5219b60257fc938dae3568/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libvirt"
PKG_PRIORITY="optional"
PKG_SECTION="python"
PKG_SHORTDESC="Python IP address manipulation library"
PKG_LONGDESC="Python IP address manipulation library"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

pre_make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export LDSHARED="$CC -shared"
}

make_target() {
  python setup.py build
}

makeinstall_target() {
  python setup.py install --root=$INSTALL --prefix=/usr
}
