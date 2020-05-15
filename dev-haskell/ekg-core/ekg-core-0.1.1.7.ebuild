# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Tracking of system metrics"
HOMEPAGE="https://github.com/tibbe/ekg-core"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/text-1.3:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.6.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.6 && < 4.14' 'base >= 4.6' \
		'ghc-prim < 0.6' 'ghc-prim'
}