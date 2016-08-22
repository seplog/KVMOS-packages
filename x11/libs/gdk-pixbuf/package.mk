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

PKG_NAME="gdk-pixbuf"
PKG_VERSION="2.34.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.acc.umu.se/pub/gnome/sources/gdk-pixbuf/2.34/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libjpeg-turbo libpng jasper tiff"
PKG_PRIORITY="optional"
PKG_SECTION="x11/libs"
PKG_SHORTDESC="gdk-pixbuf: a GNOME library for image loading and manipulation."
PKG_LONGDESC="gdk-pixbuf (GdkPixbuf) is a GNOME library for image loading and manipulation. The GdkPixbuf documentation contains both the programmer's guide and the API reference."
PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_MAINTAINER="none"

PKG_CONFIGURE_OPTS_TARGET="gio_can_sniff=yes \
            --disable-gtk-doc \
            --disable-gtk-doc-html \
            --disable-gtk-doc-pdf \
            --disable-man \
            --with-libpng \
            --with-libjpeg \
            --with-libtiff \
            --with-libjasper"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
export XDG_DATA_DIRS=$SYSROOT_PREFIX/usr/share
