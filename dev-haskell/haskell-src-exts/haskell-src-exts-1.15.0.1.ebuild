# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.9999
#hackport: flags: +base4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer"
HOMEPAGE="https://github.com/haskell-suite/haskell-src-exts"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cpphs-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	dev-haskell/happy
	test? ( dev-haskell/filemanip
		dev-haskell/mtl
		>=dev-haskell/smallcheck-1.0
		dev-haskell/syb
		>=dev-haskell/tasty-0.3
		dev-haskell/tasty-golden
		dev-haskell/tasty-smallcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=base4
}
