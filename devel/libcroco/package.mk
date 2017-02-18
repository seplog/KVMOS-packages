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

PKG_NAME="libcroco"
PKG_VERSION="0.6.11"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2"
PKG_SITE="https://git.gnome.org/browse/libcroco/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/$PKG_NAME/0.6/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib libxml2"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="Generic Cascading Style Sheet (CSS) parsing and manipulation toolkit"
PKG_LONGDESC="Generic Cascading Style Sheet (CSS) parsing and manipulation toolkit"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"
PKG_CONFIGURE_OPTS_TARGET="--disable-static \
                           --enable-shared"
