# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

WX_GTK_VER="2.9"

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="helper tool for building wxHaskell"
HOMEPAGE="http://haskell.org/haskellwiki/WxHaskell"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="${WX_GTK_VER}/${PV}"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/parsec-2.1.0:=[profile?]
		<dev-haskell/parsec-4:=[profile?]
		dev-haskell/strict:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

PATCHES=("${FILESDIR}/${PN}-0.90.0.1-ghc-7.5.patch")

src_prepare() {
	base_src_prepare
	sed -e "s@executable wxdirect@executable wxdirect-${WX_GTK_VER}@" \
		-i "${S}/${PN}.cabal" \
		|| die "Could not change ${PN}.cabal for wxdirect slot ${WX_GTK_VER}"
}
