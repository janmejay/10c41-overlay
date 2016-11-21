EAPI=6

DESCRIPTION=""
HOMEPAGE="http://ctags.sourceforge.net"
EGIT_REPO_URI="
		git://github.com/efficient/libcuckoo.git
		https://github.com/efficient/libcuckoo.git
"
SRC_URI=""

LICENSE="Apache-2.0"
SLOT="0"
# KEYWORDS="~amd64"

src_configure() {
    econf
}

src_install() {
    emake DESTDIR="${D}" install
}