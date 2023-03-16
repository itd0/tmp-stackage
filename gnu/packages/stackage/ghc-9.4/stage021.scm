;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage021)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.4-async-refresh
  (package
    (name "haskell-9.4-async-refresh")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-refresh/async-refresh-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j9llc84f93srw80pyldcglzmssl0l961bzlwsrvbaa84ldhcs6s"))))
    (properties `((upstream-name . "async-refresh") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-criterion)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-formatting)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lifted-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtesseract/async-refresh")
    (synopsis
     "Package implementing core logic for refreshing of expiring data.")
    (description
     "This package can be used for refreshing of expiring data according
to a user-provided action. Using callbacks, the user can decide
how she or he would like to be informed about data refreshing.")
    (license license:bsd-3)))

haskell-9.4-async-refresh

(define-public haskell-9.4-detour-via-sci
  (package
    (name "haskell-9.4-detour-via-sci")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/detour-via-sci/detour-via-sci-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r417lp98k0nizlxh7r74c2c4g1ij33pk5ip0bm7ssmzyya127j5"))))
    (properties `((upstream-name . "detour-via-sci") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "00dj8vf9gg9ww37sir6mblf3xhcpam8qgfz5bfana23arhf2cixj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-newtype)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-siggy-chardust)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/blockscope/flare-timing/tree/master/detour-via-sci#readme")
    (synopsis "JSON and CSV encoding for rationals as decimal point numbers.")
    (description
     "Lossy JSON and CSV encoding and decoding for newtype rationals via scientific with fixed decimal places.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.4-detour-via-sci

(define-public haskell-9.4-dhall-yaml
  (package
    (name "haskell-9.4-dhall-yaml")
    (version "1.2.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-yaml/dhall-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iqn9gign1y9cysdghxip4gpcp3x4knirlnm3mkin7zbr9hhxflh"))))
    (properties `((upstream-name . "dhall-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0h7fzbx3fndfgh3afsa2gjj4zqcmdh43afzr9whxdk5n0l9cn02r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-HsYAML)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-dhall)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-dhall-json)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-yaml")
    (synopsis "Convert between Dhall and YAML")
    (description
     "Use this package if you want to convert between Dhall expressions and YAML.
You can use this package as a library or an executable:

* See the \"Dhall.Yaml\" module if you want to use this package as a library

* Use the @@dhall-to-yaml-ng@@ program from this package if you want an executable")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-dhall-yaml

(define-public haskell-9.4-domain-aeson
  (package
    (name "haskell-9.4-domain-aeson")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/domain-aeson/domain-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08kc4j9bs2nmkd7ddnygw9rjm25z6js1y9fmhisc5kjhf26cbwm2"))))
    (properties `((upstream-name . "domain-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-domain)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-domain-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-th-lego)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-aeson")
    (synopsis "Integration of domain with aeson")
    (description "")
    (license license:expat)))

haskell-9.4-domain-aeson

(define-public haskell-9.4-domain-cereal
  (package
    (name "haskell-9.4-domain-cereal")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/domain-cereal/domain-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ap4rrkhp5ggwy5fjwhg0v4ii1ayxf6w7ary2k8jc82v46bpl5is"))))
    (properties `((upstream-name . "domain-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cereal-text)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-domain)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-domain-core)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-leb128-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-th-lego)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-cereal")
    (synopsis "Integration of domain with cereal")
    (description "")
    (license license:expat)))

haskell-9.4-domain-cereal

(define-public haskell-9.4-eventstore
  (package
    (name "haskell-9.4-eventstore")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventstore/eventstore-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1g11asiwnqkzfvflcz0va28kj8b89h5890c9zsa2as9kzgb7zdmr"))))
    (properties `((upstream-name . "eventstore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-dns)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-dotnet-timespan)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lifted-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-protobuf)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stm-chans)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/EventStore/EventStoreDB-Client-Haskell")
    (synopsis "EventStore TCP Client")
    (description "EventStore TCP Client <https://eventstore.com>")
    (license license:bsd-3)))

haskell-9.4-eventstore

(define-public haskell-9.4-genvalidity-sydtest
  (package
    (name "haskell-9.4-genvalidity-sydtest")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest/genvalidity-sydtest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11v66s8srcfigb4jkvz7nm0ynczg8mdslw4vn98qyv2j85sp6l45"))))
    (properties `((upstream-name . "genvalidity-sydtest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis
     "Standard properties for functions on `Validity` types for the sydtest framework")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-sydtest

(define-public haskell-9.4-gi-cairo-connector
  (package
    (name "haskell-9.4-gi-cairo-connector")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo-connector/gi-cairo-connector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jkca1x0dlyfwyywn6gmsnxhyad3j7vfwa0c4hpvx8k8m350dn3c"))))
    (properties `((upstream-name . "gi-cairo-connector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-cairo)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-gi-cairo-render)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cohomology/gi-cairo-render")
    (synopsis "GI friendly Binding to the Cairo library.")
    (description
     "This library contains glue code used to interconnect Haskell GI and Cairo")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-cairo-connector

(define-public haskell-9.4-gi-gmodule
  (package
    (name "haskell-9.4-gi-gmodule")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gmodule/gi-gmodule-" version
                    ".tar.gz"))
              (sha256
               (base32
                "043n3nyxy29chzc7xzhinp40yxazlikqcjdbm3pvh344jv7m5xjx"))))
    (properties `((upstream-name . "gi-gmodule") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GModule bindings")
    (description "Bindings for GModule, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-gmodule

(define-public haskell-9.4-gi-gobject
  (package
    (name "haskell-9.4-gi-gobject")
    (version "2.0.28")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gobject/gi-gobject-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0av574yvvbky1pm187fmjkmy52lssvv74zad30818qbkzpkwfdx8"))))
    (properties `((upstream-name . "gi-gobject") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-gi-glib)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-haskell-gi)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GObject bindings")
    (description "Bindings for GObject, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.4-gi-gobject

(define-public haskell-9.4-haskoin-node
  (package
    (name "haskell-9.4-haskoin-node")
    (version "0.18.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskoin-node/haskoin-node-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sfrcckq345i2m7p1p39l72c83aga8z27jgk996nch1zamj5kx6d"))))
    (properties `((upstream-name . "haskoin-node") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-haskoin-core)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-nqe)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-rocksdb-haskell-jprupp)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-rocksdb-query)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) rocksdb)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/haskoin/haskoin#readme")
    (synopsis "P2P library for Bitcoin and Bitcoin Cash")
    (description
     "Please see the README on GitHub at <https://github.com/haskoin/haskoin-node#readme>")
    (license license:expat)))

haskell-9.4-haskoin-node

(define-public haskell-9.4-hasql-implicits
  (package
    (name "haskell-9.4-hasql-implicits")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-implicits/hasql-implicits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10mfl1sa23zv7hgc0k1xykjxgrs4qjlmwdkxw38y0wn9b7zzpnlh"))))
    (properties `((upstream-name . "hasql-implicits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-ip)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-implicits")
    (synopsis
     "Implicit definitions for Hasql, such as default codecs for standard types")
    (description "")
    (license license:expat)))

haskell-9.4-hasql-implicits

(define-public haskell-9.4-hasql-interpolate
  (package
    (name "haskell-9.4-hasql-interpolate")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-interpolate/hasql-interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b3q21m25wxjxrprfr24b2ay94yjjaqs0p2x6s1d9cqagmznh9v0"))))
    (properties `((upstream-name . "hasql-interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/awkward-squad/hasql-interpolate")
    (synopsis "QuasiQuoter that supports expression interpolation for hasql")
    (description
     "@@hasql-interpolate@@ provides a sql QuasiQuoter for hasql that
supports interpolation of haskell expressions and splicing of sql
snippets. A number of type classes are also provided to reduce
encoder/decoder boilerplate.")
    (license license:bsd-3)))

haskell-9.4-hasql-interpolate

(define-public haskell-9.4-hasql-pool
  (package
    (name "haskell-9.4-hasql-pool")
    (version "0.8.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-pool/hasql-pool-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0scpgynr20j8qkhi5gjl0mh7iq713vz7r1zr4xa0jv0s2nd14j2v"))))
    (properties `((upstream-name . "hasql-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-pool")
    (synopsis "Pool of connections for Hasql")
    (description "")
    (license license:expat)))

haskell-9.4-hasql-pool

(define-public haskell-9.4-hasql-queue
  (package
    (name "haskell-9.4-hasql-queue")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-queue/hasql-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d8ylf92ydhg12v2rjxxnijzjkkpmws0r1nnxm63w5arwz947n5m"))))
    (properties `((upstream-name . "hasql-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-here)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-postgresql-libpq-notify)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-tmp-postgres)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/hasql-queue#readme")
    (synopsis "A PostgreSQL backed queue")
    (description "A PostgreSQL backed queue. Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hasql-queue

(define-public haskell-9.4-hasql-th
  (package
    (name "haskell-9.4-hasql-th")
    (version "0.4.0.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-th/hasql-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z88skdk0i6rnwdqpy06yrhandaldll468kbkd4ilcf7fbwwk06v"))))
    (properties `((upstream-name . "hasql-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-postgresql-syntax)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-th")
    (synopsis "Template Haskell utilities for Hasql")
    (description
     "Extension-library for Hasql,
bringing compile-time syntax checking,
great simplification of declaration of statements and
other TemplateHaskell-based utilities.

For details please see <https://github.com/nikita-volkov/hasql-th the readme>.")
    (license license:expat)))

haskell-9.4-hasql-th

(define-public haskell-9.4-hasql-transaction
  (package
    (name "haskell-9.4-hasql-transaction")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-transaction/hasql-transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wqvxjrjgrmnbbassayyixa4sa5qw5iwwcrh5yz65dw20qf7m9rs"))))
    (properties `((upstream-name . "hasql-transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bytestring-tree-builder)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-contravariant-extras)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-hasql)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql-transaction")
    (synopsis "Composable abstraction over retryable transactions for Hasql")
    (description "")
    (license license:expat)))

haskell-9.4-hasql-transaction

(define-public haskell-9.4-hpack-dhall
  (package
    (name "haskell-9.4-hpack-dhall")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpack-dhall/hpack-dhall-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hwq3painl4ix7pldkzi5a8zakh9f67kcyabfbdky8b49dc5703r"))))
    (properties `((upstream-name . "hpack-dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-dhall)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-dhall-json)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-hpack)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage018) haskell-9.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cabalism/hpack-dhall#readme")
    (synopsis "hpack's dhalling")
    (description
     "Use hpack phrasing in dhall to write cabal files.

There are two main reasons why you'd use hpack-dhall, convenience and safety.

Get the convenience of hpack. Don't bother to state what can be inferred or
defaulted, easing the burden of completing a package description by hand.  For
example `other-modules` can be inferred by taking the set difference between
modules on disk and the set of `exposed-modules`.

Get the safety of dhall's programmable configuration: typed fields, safe imports
and functions.")
    (license license:bsd-3)))

haskell-9.4-hpack-dhall

(define-public haskell-9.4-json-rpc
  (package
    (name "haskell-9.4-json-rpc")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-rpc/json-rpc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "195llnb2gz0hm0pmax3mlkyiy4l3bk9d4jjxl4yrgj5hd0pf4g2s"))))
    (properties `((upstream-name . "json-rpc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-conduit-extra)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-stm-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jprupp/json-rpc.git#readme")
    (synopsis "Fully-featured JSON-RPC 2.0 library")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/json-rpc#readme>")
    (license license:expat)))

haskell-9.4-json-rpc

(define-public haskell-9.4-lsp-test
  (package
    (name "haskell-9.4-lsp-test")
    (version "0.14.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lsp-test/lsp-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0db4mpzn05k3isk1a3rdpqr7if9j0kr3bxdri9739q9a8azf4fp1"))))
    (properties `((upstream-name . "lsp-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-co-log-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-conduit-parse)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-lsp)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lsp-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-some)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp/blob/master/lsp-test/README.md")
    (synopsis "Functional test framework for LSP servers.")
    (description
     "A test framework for writing tests against
<https://microsoft.github.io/language-server-protocol/ Language Server Protocol servers>.
@@Language.LSP.Test@@ launches your server as a subprocess and allows you to simulate a session
down to the wire.
To see examples of it in action, check out <https://github.com/haskell/haskell-ide-engine haskell-ide-engine>,
<https://github.com/haskell/haskell-language-server haskell-language-server> and
<https://github.com/digital-asset/ghcide ghcide>.")
    (license license:bsd-3)))

haskell-9.4-lsp-test

(define-public haskell-9.4-monad-logger-aeson
  (package
    (name "haskell-9.4-monad-logger-aeson")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-aeson/monad-logger-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z0r0xkd8i9nw9jlzb7m50m2qi48mf6v26h533jn91yw6gi830r0"))))
    (properties `((upstream-name . "monad-logger-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-aeson-diff)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-context)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jship/monad-logger-aeson#readme")
    (synopsis "JSON logging using monad-logger interface")
    (description
     "@@monad-logger-aeson@@ provides structured JSON logging using @@monad-logger@@'s
interface.

Specifically, it is intended to be a (largely) drop-in replacement for
@@monad-logger@@'s \"Control.Monad.Logger.CallStack\" module.")
    (license license:expat)))

haskell-9.4-monad-logger-aeson

(define-public haskell-9.4-monad-logger-json
  (package
    (name "haskell-9.4-monad-logger-json")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-json/monad-logger-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ap98487lwgvgrrxkjskga86ckbv6rhn2n6pzp403343xx51r1qh"))))
    (properties `((upstream-name . "monad-logger-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/fpco/monad-logger-json")
    (synopsis "JSON-friendly Logging APIs")
    (description "Convienence functions for logging ToJSON with monad-logger")
    (license license:expat)))

haskell-9.4-monad-logger-json

(define-public haskell-9.4-monad-logger-logstash
  (package
    (name "haskell-9.4-monad-logger-logstash")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-logstash/monad-logger-logstash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f0376s3xmrd0gqz0laxbqsh3h4g12bk0v885ik648bxwaliq2zf"))))
    (properties `((upstream-name . "monad-logger-logstash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-logstash)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-retry)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stm-chans)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/logstash#readme")
    (synopsis "Logstash backend for monad-logger.")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>")
    (license license:expat)))

haskell-9.4-monad-logger-logstash

(define-public haskell-9.4-network-messagepack-rpc-websocket
  (package
    (name "haskell-9.4-network-messagepack-rpc-websocket")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-messagepack-rpc-websocket/network-messagepack-rpc-websocket-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0adkav3nl7ghbx2r7dx83ki6m397clxaw37s54ivnkxydqscjv06"))))
    (properties `((upstream-name . "network-messagepack-rpc-websocket")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-data-msgpack)
                  (@ (gnu packages stackage ghc-9.4 stage010) haskell-9.4-envy)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-network-messagepack-rpc)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-skews)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-websockets)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-wss-client)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc-websocket")
    (synopsis "WebSocket backend for MessagePack RPC")
    (description "WebSocket backend for \"network-messagepack-rpc\"")
    (license license:bsd-3)))

haskell-9.4-network-messagepack-rpc-websocket

(define-public haskell-9.4-persistent
  (package
    (name "haskell-9.4-persistent")
    (version "2.14.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent/persistent-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10i75da5rd5ydg17x93i3jkfx51cywxn37l4km1lr9p35lzhyfa3"))))
    (properties `((upstream-name . "persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-lift-type)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-path-pieces)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-resource-pool)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Type-safe, multi-backend data serialization.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent>.")
    (license license:expat)))

haskell-9.4-persistent

(define-public haskell-9.4-pipes-mongodb
  (package
    (name "haskell-9.4-pipes-mongodb")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-mongodb/pipes-mongodb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h4334fajrza7r8jrr78nqhs522kxnbzdj0gnbp7ndvzvx5ij888"))))
    (properties `((upstream-name . "pipes-mongodb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-mongoDB)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jb55/pipes-mongodb")
    (synopsis "Stream results from MongoDB")
    (description "Stream results from MongoDB")
    (license license:expat)))

haskell-9.4-pipes-mongodb

(define-public haskell-9.4-rio-orphans
  (package
    (name "haskell-9.4-rio-orphans")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-orphans/rio-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vwc7ar9kiagvs5bywkh8x17kd02ra3zhd1mmsdwnl1p96bcshrw"))))
    (properties `((upstream-name . "rio-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-fast-logger)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/commercialhaskell/rio#readme")
    (synopsis "Orphan instances for the RIO type in the rio package")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/rio-orphans>")
    (license license:expat)))

haskell-9.4-rio-orphans

(define-public haskell-9.4-sandwich
  (package
    (name "haskell-9.4-sandwich")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich/sandwich-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g1qyhp0w8gxyv60phm1apvq1p7cx7z6f9ijjx67gh7pk9mmlbzw"))))
    (properties `((upstream-name . "sandwich") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-brick)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lifted-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-monad-logger)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-string-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-vty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Yet another test framework for Haskell")
    (description
     "Please see the <https://codedownio.github.io/sandwich documentation>.")
    (license license:bsd-3)))

haskell-9.4-sandwich

(define-public haskell-9.4-skylighting
  (package
    (name "haskell-9.4-skylighting")
    (version "0.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting/skylighting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dh4k39ddqca5px2d06ni8n9x3mifvkwd5i16077l472dwjcs879"))))
    (properties `((upstream-name . "skylighting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-skylighting-core)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-skylighting-format-ansi)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-skylighting-format-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-skylighting-format-context)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-skylighting-format-latex)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "syntax highlighting library")
    (description "Skylighting is a syntax highlighting library with
support for over one hundred languages.  It derives
its tokenizers from XML syntax definitions used
by KDE's KSyntaxHighlighting framework, so any
syntax supported by that framework can be added.
An optional command-line program is provided.
Skylighting is intended to be the successor to
highlighting-kate.
This package provides generated syntax modules
based on the KDE XML definitions provided by the
@@skylighting-core@@ package. As a result this
package is licensed under the GPL.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-skylighting

(define-public haskell-9.4-slave-thread
  (package
    (name "haskell-9.4-slave-thread")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/slave-thread/slave-thread-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pbffrmwd975as495b5b4ad59rajgq1dmbvmp07zfb2rmwhpr5n8"))))
    (properties `((upstream-name . "slave-thread") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-deferred-folds)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-focus)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-stm-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/slave-thread")
    (synopsis "A fundamental solution to ghost threads and silent exceptions")
    (description
     "Vanilla thread management in Haskell is low level and
it does not approach the problems related to thread deaths.
When it's used naively the following typical problems arise:

* When a forked thread dies due to an uncaught exception,
the exception does not get raised in the main thread,
which is why the program continues to run as if nothing happened,
i.e., with the presumption that the already dead thread is running normally.
Naturally this may very well bring your program to a chaotic state.

* Another issue is that one thread dying does not
affect any of the threads forked from it.
That's why your program may be accumulating ghost threads.

* Ever dealt with your program ignoring the \\<Ctrl-C\\> strikes?

This library solves all the issues above with a concept of a slave thread.
A slave thread has the following properties:

1. When it dies for whatever reason (exception or finishing normally)
it kills all the slave threads that were forked from it.
This protects you from ghost threads.

2. It waits for all slaves to die and execute their finalizers
before executing its own finalizer and getting released itself.
This gives you hierarchical releasing of resources.

3. When a slave thread dies with an uncaught exception
it reraises it in the master thread.
This protects you from silent exceptions
and lets you be sure of getting informed
if your program gets brought to an erroneous state.")
    (license license:expat)))

haskell-9.4-slave-thread

(define-public haskell-9.4-sqlcli
  (package
    (name "haskell-9.4-sqlcli")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sqlcli/sqlcli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kscw8l14cx7q55vq72vg8ydfz19s41prdlbg9b11fhzv691iwgd"))))
    (properties `((upstream-name . "sqlcli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fodbc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-logging)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) unixodbc)))
    (home-page "http://hub.darcs.net/mihaigiurgeanu/sqlcli")
    (synopsis "Bindings for SQL/CLI (ODBC) C API.")
    (description
     "See [NEWS](https://hub.darcs.net/mihaigiurgeanu/sqlcli/browse/NEWS)
for the ChangeLog.
Provides bindings to all the SQL/CLI C API standard.
SQL/CLI C API is a subset of ODBC. You can use this package to
access databases through ODBC. It is tested on Windows, Linux
and Mac operating Systems whith Postgres, Oracle and SQLite.
This package also contains Haskell wrapers to the foreign C calls and
utilities to make using the SQL/CLI easier for the Haskell
programmer.
You can use this to acces any database through ODBC.")
    (license license:bsd-3)))

haskell-9.4-sqlcli

(define-public haskell-9.4-status-notifier-item
  (package
    (name "haskell-9.4-status-notifier-item")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/status-notifier-item/status-notifier-item-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x3zqa2b9vl5mirfbh2bmyali47jpfcqsw4xxgbmsgz9jiffpda9"))))
    (properties `((upstream-name . "status-notifier-item") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage017)
                     haskell-9.4-byte-order)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bytestring-to-vector)
                  (@ (gnu packages stackage ghc-9.4 stage019) haskell-9.4-dbus)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-dbus-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/status-notifier-item#readme")
    (synopsis
     "A wrapper over the StatusNotifierItem/libappindicator dbus specification")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/status-notifier-item#readme>")
    (license license:bsd-3)))

haskell-9.4-status-notifier-item

(define-public haskell-9.4-sydtest-aeson
  (package
    (name "haskell-9.4-sydtest-aeson")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-aeson/sydtest-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kidxlaw8snyzl0nq2vynjz179blh03cvg2qdjr5j521cjxxmwf8"))))
    (properties `((upstream-name . "sydtest-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An aeson companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-aeson

(define-public haskell-9.4-sydtest-autodocodec
  (package
    (name "haskell-9.4-sydtest-autodocodec")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-autodocodec/sydtest-autodocodec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11505pn0wqlny3nxc2z406fryir5isdg1yc0hx10xcyk6gsbm2m3"))))
    (properties `((upstream-name . "sydtest-autodocodec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-autodocodec-yaml)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An autodocodec companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-autodocodec

(define-public haskell-9.4-sydtest-hedgehog
  (package
    (name "haskell-9.4-sydtest-hedgehog")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-hedgehog/sydtest-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12yqhz927x2nzca3xg824a0rc3icz8hs088rci530s30wc7qpvlj"))))
    (properties `((upstream-name . "sydtest-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A Hedgehog companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-hedgehog

(define-public haskell-9.4-sydtest-process
  (package
    (name "haskell-9.4-sydtest-process")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-process/sydtest-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1afjwxq7bq4q0g5qznffxfn20ikxxmr7yywiksfyfnyh4n0a1zsf"))))
    (properties `((upstream-name . "sydtest-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A typed-process companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-process

(define-public haskell-9.4-sydtest-typed-process
  (package
    (name "haskell-9.4-sydtest-typed-process")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-typed-process/sydtest-typed-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j5x2liimaxnd1p7bhkd1ic9vccxdph431rq3dmzl3f440qb3rws"))))
    (properties `((upstream-name . "sydtest-typed-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-sydtest)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A typed-process companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-typed-process

(define-public haskell-9.4-warp
  (package
    (name "haskell-9.4-warp")
    (version "3.3.23")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/warp/warp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0y1r7czq5zrgklqrx1b9pmxn5lhmf7zpqdjz7hfmnzsmr3vndmms"))))
    (properties `((upstream-name . "warp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-network-bytestring" "-fallow-sendfilefd" "-f-warp-debug" "-fx509")
       #:cabal-revision
       ("1" "04akn70kmgmw7scapks11srfy44nqj9cy03qsp6rawlzwbxwk9id")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages curl) curl)))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-auto-update)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bsb-http-chunked)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-date)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage020)
                     haskell-9.4-http2)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010) haskell-9.4-recv)
                  (@ (gnu packages stackage ghc-9.4 stage018)
                     haskell-9.4-simple-sendfile)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage019)
                     haskell-9.4-time-manager)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-unix-compat)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "A fast, light-weight web server for WAI applications.")
    (description "HTTP\\/1.0, HTTP\\/1.1 and HTTP\\/2 are supported.
For HTTP\\/2,  Warp supports direct and ALPN (in TLS)
but not upgrade.
API docs and the README are available at
<http://www.stackage.org/package/warp>.")
    (license license:expat)))

haskell-9.4-warp

