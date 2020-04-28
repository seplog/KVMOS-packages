PKG_NAME="edac-utils"
PKG_VERSION="0.18"
PKG_SHA256="05363068c2ed7e716aaf66318f9ab8b5f5e7250dacc8996b779fa8aafdf1991a"
PKG_LICENSE="GPL-2"
PKG_SITE="https://github.com/grondo/edac-utils"
PKG_URL="https://github.com/grondo/$PKG_NAME/archive/$PKG_VERSION.zip"
PKG_DEPENDS_TARGET="toolchain sysfsutils"
PKG_LONGDESC="Userspace helper for Linux kernel EDAC drivers"

PKG_CONFIGURE_OPTS_TARGET="--prefix=/usr \
                           --sysconfdir=/etc \
                           --enable-shared"

pre_configure_target() {
  export CFLAGS=-I$TOOLCHAIN/include
}

post_makeinstall_target() {
  rm -f $INSTALL/usr/sbin/edac-ctl
  rm -Rf $INSTALL/etc/init.d/

  mkdir -p $INSTALL/usr/config
    mv $INSTALL/etc/edac $INSTALL/usr/config/
    ln -sf /storage/.config/edac $INSTALL/etc/
}
