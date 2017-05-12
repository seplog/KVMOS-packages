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

PKG_NAME="nc6"
PKG_VERSION="1.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="http://netcat6.sourceforge.net/"
PKG_URL="http://distfiles.gentoo.org/distfiles/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="netcat clone with better IPv6 support, improved code, etc..."
PKG_LONGDESC="netcat clone with better IPv6 support, improved code, etc..."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_func_malloc_0_nonnull=yes \
                           --disable-dependency-tracking \
                           --disable-silent-rules \
                           --disable-nls \
                           --disable-bluez \
                           --enable-ipv6"
PKG_MAKE_OPTS_TARGET="DESTDIR=$INSTALL/usr"

post_makeinstall_target() {
  (
    cd $INSTALL/usr/bin
    ln -sf nc6 nc
  )
}
