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

PKG_NAME="startup-notification"
PKG_VERSION="0.12"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+"
PKG_SITE="http://xcb.freedesktop.org"
PKG_URL="http://www.freedesktop.org/software/$PKG_NAME/releases/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libX11 libxcb xcb-util xproto"
PKG_PRIORITY="optional"
PKG_SECTION="x11/libs"
PKG_SHORTDESC="startup-notification: startup-notification contains a reference implementation of the startup notification protocol."
PKG_LONGDESC="startup-notification contains a reference implementation of the startup notification protocol."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-static \
                           lf_cv_sane_realloc=yes"
