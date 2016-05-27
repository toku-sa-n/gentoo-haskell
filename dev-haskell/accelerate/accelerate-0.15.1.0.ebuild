# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="An embedded language for accelerated array processing"
HOMEPAGE="https://github.com/AccelerateHS/accelerate/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+bounds-checks debug internal-checks more-pp unsafe-checks"

RDEPEND=">=dev-haskell/fclabels-2.0:=[profile?] <dev-haskell/fclabels-2.1:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/hashtables-1.0:=[profile?] <dev-haskell/hashtables-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	more-pp? ( >=dev-haskell/blaze-html-0.5:=[profile?]
			>=dev-haskell/blaze-markup-0.5:=[profile?]
			>=dev-haskell/mtl-2.0:=[profile?]
			>=dev-haskell/text-0.10:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	cabal_chdeps \
		'base                    >= 4.7  && < 4.9' 'base                    >= 4.7'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bounds-checks bounds-checks) \
		$(cabal_flag debug debug) \
		$(cabal_flag internal-checks internal-checks) \
		$(cabal_flag more-pp more-pp) \
		$(cabal_flag unsafe-checks unsafe-checks)
}
