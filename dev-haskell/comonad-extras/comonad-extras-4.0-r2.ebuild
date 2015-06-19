# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Exotic comonad transformers"
HOMEPAGE="http://github.com/ekmett/comonad-extras/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-5:=[profile?]
	>=dev-haskell/distributive-0.3.2:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/semigroupoids-4:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-7.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.0.0
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.8.patch

	cabal_chdeps \
		'transformers         >= 0.2   && < 0.4' 'transformers         >= 0.2   && < 0.5' \
		'semigroupoids        >= 4     && < 5' 'semigroupoids        >= 4'
}
