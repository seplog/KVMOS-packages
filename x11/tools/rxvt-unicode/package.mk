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

PKG_NAME="rxvt-unicode"
PKG_VERSION="9.22"
PKG_REV="0"
PKG_ARCH="i386 x86_64"
PKG_LICENSE="GPL-3"
PKG_SITE="http://software.schmorp.de/pkg/rxvt-unicode.html"
PKG_URL="http://dist.schmorp.de/$PKG_NAME/Attic/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libX11 libXft startup-notification"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="rxvt-unicode is a clone of the terminal emulator rxvt, an X Window System terminal emulator which includes support for XFT and Unicode."
PKG_LONGDESC="rxvt-unicode is a clone of the terminal emulator rxvt, an X Window System terminal emulator which includes support for XFT and Unicode."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-pixbuf \
                           --disable-perl"

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/share/X11/app-defaults/
  cp $PKG_DIR/config/urxvt-color $INSTALL/usr/share/X11/app-defaults/
}
