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

PKG_NAME="flex"
PKG_VERSION="2.5.39"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="FLEX"
PKG_SITE="http://flex.sourceforge.net/"
PKG_URL="$SOURCEFORGE_SRC/flex/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_HOST="ccache:host"
PKG_PRIORITY="optional"
PKG_SECTION="devel"
PKG_SHORTDESC="flex: Fast lexical analyzer generator"
PKG_LONGDESC="flex is a tool for generating programs that perform pattern-matching on text."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_HOST="--disable-static --enable-shared --disable-rpath --with-gnu-ld"

post_makeinstall_host() {
  cat > $ROOT/$TOOLCHAIN/bin/lex << "EOF"
#!/bin/sh
exec flex "$@"
EOF

  chmod -v 755 $ROOT/$TOOLCHAIN/bin/lex
}
