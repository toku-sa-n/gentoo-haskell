# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Tool for sharing and using Elm libraries"
HOMEPAGE="http://github.com/elm-lang/elm-get"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="" # depends on live version
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-0.9:=[profile?]
	>=dev-haskell/aeson-pretty-0.7:=[profile?] <dev-haskell/aeson-pretty-0.8:=[profile?]
	>=dev-haskell/ansi-wl-pprint-0.6:=[profile?] <dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	>=dev-haskell/binary-0.7:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/http-4000.2.5:=[profile?] <dev-haskell/http-4000.3:=[profile?]
	>=dev-haskell/http-client-0.3:=[profile?] <dev-haskell/http-client-0.4:=[profile?]
	>=dev-haskell/http-client-tls-0.2:=[profile?] <dev-haskell/http-client-tls-0.3:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?] <dev-haskell/http-types-0.9:=[profile?]
	>=dev-haskell/mtl-2:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/network-2.4:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/optparse-applicative-0.8.1:=[profile?] <dev-haskell/optparse-applicative-0.11:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/elm-0.13:=[profile?] <dev-lang/elm-0.14:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.9
"
