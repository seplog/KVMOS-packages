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

PKG_NAME="bash"
PKG_VERSION="4.3.30"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3"
PKG_SITE="http://tiswww.case.edu/php/chet/bash/bashtop.html"
PKG_URL="http://ftp.hosteurope.de/mirror/ftp.gnu.org/gnu/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain readline"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="bash: The standard GNU Bourne again shell"
PKG_LONGDESC="bash: The standard GNU Bourne again shell"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--prefix=/usr \
                           --docdir=/usr/share/doc/$PKG_NAME-$PKG_VERSION \
                           --without-bash-malloc \
                           --with-installed-readline"
post_makeinstall_target() {
  mkdir $INSTALL/bin
  ln -sf /usr/bin/bash $INSTALL/bin/
}
