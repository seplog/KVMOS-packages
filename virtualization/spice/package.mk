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

PKG_NAME="spice"
PKG_VERSION="0.14.2"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL"
PKG_SITE="http://spice-space.org/"
PKG_URL="http://spice-space.org/download/releases/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain glib zlib libjpeg-turbo pixman openssl spice-protocol six:host pyparsing:host gstreamer gst-plugins-base orc"
PKG_PRIORITY="optional"
PKG_SECTION="virtualization"
PKG_SHORTDESC="SPICE server"
PKG_LONGDESC="SPICE server"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"
PKG_TOOLCHAIN="configure"

PKG_CONFIGURE_OPTS_TARGET="--disable-gui \
                           --disable-automated-tests \
                           --disable-static \
                           --disable-lz4 \
                           --disable-sasl \
                           --disable-smartcard \
                           --enable-gstreamer=yes \
                           --disable-opus"

export CFLAGS="$CFLAGS -UHAVE_AUTOMATED_TESTS"
export LDFLAGS="$LDFLAGS -L$SYSROOT/usr/lib -ljpeg"

post_makeinstall_target() {
  cp -Rf $INSTALL/usr/lib/* $SYSROOT_PREFIX/usr/lib/
}
