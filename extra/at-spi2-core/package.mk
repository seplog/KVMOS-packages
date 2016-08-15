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

PKG_NAME="at-spi2-core"
PKG_VERSION="2.20.2"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="https://wiki.gnome.org/Accessibility"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/2.20/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib dbus libSM libXi libXtst gobject-introspection libX11 intltool gettext systemd"
PKG_PRIORITY="optional"
PKG_SECTION="extra"
PKG_SHORTDESC="D-Bus accessibility specifications and registration daemon"
PKG_LONGDESC="D-Bus accessibility specifications and registration daemon"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"

PKG_MAINTAINER="none"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
