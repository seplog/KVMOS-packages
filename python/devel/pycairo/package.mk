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

PKG_NAME="pycairo"
PKG_VERSION="1.8.10"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-3"
PKG_SITE="http://cairographics.org/pycairo/"
PKG_URL="https://www.cairographics.org/releases/py2cairo-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python cairo expat"
PKG_PRIORITY="optional"
PKG_SECTION="python/devel"
PKG_SHORTDESC="Python bindings for the cairo library"
PKG_LONGDESC="Python bindings for the cairo library"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
export XDG_DATA_DIRS=$SYSROOT_PREFIX/usr/share

unset LIBTOOL

# unpack() {
#   tar xf $ROOT/$SOURCES/$PKG_NAME/py2cairo-$PKG_VERSION.tar.gz -C $ROOT/$BUILD
# }

pre_configure_target() {
  cd $PKG_BUILD
  rm -rf .$TARGET_NAME
}
