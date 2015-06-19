# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3.9999

CABAL_FEATURES="bin test-suite"
EGIT_REPO_URI="git://github.com/gentoo-haskell/hackport.git"
EGIT_HAS_SUBMODULES="true"

inherit git-2 haskell-cabal

DESCRIPTION="Hackage and Portage integration tool"
HOMEPAGE="https://github.com/gentoo-haskell/hackport"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	dev-haskell/extensible-exceptions
	>=dev-haskell/http-4000.0.3
	dev-haskell/missingh
	dev-haskell/mtl
	>=dev-haskell/network-2.6
	>=dev-haskell/network-uri-2.6
	dev-haskell/parsec
	dev-haskell/regex-compat
	dev-haskell/tar
	>=dev-haskell/xml-1.3.7
	dev-haskell/zlib
	>=dev-lang/ghc-7.4.1
	test? ( dev-haskell/hunit )
"

src_prepare() {
	sed -e 's/^Version:.*/&.9999/' -i ${PN}.cabal || die # just to distinct from release install
}

src_install() {
	haskell-cabal_src_install
	doman man/hackport.1
}
