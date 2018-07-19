################################################################################
#      This file is part of LibreELEC - https://libreelec.tv
#      Copyright (C) 2018-present Team LibreELEC
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  LibreELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  LibreELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with LibreELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="libmpeg2"
PKG_VERSION="0.5.1"
PKG_SHA256="dee22e893cb5fc2b2b6ebd60b88478ab8556cb3b93f9a0d7ce8f3b61851871d4"
PKG_ARCH="any"
PKG_LICENSE="GPLv2"
PKG_SITE="http://libmpeg2.sourceforge.net/"
PKG_URL="http://libmpeg2.sourceforge.net/files/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="The MPEG Library is a collection of C routines to decode MPEG-1 and MPEG-2 movies."

PKG_CONFIGURE_OPTS_TARGET="--disable-sdl \
                           --without-x"

post_makeinstall_target() {
  rm -rf $INSTALL/usr/bin
}
