# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Compositional pipelines"
HOMEPAGE="http://hackage.haskell.org/package/pipes"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mmorph-1.0.0:=[profile?] <dev-haskell/mmorph-1.1:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/transformers-0.2.0.0:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-3
		>=dev-haskell/test-framework-0.4 <dev-haskell/test-framework-1
		>=dev-haskell/test-framework-quickcheck2-0.2.0 <dev-haskell/test-framework-quickcheck2-0.4 )
"
