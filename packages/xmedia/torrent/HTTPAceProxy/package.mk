# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2011-present Alex@ELEC (http://alexelec.in.ua)

PKG_NAME="HTTPAceProxy"
PKG_VERSION="5795059"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/pepsik-kiev/HTTPAceProxy"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain gevent psutil M2Crypto requests"
PKG_SECTION="xmedia/torrent"
PKG_LONGDESC="AceProxy: Ace Stream HTTP Proxy."
PKG_TOOLCHAIN="manual"

make_target() {
  : # nothing to make here
}

makeinstall_target() {
  mkdir -p $INSTALL/usr/config/aceproxy
    cp -PR $PKG_BUILD/aceclient \
           $PKG_BUILD/modules \
           $PKG_BUILD/plugins \
           $PKG_BUILD/*.py \
           $INSTALL/usr/config/aceproxy

  mkdir -p $INSTALL/usr/bin
    cp $PKG_DIR/scripts/* $INSTALL/usr/bin
}

post_install() {
  enable_service aceproxy.service
}
