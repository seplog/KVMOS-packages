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

PKG_NAME="cciss_vol_status"
PKG_VERSION="1.11"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="http://cciss.sourceforge.net/#cciss_utils"
PKG_URL="http://distfiles.gentoo.org/distfiles/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="sysutils"
PKG_SHORTDESC="Shows status of logical drives attached to HP SmartArray controllers"
PKG_LONGDESC="Shows status of logical drives attached to HP SmartArray controllers"
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="ac_cv_func_malloc_0_nonnull=yes"
# PKG_MAKEINSTALL_OPTS_TARGET="DESTDIR=$INSTALL"

makeinstall_target() {
  $MAKE DESTDIR=$INSTALL install
}
