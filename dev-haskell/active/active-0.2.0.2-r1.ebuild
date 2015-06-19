# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Abstractions for animation"
HOMEPAGE="http://hackage.haskell.org/package/active"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""
RESTRICT="test" # takes too long or hangs

RDEPEND=">=dev-haskell/lens-4.0:=[profile?]
	>=dev-haskell/linear-1.14:=[profile?] <dev-haskell/linear-1.19:=[profile?]
	>=dev-haskell/semigroupoids-1.2:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-0.17:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/quickcheck-2.4.2 <dev-haskell/quickcheck-2.9 )
"

src_prepare() {
	cabal_chdeps \
		'lens >= 4.0 && < 4.10' 'lens >= 4.0' \
		'semigroupoids >= 1.2 && < 5.0' 'semigroupoids >= 1.2'
}
