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

PKG_NAME="atk"
PKG_VERSION="2.20.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="http://library.gnome.org/devel/atk/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/2.20/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib gobject-introspection"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="ATK - Accessibility Toolkit"
PKG_LONGDESC="ATK provides the set of accessibility interfaces that are implemented by other toolkits and applications. Using the ATK interfaces, accessibility tools have full access to view and control running applications."
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"
PKG_CONFIGURE_OPTS_TARGET="--disable-silent-rules \
                           --disable-static \
                           --enable-shared \
                           --disable-rebuilds \
                           --disable-glibtest \
                           --with-python=$ROOT/$TOOLCHAIN/bin/python2"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
export PYTHONPATH=$PYTHONPATH:$ROOT/$TOOLCHAIN/lib/python2.7/gobject-introspection
export XDG_DATA_DIRS=$SYSROOT_PREFIX/usr/share
