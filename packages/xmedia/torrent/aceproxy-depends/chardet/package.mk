# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2011-present Alex@ELEC (http://alexelec.in.ua)

PKG_NAME="chardet"
PKG_VERSION="3.0.4"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="https://github.com/chardet/chardet"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python2 distutilscross:host"
PKG_SECTION="xmedia/torrent"
PKG_LONGDESC="Python module for character encoding auto-detection."
PKG_TOOLCHAIN="manual"

pre_configure_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
}

make_target() {
  python setup.py build --cross-compile
}

makeinstall_target() {
  python setup.py install --root=$INSTALL --prefix=/usr
  rm -fR $INSTALL/usr/bin
}

post_makeinstall_target() {
  find $INSTALL/usr/lib -name "*.py" -exec rm -rf "{}" ";"
}
