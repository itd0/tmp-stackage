;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage026)
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
(define-public haskell-8.6-avers-server
  (package
    (name "haskell-8.6-avers-server")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/avers-server/avers-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13jic248m2307r84acv4b4xlh7pvx4kxm6gp0nhvz1ds0bbrdkdy"))))
    (properties `((upstream-name . "avers-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-avers)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-avers-api)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-wai-websockets)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/wereHamster/avers-server")
    (synopsis "Server implementation of the Avers API")
    (description "Server implementation of the Avers API")
    (license license:expat)))

haskell-8.6-avers-server

(define-public haskell-8.6-eventful-sqlite
  (package
    (name "haskell-8.6-eventful-sqlite")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-sqlite/eventful-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vyz8401n63gqwgl1fa9dw1ar1dgki4hy6ably8lh2hzpl7fmfy0"))))
    (properties `((upstream-name . "eventful-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-eventful-core)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-eventful-sql-common)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-eventful-test-helpers)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "SQLite implementations for eventful")
    (description "SQLite implementations for eventful")
    (license license:expat)))

haskell-8.6-eventful-sqlite

(define-public haskell-8.6-filter-logger
  (package
    (name "haskell-8.6-filter-logger")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filter-logger/filter-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "089gcirir6dwp2p61349dyvgk596cb8vgswkydzpy2lmar01513q"))))
    (properties `((upstream-name . "filter-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-fast-logger)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-scotty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-wai-logger)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/caneroj1/filter-logger#readme")
    (synopsis
     "Filterable request logging wai middleware. Change how data is logged and when.")
    (description
     "Composable filters to transform objects and control when they are written to server logs.")
    (license license:expat)))

haskell-8.6-filter-logger

(define-public haskell-8.6-hoauth2
  (package
    (name "haskell-8.6-hoauth2")
    (version "1.8.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hoauth2/hoauth2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03yggs3if14saxiz5m02p17crl7askh8qjky6h1jqpxric49alv7"))))
    (properties `((upstream-name . "hoauth2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-mustache)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-scotty)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-uri-bytestring-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-wai-middleware-static)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/freizl/hoauth2")
    (synopsis "Haskell OAuth2 authentication client")
    (description
     "Haskell OAuth2 authentication client. Tested with the following services:

* AzureAD: <https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-protocols-oauth-code>

* Google: <https://developers.google.com/accounts/docs/OAuth2WebServer>

* Github: <http://developer.github.com/v3/oauth/>

* Facebook: <http://developers.facebook.com/docs/facebook-login/>

* Fitbit: <http://dev.fitbit.com/docs/oauth2/>

* StackExchange: <https://api.stackexchange.com/docs/authentication>

* DropBox: <https://www.dropbox.com/developers/reference/oauth-guide>

* Weibo: <http://open.weibo.com/wiki/Oauth2>

* Douban: <http://developers.douban.com/wiki/?title=oauth2>")
    (license license:bsd-3)))

haskell-8.6-hoauth2

(define-public haskell-8.6-hw-dsv
  (package
    (name "haskell-8.6-hw-dsv")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-dsv/hw-dsv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15dy96ah7frs79g102vvsrihzlk2qc5c773y7bqdcm66mjhin3x2"))))
    (properties `((upstream-name . "hw-dsv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")
       #:cabal-revision
       ("2" "0flmxhc1w38si89wdr9i6x70mc3sl07hrw2b77xabva8dgx7ph3q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-bits-extra)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-generic-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-hw-simd)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-weigh)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "https://github.com/haskell-works/hw-dsv#readme")
    (synopsis "Unbelievably fast streaming DSV file parser")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/hw-dsv#readme>")
    (license license:bsd-3)))

haskell-8.6-hw-dsv

(define-public haskell-8.6-hw-json
  (package
    (name "haskell-8.6-hw-json")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-json/hw-json-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lb38kfxhamvdhp6z3aw4as57nc6jxf6wj7nr3lmiry6h2gx15js"))))
    (properties `((upstream-name . "hw-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2" "-f-sse42")
       #:cabal-revision
       ("1" "1laxwrcjdjrpym4gghnqa39xvdvbxsp2sbpzcc703ac3kj7v2b6h")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-bits-extra)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-generic-lens)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-hw-balancedparens)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-hw-bits)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hw-json-simd)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-hw-mquery)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-hw-parser)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-hw-simd)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mmap)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-word8)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-json#readme")
    (synopsis "Memory efficient JSON parser")
    (description "Memory efficient JSON parser. Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-json

(define-public haskell-8.6-line
  (package
    (name "haskell-8.6-line")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/line/line-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z36847iamf18b38nz6mcps599cnn17046n61y94g1q7rmfsppx1"))))
    (properties `((upstream-name . "line") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hspec-wai)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-scotty)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/utatti/line")
    (synopsis "Haskell SDK for the LINE API")
    (description
     "This package exports bindings to LINE APIs.

It provides the following features:

* Internal auth signature validator

* Webhook handled with handler function, WAI application, or Scotty action

* Functions and types for <https://developers.line.me/en/docs/messaging-api/reference/>

For example usages, please see the
<https://github.com/utatti/line/tree/master/examples examples> directory.")
    (license license:bsd-3)))

haskell-8.6-line

(define-public haskell-8.6-microformats2-parser
  (package
    (name "haskell-8.6-microformats2-parser")
    (version "1.0.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microformats2-parser/microformats2-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lxbw825yg16nmflf93l1sy6mxa3dnd7a5mdalc034brsnf1vish"))))
    (properties `((upstream-name . "microformats2-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03g9mj15p1cxm2ia04ilj2w770lr7v4w9xv6xmhw617ypwbj4s8z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-aeson-qq)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-html-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-options)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-pcre-heavy)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-scotty)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-wai-cli)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-xml-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codeberg.org/valpackett/microformats2-parser")
    (synopsis "A Microformats 2 parser.")
    (description
     "A parser for Microformats 2 (http://microformats.org/wiki/microformats2), a simple way to describe structured information in HTML.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-microformats2-parser

(define-public haskell-8.6-pantry
  (package
    (name "haskell-8.6-pantry")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pantry/pantry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m1sps9kc7y8zpba486lv5z8an3z8493zxb1qhghql6pybsprsgi"))))
    (properties `((upstream-name . "pantry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-digest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-filelock)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hackage-security)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-hpack)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-http-client-tls)
                  (@ (gnu packages stackage ghc-8.6 stage021)
                     haskell-8.6-http-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-http-download)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-path-io)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-persistent-template)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-rio-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-rio-prettyprint)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-tar-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-metrics)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-th-lift)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-th-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-th-reify-many)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-th-utilities)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-zip-archive)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/commercialhaskell/pantry#readme")
    (synopsis "Content addressable Haskell package management")
    (description
     "Please see the README on Github at <https://github.com/commercialhaskell/pantry#readme>")
    (license license:bsd-3)))

haskell-8.6-pantry

(define-public haskell-8.6-persistent-pagination
  (package
    (name "haskell-8.6-persistent-pagination")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-pagination/persistent-pagination-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03rxynxj2xx25l1zy42f06649m57blpx4inadb2a4dgz62zzyk5q"))))
    (properties `((upstream-name . "persistent-pagination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-esqueleto)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-persistent-template)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/parsonsmatt/persistent-pagination#readme")
    (synopsis
     "Efficient and correct pagination for persistent or esqueleto queries.")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-pagination#readme>")
    (license license:bsd-3)))

haskell-8.6-persistent-pagination

(define-public haskell-8.6-pg-harness-server
  (package
    (name "haskell-8.6-pg-harness-server")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-harness-server/pg-harness-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wkr0vp41mjvq84q4gr29mwhrs1a805cipan0gamijhsjl2m75yc"))))
    (properties `((upstream-name . "pg-harness-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-ini)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-scotty)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/BardurArantsson/pg-harness")
    (synopsis "REST service for creating temporary PostgreSQL databases")
    (description
     "REST service for conveniently creating temporary PostgreSQL databases
for use in tests.

See <https://github.com/BardurArantsson/pg-harness/blob/master/README.md README.md> for
detailed usage and setup instructions.")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-8.6-pg-harness-server

(define-public haskell-8.6-servant-JuicyPixels
  (package
    (name "haskell-8.6-servant-JuicyPixels")
    (version "0.3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-JuicyPixels/servant-JuicyPixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lhxb6z8xypx48k8hwzqpp92qww8wxbp3a1ggik4dfrcxkcklmlx"))))
    (properties `((upstream-name . "servant-JuicyPixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tvh/servant-JuicyPixels")
    (synopsis "Servant support for JuicyPixels")
    (description
     "Provides content types for image types supported by JuicyPixels")
    (license license:bsd-3)))

haskell-8.6-servant-JuicyPixels

(define-public haskell-8.6-servant-auth-server
  (package
    (name "haskell-8.6-servant-auth-server")
    (version "0.4.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-server/servant-auth-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10kcxdh9ba37jra6brrg11rzmx16jmwsk0yib92l0s3mkqp9was6"))))
    (properties `((upstream-name . "servant-auth-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-jose)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-monad-time)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-servant-auth)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-server/servant-auth compatibility")
    (description
     "This package provides the required instances for using the @@Auth@@ combinator
in your 'servant' server.

Both cookie- and token- (REST API) based authentication is provided.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.6-servant-auth-server

(define-public haskell-8.6-servant-auth-wordpress
  (package
    (name "haskell-8.6-servant-auth-wordpress")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-wordpress/servant-auth-wordpress-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08ngbgmzksp27n8znigrj5i2nvsqjansn4vv3my38vdqqgzm09w8"))))
    (properties `((upstream-name . "servant-auth-wordpress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-wordpress-auth)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/wordpress-auth#readme")
    (synopsis "Authenticate Routes Using Wordpress Cookies")
    (description
     "This package provides a Servant AuthHandler that validates Wordpress's @@LOGGED_IN@@ authentication Cookie & the @@wp_rest@@ Nonce, returning either an Authorized user with data or an Anonymous user, or calling an error handler.

This allows you to access the currently logged in User when making AJAX requests from a Wordpress site.

Check out the @@wordpress-auth@@ package for lower-level Wordpress Cookie & Nonce manipulation.")
    (license license:bsd-3)))

haskell-8.6-servant-auth-wordpress

(define-public haskell-8.6-servant-checked-exceptions
  (package
    (name "haskell-8.6-servant-checked-exceptions")
    (version "2.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-checked-exceptions/servant-checked-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1shbnrjk2d0lq9nskl95jkfgr4ad79nx4k87zjg4c4m6m09nf5bh"))))
    (properties `((upstream-name . "servant-checked-exceptions")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hspec-wai)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-checked-exceptions-core)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-client-core)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-world-peace)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/servant-checked-exceptions")
    (synopsis "Checked exceptions for Servant APIs.")
    (description
     "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.")
    (license license:bsd-3)))

haskell-8.6-servant-checked-exceptions

(define-public haskell-8.6-servant-cli
  (package
    (name "haskell-8.6-servant-cli")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-cli/servant-cli-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12d18ca90b7mijaav3glx60b9c9qd1f2g4p5m4m7hzz2m22dyimn"))))
    (properties `((upstream-name . "servant-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1h29x87kqyylwigz86bwrgjdykk1119alsy65a7jkkcrj7a3syqa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage020)
                     haskell-8.6-functor-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-client-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-docs)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-vinyl)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mstksg/servant-cli#readme")
    (synopsis "Command line interface for Servant API clients")
    (description
     "Parse command line arguments into a servant client, from a servant API,
using /optparse-applicative/ for parsing, displaying help, and
auto-completion.

Hooks into the annotation system used by /servant-docs/ to provide descriptions
for parameters and captures.

See @@example/greet.hs@@ for an example usage, and the
<https://hackage.haskell.org/package/servant-cli README> for a tutorial.")
    (license license:bsd-3)))

haskell-8.6-servant-cli

(define-public haskell-8.6-servant-conduit
  (package
    (name "haskell-8.6-servant-conduit")
    (version "0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-conduit/servant-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mpnkqcls4mrxfd3ksy53k7vvm0hildj21b8mdy53z993wq1blfz"))))
    (properties `((upstream-name . "servant-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0adximf4hg3bf7d9mkcjdsp5klg787ryb1hy3j49fg39l1rszac4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for conduit.")
    (description
     "Servant Stream support for conduit.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'ConduitT'.")
    (license license:bsd-3)))

haskell-8.6-servant-conduit

(define-public haskell-8.6-servant-http-streams
  (package
    (name "haskell-8.6-servant-http-streams")
    (version "0.16.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-http-streams/servant-http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nfwi8bnafv78lzxxi56i9pyk2rj0vkl5x193fixirw4fjvia3zg"))))
    (properties `((upstream-name . "servant-http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-common)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-streams)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-client-core)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tdigest)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Automatic derivation of querying functions for servant")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.6-servant-http-streams

(define-public haskell-8.6-servant-js
  (package
    (name "haskell-8.6-servant-js")
    (version "0.9.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-js/servant-js-" version
                    ".tar.gz"))
              (sha256
               (base32
                "004snd07q29g08smvrwmpypg75g9rxdvk5bfyfyxxmj47wh4734d"))))
    (properties `((upstream-name . "servant-js") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-charset)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-foreign)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis
     "Automatically derive javascript functions to query servant webservices.")
    (description
     "Automatically derive javascript functions to query servant webservices.

Supports deriving functions using vanilla javascript AJAX requests, Angulari, Axios or JQuery.

You can find an example <https://github.com/haskell-servant/servant-js/blob/master/servant-js/examples/counter.hs here>
which serves the generated javascript to a webpage that allows you to trigger
webservice calls.

<https://github.com/haskell-servant/servant-js/blob/master/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.6-servant-js

(define-public haskell-8.6-servant-lucid
  (package
    (name "haskell-8.6-servant-lucid")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-lucid/servant-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xamwcijd03cynml5c2hr577qairybyrqd90ixyb1a94lql6agbf"))))
    (properties `((upstream-name . "servant-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "10j29y9zjflh88csvn7zi4pm8jr9dxsglin94wypjrhcwy7yj1ic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant support for lucid")
    (description
     "Servant support for lucid.

'HTML' content type which will use `ToHtml` class.

Lucid.Servant uses `Link` rather than `Text` for safe 'href' attributes.")
    (license license:bsd-3)))

haskell-8.6-servant-lucid

(define-public haskell-8.6-servant-machines
  (package
    (name "haskell-8.6-servant-machines")
    (version "0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-machines/servant-machines-"
                    version ".tar.gz"))
              (sha256
               (base32
                "137c0svvwvkh3ad8cc5q5vygci3c5951hbwlhk09znqaqycck35i"))))
    (properties `((upstream-name . "servant-machines") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1p8ld4cxwsirlwz5ihrz6fyxbary4llxsnby42vjnhl19gylhdmk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-machines)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for machines")
    (description
     "Servant Stream support for machines.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'MachineT'.")
    (license license:bsd-3)))

haskell-8.6-servant-machines

(define-public haskell-8.6-servant-mock
  (package
    (name "haskell-8.6-servant-mock")
    (version "0.8.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-mock/servant-mock-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10bvqwyp5ca53k47a1xfbihdv22gjlj97spr1bn5plf5vlk70m5f"))))
    (properties `((upstream-name . "servant-mock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")
       #:cabal-revision
       ("3" "1137vz9xm8iwj6x8h1q1yify6c1lahy0dxj6hpbhgi4s3mqkhm2g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hspec-wai)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Derive a mock server for free from your servant API types")
    (description
     "Derive a mock server for free from your servant API types

See the @@Servant.Mock@@ module for the documentation and an example.")
    (license license:bsd-3)))

haskell-8.6-servant-mock

(define-public haskell-8.6-servant-multipart
  (package
    (name "haskell-8.6-servant-multipart")
    (version "0.11.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-multipart/servant-multipart-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19bz03y1fv0px30zw5q8394573d482lgchclihbnyg26w7xhmzha"))))
    (properties `((upstream-name . "servant-multipart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-client-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-docs)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-foreign)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-multipart#readme")
    (synopsis "multipart/form-data (e.g file upload) support for servant")
    (description
     "This package adds support for file upload to the servant ecosystem. It draws
on ideas and code from several people who participated in the (in)famous
[ticket #133](https://github.com/haskell-servant/servant/issues/133) on
servant's issue tracker.")
    (license license:bsd-3)))

haskell-8.6-servant-multipart

(define-public haskell-8.6-servant-pipes
  (package
    (name "haskell-8.6-servant-pipes")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-pipes/servant-pipes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r2n7f8x7adl117zlswf4ji5yxib2v80wh7wbhwklvd86dbzyrby"))))
    (properties `((upstream-name . "servant-pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0xm07qxw0szffm8krbvj2kdflwlx2ixlhp5scaj3fhwivycyayvg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-pipes-safe)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for pipes")
    (description
     "Servant Stream support for pipes.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'Proxy' and 'SafeT'.")
    (license license:bsd-3)))

haskell-8.6-servant-pipes

(define-public haskell-8.6-servant-rawm
  (package
    (name "haskell-8.6-servant-rawm")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-rawm/servant-rawm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "013d89zmlmwwwhgyc57xbzsd4phz347if5y6iz93wrw4lbvc341d"))))
    (properties `((upstream-name . "servant-rawm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hspec-wai)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-client-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-docs)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-wai-app-static)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/servant-rawm")
    (synopsis "Embed a raw 'Application' in a Servant API")
    (description
     "Please see <https://github.com/cdepillabout/servant-rawm#readme README.md>.")
    (license license:bsd-3)))

haskell-8.6-servant-rawm

(define-public haskell-8.6-servant-static-th
  (package
    (name "haskell-8.6-servant-static-th")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-static-th/servant-static-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15i5sgi30m5y8capc10k4hsaldzglvmknfq6sr1mrrzc9z9c3lrm"))))
    (properties `((upstream-name . "servant-static-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-hspec-wai)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-blaze)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/servant-static-th")
    (synopsis "Embed a directory of static files in your Servant server")
    (description
     "Please see <https://github.com/cdepillabout/servant-static-th#readme README.md>.")
    (license license:bsd-3)))

haskell-8.6-servant-static-th

(define-public haskell-8.6-servant-swagger-ui-core
  (package
    (name "haskell-8.6-servant-swagger-ui-core")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui-core/servant-swagger-ui-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gpdjnclbjjr6gwc0gyx1d4w06cjf6z5b2ngjfcgbn885wqllwh3"))))
    (properties `((upstream-name . "servant-swagger-ui-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1kj72caf8skcl25bfw4nh7kj7hh33wd55sggsd474di57wi9j2c4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-blaze)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-swagger2)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui core components")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

See servant-swagger-ui, servant-swagger-ui-jensoleg or
servant-swagger-ui-redoc for \"concrete\" implementations.")
    (license license:bsd-3)))

haskell-8.6-servant-swagger-ui-core

(define-public haskell-8.6-servant-tracing
  (package
    (name "haskell-8.6-servant-tracing")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-tracing/servant-tracing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qpamaf3ydfb8197iz2prjh9nxwxi03cdfsp3jl28rhbqrc2xpry"))))
    (properties `((upstream-name . "servant-tracing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/ChrisCoffey/haskell-opentracing-light#readme")
    (synopsis "")
    (description
     "Please see the README on Github at <https://github.com/ChrisCoffey/haskell-opentracing-light#readme>")
    (license license:expat)))

haskell-8.6-servant-tracing

(define-public haskell-8.6-servant-yaml
  (package
    (name "haskell-8.6-servant-yaml")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-yaml/servant-yaml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00gnbdlcq6cvmhsga8h0csd35pnfib038rqlhm445l4wa0cp8m01"))))
    (properties `((upstream-name . "servant-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0k9jg3vf0p1332243mji4lzm3lk3frsmxxlz6lgg68rwh3baz6f0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-yaml#readme")
    (synopsis "Servant support for yaml")
    (description "Servant support for yaml.")
    (license license:bsd-3)))

haskell-8.6-servant-yaml

(define-public haskell-8.6-stripe-scotty
  (package
    (name "haskell-8.6-stripe-scotty")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-scotty/stripe-scotty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "195v1a3sl5skz2jr71r1b4za033s6hib7ld59f4fdrfdr5658sbs"))))
    (properties `((upstream-name . "stripe-scotty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0c3r39217650yjxxs1523ywvyiirrh2f209gl4hfznyigkx2kg41")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-scotty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-stripe-concepts)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-stripe-signature)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/typeclasses/stripe")
    (synopsis "Listen for Stripe webhook events with Scotty")
    (description "This package provides support for writing a
<https://stripe.com/ Stripe> webhook server using
<https://hackage.haskell.org/package/scotty Scotty>.")
    (license license:expat)))

haskell-8.6-stripe-scotty

(define-public haskell-8.6-tonatona-persistent-sqlite
  (package
    (name "haskell-8.6-tonatona-persistent-sqlite")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonatona-persistent-sqlite/tonatona-persistent-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a0jgi01pdirr7ay2ah3cvf3nv2pnmvxag34zif04vc6sbs8pryb"))))
    (properties `((upstream-name . "tonatona-persistent-sqlite")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-monad-logger)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tonaparser-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tonatona)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "tonatona plugin for accessing Sqlite database.")
    (description
     "Tonatona plugin for accessing Sqlite database. This package provides a tonatona plugin for accessing Sqlite database. This plugin uses persistent to actually accessing Sqlite.")
    (license license:expat)))

haskell-8.6-tonatona-persistent-sqlite

(define-public haskell-8.6-tonatona-servant
  (package
    (name "haskell-8.6-tonatona-servant")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonatona-servant/tonatona-servant-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v414apf2znvwm6vdph6wr0slhd5ki2nc666frhc8blmwj3whqrr"))))
    (properties `((upstream-name . "tonatona-servant") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage022)
                     haskell-8.6-monad-logger)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-servant-server)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tonaparser-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tonatona)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-tonatona-logger)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage023) haskell-8.6-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "tonatona plugin for servant.")
    (description
     "Tonatona plugin for @@servant@@. This package provides a tonatona plugin for @@servant@@.")
    (license license:expat)))

haskell-8.6-tonatona-servant

(define-public haskell-8.6-wai-transformers
  (package
    (name "haskell-8.6-wai-transformers")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-transformers/wai-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14l5ihyvg2n0kmmkxy0r5mx1jk3p5jhv1vynsnnrb2md1g4318qp"))))
    (properties `((upstream-name . "wai-transformers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extractable-singleton)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control-aligned)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-wai-websockets)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/athanclark/wai-transformers#readme")
    (synopsis "")
    (description
     "Please see the README on Github at <https://git.localcooking.com/tooling/wai-transformers#readme>")
    (license license:bsd-3)))

haskell-8.6-wai-transformers

(define-public haskell-8.6-yesod-persistent
  (package
    (name "haskell-8.6-yesod-persistent")
    (version "1.6.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-persistent/yesod-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gsiw2zx6z7za7a164h0fxfggkrdqz6fn0qyb2zn9qr7r2jbg1c0"))))
    (properties `((upstream-name . "yesod-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-persistent)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-persistent-template)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Some helpers for using Persistent from Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-persistent>")
    (license license:expat)))

haskell-8.6-yesod-persistent

(define-public haskell-8.6-yesod-static
  (package
    (name "haskell-8.6-yesod-static")
    (version "1.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-static/yesod-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jd0ryfr2vyrwasyvbqmc6j4ngv1lgz78w427f169l7gyl1firxb"))))
    (properties `((upstream-name . "yesod-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-css-text)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hjsmin)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-mime-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-wai-app-static)
                  (@ (gnu packages stackage ghc-8.6 stage023)
                     haskell-8.6-wai-extra)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Static file serving subsite for Yesod Web Framework.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-static>")
    (license license:expat)))

haskell-8.6-yesod-static

(define-public haskell-8.6-yesod-websockets
  (package
    (name "haskell-8.6-yesod-websockets")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-websockets/yesod-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k206l84g25xml8yg4q7i62x5aydxq2hni2fk2cc36dlvl0rgih1"))))
    (properties `((upstream-name . "yesod-websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage025)
                     haskell-8.6-wai-websockets)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)
                  (@ (gnu packages stackage ghc-8.6 stage024)
                     haskell-8.6-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/yesod")
    (synopsis "WebSockets support for Yesod")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-websockets>")
    (license license:expat)))

haskell-8.6-yesod-websockets

