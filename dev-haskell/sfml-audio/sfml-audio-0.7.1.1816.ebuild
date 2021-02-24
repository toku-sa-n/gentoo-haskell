# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="minimal bindings to the audio module of sfml"
HOMEPAGE="http://patch-tag.com/r/shahn/sfml-audio"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="ZLIB"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

CABAL_EXTRA_CONFIGURE_FLAGS="--extra-include-dirs="${EPREFIX}"/usr/include/AL"

RDEPEND=">=dev-lang/ghc-6.10.4:=
		media-libs/openal
		media-libs/libsndfile"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
