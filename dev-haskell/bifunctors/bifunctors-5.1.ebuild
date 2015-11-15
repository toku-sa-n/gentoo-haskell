# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bifunctors"
HOMEPAGE="https://github.com/ekmett/bifunctors/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+semigroups +tagged"

RDEPEND=">=dev-lang/ghc-7.4.1:=
	semigroups? ( >=dev-haskell/semigroups-0.8.3.1:=[profile?] <dev-haskell/semigroups-1:=[profile?] )
	tagged? ( >=dev-haskell/tagged-0.7.3:=[profile?] <dev-haskell/tagged-1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hspec-1.8
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		>=dev-haskell/transformers-0.2 <dev-haskell/transformers-0.5
		>=dev-haskell/transformers-compat-0.3 <dev-haskell/transformers-compat-0.5 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag semigroups semigroups) \
		$(cabal_flag tagged tagged)
}
