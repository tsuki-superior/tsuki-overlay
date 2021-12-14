EAPI=8

PYTHON_COMPAT=(python3_{7,8,9,10})

inherit distutils-r1

DESCRIPTION="Mediatek reverse engineering and flashing tools"
HOMEPAGE="https://github.com/bkerler/mtkclient"
EGIT_REPO_URI="https://github.com/bkerler/mtkclient.git"
LICENSE="MIT"

inherit git-r3

SLOT="0"
KEYWORDS="#amd64"

RDEPEND="
virtual/libusb
dev-python/pip
dev-python/wheel
dev-python/pyusb
dev-python/docopt
dev-python/pycryptodome
dev-python/colorama
"

DEPEND=""

RESTRICT="mirror"

PATCHES=(
	"${FILESDIR}/stop-license-and-readme-from-being-installed-in-usr.patch"
)

