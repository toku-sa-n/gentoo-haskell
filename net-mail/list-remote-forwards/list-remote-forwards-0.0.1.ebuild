# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal

DESCRIPTION="List all remote forwards for mail accounts stored in a database"
HOMEPAGE="http://hackage.haskell.org/package/list-remote-forwards"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	>=dev-haskell/cmdargs-0.10
	>=dev-haskell/configurator-0.2
	>=dev-haskell/dns-1.4
	>=dev-haskell/hdbc-2.4
	>=dev-haskell/hdbc-postgresql-2.3
	>=dev-haskell/hdbc-sqlite-2.3
	>=dev-haskell/missingh-1.2
	>=dev-haskell/tasty-0.8
	>=dev-haskell/tasty-hunit-0.8
	>=dev-haskell/tasty-quickcheck-0.8
	>=dev-lang/ghc-7.6.1
	test? ( >=dev-haskell/doctest-0.9
		>=dev-haskell/filemanip-0.3.6 )
"

src_install() {
	haskell-cabal_src_install
	doman "${S}/doc/man1/${PN}.1"
}
