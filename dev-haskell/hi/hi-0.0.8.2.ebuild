# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit base haskell-cabal

DESCRIPTION="Generate scaffold for cabal project"
HOMEPAGE="https://github.com/fujimura/hi"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/parsec:=[profile?]
	dev-haskell/split:=[profile?]
	>=dev-haskell/template-0.2:=[profile?] <dev-haskell/template-0.3:=[profile?]
	~dev-haskell/temporary-1.2.0.3:=[profile?]
	>dev-haskell/text-1.0:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/doctest-0.8
		>=dev-haskell/hspec-1.7.2
		dev-haskell/hunit )
"

# doctests needs a git repository
PATCHES=( "${FILESDIR}/hi-0.0.8.2-temporary.patch"
		  "${FILESDIR}/hi-0.0.8.2-no-doctests.patch"
		)
