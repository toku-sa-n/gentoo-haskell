# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999
#hackport: flags: -usenativewindowslibraries

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="ALUT"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A binding for the OpenAL Utility Toolkit"
HOMEPAGE="https://github.com/haskell-openal/ALUT"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/openal-1.6.0.0:=[profile?]
	>=dev-haskell/opengl-2.9.0.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	media-libs/freealut
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-usenativewindowslibraries
}
