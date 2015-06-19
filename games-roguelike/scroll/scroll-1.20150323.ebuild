# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999
#hackport: flags: +unix

CABAL_FEATURES="bin"
inherit eutils haskell-cabal games

DESCRIPTION="scroll(6), a roguelike game"
HOMEPAGE="https://joeyh.name/code/scroll/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
	dev-haskell/case-insensitive
	dev-haskell/data-default
	dev-haskell/ifelse
	dev-haskell/monad-loops
	dev-haskell/mtl
	dev-haskell/ncurses
	dev-haskell/optparse-applicative
	dev-haskell/random
	dev-haskell/text
	dev-haskell/vector
	>=dev-lang/ghc-7.4.1
"

pkg_setup() {
	games_pkg_setup
	haskell-cabal_pkg_setup
}

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=unix \
		--prefix="${GAMES_PREFIX}"
}

src_compile() {
	haskell-cabal_src_compile
}

src_install() {
	haskell-cabal_src_install
	prepgamesdirs
}

pkg_postinst() {
	ghc-package_pkg_postinst
	games_pkg_postinst
}
