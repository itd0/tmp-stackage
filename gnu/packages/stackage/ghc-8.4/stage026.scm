;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage026)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.4-classy-prelude-yesod
  (package
    (name "haskell-8.4-classy-prelude-yesod")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude-yesod/classy-prelude-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a4y9fipcikndzqqna5694f1wcwwin5ir076pjj1nm638a7silhc"))))
    (properties `((upstream-name . "classy-prelude-yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-classy-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-classy-prelude-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage025)
                     haskell-8.4-yesod)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-yesod-newsfeed)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-yesod-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Provide a classy prelude including common Yesod functionality.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-yesod>")
    (license license:expat)))

haskell-8.4-classy-prelude-yesod

(define-public haskell-8.4-gi-gtk
  (package
    (name "haskell-8.4-gi-gtk")
    (version "3.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gtk/gi-gtk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1b0sfjcjxm0kzqyhrvl4wbxqa7zdpwv13xzrpb1k1k9rijjf1anf"))))
    (properties `((upstream-name . "gi-gtk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages gtk) gtk+)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-gi-atk)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-cairo)
                  (@ (gnu packages stackage ghc-8.4 stage025)
                     haskell-8.4-gi-gdk)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-gi-gdkpixbuf)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-gi-gio)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-glib)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-gi-gobject)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-gi-pango)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gtk bindings")
    (description "Bindings for Gtk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-gtk

(define-public haskell-8.4-hledger-web
  (package
    (name "haskell-8.4-hledger-web")
    (version "1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-web/hledger-web-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hfl9kr3h9lcmy512s3yiv3rp31md7kw5n1145khj2j3l8qd3py9"))))
    (properties `((upstream-name . "hledger-web") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-library-only" "-fthreaded")
       #:cabal-revision
       ("1" "0zzgc6mjia06fwvjwpzzczh0p9k0a6bi2lib6zq5k1briq4gqblm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-clientsession)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hjsmin)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hledger)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hledger-lib)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-json)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-handler-launch)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)
                  (@ (gnu packages stackage ghc-8.4 stage025)
                     haskell-8.4-yesod)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-yesod-form)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-yesod-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://hledger.org")
    (synopsis "Web interface for the hledger accounting tool")
    (description
     "This is hledger's web interface.
It provides a more user-friendly and collaborative UI than the
command-line or curses-style interfaces.

hledger is a cross-platform program for tracking money, time, or
any other commodity, using double-entry accounting and a simple,
editable file format. It is inspired by and largely compatible
with ledger(1).  hledger provides command-line, curses and web
interfaces, and aims to be a reliable, practical tool for daily
use.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-hledger-web

(define-public haskell-8.4-yesod-auth-fb
  (package
    (name "haskell-8.4-yesod-auth-fb")
    (version "1.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-fb/yesod-auth-fb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1368hxic51vnilwp6dygc98yfclqi0vn1vwkxpvdd9vzy73kdj0i"))))
    (properties `((upstream-name . "yesod-auth-fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage022) haskell-8.4-fb)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage025)
                     haskell-8.4-yesod-auth)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-yesod-fb)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/psibi/yesod-auth-fb")
    (synopsis "Authentication backend for Yesod using Facebook.")
    (description
     "This package allows you to use Yesod's authentication framework
with Facebook as your backend.  That is, your site's users will
log in to your site through Facebook.  Your application need to
be registered on Facebook.

This package works with both the server-side authentication
flow
(<https://developers.facebook.com/docs/authentication/server-side/>)
via the \"Yesod.Auth.Facebook.ServerSide\" module and the
client-side authentication
(<https://developers.facebook.com/docs/authentication/client-side/>)
via the \"Yesod.Auth.Facebook.ClientSide\" module.  It's up to
you to decide which one to use.  The server-side code is older
and as such has been through a lot more testing than the
client-side code.  Also, for now only the server-side code is
able to work with other authentication plugins.  The
client-side code, however, allows you to use some features that
are available only to the Facebook JS SDK (such as
automatically logging your users in, see
<https://developers.facebook.com/blog/post/2012/05/08/how-to--improve-the-experience-for-returning-users/>).")
    (license license:bsd-3)))

haskell-8.4-yesod-auth-fb

(define-public haskell-8.4-yesod-auth-hashdb
  (package
    (name "haskell-8.4-yesod-auth-hashdb")
    (version "1.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-hashdb/yesod-auth-hashdb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rfz2xanm6d70fx8ywh8j8py8003akzgi10s9n7syqm8kaj2fvqd"))))
    (properties `((upstream-name . "yesod-auth-hashdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-basic-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage025)
                     haskell-8.4-yesod)
                  (@ (gnu packages stackage ghc-8.4 stage025)
                     haskell-8.4-yesod-auth)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage024)
                     haskell-8.4-yesod-form)
                  (@ (gnu packages stackage ghc-8.4 stage023)
                     haskell-8.4-yesod-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/paul-rouse/yesod-auth-hashdb")
    (synopsis "Authentication plugin for Yesod.")
    (description
     "This package is the Yesod.Auth.HashDB plugin, originally included as part
of yesod-auth, but now modified to be more secure and placed in a separate
package.

It provides authentication using hashed passwords stored in a database,
and works best in situations where an administrator is involved in
setting up a user with an initial password.

The complete login process, including a default form, is implemented by
this plugin, but the application developer must design the interfaces
for setting up users and allowing them to change their own passwords,
since only the low-level password-setting functions are provided by this
package.  (Note that other authentication plugins may be more appropriate
if you wish to use email verification to set up accounts).")
    (license license:expat)))

haskell-8.4-yesod-auth-hashdb

(define-public haskell-8.4-yesod-csp
  (package
    (name "haskell-8.4-yesod-csp")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-csp/yesod-csp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19cjmjg2byyswdcxa9llqarclzi6jslbd0yxxkn8l3kdgn2k2pg0"))))
    (properties `((upstream-name . "yesod-csp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage025)
                     haskell-8.4-yesod)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/yesod-csp")
    (synopsis "Add CSP headers to Yesod apps")
    (description
     "Add CSP headers to Yesod apps. This helps reduce exposure to XSS attacks and bad assets.")
    (license license:expat)))

haskell-8.4-yesod-csp

(define-public haskell-8.4-yesod-paginator
  (package
    (name "haskell-8.4-yesod-paginator")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-paginator/yesod-paginator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "140b4cikshl5f229awnp5jcbnyln0bmzlqjfcwxzxssxwnviy93f"))))
    (properties `((upstream-name . "yesod-paginator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-path-pieces)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uri-encode)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage025)
                     haskell-8.4-yesod)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/pbrisbin/yesod-paginator")
    (synopsis "A pagination approach for yesod")
    (description
     "Paginate a list showing a per-item widget and links to other pages")
    (license license:bsd-3)))

haskell-8.4-yesod-paginator

