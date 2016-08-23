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

PKG_NAME="gtk-vnc"
PKG_VERSION="0.5.4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="https://wiki.gnome.org/Projects/gtk-vnc"
PKG_URL="http://ftp.gnome.org/pub/GNOME/sources/$PKG_NAME/0.5/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libgcrypt gnutls libgpg-error cairo gtk+ libX11 gobject-introspection"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="VNC viewer widget for GTK"
PKG_LONGDESC="VNC viewer widget for GTK"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

export PATH=$SYSROOT_PREFIX/usr/bin:$PATH

PKG_CONFIGURE_OPTS_TARGET="XGETTEXT=$ROOT/$TOOLCHAIN/bin/xgettext \
                           MSGFMT=$ROOT/$TOOLCHAIN/bin/msgfmt \
                           GMSGFMT=$ROOT/$TOOLCHAIN/bin/msgfmt \
                           MSGMERGE=$ROOT/$TOOLCHAIN/bin/msgmerge \
                           --disable-static \
                           --enable-shared \
                           --enable-introspection \
                           --disable-vala \
                           --with-gnu-ld \
                           --with-gtk=3.0 \
                           --without-python \
                           --without-examples \
                           --without-libview \
                           --without-pulseaudio \
                           --without-sasl"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
export XDG_DATA_DIRS=$SYSROOT_PREFIX/usr/share
