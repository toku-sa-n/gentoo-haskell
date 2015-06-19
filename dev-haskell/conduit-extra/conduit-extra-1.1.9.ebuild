# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Batteries included conduit: adapters for common libraries"
HOMEPAGE="http://github.com/snoyberg/conduit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/blaze-builder-0.3:=[profile?]
	>=dev-haskell/conduit-1.1:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	dev-haskell/monad-control:=[profile?]
	>=dev-haskell/network-2.3:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?]
	>=dev-haskell/resourcet-1.1:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-haskell/streaming-commons-0.1.11:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( dev-haskell/async
		dev-haskell/bytestring-builder
		dev-haskell/exceptions
		>=dev-haskell/hspec-1.3 )
"
