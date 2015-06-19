# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A structured logger for Fluentd (Haskell)"
HOMEPAGE="http://hackage.haskell.org/package/fluent-logger"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cereal:=[profile?]
	>=dev-haskell/messagepack-0.2.0:=[profile?]
	>=dev-haskell/network-2.3.0.13:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/network-socket-options-0.1:=[profile?] <dev-haskell/network-socket-options-0.3:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/stm-2.3:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/attoparsec
		dev-haskell/cereal-conduit
		dev-haskell/conduit
		dev-haskell/conduit-extra
		dev-haskell/exceptions
		dev-haskell/hspec
		dev-haskell/transformers )
"
