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

PKG_NAME="smartmontools"
PKG_VERSION="6.5"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="https://www.smartmontools.org"
PKG_URL="https://downloads.sourceforge.net/project/smartmontools/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="sysutils"
PKG_SHORTDESC="Tools to monitor storage systems to provide advanced warning of disk degradation"
PKG_LONGDESC="The smartmontools package contains utility programs (smartctl, smartd) to control/monitor storage systems using the Self-Monitoring, Analysis and Reporting Technology System (S.M.A.R.T.) built into most modern ATA and SCSI disks."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET=""
PKG_MAKE_OPTS_TARGET="DESTDIR=$INSTALL/usr"

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config/i3
  cp $INSTALL/etc/smartd.conf $INSTALL/usr/config/
  rm -Rf $INSTALL/etc/smartd.conf
  ln -sf /storage/.config/smartd.conf $INSTALL/etc/
}
