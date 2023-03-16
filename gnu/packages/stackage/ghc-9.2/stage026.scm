;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage026)
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
(define-public haskell-9.2-Spock
  (package
    (name "haskell-9.2-Spock")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Spock/Spock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19zqang5ixnfhqrdy70myqn8p1ijd24qfhnmj4w1f9hdr38kmz11"))))
    (properties `((upstream-name . "Spock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-Spock-core)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-focus)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hvect)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-list-t)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-reroute)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-stm-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description
     "This toolbox provides everything you need to get a quick start into web hacking with haskell:

* fast routing

* middleware

* json

* sessions

* cookies

* database helper

* csrf-protection

A tutorial is available at <http://www.spock.li/tutorial/ spock.li>")
    (license license:bsd-3)))

haskell-9.2-Spock

(define-public haskell-9.2-Spock-api-server
  (package
    (name "haskell-9.2-Spock-api-server")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-api-server/Spock-api-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ra8y036vilsb75jb0lsfbdraygz6jm7b5l9002n7ixypbp2adya"))))
    (properties `((upstream-name . "Spock-api-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-Spock-api)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-Spock-core)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hvect)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description "Server wiring for Spock-api APIs")
    (license license:bsd-3)))

haskell-9.2-Spock-api-server

(define-public haskell-9.2-bhoogle
  (package
    (name "haskell-9.2-bhoogle")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bhoogle/bhoogle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i0d8250y817sgkd54dcvwng3biyz93rwsj03lg596nllsi2gcr4"))))
    (properties `((upstream-name . "bhoogle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-brick)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-hoogle)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-vty)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/andrevdm/bhoogle#readme")
    (synopsis "Simple terminal GUI for local hoogle.")
    (description
     "bhoogle is a terminal GUI layer over local hoogle. It provides search ahead and sub-string filtering in addition to the usual type-search.")
    (license license:bsd-3)))

haskell-9.2-bhoogle

(define-public haskell-9.2-bodhi
  (package
    (name "haskell-9.2-bodhi")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bodhi/bodhi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jgvfys9wigkhavl17n6pq06nxfnaw0r3bpk93phvhb0vrxdl4wl"))))
    (properties `((upstream-name . "bodhi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/bodhi-hs")
    (synopsis "Fedora Bodhi REST client library")
    (description
     "A REST client library for the Fedora Bodhi updates server.
The binding is currently fairly low-level returning JSON Objects.
So far it covers nearly all of the GET part of the API.")
    (license license:expat)))

haskell-9.2-bodhi

(define-public haskell-9.2-cached-json-file
  (package
    (name "haskell-9.2-cached-json-file")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cached-json-file/cached-json-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03pxi16byayjzqj1v930939bnbs2ldv4lvn0c0gyq2xfnmalbhw7"))))
    (properties `((upstream-name . "cached-json-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-query)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/cached-json-file")
    (synopsis "Locally cache a json file obtained by http")
    (description
     "A small library for caching a slow-changing remote json file in
a specified directory (under \"~\\/.cache\\/\").  When the json is requested
and the cache file is still fresh enough it is read directly from
the local cache, otherwise the cached file is refreshed first.")
    (license license:bsd-3)))

haskell-9.2-cached-json-file

(define-public haskell-9.2-copr-api
  (package
    (name "haskell-9.2-copr-api")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/copr-api/copr-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v28y0xnjk9hl66hsi17g5h6mrsg1a6b9p6r05r41cnd8a093vb0"))))
    (properties `((upstream-name . "copr-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-query)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/copr-api-hs")
    (synopsis "Copr API client libary")
    (description "Fedora Copr buildsystem client api library")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-copr-api

(define-public haskell-9.2-dl-fedora
  (package
    (name "haskell-9.2-dl-fedora")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dl-fedora/dl-fedora-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17b9l6xshndy57i55bl6dnljh395mmcwlmjr3nygl30blrlmyz9y"))))
    (properties `((upstream-name . "dl-fedora") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-directory)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-posix)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-simple-cmd)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-xdg-userdirs)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/dl-fedora")
    (synopsis "Fedora image download tool")
    (description "Tool to download Fedora iso and image files")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-dl-fedora

(define-public haskell-9.2-filter-logger
  (package
    (name "haskell-9.2-filter-logger")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage020)
                     haskell-9.2-fast-logger)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-scotty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-wai-logger)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/caneroj1/filter-logger#readme")
    (synopsis
     "Filterable request logging wai middleware. Change how data is logged and when.")
    (description
     "Composable filters to transform objects and control when they are written to server logs.")
    (license license:expat)))

haskell-9.2-filter-logger

(define-public haskell-9.2-haskoin-store-data
  (package
    (name "haskell-9.2-haskoin-store-data")
    (version "0.65.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskoin-store-data/haskoin-store-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "121vyncj8f2hwxd1j96d134c6fdr4lf3pqdrrj5n3gjb0rj61vn8"))))
    (properties `((upstream-name . "haskoin-store-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskoin-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-scotty)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/haskoin/haskoin-store#readme")
    (synopsis "Data for Haskoin Store")
    (description
     "Please see the README on GitHub at <https://github.com/haskoin/haskoin-store#readme>")
    (license license:expat)))

haskell-9.2-haskoin-store-data

(define-public haskell-9.2-kansas-comet
  (package
    (name "haskell-9.2-kansas-comet")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kansas-comet/kansas-comet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j54rsqna8xrw1si8i74v0c9k4jjv8a2q001aa8sx4rxb7d1qbzy"))))
    (properties `((upstream-name . "kansas-comet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0csspj6l6wa7kf6npxx5sg6mzhawv9ajd99lnpp71bgxrf9axlsz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-scotty)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ku-fpg/kansas-comet/")
    (synopsis "A JavaScript push mechanism based on the comet idiom")
    (description "A transport-level remote JavaScript RESTful push mechanism.")
    (license license:bsd-3)))

haskell-9.2-kansas-comet

(define-public haskell-9.2-line
  (package
    (name "haskell-9.2-line")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-hspec-wai)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-scotty)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
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

haskell-9.2-line

(define-public haskell-9.2-pagure
  (package
    (name "haskell-9.2-pagure")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pagure/pagure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02212akphmldpnbih2zip750iavappzlqs5hf9mamzjaramx2bsy"))))
    (properties `((upstream-name . "pagure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/pagure-hs")
    (synopsis "Pagure REST client library")
    (description "A library for querying Pagure gitforges via REST.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-pagure

(define-public haskell-9.2-pandoc
  (package
    (name "haskell-9.2-pandoc")
    (version "2.19.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pandoc/pandoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ia2gpl345lwymk38y89sgcqjci7sjmxbi228idg6nkaqfa3ds1n"))))
    (properties `((upstream-name . "pandoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-embed_data_files" "-f-lua53" "-f-nightly")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-SHA)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base64)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-citeproc)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-commonmark)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-commonmark-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-commonmark-pandoc)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-doclayout)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctemplates)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-emojis)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-gridtables)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haddock-library)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hslua)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hslua-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hslua-module-doclayout)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hslua-module-path)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hslua-module-system)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hslua-module-text)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hslua-module-version)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-ipynb)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-jira-wiki-markup)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-lpeg)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-pandoc-lua-marshal)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pandoc-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-skylighting)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-skylighting-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-texmath)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-unicode-collation)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unicode-transforms)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-xml)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-zip-archive)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://pandoc.org")
    (synopsis "Conversion between markup formats")
    (description
     "Pandoc is a Haskell library for converting from one markup
format to another, and a command-line tool that uses
this library. The formats it can handle include

- light markup formats (many variants of Markdown,
reStructuredText, AsciiDoc, Org-mode, Muse, Textile,
txt2tags)
- HTML formats (HTML 4 and 5)
- Ebook formats (EPUB v2 and v3, FB2)
- Documentation formats (GNU TexInfo, Haddock)
- Roff formats (man, ms)
- TeX formats (LaTeX, ConTeXt)
- XML formats (DocBook 4 and 5, JATS, TEI Simple, OpenDocument)
- Outline formats (OPML)
- Bibliography formats (BibTeX, BibLaTeX, CSL JSON, CSL YAML,
RIS)
- Word processor formats (Docx, RTF, ODT)
- Interactive notebook formats (Jupyter notebook ipynb)
- Page layout formats (InDesign ICML)
- Wiki markup formats (MediaWiki, DokuWiki, TikiWiki, TWiki,
Vimwiki, XWiki, ZimWiki, Jira wiki, Creole)
- Slide show formats (LaTeX Beamer, PowerPoint, Slidy,
reveal.js, Slideous, S5, DZSlides)
- Data formats (CSV and TSV tables)
- PDF (via external programs such as pdflatex or wkhtmltopdf)

Pandoc can convert mathematical content in documents
between TeX, MathML, Word equations, roff eqn, and plain text.
It includes a powerful system for automatic citations
and bibliographies, and it can be customized extensively
using templates, filters, and custom readers and writers
written in Lua.")
    (license license:gpl2+)))

haskell-9.2-pandoc

(define-public haskell-9.2-pantry
  (package
    (name "haskell-9.2-pantry")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pantry/pantry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cck09972pv2kz6kpg631rxfqwy92g4ibngfjy0bkp2xfadcg6ci"))))
    (properties `((upstream-name . "pantry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-casa-client)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-casa-types)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-digest)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-filelock)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hackage-security)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hpack)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-download)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-persistent-sqlite)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-persistent-template)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-rio-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-rio-prettyprint)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tar-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-metrics)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-zip-archive)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/commercialhaskell/pantry#readme")
    (synopsis "Content addressable Haskell package management")
    (description
     "Please see the README on GitHub at <https://github.com/commercialhaskell/pantry#readme>")
    (license license:bsd-3)))

haskell-9.2-pantry

(define-public haskell-9.2-pdc
  (package
    (name "haskell-9.2-pdc")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pdc/pdc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1013nvvsrajjp38kb78gzhkjgav80lrlq966nijxhqd4k6bsm7qc"))))
    (properties `((upstream-name . "pdc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-query)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/pdc")
    (synopsis "Fedora Product Definition Center service")
    (description "A http query library for Fedora's PDC service.")
    (license license:expat)))

haskell-9.2-pdc

(define-public haskell-9.2-pkgtreediff
  (package
    (name "haskell-9.2-pkgtreediff")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pkgtreediff/pkgtreediff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n7dvv0c2hx90hv7fm1crhl8wn3krryv602msa7klzdl9syd9s1f"))))
    (properties `((upstream-name . "pkgtreediff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-directory)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-koji)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-rpm-nvr)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-simple-cmd)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/pkgtreediff")
    (synopsis "RPM package tree diff tool")
    (description "Tool for comparing RPM packages and version-releases
in OS dist trees or instances.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-pkgtreediff

(define-public haskell-9.2-polysemy-webserver
  (package
    (name "haskell-9.2-polysemy-webserver")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-webserver/polysemy-webserver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "126c4bw0gj9knvqn67yldzy90cp08hmc70ip85vsfl3njd0ayj33"))))
    (properties `((upstream-name . "polysemy-webserver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-polysemy)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-polysemy-plugin)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-wai-websockets)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/polysemy-webserver")
    (synopsis "Start web servers from within a Polysemy effect stack")
    (description
     "Please see the README on GitLab at <https://gitlab.com/A1kmm/polysemy-webserver/-/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.2-polysemy-webserver

(define-public haskell-9.2-servant-JuicyPixels
  (package
    (name "haskell-9.2-servant-JuicyPixels")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-JuicyPixels/servant-JuicyPixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mi9b84myy3sg35xxrna5pwjwkn51v0xsd300ssvy8xaj4k96wjk"))))
    (properties `((upstream-name . "servant-JuicyPixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tvh/servant-JuicyPixels")
    (synopsis "Servant support for JuicyPixels")
    (description
     "Provides content types for image types supported by JuicyPixels")
    (license license:bsd-3)))

haskell-9.2-servant-JuicyPixels

(define-public haskell-9.2-servant-auth-server
  (package
    (name "haskell-9.2-servant-auth-server")
    (version "0.4.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-server/servant-auth-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m145xxqg1xy7i1br9yfh3avwkb30zh808nr658ljl7j2imlknj2"))))
    (properties `((upstream-name . "servant-auth-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1qcgm2pqi5qjqk27632h69j8ishls6cby8gghvww73wi63fqii9n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-jose)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-monad-time)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-servant-auth)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/haskell-servant/servant/servant-auth#readme")
    (synopsis "servant-server/servant-auth compatibility")
    (description
     "This package provides the required instances for using the @@Auth@@ combinator
in your 'servant' server.

Both cookie- and token- (REST API) based authentication is provided.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-9.2-servant-auth-server

(define-public haskell-9.2-servant-auth-wordpress
  (package
    (name "haskell-9.2-servant-auth-wordpress")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-wordpress/servant-auth-wordpress-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j4n5anlw3a2cgclmyblg01dcls91hzlmxgc2jkcdpwd49i0pv5n"))))
    (properties `((upstream-name . "servant-auth-wordpress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0d3sy1i3jcknfgca13a9ajjr65rpam2rahw0634rnmx0wdd30s0w")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-wordpress-auth)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/wordpress-auth#readme")
    (synopsis "Authenticate Routes Using Wordpress Cookies")
    (description
     "This package provides a Servant AuthHandler that validates Wordpress's @@LOGGED_IN@@ authentication Cookie & the @@wp_rest@@ Nonce, returning either an Authorized user with data or an Anonymous user, or calling an error handler.

This allows you to access the currently logged in User when making AJAX requests from a Wordpress site.

Check out the @@wordpress-auth@@ package for lower-level Wordpress Cookie & Nonce manipulation.")
    (license license:bsd-3)))

haskell-9.2-servant-auth-wordpress

(define-public haskell-9.2-servant-blaze
  (package
    (name "haskell-9.2-servant-blaze")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-blaze/servant-blaze-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08fvy904mz5xjqda702kq4ch25m3nda1yhpp4g7i62j0jmxs2ji6"))))
    (properties `((upstream-name . "servant-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y38lzmh5jr3bix0cqrcx9zkjdr1598hz7rvpnm827qw0ln3cmra")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Blaze-html support for servant")
    (description "Servant support for blaze-html

'HTML' content type which will use `ToMarkup` class.")
    (license license:bsd-3)))

haskell-9.2-servant-blaze

(define-public haskell-9.2-servant-cassava
  (package
    (name "haskell-9.2-servant-cassava")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-cassava/servant-cassava-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g2d6gvy21mfxl4f0slqxm7jrapqs47m9n615gijmb536i8csfq1"))))
    (properties `((upstream-name . "servant-cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant CSV content-type for cassava")
    (description "Servant CSV content-type for cassava.")
    (license license:bsd-3)))

haskell-9.2-servant-cassava

(define-public haskell-9.2-servant-client
  (package
    (name "haskell-9.2-servant-client")
    (version "0.19")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client/servant-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bdapsr6il0f019ss8wsxndpc8cd5czj40xczay5qhl7fqnxg5pa"))))
    (properties `((upstream-name . "servant-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0j2i3fvqkhf80hada6vga3674z3bnnl1n3k655alfwnxl7zlgppa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-client-core)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-sop-core)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tdigest)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Automatic derivation of querying functions for servant")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.2-servant-client

(define-public haskell-9.2-servant-exceptions-server
  (package
    (name "haskell-9.2-servant-exceptions-server")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-exceptions-server/servant-exceptions-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cx9d2hx09mx1kypdhwyqhl6s1aipvxi4ak4xy4jrd0fy8r8wy9g"))))
    (properties `((upstream-name . "servant-exceptions-server")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ch1bo/servant-exceptions#readme")
    (synopsis "Extensible exceptions for servant API servers")
    (description
     "`servant-exceptions-server` provides the `servant-server` related
parts for `servant-exceptions`. Namely it catches
declared exceptions and renders responses using the
handler content-type.")
    (license license:bsd-3)))

haskell-9.2-servant-exceptions-server

(define-public haskell-9.2-servant-http-streams
  (package
    (name "haskell-9.2-servant-http-streams")
    (version "0.18.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-http-streams/servant-http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15f24rcgz839cb38q4gs1liqrdyqjbazcqzjdxmv4307x072pv3a"))))
    (properties `((upstream-name . "servant-http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1v3lgfsn8611hnvf34l79mrp77ag40xyw2r26bbq6d7hbg2l2jn5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-common)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-streams)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-client-core)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tdigest)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Automatic derivation of querying functions for servant")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.2-servant-http-streams

(define-public haskell-9.2-servant-lucid
  (package
    (name "haskell-9.2-servant-lucid")
    (version "0.9.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-lucid/servant-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yhxj62hhqk0269wk3062dpb39qp7khz1gjqyqqmzfbb4v5x8mfz"))))
    (properties `((upstream-name . "servant-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant support for lucid")
    (description
     "Servant support for lucid.

'HTML' content type which will use `ToHtml` class.

Lucid.Servant uses `Link` rather than `Text` for safe 'href' attributes.")
    (license license:bsd-3)))

haskell-9.2-servant-lucid

(define-public haskell-9.2-servant-multipart
  (package
    (name "haskell-9.2-servant-multipart")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-multipart/servant-multipart-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p55kb3zhq25ncp7wimhggssn68abfgsnlldk13rk1iajaj6y8y5"))))
    (properties `((upstream-name . "servant-multipart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0z4n3a1cdb082nwh3ig68wjk617cvwpq0n9ivsab55nvsr2wsm8q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-docs)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-foreign)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-multipart-api)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-tasty-wai)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-servant/servant-multipart#readme")
    (synopsis "multipart/form-data (e.g file upload) support for servant")
    (description
     "This package adds server-side support of file upload to the servant ecosystem.")
    (license license:bsd-3)))

haskell-9.2-servant-multipart

(define-public haskell-9.2-servant-subscriber
  (package
    (name "haskell-9.2-servant-subscriber")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-subscriber/servant-subscriber-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c1g6jx36n5n5qjw82854vkbg7mavmrj7vz97vc1zzk5w54wsj8k"))))
    (properties `((upstream-name . "servant-subscriber") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwebsockets_0_11")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage021)
                     haskell-9.2-monad-logger)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-purescript-bridge)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-foreign)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-wai-websockets)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/eskimor/servant-subscriber#readme")
    (synopsis "When REST is not enough ...")
    (description
     "WebSocket based extension for your servant REST API which allows users to subscribe to change events.")
    (license license:bsd-3)))

haskell-9.2-servant-subscriber

(define-public haskell-9.2-servant-websockets
  (package
    (name "haskell-9.2-servant-websockets")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-websockets/servant-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xs3psnmihxm37lgamn4i8lff75yb9rvsjnav7c959h1b9fjn9n4"))))
    (properties `((upstream-name . "servant-websockets") (hidden? . #f)))
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
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-servant-server)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-wai-websockets)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/moesenle/servant-websockets#readme")
    (synopsis "Small library providing WebSocket endpoints for servant.")
    (description "Small library providing WebSocket endpoints for servant.")
    (license license:bsd-3)))

haskell-9.2-servant-websockets

(define-public haskell-9.2-stripe-scotty
  (package
    (name "haskell-9.2-stripe-scotty")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-scotty/stripe-scotty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "123l1khqd0ilcihrij1givz4lg2jns2r2iyf90yjh7zdva1xf507"))))
    (properties `((upstream-name . "stripe-scotty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rr2vyw1vpa4psxqq2x9lsp67lgm0pylmnsnixm681qa6pykjnhr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-scotty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stripe-concepts)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-stripe-signature)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/typeclasses/stripe")
    (synopsis "Listen for Stripe webhook events with Scotty")
    (description "This package provides support for writing a
<https://stripe.com/ Stripe> webhook server using
<https://hackage.haskell.org/package/scotty Scotty>.")
    (license license:expat)))

haskell-9.2-stripe-scotty

(define-public haskell-9.2-tmp-proc-postgres
  (package
    (name "haskell-9.2-tmp-proc-postgres")
    (version "0.5.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-proc-postgres/tmp-proc-postgres-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h8c5rv4i85z173mx2d2bw2ipzwjs04lrlc45249l26f6p4nlr9p"))))
    (properties `((upstream-name . "tmp-proc-postgres") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-hspec-tmp-proc)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-tmp-proc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/tmp-proc-postgres")
    (synopsis "Shows how to run a PostgreSQL database as a tmp proc")
    (description
     "An example of using tmp-proc to launch dockerized PostgreSQL in integration tests.")
    (license license:bsd-3)))

haskell-9.2-tmp-proc-postgres

(define-public haskell-9.2-tmp-proc-rabbitmq
  (package
    (name "haskell-9.2-tmp-proc-rabbitmq")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-proc-rabbitmq/tmp-proc-rabbitmq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kysd1li7qaczdiqxbcmhxjq97h6xkjcyz0qhkwfy424x1dd6m3d"))))
    (properties `((upstream-name . "tmp-proc-rabbitmq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-amqp)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-hspec-tmp-proc)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-tmp-proc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/tmp-proc-rabbitmq")
    (synopsis "Shows how to run RabbitMQ as a tmp proc")
    (description
     "An example of using tmp-proc to launch dockerized RabbitMQ in integration tests.")
    (license license:bsd-3)))

haskell-9.2-tmp-proc-rabbitmq

(define-public haskell-9.2-tmp-proc-redis
  (package
    (name "haskell-9.2-tmp-proc-redis")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmp-proc-redis/tmp-proc-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1602z1sx9gl0ca3wfq48k1rnxl93fb99zp6m49mbyd8l2gfijf5c"))))
    (properties `((upstream-name . "tmp-proc-redis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hedis)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-hspec-tmp-proc)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-tmp-proc)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/tmp-proc-redis")
    (synopsis "Shows how to run redis as a tmp proc")
    (description
     "An example of using tmp-proc to launch dockerized redis in integration tests.")
    (license license:bsd-3)))

haskell-9.2-tmp-proc-redis

(define-public haskell-9.2-wai-middleware-metrics
  (package
    (name "haskell-9.2-wai-middleware-metrics")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-metrics/wai-middleware-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x7c53lqbf55p3ba6naj9xwjz07k4gf0ql3bjlb6vfph92kqadp7"))))
    (properties `((upstream-name . "wai-middleware-metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ekg-core)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-scotty)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Helkafen/wai-middleware-metrics")
    (synopsis "A WAI middleware to collect EKG request metrics")
    (description
     "This WAI middleware counts the number of requests, the number of responses by status code and keeps a latency distribution.

It can be added to any WAI-based webserver, such as Yesod, Scotty, Spock and Servant.

The counters are EKG Counters from ekg-core. <https://ocharles.org.uk/blog/posts/2012-12-11-24-day-of-hackage-ekg.html>")
    (license license:bsd-3)))

haskell-9.2-wai-middleware-metrics

(define-public haskell-9.2-wai-middleware-static
  (package
    (name "haskell-9.2-wai-middleware-static")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-static/wai-middleware-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ynm0xcr3pj5bbph78p1kpyxvd0n3a0gfdbm6yb7i004ixaqf33c"))))
    (properties `((upstream-name . "wai-middleware-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zran8wpwizrwdw23a5qckmiplyk6xf2z8x4his0ipfy2zzl5ql6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-expiring-cache-map)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-hspec-expectations-lifted)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-hspec-wai)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-mockery)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-scotty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/scotty-web/wai-middleware-static")
    (synopsis "WAI middleware that serves requests to static files.")
    (description
     "WAI middleware that intercepts requests to static files and serves them
if they exist.

[WAI] <http://hackage.haskell.org/package/wai>")
    (license license:bsd-3)))

haskell-9.2-wai-middleware-static

(define-public haskell-9.2-webex-teams-conduit
  (package
    (name "haskell-9.2-webex-teams-conduit")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-conduit/webex-teams-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ig4krcvc256lyrqvj6g4kjklln5m7sm44c4bvbgkgr3lmrpfkr7"))))
    (properties `((upstream-name . "webex-teams-conduit") (hidden? . #f)))
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
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Conduit wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-9.2-webex-teams-conduit

(define-public haskell-9.2-yesod-bin
  (package
    (name "haskell-9.2-yesod-bin")
    (version "1.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-bin/yesod-bin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18bnr7wjcb5w8v62gfkrx7ky35agbkwl8f8vn2cdbjksa6wsllvr"))))
    (properties `((upstream-name . "yesod-bin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07zc0jf8gpv1zhyglgq2xj89jl6rc22mjv2v2k8lywlm8i5vjvdm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-project-template)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-say)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-tar)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-wai-extra)
                  (@ (gnu packages stackage ghc-9.2 stage022) haskell-9.2-warp)
                  (@ (gnu packages stackage ghc-9.2 stage023)
                     haskell-9.2-warp-tls)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "The yesod helper executable.")
    (description "See README.md for more information")
    (license license:expat)))

haskell-9.2-yesod-bin

(define-public haskell-9.2-yesod-fb
  (package
    (name "haskell-9.2-yesod-fb")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-fb/yesod-fb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nyi5jp85ysabljkds6h4w8ndrb12ac76awsih52amf60k4n7afl"))))
    (properties `((upstream-name . "yesod-fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage025) haskell-9.2-fb)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-http-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/yesod-fb")
    (synopsis "Useful glue functions between the fb library and Yesod.")
    (description "This package contains useful glue functions between the fb
package (<http://hackage.haskell.org/package/fb>) and Yesod.
These functions can't be included on the fb package itself
because it should not depend on Yesod.")
    (license license:bsd-3)))

haskell-9.2-yesod-fb

(define-public haskell-9.2-yesod-form
  (package
    (name "haskell-9.2-yesod-form")
    (version "1.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form/yesod-form-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10y3mfh96sicqyzngvl7f4wrjgkvl3znqnh71s8gx1vf7158sjww"))))
    (properties `((upstream-name . "yesod-form") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-byteable)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-email-validate)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage022)
                     haskell-9.2-persistent)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-xss-sanitize)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Form handling support for Yesod Web Framework")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-form>.  Third-party packages which you can find useful: <http://hackage.haskell.org/package/yesod-form-richtext yesod-form-richtext> - richtext form fields (currently it provides only Summernote support).")
    (license license:expat)))

haskell-9.2-yesod-form

(define-public haskell-9.2-yesod-websockets
  (package
    (name "haskell-9.2-yesod-websockets")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-websockets/yesod-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hm4qzn0kqwl7mfvhgc1h1xbpj80fnkfbh5r3k9c52n5dmcapy6n"))))
    (properties `((upstream-name . "yesod-websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage025)
                     haskell-9.2-wai-websockets)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)
                  (@ (gnu packages stackage ghc-9.2 stage024)
                     haskell-9.2-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/yesodweb/yesod")
    (synopsis "WebSockets support for Yesod")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-websockets>")
    (license license:expat)))

haskell-9.2-yesod-websockets

