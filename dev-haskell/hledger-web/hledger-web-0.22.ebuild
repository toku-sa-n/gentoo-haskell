# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A web interface for the hledger accounting tool."
HOMEPAGE="http://hledger.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="blaze_html_0_4 dev library-only +threaded"

RDEPEND="dev-haskell/clientsession:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?] <dev-haskell/cmdargs-0.11:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/hamlet:=[profile?]
	dev-haskell/hjsmin:=[profile?]
	~dev-haskell/hledger-0.22:=[profile?]
	~dev-haskell/hledger-lib-0.22:=[profile?]
	>=dev-haskell/http-client-0.2:=[profile?] <dev-haskell/http-client-0.3:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/json:=[profile?]
	dev-haskell/network-conduit:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-haskell/regexpr-0.5.1:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	dev-haskell/shakespeare-text:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/wai:=[profile?]
	dev-haskell/wai-extra:=[profile?]
	>=dev-haskell/wai-handler-launch-1.3:=[profile?] <dev-haskell/wai-handler-launch-2.1:=[profile?]
	>=dev-haskell/warp-1.3:=[profile?] <dev-haskell/warp-2.1:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-haskell/yesod-1.2:=[profile?] <dev-haskell/yesod-1.3:=[profile?]
	dev-haskell/yesod-core:=[profile?]
	dev-haskell/yesod-static:=[profile?]
	>=dev-lang/ghc-6.12.1:=
	blaze_html_0_4? ( >=dev-haskell/blaze-html-0.4:=[profile?] <dev-haskell/blaze-html-0.5:=[profile?] )
	!blaze_html_0_4? ( >=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.7:=[profile?]
				>=dev-haskell/blaze-markup-0.5.1:=[profile?] <dev-haskell/blaze-markup-0.7:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
	test? ( dev-haskell/hspec
		>=dev-haskell/yesod-test-1.2 <dev-haskell/yesod-test-1.3 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag blaze_html_0_4 blaze_html_0_4) \
		$(cabal_flag dev dev) \
		$(cabal_flag library-only library-only) \
		$(cabal_flag threaded threaded)
}
