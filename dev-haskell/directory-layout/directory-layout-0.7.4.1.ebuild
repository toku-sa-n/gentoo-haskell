# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.4.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite broken: Expecting a type constructor but found a variable, ‘\/’
inherit haskell-cabal

DESCRIPTION="Directory layout DSL"
HOMEPAGE="https://hackage.haskell.org/package/directory-layout"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # needs 'root' for tests

RDEPEND=">=dev-haskell/command-qq-0.3:=[profile?]
	>=dev-haskell/free-4.7:=[profile?]
	>=dev-haskell/hspec-1.8:=[profile?]
	>=dev-haskell/lens-4.0.1:=[profile?]
	>=dev-haskell/semigroups-0.12:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"
