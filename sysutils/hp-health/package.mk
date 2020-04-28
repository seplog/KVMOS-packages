PKG_NAME="hp-health"
PKG_VERSION="10.80-1874.10"
PKG_SHA256="86b1394999581d38b6c86debbd9083b053d1a337f1d90d0ed4bc2ec4d6cb19c9"
PKG_LICENSE="HP-E"
PKG_SITE="https://downloads.linux.hpe.com/SDR/project/mcp/"
PKG_URL="http://downloads.linux.hpe.com/SDR/repo/mcp/debian/pool/non-free/${PKG_NAME}_${PKG_VERSION}_amd64.deb"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="HPE System Health Application and Command line Utilities (Gen9 and earlier)"

PKG_TOOLCHAIN="manual"

unpack() {
  mkdir -p $PKG_BUILD
    cd $PKG_BUILD
    ar x $SOURCES/$PKG_NAME/$PKG_NAME-$PKG_VERSION.deb
    tar xf data.tar.xz
}

configure_target() {
  :
}

make_target() {
  :
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/
    cp -Rf $PKG_BUILD/usr/lib $INSTALL/usr/
    cp -Rf $PKG_BUILD/sbin $INSTALL/usr/
}

