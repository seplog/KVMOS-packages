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

PKG_NAME="gnome-common"
PKG_VERSION="3.14.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3"
PKG_SITE="http://www.gtk.org/"
PKG_URL="https://git.gnome.org/browse/$PKG_NAME/snapshot/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_HOST="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="x11/tools"
PKG_SHORTDESC="Common files for development of Gnome packages"
PKG_LONGDESC="Common files for development of Gnome packages"
PKG_IS_ADDON="no"

PKG_AUTORECONF="yes"
