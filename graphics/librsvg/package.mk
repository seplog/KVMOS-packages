################################################################################
#      This file is part of KVMOS - @page@
#      Copyright (C) 2016 Sebastian Koschmieder (sep@seplog.org)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along KVMOS.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="librsvg"
PKG_VERSION="2.40.16"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2"
PKG_SITE="https://wiki.gnome.org/Projects/LibRsvg"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/librsvg/2.40/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib cairo pango libxml2 libcroco gdk-pixbuf gobject-introspection"
PKG_PRIORITY="optional"
PKG_SECTION="graphics"
PKG_SHORTDESC="Scalable Vector Graphics (SVG) rendering library"
PKG_LONGDESC="Scalable Vector Graphics (SVG) rendering library"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-shared \
                           --disable-static \
                           --disable-tools \
                           --with-python=$ROOT/$TOOLCHAIN/bin/python2"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
export PYTHONPATH=$PYTHONPATH:$ROOT/$TOOLCHAIN/lib/python2.7/gobject-introspection
