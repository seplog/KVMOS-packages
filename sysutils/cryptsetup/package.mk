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

PKG_NAME="cryptsetup"
PKG_VERSION="2.3.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2+"
PKG_SITE="https://gitlab.com/cryptsetup/cryptsetup/blob/master/README.md"
PKG_URL="https://www.kernel.org/pub/linux/utils/cryptsetup/v2.3/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain json-c util-linux popt libgpg-error"
PKG_PRIORITY="optional"
PKG_SECTION="sysutils"
PKG_SHORTDESC="Tool to setup encrypted devices with dm-crypt"
PKG_LONGDESC="Tool to setup encrypted devices with dm-crypt"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-nls \
                           --disable-python \
                           --disable-pwquality \
                           --disable-cryptsetup-reencrypt \
                           --enable-udev \
                           --enable-dev-random \
                           --with-crypto_backend=kernel"
