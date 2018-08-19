# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Integration for tasty and hedgehog"
HOMEPAGE="https://github.com/qfpl/tasty-hedgehog"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # one of two tests fails

RDEPEND=">=dev-haskell/hedgehog-0.5:=[profile?] <dev-haskell/hedgehog-0.6:=[profile?]
	>=dev-haskell/tagged-0.8:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/tasty-0.11:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/tasty-expected-failure-0.11 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.8 && <4.11' 'base >= 4.8' \
		'tasty >= 0.11 && < 1.1' 'tasty >= 0.11' \
		'tasty-expected-failure >= 0.11 && < 0.12' 'tasty-expected-failure >= 0.11'
}
