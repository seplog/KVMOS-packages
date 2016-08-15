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

PKG_NAME="spice-gtk"
PKG_VERSION="0.32"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="http://spice-space.org"
PKG_URL="http://spice-space.org/download/gtk/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libressl pixman celt gtk+ glib cairo libjpeg-turbo zlib gobject-introspection usbredir libusb spice-protocol" # opus
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="VNC viewer widget for GTK"
PKG_LONGDESC="VNC viewer widget for GTK"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-static \
                           --enable-shared \
                           --disable-nls \
                           --disable-gtk-doc \
                           --disable-gtk-doc-html \
                           --disable-gtk-doc-pdf \
                           --disable-webdav \
                           --enable-epoxy \
                           --disable-pulse \
                           --disable-gstaudio \
                           --disable-smartcard \
                           --enable-usbredir \
                           --disable-polkit \
                           --enable-introspection \
                           --disable-vala \
                           --enable-dbus \
                           --with-gnu-ld \
                           --without-sasl \
                           --with-gtk=3.0 \
                           --without-x11 \
                           --with-python=$SYSROOT_PREFIX/usr/bin/python"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
