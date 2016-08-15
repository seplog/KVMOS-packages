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

PKG_NAME="celt"
PKG_VERSION="0.5.1.3"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="BSD"
PKG_SITE="http://www.celt-codec.org/"
PKG_URL="http://downloads.us.xiph.org/releases/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libogg"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="CELT is a very low delay audio codec designed for high-quality communications"
PKG_LONGDESC="CELT is a very low delay audio codec designed for high-quality communications"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-ogg"

PKG_MAKE_OPTS_TARGET="-I$SYSROOT_PREFIX/usr/include"
