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

PKG_NAME="s-nail"
PKG_VERSION="14.9.18"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="https://www.sdaoden.eu/code.html"
PKG_URL="https://www.sdaoden.eu/downloads/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain openssl"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="Enhanced mailx-compatible mail client based on Hierloom mailx (nail)"
PKG_LONGDESC="Enhanced mailx-compatible mail client based on Hierloom mailx (nail)"
PKG_TOOLCHAIN="make"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAKE_OPTS_TARGET="DESTDIR=$INSTALL"

configure_target() {
  $MAKE \
    VAL_PREFIX="${EPREFIX}"/usr \
    VAL_SYSCONFDIR="${EPREFIX}"/etc \
    VAL_PAGER=less \
    OPT_TLS=yes \
    config
}

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config
    mv $INSTALL/etc/s-nail.rc $INSTALL/usr/config/
    ln -sf /storage/.config/s-nail.rc $INSTALL/etc/

  mkdir -p $INSTALL/usr/bin/
    ln -sf s-nail $INSTALL/usr/bin/mailx
    ln -sf mailx $INSTALL/usr/bin/mail

  mkdir -p $INSTALL/etc
    cp $PKG_DIR/config/mail.rc $INSTALL/etc/
}
