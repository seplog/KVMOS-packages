PKG_NAME="hponcfg"
PKG_VERSION="5.5.0.0-1"
PKG_SHA256="492bb5fcff0f7dec086fc26e82d7f7cc30ca0a56be8ee5b45f7aa2b33eb63345"
PKG_LICENSE="HP-E"
PKG_SITE="https://downloads.linux.hpe.com/SDR/project/mcp/"
PKG_URL="http://downloads.linux.hpe.com/SDR/repo/mcp/debian/pool/non-free/${PKG_NAME}_${PKG_VERSION}_amd64.deb"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="HPE RILOE II/iLO online configuration utility"

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
    cp -Rf $PKG_BUILD/usr/sbin $INSTALL/usr/
}

