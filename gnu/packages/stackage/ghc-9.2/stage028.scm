;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage028)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.2))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.2-diagrams-canvas
  (package
    (name "haskell-9.2-diagrams-canvas")
    (version "1.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-canvas/diagrams-canvas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vhjrmnf2bf4sfyaqhijsx79wah4p2dkg3h79yj9q8l7n90vbfw5"))))
    (properties `((upstream-name . "diagrams-canvas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-NumInstances)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-blank-canvas)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-statestack)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://diagrams.github.io/")
    (synopsis "HTML5 canvas backend for diagrams drawing EDSL")
    (description "This package provides a modular backend for rendering
diagrams created with the diagrams EDSL using an
HTML5 canvas.")
    (license license:bsd-3)))

haskell-9.2-diagrams-canvas

(define-public haskell-9.2-fedora-haskell-tools
  (package
    (name "haskell-9.2-fedora-haskell-tools")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fedora-haskell-tools/fedora-haskell-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13nqsf4p5cm9zzdryl09hcxsya5qn3h8q8wl1sz02jswkhwlhlzb"))))
    (properties `((upstream-name . "fedora-haskell-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-csv)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-fedora-dists)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-simple-cmd)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fedora-haskell/fedora-haskell-tools")
    (synopsis "Building and maintenance tools for Fedora Haskell")
    (description
     "Maintainer tools for building and managing Fedora Haskell packages.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-fedora-haskell-tools

(define-public haskell-9.2-servant-swagger-ui
  (package
    (name "haskell-9.2-servant-swagger-ui")
    (version "0.3.5.4.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui/servant-swagger-ui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12w75z23bnygyr3ki9w3zfy9nhxyjawf9pyzhfg6rp2mq3nji9gg"))))
    (properties `((upstream-name . "servant-swagger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0qspb55lvavfsyqjjjyyax9gqzp8yq9r13nvzj3qnsipjgw2irln")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-file-embed-lzma)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-servant-swagger-ui-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

https://github.com/swagger-api/swagger-ui")
    (license license:bsd-3)))

haskell-9.2-servant-swagger-ui

(define-public haskell-9.2-servant-swagger-ui-redoc
  (package
    (name "haskell-9.2-servant-swagger-ui-redoc")
    (version "0.3.4.1.22.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui-redoc/servant-swagger-ui-redoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ln2sz7ffhddk4dqvczpxb5g8f6bic7sandn5zifpz2jg7lgzy0f"))))
    (properties `((upstream-name . "servant-swagger-ui-redoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "17spfmrwvj24hxd5sxysn6l3a449nw0ln2m6fslrr7wy4czp2kj5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-file-embed-lzma)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-servant-swagger-ui-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui: ReDoc theme")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

ReDoc theme: https://github.com/Rebilly/ReDoc")
    (license license:bsd-3)))

haskell-9.2-servant-swagger-ui-redoc

(define-public haskell-9.2-sydtest-yesod
  (package
    (name "haskell-9.2-sydtest-yesod")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-yesod/sydtest-yesod-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sfq18n25qczhp24hz95spg4ppigajysg0if5ah0k96k1q3p3f51"))))
    (properties `((upstream-name . "sydtest-yesod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-sydtest-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-sydtest-wai)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A yesod companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-yesod

(define-public haskell-9.2-telegram-bot-simple
  (package
    (name "haskell-9.2-telegram-bot-simple")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/telegram-bot-simple/telegram-bot-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01rxkgzfvqxgnxlcw70rhs84ygvccydlki827f3icqwfpm7cn6vn"))))
    (properties `((upstream-name . "telegram-bot-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage018) haskell-9.2-cron)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-servant-client)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-multipart-api)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-servant-multipart-client)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fizruk/telegram-bot-simple#readme")
    (synopsis "Easy to use library for building Telegram bots.")
    (description
     "Please see the README on Github at <https://github.com/fizruk/telegram-bot-simple#readme>")
    (license license:bsd-3)))

haskell-9.2-telegram-bot-simple

(define-public haskell-9.2-yesod-auth-basic
  (package
    (name "haskell-9.2-yesod-auth-basic")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-basic/yesod-auth-basic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qm65ml82waxapq3v19k6x33cghgg6wg72p5h2j1ii329dv6293b"))))
    (properties `((upstream-name . "yesod-auth-basic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/yesod-auth-basic")
    (synopsis "Yesod Middleware for HTTP Basic Authentication")
    (description
     "An efficient Yesod middleware middleware for HTTP Basic
Authentication.

Utilizes Yesod request-local caching mechanisms to store valid auth
credentials found in the Authorization header.")
    (license license:bsd-3)))

haskell-9.2-yesod-auth-basic

(define-public haskell-9.2-yesod-auth-hashdb
  (package
    (name "haskell-9.2-yesod-auth-hashdb")
    (version "1.7.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-hashdb/yesod-auth-hashdb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1daibkn5qhw131pp0sfyahyicwlgpin90zkcrwr2qk05ms5j3hj5"))))
    (properties `((upstream-name . "yesod-auth-hashdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-basic-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod-auth)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage026)
                     haskell-9.2-yesod-form)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-yesod-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.2-yesod-auth-hashdb

(define-public haskell-9.2-yesod-auth-oauth2
  (package
    (name "haskell-9.2-yesod-auth-oauth2")
    (version "0.7.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-auth-oauth2/yesod-auth-oauth2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dnpw1rl8pa7dwfiy203l54x1rrzaiib7ryha9yy2vyaljlymg4v"))))
    (properties `((upstream-name . "yesod-auth-oauth2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-hoauth2)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-load-env)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod-auth)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/freckle/yesod-auth-oauth2")
    (synopsis "OAuth 2.0 authentication plugins")
    (description
     "Library to authenticate with OAuth 2.0 for Yesod web applications.")
    (license license:expat)))

haskell-9.2-yesod-auth-oauth2

(define-public haskell-9.2-yesod-page-cursor
  (package
    (name "haskell-9.2-yesod-page-cursor")
    (version "2.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-page-cursor/yesod-page-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1isgw7299nc656aqdk4blraz9kh1raki2nngz1jaddjbd6x56b40"))))
    (properties `((upstream-name . "yesod-page-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-hspec-expectations-lifted)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-link-header)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-persistent-template)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freckle/yesod-page-cursor#readme")
    (synopsis "")
    (description "Cursor based pagination for Yesod")
    (license license:expat)))

haskell-9.2-yesod-page-cursor

(define-public haskell-9.2-yesod-paginator
  (package
    (name "haskell-9.2-yesod-paginator")
    (version "1.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-paginator/yesod-paginator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j6mkzx0grdjnd3xldshx1lhlwshcjl8n5wsqj2pmxsrfh4a2qqg"))))
    (properties `((upstream-name . "yesod-paginator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-path-pieces)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-uri-encode)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/pbrisbin/yesod-paginator")
    (synopsis "A pagination approach for yesod")
    (description
     "Paginate a list showing a per-item widget and links to other pages")
    (license license:expat)))

haskell-9.2-yesod-paginator

(define-public haskell-9.2-yesod-static
  (package
    (name "haskell-9.2-yesod-static")
    (version "1.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-static/yesod-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18f5hm9ncvkzl8bkn39cg841z0k5iqs5w45afsyk9y6k98pjd54p"))))
    (properties `((upstream-name . "yesod-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-css-text)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-hjsmin)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-wai-app-static)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage027)
                     haskell-9.2-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Static file serving subsite for Yesod Web Framework.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-static>")
    (license license:expat)))

haskell-9.2-yesod-static

