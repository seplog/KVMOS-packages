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

PKG_NAME="vte"
PKG_VERSION="0.42.5"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="https://wiki.gnome.org/action/show/Apps/Terminal/VTE"
PKG_URL="http://ftp.gnome.org/mirror/gnome.org/sources/$PKG_NAME/0.42/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib gtk+ pango zlib libX11 libXft gobject-introspection gnutls"
PKG_PRIORITY="optional"
PKG_SECTION="x11/libs"
PKG_SHORTDESC="Library providing a virtual terminal emulator widget"
PKG_LONGDESC="Library providing a virtual terminal emulator widget"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-shared \
                           --disable-stati \
                           --disable-nls \
                           --disable-glade \
                           --enable-introspection \
                           --disable-vala \
                           --disable-test-application \
                           --disable-gtk-doc \
                           --disable-gtk-doc-html \
                           --disable-gtk-doc-pdf \
                           --with-gnu-ld \
                           --with-gnutls"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX

export GTK_CFLAGS="-pthread -I$SYSROOT_PREFIX/usr/include/gtk-3.0 -I$SYSROOT_PREFIX/usr/include/at-spi2-atk/2.0 -I$SYSROOT_PREFIX/usr/include/at-spi-2.0 -I$SYSROOT_PREFIX/usr/include/dbus-1.0 -I$SYSROOT_PREFIX/usr/lib/dbus-1.0/include -I$SYSROOT_PREFIX/usr/include/gtk-3.0 -I$SYSROOT_PREFIX/usr/include/gio-unix-2.0/ -I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/pango-1.0 -I$SYSROOT_PREFIX/usr/include/harfbuzz -I$SYSROOT_PREFIX/usr/include/pango-1.0 -I$SYSROOT_PREFIX/usr/include/atk-1.0 -I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/pixman-1 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/libdrm -I$SYSROOT_PREFIX/usr/include/libpng16 -I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 -I$SYSROOT_PREFIX/usr/include/libpng16 -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"
export VTE_CFLAGS="-pthread -I$SYSROOT_PREFIX/usr/include/gtk-3.0 -I$SYSROOT_PREFIX/usr/include/at-spi2-atk/2.0 -I$SYSROOT_PREFIX/usr/include/at-spi-2.0 -I$SYSROOT_PREFIX/usr/include/dbus-1.0 -I$SYSROOT_PREFIX/usr/lib/dbus-1.0/include -I$SYSROOT_PREFIX/usr/include/gtk-3.0 -I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/pango-1.0 -I$SYSROOT_PREFIX/usr/include/harfbuzz -I$SYSROOT_PREFIX/usr/include/pango-1.0 -I$SYSROOT_PREFIX/usr/include/atk-1.0 -I$SYSROOT_PREFIX/usr/include/cairo -I$SYSROOT_PREFIX/usr/include/pixman-1 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/freetype2 -I$SYSROOT_PREFIX/usr/include/libdrm -I$SYSROOT_PREFIX/usr/include/libpng16 -I$SYSROOT_PREFIX/usr/include/gdk-pixbuf-2.0 -I$SYSROOT_PREFIX/usr/include/libpng16 -I$SYSROOT_PREFIX/usr/include/gio-unix-2.0/ -I$SYSROOT_PREFIX/usr/include/glib-2.0 -I$SYSROOT_PREFIX/usr/lib/glib-2.0/include"
