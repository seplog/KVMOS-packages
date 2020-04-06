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

PKG_NAME="virglrenderer"
PKG_VERSION="0.7.0"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL"
PKG_SITE="https://virgil3d.github.io/"
PKG_URL="https://www.freedesktop.org/software/virgl/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libdrm libepoxy"
PKG_PRIORITY="optional"
PKG_SECTION="virtualization"
PKG_SHORTDESC="library used implement a virtual 3D GPU used by qemu"
PKG_LONGDESC="library used implement a virtual 3D GPU used by qemu"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"
