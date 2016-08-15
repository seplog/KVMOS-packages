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

PKG_NAME="libvirt-glib"
PKG_VERSION="0.2.3"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="LGPL-2.1"
PKG_SITE="http://libvirt.org/git/?p=libvirt-glib.git"
PKG_URL="ftp://libvirt.org/libvirt/glib/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libxml2 libvirt glib gobject-introspection Python:host intltool"
PKG_PRIORITY="optional"
PKG_SECTION="virtualization"
PKG_SHORTDESC="GLib and GObject mappings for libvirt"
PKG_LONGDESC="GLib and GObject mappings for libvirt"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-test-coverage \
                           --disable-static \
                           --enable-introspection \
                           --without-python"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX

