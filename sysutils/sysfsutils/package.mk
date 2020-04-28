PKG_NAME="sysfsutils"
PKG_VERSION="2.1.0"
PKG_SHA256="e865de2c1f559fff0d3fc936e660c0efaf7afe662064f2fb97ccad1ec28d208a"
PKG_LICENSE="GPL-2 LGPL-2.1"
PKG_SITE="http://linux-diag.sourceforge.net/Sysfsutils.html"
PKG_URL="https://sourceforge.net/projects/linux-diag/files/$PKG_NAME/$PKG_VERSION/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="System Utilities Based on Sysfs"

PKG_CONFIGURE_OPTS_HOST="--disable-static\
                         --enable-shared"

pre_configure_target() {
  cd $PKG_BUILD
}
