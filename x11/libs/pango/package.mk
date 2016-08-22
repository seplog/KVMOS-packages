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

PKG_NAME="pango"
PKG_VERSION="1.40.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL-2+ FTL"
PKG_SITE="http://www.pango.org/"
PKG_URL="http://ftp.gnome.org/pub/gnome/sources/pango/1.40/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain glib cairo freetype fontconfig libX11 libXft harfbuzz gobject-introspection"
PKG_PRIORITY="optional"
PKG_SECTION="x11/libs"
PKG_SHORTDESC="pango: Library for layout and rendering of internationalized text"
PKG_LONGDESC="The goal of the Pango project is to provide an open-source framework for the layout and rendering of internationalized text. Pango is an offshoot of the GTK+ and GNOME projects, and the initial focus is operation in those environments, however there is nothing fundamentally GTK+ or GNOME specific about Pango. Pango uses Unicode for all of its encoding, and will eventually support output in all the worlds major languages."
PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_MAINTAINER="none"

PKG_CONFIGURE_OPTS_TARGET="--disable-doc-cross-references \
                           --disable-gtk-doc \
                           --disable-man \
                           --enable-debug=no \
                           --with-xft"

export PKG_CONFIG_TARGET=$PKG_CONFIG
export PKG_CONFIG=$ROOT/scripts/pkg-config-wrapper
export PKG_CONFIG_PREFIX=$SYSROOT_PREFIX
export XDG_DATA_DIRS=$SYSROOT_PREFIX/usr/share
