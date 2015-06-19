# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Core libraries for diagrams EDSL"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/adjunctions-4.0:=[profile?] <dev-haskell/adjunctions-5.0:=[profile?]
	>=dev-haskell/distributive-0.2.2:=[profile?] <dev-haskell/distributive-1.0:=[profile?]
	>=dev-haskell/dual-tree-0.2:=[profile?] <dev-haskell/dual-tree-0.3:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?] <dev-haskell/lens-4.12:=[profile?]
	>=dev-haskell/linear-1.11.3:=[profile?] <dev-haskell/linear-1.19:=[profile?]
	>=dev-haskell/monoid-extras-0.3:=[profile?] <dev-haskell/monoid-extras-0.5:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/semigroups-0.8.4:=[profile?] <dev-haskell/semigroups-0.17:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.2.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"
