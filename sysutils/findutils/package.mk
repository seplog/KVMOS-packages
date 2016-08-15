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

PKG_NAME="findutils"
PKG_VERSION="4.6.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-3+"
PKG_SITE="https://www.gnu.org/software/findutils/"
PKG_URL="http://ftp.gnu.org/pub/gnu/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="findutils: GNU utilities for finding files"
PKG_LONGDESC="findutils: The GNU Find Utilities are the basic directory searching utilities of the GNU operating system. These programs are typically used in conjunction with other programs to provide modular and powerful directory search and file locating capabilities to other commands."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_configure_target() {
  cd $ROOT/$PKG_BUILD
  rm -rf .$TARGET_NAME

  # without locate
  sed -i '/^SUBDIRS/s/locate//' Makefile.in

  #
  sed -i '/include.*config.h/a#ifdef MAJOR_IN_SYSMACROS\n#include <sys/sysmacros.h>\n#endif\n' gl/lib/mountlist.c
}

pre_make_target() {
  make -C locate dblocation.texi
}

post_makeinstall_target() {
  mkdir $INSTALL/bin
  ln -sf /usr/bin/find $INSTALL/bin/
}
