TERMUX_PKG_HOMEPAGE=https://tox.chat
TERMUX_PKG_DESCRIPTION="Backend library for the Tox protocol"
TERMUX_PKG_MAINTAINER="Leonid Plyushch <leonid.plyushch@gmail.com> @xeffyr"
TERMUX_PKG_VERSION=0.2.7
TERMUX_PKG_SHA256=bef6dbb06d921af58c6a2d7629e6f8eeafa1e541d379e4ff2ccb4ff5d3499cd1
TERMUX_PKG_SRCURL=https://github.com/TokTok/toxcore/archive/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_DEPENDS="libsodium"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
	termux_setup_cmake

	cmake \
			-DCMAKE_INSTALL_PREFIX="${TERMUX_PREFIX}" \
			-DCMAKE_INSTALL_LIBDIR="${TERMUX_PREFIX}/lib" \
			-DBOOTSTRAP_DAEMON=off \
			-DDHT_BOOTSTRAP=off \
			-DBUILD_TOXAV=off \
			-DBUILD_AV_TEST=off
}
