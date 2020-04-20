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

PKG_NAME="msmtp"
PKG_VERSION="1.8.8"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3"
PKG_SITE="https://marlam.de/msmtp/"
PKG_URL="https://marlam.de/msmtp/releases/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain gnutls"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="An SMTP client and SMTP plugin for mail user agents such as Mutt"
PKG_LONGDESC="An SMTP client and SMTP plugin for mail user agents such as Mutt"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--with-tls=gnutls \
                           --without-libgsasl \
                           --without-libidn \
                           --without-libsecret \
                           --without-msmtpd \
                           --sysconfdir=/etc/msmtp"

post_makeinstall_target() {
  mkdir -p $INSTALL/etc/
    cp $PKG_DIR/config/mail.rc $INSTALL/etc/

  mkdir -p $INSTALL/usr/share/config/msmtp
    ln -sf /storage/.config/msmtprc $INSTALL/etc/
}
