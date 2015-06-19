# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="A JavaScript push mechanism based on the comet idiom"
HOMEPAGE="https://github.com/ku-fpg/kansas-comet/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-0.10:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?] <dev-haskell/data-default-0.6:=[profile?]
	>=dev-haskell/scotty-0.8:=[profile?] <dev-haskell/scotty-0.11:=[profile?]
	>=dev-haskell/stm-2.2:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/text-1.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.2.3:=[profile?] <dev-haskell/unordered-containers-0.2.6:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

PATCHES=("${FILESDIR}/${P}-scotty-0.10.patch")

src_prepare() {
	base_src_prepare
	cabal_chdeps \
		'base                 >= 4.6   && < 4.8' 'base                 >= 4.6' \
		'aeson                >= 0.7   && < 0.9' 'aeson                >= 0.7   && < 0.10' \
		'scotty               >= 0.8   && < 0.10' 'scotty               >= 0.8   && < 0.11'
}
