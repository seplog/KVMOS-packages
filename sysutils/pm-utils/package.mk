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

PKG_NAME="pm-utils"
PKG_VERSION="1.4.1"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL-2"
PKG_SITE="https://pm-utils.freedesktop.org/"
PKG_URL="https://pm-utils.freedesktop.org/releases/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain dbus util-linux alsa-utils hdparm ethtool wireless_tools"
PKG_PRIORITY="optional"
PKG_SECTION="sysutils"
PKG_SHORTDESC="Suspend and hibernation utilities"
PKG_LONGDESC="Suspend and hibernation utilities"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config/
  cp $INSTALL/etc/pm $INSTALL/usr/config/ -Rf
  rm -Rf $INSTALL/etc/pm
  ln -sf /storage/.config/pm $INSTALL/etc/

  # Install wireless-tools its a unofficial plugin...
  mkdir -p $INSTALL/bin
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwspy
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwlist
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwpriv
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwgetid
  cp -P $(get_build_dir wireless_tools)/iwmulticall $INSTALL/bin/iwconfig
}
