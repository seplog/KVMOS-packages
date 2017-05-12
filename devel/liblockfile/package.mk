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

PKG_NAME="liblockfile"
PKG_VERSION="1.09"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2"
PKG_SITE="http://www.debian.org/"
PKG_URL="http://ftp.debian.org/debian/pool/main/libl/$PKG_NAME/${PKG_NAME}_${PKG_VERSION}.orig.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="Implements functions designed to lock the standard mailboxes"
PKG_LONGDESC="Implements functions designed to lock the standard mailboxes"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--enable-shared"
PKG_MAKE_OPTS_TARGET="DESTDIR=$INSTALL/usr"

pre_make_target() {
    # Copy all files into the target build dir
    mkdir -p ../.$TARGET_NAME && cd ../.$TARGET_NAME/
    cp -Rf ../* ./
}

makeinstall_target() {
    install -m 644 lockfile.h maillock.h $SYSROOT_PREFIX/usr/include
    install -m 755 dotlockfile $SYSROOT_PREFIX/usr/bin
    install -m 755 liblockfile.so $SYSROOT_PREFIX/usr/lib/liblockfile.so.1.0
    (
      cd $SYSROOT_PREFIX/usr/lib
      ln -sf liblockfile.so.1.0 liblockfile.so.1
      ln -sf liblockfile.so.1 liblockfile.so
    )

    mkdir -p $INSTALL/usr/{bin,lib}
    install -m 755 dotlockfile $INSTALL/usr/bin
    install -m 755 liblockfile.so $INSTALL/usr/lib/liblockfile.so.1.0
    (
      cd $INSTALL/usr/lib
      ln -sf liblockfile.so.1.0 liblockfile.so.1
      ln -sf liblockfile.so.1 liblockfile.so
    )
}
