# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Networked stream transducers"
HOMEPAGE="http://github.com/ekmett/machines/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/comonad-3:=[profile?] <dev-haskell/comonad-5:=[profile?]
	>=dev-haskell/free-3.1.1:=[profile?] <dev-haskell/free-5:=[profile?]
	>=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/pointed-3:=[profile?] <dev-haskell/pointed-5:=[profile?]
	>=dev-haskell/profunctors-3:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/semigroups-0.8.3:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/void-0.6.1:=[profile?] <dev-haskell/void-1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.8 <=dev-haskell/doctest-0.10 )
"
