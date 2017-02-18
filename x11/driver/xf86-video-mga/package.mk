PKG_NAME="xf86-video-mga"
PKG_VERSION="1.6.4"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="OSS"
PKG_SITE="http://intellinuxgraphics.org/"
PKG_URL="https://www.x.org/releases/individual/driver/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_SOURCE_DIR="$PKG_VERSION"
PKG_DEPENDS_TARGET="toolchain xorg-server"
PKG_PRIORITY="optional"
PKG_SECTION="x11/driver"
PKG_SHORTDESC="xf86-video-mga: Matrox video driver"
PKG_LONGDESC="The Xorg driver for Matrox G200"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-dri \
                           --with-gcc=$CC \
                           --with-g++=$CXX \
                           --with-linux=$(kernel_path) \
                           --with-xorg-module-dir=$XORG_PATH_MODULES"
