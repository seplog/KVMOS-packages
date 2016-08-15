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

PKG_NAME="libsoup"
PKG_VERSION="2.52.2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="https://wiki.gnome.org/Projects/libsoup"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/2.52/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libxml2 sqlite gobject-introspection intltool"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="An HTTP library implementation in C"
PKG_LONGDESC="An HTTP library implementation in C"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-static \
                           --enable-shared \
                           --disable-tls-check \
                           --without-gnome \
                           --without-apache-httpd \
                           --enable-introspection \
                           --disable-vala \
                           --with-gnu-ld"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
