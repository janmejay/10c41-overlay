EAPI=6

DESCRIPTION="Exuberant ctags generates tags files for quick source navigation"
HOMEPAGE="http://ctags.sourceforge.net"
SRC_URI="mirror://sourceforge/ctags/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
# KEYWORDS="~amd64"

src_configure() {
    econf
}

src_install() {
    emake DESTDIR="${D}" install
}