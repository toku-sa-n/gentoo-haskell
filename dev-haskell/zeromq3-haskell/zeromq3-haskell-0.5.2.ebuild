# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to ZeroMQ 3.x"
HOMEPAGE="http://github.com/twittner/zeromq-haskell/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
# needs a bit of porting to zeromq-4 as previous ebuild had
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/async:=[profile?]
	dev-haskell/monadcatchio-transformers:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	=net-libs/zeromq-3*
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	virtual/pkgconfig
	test? ( >=dev-haskell/ansi-terminal-0.6
		>=dev-haskell/checkers-0.3
		>=dev-haskell/quickcheck-2.6 )
"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-zmq4-support.patch
	epatch "${FILESDIR}"/${PN}-0.5.1-qc-2.7.patch
}
