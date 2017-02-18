################################################################################
#      This file is part of KVMOS - @page@
#      Copyright (C) 2016 Sebastian Koschmieder (sep@seplog.org)
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
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="boot"
PKG_VERSION=""
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="various"
PKG_SITE="@page@"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="sysutils"
PKG_SHORTDESC="network: Metapackage for packages to install efiboot support"
PKG_LONGDESC="network: Metapackage for various packages to install efiboot support"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

if [ "$DISTRO" = "KVMOS" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET efibootmgr"
fi

configure_target() {
  : # nop
}

make_target() {
  : # nop
}

makeinstall_target() {
  : # nop
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
  cp -p $(get_build_dir efibootmgr)/src/efibootmgr/efibootmgr $INSTALL/usr/bin/
}
