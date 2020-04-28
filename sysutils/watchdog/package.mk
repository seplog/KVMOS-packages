PKG_NAME="watchdog"
PKG_VERSION="5.16"
PKG_SHA256="b8e7c070e1b72aee2663bdc13b5cc39f76c9232669cfbb1ac0adc7275a3b019d"
PKG_LICENSE="GPL-2"
PKG_SITE="https://sourceforge.net/projects/watchdog/"
PKG_URL="https://sourceforge.net/projects/$PKG_NAME/files/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
# PKG_URL="$SOURCEFORGE_SRC/rpcbind/rpcbind/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A software watchdog and /dev/watchdog daemon"


PKG_CONFIGURE_OPTS_TARGET="--disable-syslog \
                           --disable-nfs"

post_makeinstall_target() {
  mkdir -p $INSTALL/usr/config
    mv $INSTALL/etc/watchdog.conf $INSTALL/usr/config/
    ln -sf /storage/.config/watchdog.conf $INSTALL/etc/

  mkdir -p $INSTALL/usr/lib/systemd/system/
    cp -f $PKG_DIR/files/watchdog.service $INSTALL/usr/lib/systemd/system/
}
