# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="manage files with git, without checking their contents into git"
HOMEPAGE="http://git-annex.branchable.com/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
RESTRICT="test"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux"
IUSE="android androidsplice asciiprogress +assistant +dbus +dns doc +desktop-notify ekg +feed +inotify +pairing +production +quvi +s3 +tahoe +tdfa +testsuite torrentparser +webapp +webapp-secure +webdav +xmpp"

RDEPEND="dev-vcs/git
"
DEPEND="${RDEPEND}
	dev-haskell/async
	dev-haskell/bloomfilter
	>=dev-haskell/cabal-1.8
	dev-haskell/case-insensitive
	>=dev-haskell/cryptohash-0.11.0
	dev-haskell/data-default
	dev-haskell/dlist
	dev-haskell/edit-distance
	dev-haskell/esqueleto
	>=dev-haskell/exceptions-0.6
	dev-haskell/hamlet
	dev-haskell/hslogger
	dev-haskell/http-conduit
	dev-haskell/http-types
	dev-haskell/ifelse
	dev-haskell/json[generic]
	dev-haskell/missingh
	dev-haskell/monad-control
	dev-haskell/monad-logger
	>=dev-haskell/mtl-2
	>=dev-haskell/network-2.0
	dev-haskell/network-uri
	dev-haskell/persistent
	dev-haskell/persistent-sqlite
	dev-haskell/persistent-template
	>=dev-haskell/quickcheck-2.1:2
	dev-haskell/random
	dev-haskell/resourcet
	dev-haskell/safesemaphore
	dev-haskell/sandi
	>=dev-haskell/stm-2.3
	dev-haskell/text
	dev-haskell/transformers
	dev-haskell/unix-compat
	dev-haskell/utf8-string
	dev-haskell/uuid
	>=dev-lang/ghc-7.4.1
	android? ( dev-haskell/data-endian )
	asciiprogress? ( dev-haskell/ascii-progress
		dev-haskell/terminal-size )
	assistant? ( >=dev-haskell/stm-2.3
			inotify? ( dev-haskell/hinotify ) )
	dbus? ( >=dev-haskell/dbus-0.10.3 )
	dns? ( dev-haskell/dns )
	ekg? ( dev-haskell/aeson
		dev-haskell/ekg
		dev-haskell/http-types )
	feed? ( >=dev-haskell/feed-0.3.4 )
	dev-haskell/old-locale
	pairing? ( dev-haskell/network-info
			dev-haskell/network-multicast )
	quvi? ( dev-haskell/aeson )
	s3? ( >=dev-haskell/aws-0.9.2
		dev-haskell/conduit
		dev-haskell/conduit-extra
		dev-haskell/http-client )
	tdfa? ( dev-haskell/regex-tdfa )
	tahoe? ( dev-haskell/aeson )
	testsuite? (
			dev-haskell/crypto-api
			>=dev-haskell/tasty-0.7
			dev-haskell/tasty-hunit
			dev-haskell/tasty-quickcheck
			dev-haskell/tasty-rerun
			>=dev-haskell/optparse-applicative-0.9.1
			)
	torrentparser? ( >=dev-haskell/torrent-10000.0.0 )
	webapp? ( dev-haskell/blaze-builder
			dev-haskell/aeson
			dev-haskell/clientsession
			dev-haskell/crypto-api
			dev-haskell/hamlet
			dev-haskell/http-types
			>=dev-haskell/path-pieces-0.1.4
			dev-haskell/transformers
			dev-haskell/shakespeare
			dev-haskell/wai
			dev-haskell/wai-extra
			>=dev-haskell/warp-3.0.0.5
			dev-haskell/warp-tls
			>=dev-haskell/yesod-1.2.6
			>=dev-haskell/yesod-core-1.2.19
			>=dev-haskell/yesod-default-1.2.0
			>=dev-haskell/yesod-form-1.3.15
			>=dev-haskell/yesod-static-1.2.4
			webapp-secure? ( dev-haskell/warp-tls
					dev-haskell/securemem
					dev-haskell/byteable ) )
	webdav? ( >=dev-haskell/dav-1.0
			dev-haskell/http-client )
	xmpp? ( >=dev-haskell/gnutls-0.1.4
		dev-haskell/network-protocol-xmpp
		dev-haskell/xml-types )
		dev-lang/perl
	doc? ( www-apps/ikiwiki net-misc/rsync )
"

src_prepare() {
	cabal_chdeps \
		'ascii-progress (<= 0.2.1.2)' 'ascii-progress'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag android android) \
		$(cabal_flag androidsplice androidsplice) \
		$(cabal_flag asciiprogress asciiprogress) \
		$(cabal_flag assistant assistant) \
		$(cabal_flag dbus dbus) \
		$(cabal_flag desktop-notify desktop-notify) \
		$(cabal_flag dns dns) \
		$(cabal_flag ekg ekg) \
		$(cabal_flag feed feed) \
		$(cabal_flag inotify inotify) \
		$(cabal_flag pairing pairing) \
		$(cabal_flag production production) \
		$(cabal_flag quvi quvi) \
		$(cabal_flag s3 s3) \
		$(cabal_flag tahoe tahoe) \
		$(cabal_flag tdfa tdfa) \
		$(cabal_flag testsuite testsuite) \
		$(cabal_flag webapp webapp) \
		$(cabal_flag webapp-secure webapp-secure) \
		$(cabal_flag webdav webdav) \
		$(cabal_flag xmpp xmpp)
}

src_compile() {
	haskell-cabal_src_compile
	use doc && emake docs
}

src_test() {
	if use webapp; then
		export GIT_CONFIG=${T}/temp-git-config
		git config user.email "git@src_test"
		git config user.name "Mr. ${P} The Test"

		emake test
	fi
}

src_install() {
	haskell-cabal_src_install
	dosym git-annex /usr/bin/git-annex-shell # standard make install does more, than needed

	# install-mans wants ikiwiki. It returns 0 and builds the man pages without ikiwiki.
	emake install-mans DESTDIR="${D}" PREFIX="${EPREFIX}/usr"
	use doc && emake install-docs DESTDIR="${D}" PREFIX="${EPREFIX}/usr"
	mv "${ED}"/usr/share/doc/{${PN},${PF}}
	dodoc CHANGELOG README
	if use webapp ; then
		doicon "${FILESDIR}"/${PN}.xpm
		make_desktop_entry "${PN} webapp" "git-annex" ${PN}.xpm "Office"
	fi
}
