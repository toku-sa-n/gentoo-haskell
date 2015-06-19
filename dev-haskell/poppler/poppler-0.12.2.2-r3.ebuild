# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

GTK_MAJ_VER="2"

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hoogle hscolour nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the Poppler"
HOMEPAGE="http://www.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="${GTK_MAJ_VER}/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.12.0:0=[profile?] <dev-haskell/cairo-0.13.0:0=[profile?]
		>=dev-haskell/glib-0.12.0:0=[profile?] <dev-haskell/glib-0.13.0:0=[profile?]
		>=dev-haskell/gtk-0.12.0:${GTK_MAJ_VER}=[profile?] <=dev-haskell/gtk-0.13.0:${GTK_MAJ_VER}=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		dev-libs/glib:2
		app-text/poppler[cairo]
		x11-libs/cairo
		x11-libs/gtk+:2
		x11-libs/pango"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6
		>=dev-haskell/gtk2hs-buildtools-0.12.5.1-r1:0="
