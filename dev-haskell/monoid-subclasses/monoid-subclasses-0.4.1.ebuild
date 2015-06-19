# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Subclasses of Monoid"
HOMEPAGE="https://github.com/blamario/monoid-subclasses/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # fails tests

RDEPEND=">=dev-haskell/primes-0.2:=[profile?] <dev-haskell/primes-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-0.7
		>=dev-haskell/tasty-quickcheck-0.7 )
"
