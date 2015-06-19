# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Haskell library for writing FastCGI programs"
HOMEPAGE="http://hackage.haskell.org/package/fastcgi"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+small_base"

RDEPEND=">=dev-haskell/cgi-3000.0.0:=[profile?]
		>=dev-lang/ghc-6.12.1:=
		dev-libs/fcgi"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.0"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag small_base small_base)
}
