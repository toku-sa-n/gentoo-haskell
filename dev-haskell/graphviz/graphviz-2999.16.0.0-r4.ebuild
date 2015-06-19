# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to Graphviz for graph visualisation"
HOMEPAGE="http://projects.haskell.org/graphviz/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/colour-2.3*:=[profile?]
		>=dev-haskell/dlist-0.5:=[profile?]
		=dev-haskell/fgl-5.4*:=[profile?]
		>=dev-haskell/polyparse-1.7:=[profile?] <dev-haskell/polyparse-1.10:=[profile?]
		>=dev-haskell/temporary-1.1:=[profile?]
		dev-haskell/text:=[profile?]
		>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
		>=dev-haskell/wl-pprint-text-1.1.0.0:=[profile?] <dev-haskell/wl-pprint-text-1.2.0.0:=[profile?]
		media-gfx/graphviz
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.14
		test? ( >=dev-haskell/quickcheck-2.3:2 <dev-haskell/quickcheck-2.8:2 )
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-qc-2.7.patch
	cabal_chdeps \
		'QuickCheck >= 2.3 && < 2.6' 'QuickCheck >= 2.3 && < 2.8' \
		'polyparse >= 1.7 && < 1.9' 'polyparse >= 1.7 && < 1.10' \
		'dlist == 0.5.*' 'dlist >= 0.5' \
		'temporary >=1.1 && <1.2' 'temporary >=1.1' \
		'transformers >= 0.2 && < 0.4' 'transformers >= 0.2 && < 0.5'
}
