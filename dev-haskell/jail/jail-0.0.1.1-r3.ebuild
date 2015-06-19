# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=5

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Jailed IO monad"
HOMEPAGE="http://hackage.haskell.org/package/jail"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
	>=dev-haskell/transformers-0.1:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-6.10.1:="
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}"/${P}-tf-0.3.patch)
