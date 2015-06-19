# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings for libbfd, a library of the GNU binutils"
HOMEPAGE="http://projects.haskell.org/bindings-bfd/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.0.1:=
		sys-devel/binutils"
DEPEND="${RDEPEND}
		dev-haskell/alex
		>=dev-haskell/cabal-1.4
		dev-haskell/happy"

# sometimes upstreams are insane:
#    http://sourceware.org/bugzilla/show_bug.cgi?id=14243
#    https://bugs.gentoo.org/show_bug.cgi?id=438626
CABAL_CONFIGURE_FLAGS+="
	--gcc-option=-DPACKAGE=${P}
	--gcc-option=-DPACKAGE_NAME=${P}
	--ghc-option=-optc-DPACKAGE=${P}
	--ghc-option=-optc-DPACKAGE_NAME=${P}
	"

src_prepare() {
	cabal_chdeps \
		'unix >= 2.4 && < 2.5' 'unix >= 2.4' \
		'array >= 0.3 && < 0.4' 'array >= 0.3' \
		'containers >= 0.4 && < 0.5' 'containers >= 0.4' \
		'base >= 4.3 && < 4.4' 'base >= 4.3'

	epatch "${FILESDIR}/${PN}-1.2.0.0-ghc-7.6.patch"

	# generated with old alex and happy
	rm dist/build/Bindings/Bfd/Disasm/I386/Lex.hs || die
	rm dist/build/Bindings/Bfd/Disasm/I386/Parse.hs || die
}
