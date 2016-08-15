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

PKG_NAME="usbredir"
PKG_VERSION="0.7"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="http://spice-space.org/page/UsbRedir"
PKG_URL="http://spice-space.org/download/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libusb"
PKG_PRIORITY="optional"
PKG_SECTION="sysutils"
PKG_SHORTDESC="A simple TCP daemon and set of libraries for the usbredir protocol (redirecting USB traffic)"
PKG_LONGDESC="A simple TCP daemon and set of libraries for the usbredir protocol (redirecting USB traffic)"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"
