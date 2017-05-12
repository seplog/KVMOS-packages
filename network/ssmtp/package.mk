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

PKG_NAME="ssmtp"
PKG_VERSION="2.64"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="ftp://ftp.debian.org/debian/pool/main/s/ssmtp/"
PKG_URL="ftp://ftp.debian.org/debian/pool/main/s/$PKG_NAME/${PKG_NAME}_${PKG_VERSION}.orig.tar.bz2"
PKG_DEPENDS_TARGET="toolchain gnutls"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="Extremely simple MTA to get mail off the system to a Mailhub"
PKG_LONGDESC="Extremely simple MTA to get mail off the system to a Mailhub"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-ssl \
                           --enable-inet6 \
                           --enable-md5auth"

pre_make_target() {
    # Copy all files into the target build dir
    mkdir -p ../.$TARGET_NAME && cd ../.$TARGET_NAME/
    cp -Rf ../* ./
}

makeinstall_target() {
  make prefix=$INSTALL/usr etcdir=$INSTALL/etc install
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config
  cp -Rf $INSTALL/etc/ssmtp $INSTALL/usr/config/
  cp $PKG_DIR/config/ssmtp.conf $INSTALL/usr/config/ssmtp/
  rm -Rf $INSTALL/etc/ssmtp
  ln -sf /storage/.config/ssmtp $INSTALL/etc/

  (
    mkdir -p $INSTALL/usr/lib
    cd $INSTALL/usr/lib
    ln -s /usr/sbin/ssmtp sendmail
  )
  (
    mkdir -p $INSTALL/usr/bin
    cd $INSTALL/usr/bin
    ln -s /usr/sbin/ssmtp sendmail
  )
  (
    mkdir -p $INSTALL/usr/sbin
    cd $INSTALL/usr/sbin
    ln -s ssmtp sendmail
  )
}
