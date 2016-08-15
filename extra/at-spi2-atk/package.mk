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

PKG_NAME="at-spi2-atk"
PKG_VERSION="2.20.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="https://wiki.gnome.org/Accessibility"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/2.20/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain at-spi2-core atk"
PKG_PRIORITY="optional"
PKG_SECTION="extra"
PKG_SHORTDESC="Gtk module for bridging AT-SPI to Atk"
PKG_LONGDESC="Gtk module for bridging AT-SPI to Atk"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"
PKG_CONFIGURE_OPTS_TARGET="--enable-p2p \
                           --with-gnu-ld"

export LDFLAGS="-Wl,-O1 -Wl,--as-needed"
