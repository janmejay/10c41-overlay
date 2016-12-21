EAPI=6

DESCRIPTION="c++ micro-benchmark lib from Google"
HOMEPAGE="https://github.com/google/benchmark"
EGIT_REPO_URI="
		git://github.com/google/benchmark.git
		https://github.com/google/benchmark.git
"
SRC_URI=""
inherit git-r3 cmake-utils

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

