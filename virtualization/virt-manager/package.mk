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

PKG_NAME="virt-manager"
PKG_VERSION="1.3.2"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL-2"
PKG_SITE="http://www.virt-manager.org/"
PKG_URL="https://fedorahosted.org/released/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain libvirt-python libvirt-glib libxml2 ipaddr pygobject libosinfo gtk+ gtk-vnc spice-gtk intltool requests vte" # dconf gnome-icon-theme
PKG_PRIORITY="optional"
PKG_SECTION="virtualization"
PKG_SHORTDESC="A graphical tool for administering virtual machines"
PKG_LONGDESC="A graphical tool for administering virtual machines"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export LDSHARED="$CC -shared"
}

configure_target() {
  python setup.py configure \
    --qemu-user=root \
    --default-graphics=spice \
    --prefix=/usr
}

make_target() {
  python setup.py build
}

makeinstall_target() {
  python setup.py install --root=$INSTALL --prefix=/usr
}
