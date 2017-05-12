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

PKG_NAME="mailx"
PKG_VERSION="8.1.2-0.20050715"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="http://www.debian.org/"
# http://distfiles.gentoo.org/distfiles/mailx_8.1.2-0.20050715cvs.orig.tar.gz
PKG_URL="http://distfiles.gentoo.org/distfiles/${PKG_NAME}_${PKG_VERSION}cvs.orig.tar.gz"
PKG_DEPENDS_TARGET="toolchain liblockfile ssmtp"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="The /bin/mail program, which is used to send mail via shell scripts"
PKG_LONGDESC="The /bin/mail program, which is used to send mail via shell scripts"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAKE_OPTS_TARGET="DESTDIR=$INSTALL"

configure_target() {
  : # nop()
}

makeinstall_target() {
  mkdir -p $INSTALL/{usr/bin,bin,etc}
  install -p -c -m 755 mail $INSTALL/usr/bin/
  (
    cd misc
    install -p -c -m 644 mail.rc $INSTALL/etc/
  )
  (
    cd $INSTALL/usr/bin
    ln -sf mail Mail
    ln -sf mail mailx
  )
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config
  cp $INSTALL/etc/mail.rc $INSTALL/usr/config/
  rm -Rf $INSTALL/etc/mail.rc
  ln -sf /storage/.config/mail.rc $INSTALL/etc/
}
