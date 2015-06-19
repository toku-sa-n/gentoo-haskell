# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Cryptol: The Language of Cryptography"
HOMEPAGE="http://www.cryptol.net/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+relocatable +self-contained static"

RDEPEND="dev-haskell/ansi-terminal:=[profile?]
	>=dev-haskell/async-2.0:=[profile?]
	>=dev-haskell/gitrev-1.0:=[profile?]
	>=dev-haskell/graphscc-1.0.4:=[profile?]
	dev-haskell/haskeline:=[profile?]
	>=dev-haskell/monadlib-3.7.2:=[profile?]
	>=dev-haskell/old-time-1.1:=[profile?]
	>=dev-haskell/presburger-1.3:=[profile?]
	>=dev-haskell/quickcheck-2.7:2=[profile?]
	>=dev-haskell/random-1.0.1:=[profile?]
	>=dev-haskell/sbv-4.3:=[profile?]
	>=dev-haskell/smtlib-1.0.7:=[profile?]
	>=dev-haskell/syb-0.4:=[profile?]
	>=dev-haskell/text-1.1:=[profile?]
	>=dev-haskell/tf-random-0.5:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	self-contained? ( >=dev-haskell/heredoc-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.20
	dev-haskell/happy
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag relocatable relocatable) \
		$(cabal_flag self-contained self-contained) \
		$(cabal_flag static static)
}
