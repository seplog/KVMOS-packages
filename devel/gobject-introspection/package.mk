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

PKG_NAME="gobject-introspection"
PKG_VERSION="1.47.92"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="https://wiki.gnome.org/Projects/GObjectIntrospection"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/gobject-introspection/1.47/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain bison:host flex:host Python:host glib cairo"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="Introspection infrastructure for generating gobject library bindings for various languages"
PKG_LONGDESC="Introspection infrastructure for generating gobject library bindings for various languages"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-shared \
                           --disable-static \
                           --disable-gtk-doc \
                           --disable-gtk-doc-html \
                           --disable-gtk-doc-pdf \
                           --disable-doctool \
                           --disable-Bsymbolic \
                           --with-gnu-ld \
                           --with-cairo \
                           --with-python=$ROOT/$TOOLCHAIN/bin/python2"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
export XDG_DATA_DIRS=$SYSROOT_PREFIX/usr/share

post_makeinstall_target() {
  cp -Rf $INSTALL/* $SYSROOT_PREFIX/
  cp -Rp $INSTALL/usr/lib/girepository-1.0 $ROOT/$TOOLCHAIN/lib/python2.7/
  cp -Rp $INSTALL/usr/lib/gobject-introspection $ROOT/$TOOLCHAIN/lib/python2.7/

  # correct paths in SYSROOT
  sed -i "s|datadir = \"/usr/share\"|datadir = \"$SYSROOT_PREFIX/usr/share\"|g" $SYSROOT_PREFIX/usr/bin/g-ir-scanner
  sed -i "s|pylibdir = os.path.join('/usr/lib', 'gobject-introspection')|pylibdir = os.path.join('$SYSROOT_PREFIX/usr/lib', 'gobject-introspection')|g" $SYSROOT_PREFIX/usr/bin/g-ir-scanner
}
