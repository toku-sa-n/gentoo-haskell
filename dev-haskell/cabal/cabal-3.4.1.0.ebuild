# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -bundled-binary-generic

CABAL_PN="Cabal"

CABAL_FEATURES="lib profile haddock hoogle hscolour" # drop tests due to circular deps
CABAL_FEATURES+=" nocabaldep" # in case installed Cabal is broken
inherit haskell-cabal

DESCRIPTION="A framework for packaging Haskell software"
HOMEPAGE="https://www.haskell.org/cabal/"

LICENSE="BSD"
SLOT="0/${PV}"
#keep in sync with ghc-9.0.2
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RESTRICT=test # circular deps: cabal -> quickcheck -> cabal

RDEPEND=">=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}"

src_prepare() {
	default

	# Cabal bootstraps with 'ghc --make' without package cleanup in environment.
	# That causes module collisions at build:
	# - pulseaudio: Distribution/Utils/Structured.hs:98:1: error: Ambiguous module name ‘Data.Time’: it was found in multiple packages: pulseaudio-0.0.2.1 time-1.9.3
	# - kinds: Distribution/Utils/Structured.hs:106:1: error: Ambiguous module name ‘Data.Kind’: it was found in multiple packages: base-4.14.1.0 kinds-0.0.1.5
	HCFLAGS="${HCFLAGS} -ignore-package=pulseaudio"
	HCFLAGS="${HCFLAGS} -ignore-package=kinds"
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-bundled-binary-generic
}

CABAL_CORE_LIB_GHC_PV="PM:9.0.2-r1 PM:9999"
