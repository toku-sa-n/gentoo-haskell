# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -bundled-binary-generic

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="Cabal"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="A framework for packaging Haskell software"
HOMEPAGE="https://www.haskell.org/cabal/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND=">=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/async-2.2.2 <dev-haskell/async-2.3
		>=dev-haskell/base-compat-0.11.0 <dev-haskell/base-compat-0.12
		>=dev-haskell/base-orphans-0.6 <dev-haskell/base-orphans-0.9
		>=dev-haskell/clock-0.8 <dev-haskell/clock-0.9
		>=dev-haskell/diff-0.4 <dev-haskell/diff-0.5
		>=dev-haskell/integer-logarithms-1.0.2 <dev-haskell/integer-logarithms-1.1
		>=dev-haskell/optparse-applicative-0.13.2.0 <dev-haskell/optparse-applicative-0.17
		>=dev-haskell/quickcheck-2.14 <dev-haskell/quickcheck-2.15
		>=dev-haskell/rere-0.1 <dev-haskell/rere-0.2
		>=dev-haskell/stm-2.4.5.0 <dev-haskell/stm-2.6
		dev-haskell/tagged
		>=dev-haskell/tar-0.5.0.3 <dev-haskell/tar-0.6
		>=dev-haskell/tasty-1.2.3 <dev-haskell/tasty-1.4
		>=dev-haskell/tasty-golden-2.3.1.1 <dev-haskell/tasty-golden-2.4
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck
		dev-haskell/temporary
		>=dev-haskell/tree-diff-0.1 <dev-haskell/tree-diff-0.2 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bundled-binary-generic
}