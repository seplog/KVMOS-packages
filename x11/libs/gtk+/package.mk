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

PKG_NAME="gtk+"
PKG_VERSION="3.16.6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="http://www.gtk.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/gtk+/3.16/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain Python:host atk at-spi2-atk libX11 libXrandr libXi glib gobject-introspection pango cairo gdk-pixbuf fontconfig libXcomposite libX11 libXext libXi libXrandr libXfixes libXinerama libXdamage libepoxy librsvg"
PKG_PRIORITY="optional"
PKG_SECTION="x11/libs"
PKG_SHORTDESC="gtk+: The Gimp ToolKit (GTK)"
PKG_LONGDESC="This is GTK+. GTK+, which stands for the Gimp ToolKit, is a library for creating graphical user interfaces for the X Window System. It is designed to be small, efficient, and flexible. GTK+ is written in C with a very object-oriented approach."
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_path_XGETTEXT=$ROOT/$TOOLCHAIN/bin/xgettext \
                           --enable-shared \
                           --enable-xkb \
                           --enable-xinerama \
                           --enable-xrandr \
                           --enable-xfixes \
                           --enable-xcomposite \
                           --enable-xdamage \
                           --enable-x11-backend \
                           --disable-win32-backend \
                           --disable-quartz-backend \
                           --disable-broadway-backend \
                           --disable-wayland-backend \
                           --disable-mir-backend \
                           --disable-glibtest \
                           --enable-modules \
                           --disable-cups \
                           --disable-papi \
                           --disable-cloudprint \
                           --disable-test-print-backend \
                           --disable-schemas-compile \
                           --disable-colord \
                           --disable-gtk-doc \
                           --disable-gtk-doc-html \
                           --disable-gtk-doc-pdf \
                           --disable-man \
                           --disable-doc-cross-references \
                           --disable-Bsymbolic \
                           --with-gnu-ld \
                           --with-x"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
export XDG_DATA_DIRS=$SYSROOT_PREFIX/usr/share
export PATH="$SYSROOT_PREFIX/usr/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:PYTHONPATH=$PYTHONPATH:$SYSROOT_PREFIX/usr/share/glib-2.0

post_makeinstall_target() {
  mkdir -p $INSTALL/etc/gtk-3.0
  cp $PKG_DIR/config/settings.ini $INSTALL/etc/gtk-3.0
}
