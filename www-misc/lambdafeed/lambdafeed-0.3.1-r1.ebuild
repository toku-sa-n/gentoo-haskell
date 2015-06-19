# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin"
inherit eutils haskell-cabal

MY_PN="lambdaFeed"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="RSS 2.0 feed generator"
HOMEPAGE="http://www.cse.unsw.edu.au/~chak/haskell/lambdaFeed/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0
		dev-haskell/html
		>=dev-lang/ghc-6.10.4"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-base-4.patch

	CABAL_FILE=${MY_PN}.cabal cabal_chdeps \
		'haskell98' 'old-time, old-locale, pretty, directory'
}
