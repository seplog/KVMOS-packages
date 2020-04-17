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

PKG_NAME="dnsmasq"
PKG_VERSION="2.81"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="http://www.thekelleys.org.uk/dnsmasq/doc.html"
PKG_URL="http://www.thekelleys.org.uk/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain dbus"
PKG_PRIORITY="optional"
PKG_SECTION="network"
PKG_SHORTDESC="Small forwarding DNS server"
PKG_LONGDESC="Small forwarding DNS server"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  make \
    LDFLAGS="-Wl,-O1 -Wl,--as-needed" \
    COPTS="-DNO_AUTH -DNO_CONNTRACK -DHAVE_DBUS -DNO_IDN -DNO_LUASCRIPT -DHAVE_SCRIPT -DNO_TFTP -DNO_DNSSEC -DNO_DNSSEC_STATIC" \
    CONFFILE="/etc/dnsmasq.conf" \
    all
}

makeinstall_target() {
  make \
    PREFIX=$INSTALL/usr \
    install
}
