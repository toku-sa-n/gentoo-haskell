# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Atk bindings"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/gi-glib-2.0:=[profile?] <dev-haskell/gi-glib-2.1:=[profile?]
	>=dev-haskell/gi-gobject-2.0:=[profile?] <dev-haskell/gi-gobject-2.1:=[profile?]
	>=dev-haskell/haskell-gi-0.25:=[profile?] <dev-haskell/haskell-gi-0.26:=[profile?]
	>=dev-haskell/haskell-gi-base-0.25:=[profile?] <dev-haskell/haskell-gi-base-0.26:=[profile?]
	<dev-haskell/haskell-gi-overloading-1.1:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	dev-libs/atk[introspection]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	virtual/pkgconfig
"
