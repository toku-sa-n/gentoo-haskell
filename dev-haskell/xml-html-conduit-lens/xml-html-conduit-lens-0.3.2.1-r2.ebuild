# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Optics for xml-conduit and html-conduit"
HOMEPAGE="https://github.com/supki/xml-html-conduit-lens#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/html-conduit-1.1:=[profile?] <dev-haskell/html-conduit-1.3:=[profile?]
	>=dev-haskell/lens-4.0.1:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/xml-conduit-1.1:=[profile?] <dev-haskell/xml-conduit-1.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.9.10
		dev-haskell/hspec
		>=dev-haskell/hspec-expectations-lens-0.3 )
"

src_prepare() {
	cabal_chdeps \
		'text                    >= 0.11  && < 1.2' 'text                    >= 0.11' \
		'xml-conduit             >= 1.1   && < 1.3' 'xml-conduit             >= 1.1   && < 1.4'
}
