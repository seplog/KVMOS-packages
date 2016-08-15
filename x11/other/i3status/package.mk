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

PKG_NAME="i3status"
# dont bump or go back to ratpoison then f*** all 3rdparty stuff.
PKG_VERSION="2.10"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="BSD"
PKG_SITE="http://i3wm.org/"
PKG_URL="https://i3wm.org/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain confuse libnl yajl alsa-lib"
PKG_PRIORITY="optional"
PKG_SECTION="x11/other"
PKG_SHORTDESC="i3status is a small program for generating a status bar."
PKG_LONGDESC="i3status is a small program (about 3000 SLOC) for generating a status bar for i3bar, dzen2, xmobar or similar programs. It is designed to be very efficient by issuing a very small number of system calls, as one generally wants to update such a status line every second. This ensures that even under high load, your status bar is updated correctly. Also, it saves a bit of energy by not hogging your CPU as much as spawning the corresponding amount of shell commands would."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_MAKE_OPTS_TARGET="PULSE=0"
