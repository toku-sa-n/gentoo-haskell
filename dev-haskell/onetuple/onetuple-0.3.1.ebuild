# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="OneTuple"
MY_P="${MY_PN}-${PV}"
S="${WORKDIR}/${MY_P}"

DESCRIPTION="Singleton Tuple"
HOMEPAGE="https://hackage.haskell.org/package/OneTuple"
HACKAGE_REV="2"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz
	https://hackage.haskell.org/package/${MY_P}/revision/${HACKAGE_REV}.cabal -> ${PF}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/base-orphans-0.8.6:=[profile?]
	>=dev-haskell/hashable-1.3.5.0:=[profile?] <dev-haskell/hashable-1.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
BDEPEND="app-text/dos2unix"

src_prepare() {
	# pull revised cabal from upstream
	cp "${DISTDIR}/${PF}.cabal" "${S}/${MY_PN}.cabal" || die

	# Convert to unix line endings
	dos2unix "${S}/${MY_PN}.cabal" || die

	# Apply patches *after* pulling the revised cabal
	default
}
