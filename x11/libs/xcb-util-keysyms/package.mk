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

PKG_NAME="xcb-util-keysyms"
PKG_VERSION="0.4.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="http://xcb.freedesktop.org"
PKG_URL="http://xcb.freedesktop.org/dist/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libxcb"
PKG_PRIORITY="optional"
PKG_SECTION="x11/libs"
PKG_SHORTDESC="xcb-util: The xcb-util package provides additional extensions to the XCB library, many that were previously found in Xlib, but are not part of core X protocol."
PKG_LONGDESC="The xcb-util package provides additional extensions to the XCB library, many that were previously found in Xlib, but are not part of core X protocol."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"
