# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Complete high-level binding to libFLAC"
HOMEPAGE="https://github.com/mrkkrp/flac"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-3.0:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/wave-0.1.2:=[profile?] <dev-haskell/wave-0.2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	media-libs/flac
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
		>=dev-haskell/temporary-1.1 )
"

src_prepare() {
	default

	cabal_chdeps \
		'exceptions       >= 0.6    && < 0.9' 'exceptions       >= 0.6' \
		'containers       >= 0.5    && < 0.6' 'containers       >= 0.5' \
		'temporary        >= 1.1    && < 1.3' 'temporary        >= 1.1'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
