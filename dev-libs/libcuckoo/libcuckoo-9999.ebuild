EAPI=6

DESCRIPTION="concurrent hash-table impl"
HOMEPAGE="https://github.com/efficient/libcuckoo"
EGIT_REPO_URI="
		git://github.com/efficient/libcuckoo.git
		https://github.com/efficient/libcuckoo.git
"
SRC_URI=""
inherit git-r3

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

src_configure() {
    eautoreconf
    econf
}

src_install() {
    emake DESTDIR="${D}" install
}