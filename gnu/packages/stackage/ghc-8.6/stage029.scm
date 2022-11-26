;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage029)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.6))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.6-classy-prelude-yesod
  (package
    (name "haskell-8.6-classy-prelude-yesod")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude-yesod/classy-prelude-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10wz09ksn537w5z9lmj4dsfi0ygk37d5khijr8qq3py2gr2c9ywz"))))
    (properties `((upstream-name . "classy-prelude-yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-classy-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-classy-prelude-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage028)
                     haskell-8.6-yesod)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-yesod-newsfeed)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-yesod-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Provide a classy prelude including common Yesod functionality.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-yesod>")
    (license license:expat)))

haskell-8.6-classy-prelude-yesod

(define-public haskell-8.6-hledger-web
  (package
    (name "haskell-8.6-hledger-web")
    (version "1.14.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-web/hledger-web-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w59nr7mj0nx8z44cvhy1rhlj5rmx0wq4p5nfl4dycfmp7jwvsm1"))))
    (properties `((upstream-name . "hledger-web") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-library-only" "-fthreaded")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-Decimal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-clientsession)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hjsmin)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-hledger)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hledger-lib)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage006) haskell-8.6-json)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-wai-handler-launch)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)
                  (@ (gnu packages stackage ghc-8.6 stage028)
                     haskell-8.6-yesod)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage027)
                     haskell-8.6-yesod-form)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-yesod-static)))
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

haskell-8.6-hledger-web

(define-public haskell-8.6-yesod-auth-hashdb
  (package
    (name "haskell-8.6-yesod-auth-hashdb")
    (version "1.7.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-hashdb/yesod-auth-hashdb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10f6lgjjcwlg0vsi43xhgmi9d9r4ncfwsrwb6lfz1if9cq7gbmhv"))))
    (properties `((upstream-name . "yesod-auth-hashdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-basic-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-monad-logger)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage028)
                     haskell-8.6-yesod)
                  (@ (gnu packages stackage ghc-8.6 stage028)
                     haskell-8.6-yesod-auth)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage027)
                     haskell-8.6-yesod-form)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-yesod-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-yesod-test)))
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

haskell-8.6-yesod-auth-hashdb

(define-public haskell-8.6-yesod-auth-oauth2
  (package
    (name "haskell-8.6-yesod-auth-oauth2")
    (version "0.6.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-oauth2/yesod-auth-oauth2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07jm60q1fbdk53ncirbi8clsimg28k9j12kaq0vx2apn2rlmdy2w"))))
    (properties `((upstream-name . "yesod-auth-oauth2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage026)
                     haskell-8.6-hoauth2)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-load-env)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage028)
                     haskell-8.6-yesod)
                  (@ (gnu packages stackage ghc-8.6 stage028)
                     haskell-8.6-yesod-auth)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/thoughtbot/yesod-auth-oauth2")
    (synopsis "OAuth 2.0 authentication plugins")
    (description
     "Library to authenticate with OAuth 2.0 for Yesod web applications.")
    (license license:expat)))

haskell-8.6-yesod-auth-oauth2

(define-public haskell-8.6-yesod-csp
  (package
    (name "haskell-8.6-yesod-csp")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-csp/yesod-csp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16b569jwxw7rim9fmjkl3slddclcp1x75jf8czjj89d1wp202x15"))))
    (properties `((upstream-name . "yesod-csp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage028)
                     haskell-8.6-yesod)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/yesod-csp")
    (synopsis "Add CSP headers to Yesod apps")
    (description
     "Add CSP headers to Yesod apps. This helps reduce exposure to XSS attacks and bad assets.")
    (license license:expat)))

haskell-8.6-yesod-csp

(define-public haskell-8.6-yesod-paginator
  (package
    (name "haskell-8.6-yesod-paginator")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-paginator/yesod-paginator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r0qprsr2nkhy2b44xixmys32hp3wwhp5x521jzpcrd1jc5x38s9"))))
    (properties `((upstream-name . "yesod-paginator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-path-pieces)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-quickcheck-classes)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-uri-encode)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage028)
                     haskell-8.6-yesod)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/pbrisbin/yesod-paginator")
    (synopsis "A pagination approach for yesod")
    (description
     "Paginate a list showing a per-item widget and links to other pages")
    (license license:bsd-3)))

haskell-8.6-yesod-paginator

(define-public haskell-8.6-yesod-recaptcha2
  (package
    (name "haskell-8.6-yesod-recaptcha2")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-recaptcha2/yesod-recaptcha2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12bgj16vfmvk6ri55wmx444njhlmf11v4cins8c1a6isjk8alhhc"))))
    (properties `((upstream-name . "yesod-recaptcha2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-classy-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage028)
                     haskell-8.6-yesod-auth)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage027)
                     haskell-8.6-yesod-form)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ncaq/yesod-recaptcha2#readme")
    (synopsis "yesod recaptcha2")
    (description "recaptcha2 for yesod-form")
    (license license:expat)))

haskell-8.6-yesod-recaptcha2

