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

PKG_NAME="dmenu"
PKG_VERSION="4.6"
PKG_REV="0"
PKG_ARCH="x86_64"
PKG_LICENSE="MIT"
PKG_SITE="http://tools.suckless.org/dmenu/"
PKG_URL="http://dl.suckless.org/tools/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain fontconfig freetype libX11 libXft libXinerama xineramaproto xproto libXrender"
PKG_PRIORITY="optional"
PKG_SECTION="x11/tools"
PKG_SHORTDESC="dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items efficiently."
PKG_LONGDESC="dmenu is a dynamic menu for X, originally designed for dwm. It manages large numbers of user-defined menu items efficiently."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAKE_OPTS_TARGET="X11INC=$PKG_CONFIG_SYSROOT_DIR/usr/include/X11 \
                      X11LIB=$PKG_CONFIG_SYSROOT_DIR/usr/lib \
                      FREETYPEINC=$PKG_CONFIG_SYSROOT_DIR/usr/include/freetype2 \
                      CC=$CC"

PKG_MAKEINSTALL_OPTS_TARGET="PREFIX=/usr"
