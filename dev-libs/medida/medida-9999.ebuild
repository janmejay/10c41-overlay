EAPI=6

DESCRIPTION="c++ runtime-stats lib"
HOMEPAGE="https://github.com/janmejay/medida"
EGIT_REPO_URI="
		git://github.com/janmejay/medida.git
		https://github.com/janmejay/medida.git
"
SRC_URI=""
inherit git-r3 cmake-utils multilib

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

IUSE="doc"

medida_plugin_use() {
        echo -DBUILD_${2:-$1}=$(usex "$1")
}

src_configure() {
        mycmakeargs=(
                $(medida_plugin_use doc DOCS)
        )
        cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install

	# Do not violate multilib strict
	mv "${ED}/usr/lib" "${ED}/usr/$(get_libdir)" || die "mv failed"
}

