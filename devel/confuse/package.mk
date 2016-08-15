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

PKG_NAME="confuse"
PKG_VERSION="3.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="ISC"
PKG_SITE="https://github.com/martinh/libconfuse"
PKG_URL="https://github.com/martinh/libconfuse/releases/download/v$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_HOST=""
PKG_DEPENDS_TARGET="flex libtool"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="Small configuration file parser library for C."
PKG_LONGDESC="Small configuration file parser library for C."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_func_malloc_0_nonnull=yes \
                           --enable-shared \
                           --disable-static \
                           --disable-examples"
