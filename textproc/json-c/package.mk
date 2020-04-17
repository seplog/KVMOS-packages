# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="json-c"
PKG_VERSION="0.13.1"
PKG_SHA256="94a26340c0785fcff4f46ff38609cf84ebcd670df0c8efd75d039cc951d80132"
PKG_LICENSE="MIT"
PKG_SITE="https://github.com/json-c/json-c/wiki"
PKG_URL="https://s3.amazonaws.com/${PKG_NAME}_releases/releases/$PKG_NAME-$PKG_VERSION-nodoc.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="A JSON implementation in C"
PKG_BUILD_FLAGS="+pic"
PKG_TOOLCHAIN="configure"

PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared"

make_install_target() {
  make DESTDIR=$SYSROOT_PREFIX/usr install
}
