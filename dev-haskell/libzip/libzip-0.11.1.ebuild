# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="LibZip"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Bindings to libzip, a library for manipulating zip archives"
HOMEPAGE="http://bitbucket.org/astanin/hs-libzip/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/bindings-libzip-0.11*:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hunit
		)"

S="${WORKDIR}/${MY_P}"
