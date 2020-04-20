PKG_NAME="orc"
PKG_VERSION="0.4.31"
PKG_SHA256="a0ab5f10a6a9ae7c3a6b4218246564c3bf00d657cbdf587e6d34ec3ef0616075"
PKG_LICENSE="GPL"
PKG_SITE="https://gstreamer.freedesktop.org/modules/orc.html"
PKG_URL="https://gstreamer.freedesktop.org/src/orc/${PKG_NAME}-${PKG_VERSION}.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="The Oil Runtime Compiler, a just-in-time compiler for array operations"
PKG_BUILD_FLAGS="-gold"

pre_configure_target() {
  PKG_MESON_OPTS_TARGET="-Dexamples=disabled \
                         -Dtests=disabled \
                         -Dgtk_doc=disabled \
                         -Dnls=disabled"
}

post_makeinstall_target(){
  # Clean up
  rm -rf ${INSTALL}/usr/bin
}
