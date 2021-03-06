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

PKG_NAME="pyOpenSSL"
PKG_VERSION="16.0.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="https://pypi.python.org/pypi/pyOpenSSL"
PKG_URL="https://pypi.python.org/packages/77/f2/bccec75ca4280a9fa762a90a1b8b152a22eac5d9c726d7da1fcbfe0a20e6/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python libressl setuptools:host"
PKG_PRIORITY="optional"
PKG_SECTION="python/security"
PKG_SHORTDESC="pyOpenSSL: Python interface to the OpenSSL library"
PKG_LONGDESC="Python interface to the OpenSSL library. Includes: SSL Context objects, SSL Connection objects, using Python sockets as transport layer. The Connection object wraps all the socket methods and can therefore be used interchangeably."
PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export LDFLAGS="$LDFLAGS -L$SYSROOT_PREFIX/usr/lib -L$SYSROOT_PREFIX/lib"
  export CC="$CC -I$SYSROOT_PREFIX/usr/include/python2.7"
  export LDSHARED="${CC} -shared"

  python setup.py build_ext -I$SYSROOT_PREFIX/usr/include -L$SYSROOT_PREFIX/usr/lib
  python setup.py build
}

makeinstall_target() {
  python setup.py install --root=$INSTALL --prefix=/usr --optimize=1
  rm -rf $INSTALL/usr/bin
}
