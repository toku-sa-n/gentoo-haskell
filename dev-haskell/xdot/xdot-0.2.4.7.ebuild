# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parse Graphviz xdot files and interactively view them using GTK and Cairo"
HOMEPAGE="http://hackage.haskell.org/package/xdot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.12:=[profile?] <dev-haskell/cairo-0.14:=[profile?]
	>=dev-haskell/graphviz-2999.16:=[profile?] <dev-haskell/graphviz-2999.18:=[profile?]
	>=dev-haskell/gtk-0.12:2=[profile?] <dev-haskell/gtk-0.14:2=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/polyparse-1.8:=[profile?] <dev-haskell/polyparse-1.12:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
