# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="HSH"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Library to mix shell scripting with Haskell programs"
HOMEPAGE="http://software.complete.org/hsh"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="buildtests"

RDEPEND="dev-haskell/hslogger:=[profile?]
	>=dev-haskell/missingh-1.0.0:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/regex-base:=[profile?]
	dev-haskell/regex-compat:=[profile?]
	dev-haskell/regex-posix:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	buildtests? ( dev-haskell/hunit:=[profile?]
			dev-haskell/testpack:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2.3
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag buildtests buildtests)
}
