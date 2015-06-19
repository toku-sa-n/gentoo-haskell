# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Runtime code generation for x86 machine code"
HOMEPAGE="https://github.com/mgrabmueller/harpy"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/disassembler-0.2.0.0:=[profile?]
	>=dev-haskell/mtl-1:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/parsec-1:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
