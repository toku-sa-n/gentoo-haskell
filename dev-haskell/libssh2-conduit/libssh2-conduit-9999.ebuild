# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal git-2

DESCRIPTION="Conduit wrappers for libssh2 FFI bindings (see libssh2 package)"
HOMEPAGE="http://redmine.iportnov.ru/projects/libssh2-hs"
SRC_URI=""
EGIT_REPO_URI="git://github.com/qnikst/${PN}.git"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/conduit-0.4:=[profile?]
		dev-haskell/libssh2:=[profile?]
		>=dev-haskell/monad-control-0.3:=[profile?]
		dev-haskell/resourcet:=[profile?]
		dev-haskell/stm:=[profile?]
		dev-haskell/transformers:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
