;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage017)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.10))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.10-Color
  (package
    (name "haskell-8.10-Color")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Color/Color-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14sf71lhqc1w6s3p1k8a99xgzcwfnr3v5irvfkr09rvv7fd66nva"))))
    (properties `((upstream-name . "Color") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-massiv)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-massiv-test)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/lehins/Color")
    (synopsis "Color spaces and conversions between them")
    (description
     "Please see the README on GitHub at <https://github.com/lehins/Color#readme>")
    (license license:bsd-3)))

haskell-8.10-Color

(define-public haskell-8.10-arithmoi
  (package
    (name "haskell-8.10-arithmoi")
    (version "0.12.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/arithmoi/arithmoi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dsa0fw6z6b6gcsw23j08qayqyh2icya7gmb4v4r0adszr2p7ziz"))))
    (properties `((upstream-name . "arithmoi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-chimera)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-exact-pi)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-roots)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mod)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-quickcheck-classes)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semirings)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-rerun)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/arithmoi")
    (synopsis "Efficient basic number-theoretic functions.")
    (description "A library of basic functionality needed for
number-theoretic calculations. The aim of this library
is to provide efficient implementations of the functions.
Primes and related things (totients, factorisation),
powers (integer roots and tests, modular exponentiation).")
    (license license:expat)))

haskell-8.10-arithmoi

(define-public haskell-8.10-binary-conduit
  (package
    (name "haskell-8.10-binary-conduit")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-conduit/binary-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17yj8rn6fwzbv0z6lczrddv7mkr8906xg2pf2dlvmnwb97zw7004"))))
    (properties `((upstream-name . "binary-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/qnikst/binary-conduit/")
    (synopsis "data serialization/deserialization conduit library")
    (description
     "The binary-conduit package.
Allow binary serialization using iterative conduit interface.")
    (license license:expat)))

haskell-8.10-binary-conduit

(define-public haskell-8.10-binary-ext
  (package
    (name "haskell-8.10-binary-ext")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-ext/binary-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "026y58an12p6cmpxhs3qrwl6w4q3i6i47svcj5qz5mi6vsdy2n3f"))))
    (properties `((upstream-name . "binary-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/A1-Triard/binary-ext#readme")
    (synopsis
     "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.")
    (description
     "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-binary-ext

(define-public haskell-8.10-bins
  (package
    (name "haskell-8.10-bins")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bins/bins-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03pzpf8vw7d8cg8raqjpq9dz78r5qqczmjmyc2q5ax3ghcdzx0wa"))))
    (properties `((upstream-name . "bins") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-finite-typelits)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/bins#readme")
    (synopsis "Aggregate continuous values into discrete bins")
    (description
     "Please see the README on GitHub at <https://github.com/mstksg/bins#readme>")
    (license license:bsd-3)))

haskell-8.10-bins

(define-public haskell-8.10-bzlib-conduit
  (package
    (name "haskell-8.10-bzlib-conduit")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bzlib-conduit/bzlib-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a21zin5plsl37hkxh2jv8cxwyjrbs2fy7n5cyrzgdaa7lmp6b7b"))))
    (properties `((upstream-name . "bzlib-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)))
    (home-page "https://github.com/snoyberg/bzlib-conduit#readme")
    (synopsis "Streaming compression/decompression via conduits.")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/bzlib-conduit>")
    (license license:bsd-3)))

haskell-8.10-bzlib-conduit

(define-public haskell-8.10-cassava-conduit
  (package
    (name "haskell-8.10-cassava-conduit")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cassava-conduit/cassava-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "114ab0kxy7rj1hps1sy9i0mkj2lp046zjlpll2apmf3mxdminva0"))))
    (properties `((upstream-name . "cassava-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsmall_base")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)))
    (home-page "https://github.com/domdere/cassava-conduit")
    (synopsis "Conduit interface for cassava package")
    (description "Conduit interface for cassava package

PRs welcome.")
    (license license:bsd-3)))

haskell-8.10-cassava-conduit

(define-public haskell-8.10-cereal-conduit
  (package
    (name "haskell-8.10-cereal-conduit")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-conduit/cereal-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srr7agvgfw78q5s1npjq5sgynvhjgllpihiv37ylkwqm4c4ap6r"))))
    (properties `((upstream-name . "cereal-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1imyl3g2bni8bc6kajr857xh94fscphksj3286pxfpa8yp9vqqpc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits")
    (description
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits.")
    (license license:bsd-3)))

haskell-8.10-cereal-conduit

(define-public haskell-8.10-conduit-concurrent-map
  (package
    (name "haskell-8.10-conduit-concurrent-map")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-concurrent-map/conduit-concurrent-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rn7sry51xiz00hrs2vvqff18lnmmzyadrd858g1ixga76f44z2j"))))
    (properties `((upstream-name . "conduit-concurrent-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-say)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/nh2/conduit-concurrent-map")
    (synopsis "Concurrent, order-preserving mapping Conduit")
    (description
     "Provides a @@Conduit@@ that maps a function concurrently over incoming elements, maintaining input order.")
    (license license:expat)))

haskell-8.10-conduit-concurrent-map

(define-public haskell-8.10-conduit-extra
  (package
    (name "haskell-8.10-conduit-extra")
    (version "1.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-extra/conduit-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n8js1y1rdswvp0bkjmmz19fag19bdxgwsrqz93yc09w43p8sr4a"))))
    (properties `((upstream-name . "conduit-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0pkixzcwqfisn5dk44z67k5bwc60fr6d3fwjrlzpx6jdqsvbbbmg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Batteries included conduit: adapters for common libraries.")
    (description
     "The conduit package itself maintains relative small dependencies. The purpose of this package is to collect commonly used utility functions wrapping other library dependencies, without depending on heavier-weight dependencies. The basic idea is that this package should only depend on haskell-platform packages and conduit.")
    (license license:expat)))

haskell-8.10-conduit-extra

(define-public haskell-8.10-conduit-parse
  (package
    (name "haskell-8.10-conduit-parse")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-parse/conduit-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qfs61qhbr5gc0ch0mmqcqdm4wvs5pkx2z6rki588fhy1kfdp1dm"))))
    (properties `((upstream-name . "conduit-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("2" "0134k9wi1ladmzd1rmb1gad6ig82pqsyb9d30z301anvb99473kz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)))
    (home-page "https://github.com/k0ral/conduit-parse")
    (synopsis "Parsing framework based on conduit.")
    (description "Please refer to README.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-conduit-parse

(define-public haskell-8.10-conduit-zstd
  (package
    (name "haskell-8.10-conduit-zstd")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-zstd/conduit-zstd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f0ir4zs3skw33c8mfppxhfsyqh1c2cnc4gkf8bvv3bdiikdj1yl"))))
    (properties `((upstream-name . "conduit-zstd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zstd)))
    (home-page "https://github.com/luispedro/conduit-zstd#readme")
    (synopsis "Conduit-based ZStd Compression")
    (description
     "Zstandard compression packaged as a conduit. This is a very thin wrapper around the [official hs-zstd interface](https://github.com/facebookexperimental/hs-zstd/)")
    (license license:expat)))

haskell-8.10-conduit-zstd

(define-public haskell-8.10-construct
  (package
    (name "haskell-8.10-construct")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/construct/construct-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qng4g9x9smzg3gydpqyxalb49n9673rfn606qh3mq1xhcvj127j"))))
    (properties `((upstream-name . "construct") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-incremental-parser)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-input-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-monoid-subclasses)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rank2classes)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/construct")
    (synopsis
     "Haskell version of the Construct library for easy specification of file formats")
    (description
     "A Haskell version of the <https://construct.readthedocs.io/en/latest/intro.html Construct> library for Python. A
succinct file format specification provides both a parser and the serializer for the format.")
    (license license:bsd-3)))

haskell-8.10-construct

(define-public haskell-8.10-core-program
  (package
    (name "haskell-8.10-core-program")
    (version "0.2.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-program/core-program-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gl1cv82h2ax8gf1jjqphkj2481plz64jqq497rvyy2cpqv72kvr"))))
    (properties `((upstream-name . "core-program") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-chronologique)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-core-data)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-core-text)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-fsnotify)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-terminal-size)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis "Opinionated Haskell Interoperability")
    (description
     "A library to help build command-line programs, both tools and
longer-running daemons.

A description of this package, a list of features, and some background
to its design is contained in the
<https://github.com/aesiniath/unbeliever/blob/master/README.markdown README>
on GitHub.

See \"Core.Program.Execute\" to get started.")
    (license license:expat)))

haskell-8.10-core-program

(define-public haskell-8.10-ecstasy
  (package
    (name "haskell-8.10-ecstasy")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ecstasy/ecstasy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hyb1xnc45mmghvjvnxc2wnkrks8glw2bs5jwnc1pmn3p39l4nci"))))
    (properties `((upstream-name . "ecstasy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)))
    (home-page "http://github.com/isovector/ecstasy/")
    (synopsis "A GHC.Generics based entity component system.")
    (description
     "Ecstasy is an entity-component system for Haskell. It's inspired by
<https://hackage.haskell.org/package/apecs apecs>, but makes the design
decision to focus on being idiomatic rather than being fast. Maybe. I haven't
actually benchmarked it.

We achieve being idiomatic by using 'GHC.Generics' and tricky type families
to derive performant data stores given only a record of the desired
components.")
    (license license:bsd-3)))

haskell-8.10-ecstasy

(define-public haskell-8.10-egison-pattern-src-th-mode
  (package
    (name "haskell-8.10-egison-pattern-src-th-mode")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/egison-pattern-src-th-mode/egison-pattern-src-th-mode-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zm3ds6vcxhahcwwryhk8f65141f0bnzj6mxy681npzwzgvljiyd"))))
    (properties `((upstream-name . "egison-pattern-src-th-mode")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-egison-pattern-src)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/egison/egison-pattern-src#readme")
    (synopsis
     "Parser and pretty printer for Egison pattern expressions to use with TH")
    (description
     "@@egison-pattern-src-th-mode@@ provides a parser and pretty printer for @@egison-pattern-src@@ to use it with Template Haskell.
See <https://github.com/egison/egison-pattern-src> for more information.")
    (license license:bsd-3)))

haskell-8.10-egison-pattern-src-th-mode

(define-public haskell-8.10-emd
  (package
    (name "haskell-8.10-emd")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/emd/emd-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "11w9q8v5mpwww8pq5dwg8ijf0wqs7sqa0k6qgv52gg5b2wjlf0im"))))
    (properties `((upstream-name . "emd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-carray)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-conduino)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-fft)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-finite-typelits)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-statistics)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-typelits-witnesses)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/emd#readme")
    (synopsis "Empirical Mode Decomposition and Hilbert-Huang Transform")
    (description
     "Empirical Mode decomposition and Hilbert-Huang Transform in pure
Haskell.")
    (license license:bsd-3)))

haskell-8.10-emd

(define-public haskell-8.10-essence-of-live-coding
  (package
    (name "haskell-8.10-essence-of-live-coding")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding/essence-of-live-coding-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bmcy6j0zw9v7z4sr0m300ckr1mdh3wxj975wbgbl8qlkwsfwv9l"))))
    (properties `((upstream-name . "essence-of-live-coding") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-foreign-store)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-vector-sized)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.
There are also useful utilities for debugging and quickchecking.")
    (license license:bsd-3)))

haskell-8.10-essence-of-live-coding

(define-public haskell-8.10-fold-debounce-conduit
  (package
    (name "haskell-8.10-fold-debounce-conduit")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fold-debounce-conduit/fold-debounce-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xy6vr2hbw41fcs3rlk7wyxqrkqd3nfw5rcr1aiij86zaaifpry5"))))
    (properties `((upstream-name . "fold-debounce-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-fold-debounce)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/debug-ito/fold-debounce-conduit")
    (synopsis
     "Regulate input traffic from conduit Source with Control.FoldDebounce")
    (description
     "Regulate input traffic from conduit Source with Control.FoldDebounce. See \"Data.Conduit.FoldDebounce\"")
    (license license:bsd-3)))

haskell-8.10-fold-debounce-conduit

(define-public haskell-8.10-follow-file
  (package
    (name "haskell-8.10-follow-file")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/follow-file/follow-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nxvw17ndjrg34mc2a0bcyprcng52f6mn3l7mhx2fc11njdf2b93"))))
    (properties `((upstream-name . "follow-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-attoparsec-path)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hinotify)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://github.com/athanclark/follow-file#readme")
    (synopsis
     "Be notified when a file gets appended, solely with what was added. Warning - only works on linux and for files that are strictly appended, like log files.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/follow-file#readme>")
    (license license:bsd-3)))

haskell-8.10-follow-file

(define-public haskell-8.10-fsnotify-conduit
  (package
    (name "haskell-8.10-fsnotify-conduit")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fsnotify-conduit/fsnotify-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kh1y1p4dw2yhxrl1rrkmpkvm3q5nq12cwl8dfcscrkx3wqhz683"))))
    (properties `((upstream-name . "fsnotify-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-fsnotify)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://github.com/fpco/fsnotify-conduit#readme")
    (synopsis "Get filesystem notifications as a stream of events")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/fsnotify-conduit>")
    (license license:expat)))

haskell-8.10-fsnotify-conduit

(define-public haskell-8.10-genvalidity-mergeful
  (package
    (name "haskell-8.10-genvalidity-mergeful")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-mergeful/genvalidity-mergeful-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mzlsa2rxj5dsrkbvpsilkb895cqw11iswfvjkfnwmimm8wg7c8q"))))
    (properties `((upstream-name . "genvalidity-mergeful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-containers)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-time)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-mergeful)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)))
    (home-page "https://github.com/NorfairKing/mergeful#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>")
    (license license:expat)))

haskell-8.10-genvalidity-mergeful

(define-public haskell-8.10-genvalidity-mergeless
  (package
    (name "haskell-8.10-genvalidity-mergeless")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-mergeless/genvalidity-mergeless-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02p71gnih7xcrbfkaw76jjppz19xjv41idbgwqr93lrjs2qdyj7h"))))
    (properties `((upstream-name . "genvalidity-mergeless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-containers)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-time)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-mergeless)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>")
    (license license:expat)))

haskell-8.10-genvalidity-mergeless

(define-public haskell-8.10-hadoop-streaming
  (package
    (name "haskell-8.10-hadoop-streaming")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hadoop-streaming/hadoop-streaming-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zlk9spilimpnvgyifpwp4k2n4ki5sv7lsaw912q9fxp8mmwycsy"))))
    (properties `((upstream-name . "hadoop-streaming") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/zliu41/hadoop-streaming")
    (synopsis "A simple Hadoop streaming library")
    (description
     "A simple Hadoop streaming library based on <https://hackage.haskell.org/package/conduit conduit>,
useful for writing mapper and reducer logic in Haskell and running it on AWS Elastic MapReduce,
Azure HDInsight, GCP Dataproc, and so forth.")
    (license license:bsd-3)))

haskell-8.10-hadoop-streaming

(define-public haskell-8.10-hledger-lib
  (package
    (name "haskell-8.10-hledger-lib")
    (version "1.21")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-lib/hledger-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00prslqk8vnbyz388cpc0nsamzy8xcjzday5q9n3m9lx4p2dhb5y"))))
    (properties `((upstream-name . "hledger-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Decimal)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-cassava-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hashtables)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-pretty-simple)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-tabular)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-timeit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-uglymemo)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hledger.org")
    (synopsis "A reusable library providing the core functionality of hledger")
    (description
     "A reusable library containing hledger's core functionality.
This is used by most hledger* packages so that they support the same
common file formats, command line options, reports etc.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-hledger-lib

(define-public haskell-8.10-hmatrix-vector-sized
  (package
    (name "haskell-8.10-hmatrix-vector-sized")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-vector-sized/hmatrix-vector-sized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15crzx0cmhmrv2y2gg53x6rzmvawzwgck82c6v6xf49lp02svmj8"))))
    (properties `((upstream-name . "hmatrix-vector-sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-vector-sized)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/hmatrix-vector-sized#readme")
    (synopsis "Conversions between hmatrix and vector-sized types")
    (description
     "Conversions between statically sized types in hmatrix and vector-sized.

See README on Github <https://github.com/mstksg/hmatrix-vector-sized#readme>")
    (license license:bsd-3)))

haskell-8.10-hmatrix-vector-sized

(define-public haskell-8.10-http2
  (package
    (name "haskell-8.10-http2")
    (version "3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/http2/http2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13c2z35gdimncgpyg5dn5cpjvd83rbrigc8b40crg36678m0k0d1"))))
    (properties `((upstream-name . "http2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-devel" "-f-h2spec" "-f-doc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-network-byte-order)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-network-run)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-psqueues)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-time-manager)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unix-time)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kazu-yamamoto/http2")
    (synopsis "HTTP/2 library")
    (description
     "HTTP/2 library including frames, priority queues, HPACK, client and server.")
    (license license:bsd-3)))

haskell-8.10-http2

(define-public haskell-8.10-hw-conduit
  (package
    (name "haskell-8.10-hw-conduit")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit/hw-conduit-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xnkkpqcgyii7f16jjh2k2qh4ydpsff5q2xnggyg4jf7m69yrih2"))))
    (properties `((upstream-name . "hw-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rmdwb4a7ax9yadj4xv63n582vsmk84h03qkr6npj9b9gw4qw6i3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)))
    (home-page "http://github.com/haskell-works/hw-conduit#readme")
    (synopsis "Conduits for tokenizing streams.")
    (description "Conduits for tokenizing streams. Please see README.md")
    (license license:expat)))

haskell-8.10-hw-conduit

(define-public haskell-8.10-hw-rankselect-base
  (package
    (name "haskell-8.10-hw-rankselect-base")
    (version "0.3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-rankselect-base/hw-rankselect-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s0lqwq0rjmjca6lshfnxqi0c7bzlyflhm45xw1xa9pvqci8439h"))))
    (properties `((upstream-name . "hw-rankselect-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("5" "0gaqxa05m6a519zpvhlnhvnd4j5jh0zm9div8z4qx5h0g9g82i1m")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-bits-extra)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-bitvec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hw-bits)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hw-int)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hw-string-parse)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-rankselect-base#readme")
    (synopsis "Rank-select base")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hw-rankselect-base

(define-public haskell-8.10-hw-streams
  (package
    (name "haskell-8.10-hw-streams")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-streams/hw-streams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hzpx1j06h98y0zcmysklzn3s3mvpbb1nkwg4zkbdxvzzqs5hnm5"))))
    (properties `((upstream-name . "hw-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")
       #:cabal-revision
       ("5" "0a34xli9sdvqzc571k72hl3a2jhbhxs24y03k6pdzzz3akznhbn0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hw-bits)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mmap)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-streams#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-8.10-hw-streams

(define-public haskell-8.10-inline-r
  (package
    (name "haskell-8.10-inline-r")
    (version "0.10.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-r/inline-r-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jaj3p4vj9g1pk4rfs1sywbq04w24g137yvl6g6mlsxyzd4mldwh"))))
    (properties `((upstream-name . "inline-r") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-inline-c)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-setenv)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-singletons)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages statistics) r)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://tweag.github.io/HaskellR")
    (synopsis
     "Seamlessly call R from Haskell and vice versa. No FFI required.")
    (description "For up to date Haddock documentation, please see
<http://www.stackage.org/package/inline-r>.")
    (license license:bsd-3)))

haskell-8.10-inline-r

(define-public haskell-8.10-lambdabot-core
  (package
    (name "haskell-8.10-lambdabot-core")
    (version "5.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lambdabot-core/lambdabot-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i375kiw98j5gd4pixh59lcqk0lakwmrgxzpkr0431a48kxffq7r"))))
    (properties `((upstream-name . "lambdabot-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1kydr2sis2r7vr313n6cy5rh2bpnci7zfmrbmxd6ih67f0x8aa3q")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-HTTP)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-SafeSemaphore)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-dependent-map)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-dependent-sum)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-dependent-sum-template)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-edit-distance)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-network-bsd)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-prim-uniq)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-random-fu)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-random-source)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://wiki.haskell.org/Lambdabot")
    (synopsis "Lambdabot core functionality")
    (description "Lambdabot is an IRC bot written over several years by
those on the #haskell IRC channel.

Manage plugins, network connections, configurations
and much more.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-lambdabot-core

(define-public haskell-8.10-lens
  (package
    (name "haskell-8.10-lens")
    (version "4.19.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lens/lens-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fy2vr5r11cc6ana8m2swqgs3zals4kims55vd6119bi76p5iy2j"))))
    (properties `((upstream-name . "lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark-uniplate" "-finlining" "-f-old-inline-pragmas" "-f-dump-splices" "-ftest-doctests" "-ftest-hunit" "-ftest-properties" "-ftest-templates" "-f-safe" "-ftrustworthy" "-f-j")
       #:cabal-revision
       ("6" "1k08my9rh1il3ibiyhljxkgndfgk143pn5a6nyzjnckw3la09myl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "Lenses, Folds and Traversals")
    (description
     "This package comes \\\"Batteries Included\\\" with many useful lenses for the types
commonly used from the Haskell Platform, and with tools for automatically
generating lenses and isomorphisms for user-supplied data types.

The combinators in @@Control.Lens@@ provide a highly generic toolbox for composing
families of getters, folds, isomorphisms, traversals, setters and lenses and their
indexed variants.

An overview, with a large number of examples can be found in the <https://github.com/ekmett/lens#lens-lenses-folds-and-traversals README>.

An introductory video on the style of code used in this library by Simon Peyton Jones is available from <http://skillsmatter.com/podcast/scala/lenses-compositional-data-access-and-manipulation Skills Matter>.

A video on how to use lenses and how they are constructed is available on <http://youtu.be/cefnmjtAolY?hd=1 youtube>.

Slides for that second talk can be obtained from <http://comonad.com/haskell/Lenses-Folds-and-Traversals-NYC.pdf comonad.com>.

More information on the care and feeding of lenses, including a brief tutorial and motivation
for their types can be found on the <https://github.com/ekmett/lens/wiki lens wiki>.

A small game of @@pong@@ and other more complex examples that manage their state using lenses can be found in the <https://github.com/ekmett/lens/blob/master/examples/ example folder>.

/Lenses, Folds and Traversals/

With some signatures simplified, the core of the hierarchy of lens-like constructions looks like:


<<http://i.imgur.com/ALlbPRa.png>>

<images/Hierarchy.png (Local Copy)>

You can compose any two elements of the hierarchy above using @@(.)@@ from the @@Prelude@@, and you can
use any element of the hierarchy as any type it linked to above it.

The result is their lowest upper bound in the hierarchy (or an error if that bound doesn't exist).

For instance:

* You can use any 'Traversal' as a 'Fold' or as a 'Setter'.

* The composition of a 'Traversal' and a 'Getter' yields a 'Fold'.

/Minimizing Dependencies/

If you want to provide lenses and traversals for your own types in your own libraries, then you
can do so without incurring a dependency on this (or any other) lens package at all.

/e.g./ for a data type:

> data Foo a = Foo Int Int a

You can define lenses such as

> -- bar :: Lens' (Foo a) Int
> bar :: Functor f => (Int -> f Int) -> Foo a -> f (Foo a)
> bar f (Foo a b c) = fmap (\\a' -> Foo a' b c) (f a)

> -- quux :: Lens (Foo a) (Foo b) a b
> quux :: Functor f => (a -> f b) -> Foo a -> f (Foo b)
> quux f (Foo a b c) = fmap (Foo a b) (f c)

without the need to use any type that isn't already defined in the @@Prelude@@.

And you can define a traversal of multiple fields with 'Control.Applicative.Applicative':

> -- traverseBarAndBaz :: Traversal' (Foo a) Int
> traverseBarAndBaz :: Applicative f => (Int -> f Int) -> Foo a -> f (Foo a)
> traverseBarAndBaz f (Foo a b c) = Foo <$> f a <*> f b <*> pure c

What is provided in this library is a number of stock lenses and traversals for
common haskell types, a wide array of combinators for working them, and more
exotic functionality, (/e.g./ getters, setters, indexed folds, isomorphisms).")
    (license license:bsd-2)))

haskell-8.10-lens

(define-public haskell-8.10-libyaml
  (package
    (name "haskell-8.10-libyaml")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libyaml/libyaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dcpbsjg6n305l07isxmavgp01lbv1qggy16acjyxjlz35pxchlg"))))
    (properties `((upstream-name . "libyaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-unicode" "-f-system-libyaml")
       #:cabal-revision
       ("1" "00f1rag6sd7c8kza2agw9089p9vf21iiga2aq41nbf6d3yqn7dkz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Low-level, streaming YAML interface.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/libyaml>")
    (license license:bsd-3)))

haskell-8.10-libyaml

(define-public haskell-8.10-literatex
  (package
    (name "haskell-8.10-literatex")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/literatex/literatex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1axj5a10vj9fkpc89yzb8i7aq23bmygnf3mwvbp63vcvwmfyx49h"))))
    (properties `((upstream-name . "literatex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-write-hie")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ttc)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (home-page "https://github.com/ExtremaIS/literatex-haskell#readme")
    (synopsis "transform literate source code to Markdown")
    (description
     "This package provides a library as well as a command-line utility that
transforms literate source code to Markdown.  Please see the README on
GitHub at <https://github.com/ExtremaIS/literatex-haskell#readme>.")
    (license license:expat)))

haskell-8.10-literatex

(define-public haskell-8.10-logging
  (package
    (name "haskell-8.10-logging")
    (version "3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/logging/logging-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cd00pjxjdq69n6hxa01x31s2vdfd39kkvj0d0ssqj3n6ahssbxi"))))
    (properties `((upstream-name . "logging") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-fast-logger)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-regex-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)))
    (home-page "https://hackage.haskell.org/package/logging")
    (synopsis "Simplified logging in IO for application writers.")
    (description
     "@@logging@@ is a wrapper around @@fast-logger@@ which makes
it easy to log from 'IO'. It provides the following conveniences on top of
those libraries:

- A set of shorter functions to type: 'debug', 'log', 'warn', plus others
that flush after each message, or which allow providing a message source
string.

- Logging variants of 'error', 'trace' and 'traceShow', called 'errorL',
'traceL' and 'traceShowL'.  These use 'unsafePerformIO' in order to act as
direct replacements, so the usual caveats apply.

- A global function, 'setDebugLevel', which uses a global 'IORef' to record
the logging level, saving you from having to carry around the notion of
\"verbosity level\" in a Reader environment.

- A set of \"timed\" variants, 'timedLog' and 'timedDebug', which report how
long the specified action took to execute in wall-clock time.")
    (license license:expat)))

haskell-8.10-logging

(define-public haskell-8.10-lzma-conduit
  (package
    (name "haskell-8.10-lzma-conduit")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lzma-conduit/lzma-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z6q16hzp2r5a4gdbg9akky5l9bfarzzhzswrgvh0v28ax400whb"))))
    (properties `((upstream-name . "lzma-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lzma)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)))
    (home-page "http://github.com/alphaHeavy/lzma-conduit")
    (synopsis "Conduit interface for lzma/xz compression.")
    (description
     "This package provides an Conduit interface for the LZMA compression algorithm used in the .xz file format.")
    (license license:bsd-3)))

haskell-8.10-lzma-conduit

(define-public haskell-8.10-massiv-persist
  (package
    (name "haskell-8.10-massiv-persist")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-persist/massiv-persist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w3hm8mzk2vsd0myk7sl1cckl2yhr7b1y9qb9nzph5gw99hsc761"))))
    (properties `((upstream-name . "massiv-persist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "197br71xz738xnivpcmicgyw06r2f5lbbbaqzvnsz9ycbnvwhmav")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-massiv)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-massiv-test)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-persist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/massiv-compat")
    (synopsis "Compatibility of 'massiv' with 'persist'")
    (description
     "Orphan 'Persist' class instances from <https://hackage.haskell.org/package/persist persist> package that allow serialization of arrays defined in <https://hackage.haskell.org/package/massiv massiv> package")
    (license license:bsd-3)))

haskell-8.10-massiv-persist

(define-public haskell-8.10-massiv-serialise
  (package
    (name "haskell-8.10-massiv-serialise")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-serialise/massiv-serialise-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0780lggn343k64ph3c27zhkkx0gmk9zfvv5pxz6zl1817xfqzc83"))))
    (properties `((upstream-name . "massiv-serialise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "134405ffzdjc6nq23iwz5khs0r2r6z23y4y08by8qznj97j38am0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-massiv)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-massiv-test)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-serialise)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/massiv-compat")
    (synopsis "Compatibility of 'massiv' with 'serialise'")
    (description
     "Orphan 'Serialise' class instances from <https://hackage.haskell.org/package/serialise serialise> package that allow serialization of arrays defined in <https://hackage.haskell.org/package/massiv massiv> package")
    (license license:bsd-3)))

haskell-8.10-massiv-serialise

(define-public haskell-8.10-mighty-metropolis
  (package
    (name "haskell-8.10-mighty-metropolis")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mighty-metropolis/mighty-metropolis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r1viswlggm6y7k3x5cvfmbly8jmk1ivhfp8vpgvkamxagzhkrk4"))))
    (properties `((upstream-name . "mighty-metropolis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-mcmc-types)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-mwc-probability)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jtobin/mighty-metropolis")
    (synopsis "The Metropolis algorithm.")
    (description
     "The classic Metropolis algorithm.

Wander around parameter space according to a simple spherical Gaussian
distribution.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in-memory, and a 'metropolis' transition operator that
can be used more generally.

> import Numeric.MCMC.Metropolis
>
> rosenbrock :: [Double] -> Double
> rosenbrock [x0, x1] = negate (5  *(x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2)
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 1 [0, 0] rosenbrock")
    (license license:expat)))

haskell-8.10-mighty-metropolis

(define-public haskell-8.10-mnist-idx-conduit
  (package
    (name "haskell-8.10-mnist-idx-conduit")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mnist-idx-conduit/mnist-idx-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0319icnnw38fivjwz9m142wyp059hn5rydr6cdjq73d5d9c77xhx"))))
    (properties `((upstream-name . "mnist-idx-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/ocramz/mnist-idx-conduit")
    (synopsis "conduit utilities for MNIST IDX files")
    (description
     "Conduit decoders for MNIST IDX data files, as described in http://yann.lecun.com/exdb/mnist/ . The IDX format is a low-level binary representation for storing general vector, image or tensor data. Here the parsers are specialized to the MNIST dataset, which stores scans of handwritten digits and is a classic benchmark for text classification.")
    (license license:bsd-3)))

haskell-8.10-mnist-idx-conduit

(define-public haskell-8.10-monad-unlift-ref
  (package
    (name "haskell-8.10-monad-unlift-ref")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-unlift-ref/monad-unlift-ref-"
                    version ".tar.gz"))
              (sha256
               (base32
                "078xjz3a6rgqqgf8zg9ngspixf9pgch845l6gs5ssy3l54wra18g"))))
    (properties `((upstream-name . "monad-unlift-ref") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-monad-unlift)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-mutable-containers)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/fpco/monad-unlift")
    (synopsis "Typeclasses for representing monad transformer unlifting")
    (description "See README.md")
    (license license:expat)))

haskell-8.10-monad-unlift-ref

(define-public haskell-8.10-ndjson-conduit
  (package
    (name "haskell-8.10-ndjson-conduit")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ndjson-conduit/ndjson-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ccxliyy0flpby9jix2n8jy1i4jgiap42maqhh9ny53vqkvvhdy0"))))
    (properties `((upstream-name . "ndjson-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)))
    (home-page "https://github.com/srijs/haskell-ndjson-conduit")
    (synopsis
     "Conduit-based parsing and serialization for newline delimited JSON.")
    (description
     "Hackage documentation generation is not reliable.
For up to date documentation, please see: <http://www.stackage.org/package/ndjson-conduit>.")
    (license license:expat)))

haskell-8.10-ndjson-conduit

(define-public haskell-8.10-pipes-aeson
  (package
    (name "haskell-8.10-pipes-aeson")
    (version "0.4.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-aeson/pipes-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xdybqszcs14sb02g7garfx8ivmp48fm5rsl4md8vypyjbs1211m"))))
    (properties `((upstream-name . "pipes-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-parse)))
    (home-page "https://github.com/k0001/pipes-aeson")
    (synopsis "Encode and decode JSON streams using Aeson and Pipes.")
    (description
     "Utilities to encode and decode Pipes streams of JSON.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.10-pipes-aeson

(define-public haskell-8.10-pipes-binary
  (package
    (name "haskell-8.10-pipes-binary")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-binary/pipes-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r3byrp8z99rkz2z7pjrz88i4y8qy1qy38ih363ky65r87hbw6d3"))))
    (properties `((upstream-name . "pipes-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lens-family-core)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-parse)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/pipes-binary")
    (synopsis
     "Encode and decode binary streams using the pipes and binary libraries.")
    (description
     "Encode and decode binary Pipes streams using the @@binary@@ library.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.10-pipes-binary

(define-public haskell-8.10-pipes-fastx
  (package
    (name "haskell-8.10-pipes-fastx")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-fastx/pipes-fastx-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xds11gfacj7m5lz6cssaj4v5z73ycrdmn57f0qxzqdsc2kln9ii"))))
    (properties `((upstream-name . "pipes-fastx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-pipes-bytestring)))
    (home-page "https://hackage.haskell.org/package/pipes-fastx")
    (synopsis "Streaming parsers for Fasta and Fastq")
    (description "Streaming parsers for Fasta and Fastq")
    (license license:bsd-3)))

haskell-8.10-pipes-fastx

(define-public haskell-8.10-pointed
  (package
    (name "haskell-8.10-pointed")
    (version "5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pointed/pointed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0999bba0gbb2qhk1ydaslmdf7ca17ip751psi4phi1lhb250fl8b"))))
    (properties `((upstream-name . "pointed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcomonad" "-fcontainers" "-fkan-extensions" "-fsemigroupoids" "-fsemigroups" "-fstm" "-ftagged" "-ftransformers" "-funordered-containers")
       #:cabal-revision
       ("1" "00x5chjb3l43n35g7amaj3x32ahlwffp7v5khc1qmzxfqz6z50mv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/ekmett/pointed/")
    (synopsis "Pointed and copointed data")
    (description "Pointed and copointed data.")
    (license license:bsd-3)))

haskell-8.10-pointed

(define-public haskell-8.10-poly
  (package
    (name "haskell-8.10-poly")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/poly/poly-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1h7nbyiwnbxyj2jss04raws7zapfq7mvzj7fmi8rqyr0aw91k4zl"))))
    (properties `((upstream-name . "poly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-finite-typelits)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semirings)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-vector-sized)))
    (home-page "https://github.com/Bodigrim/poly#readme")
    (synopsis "Polynomials")
    (description "Polynomials backed by `Vector`.")
    (license license:bsd-3)))

haskell-8.10-poly

(define-public haskell-8.10-postgresql-binary
  (package
    (name "haskell-8.10-postgresql-binary")
    (version "0.12.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-binary/postgresql-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pldd0fx60bl2xfdlyygjdk5p415lgh94km6l48nfib6sxqwlks4"))))
    (properties `((upstream-name . "postgresql-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-binary-parser)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-network-ip)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/postgresql-binary ")
    (synopsis "Encoders and decoders for the PostgreSQL's binary format")
    (description "An API for dealing with PostgreSQL's binary data format.

It can be used to implement performant bindings to Postgres.
E.g., <http://hackage.haskell.org/package/hasql hasql>
is based on this library.

It supports all Postgres versions starting from 8.3
and is tested against 8.3, 9.3 and 9.5
with the @@integer_datetimes@@ setting off and on.")
    (license license:expat)))

haskell-8.10-postgresql-binary

(define-public haskell-8.10-prospect
  (package
    (name "haskell-8.10-prospect")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prospect/prospect-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rvdhk3vnkmblg0zg9vw9akvlsqsc125av3889ipi0axzdcygykg"))))
    (properties `((upstream-name . "prospect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-inspection-testing)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)))
    (home-page "https://github.com/isovector/prospect#readme")
    (synopsis "Explore continuations with trepidation")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/prospect#readme>")
    (license license:bsd-3)))

haskell-8.10-prospect

(define-public haskell-8.10-rhine
  (package
    (name "haskell-8.10-rhine")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rhine/rhine-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pgmbb1l3qf4gm7hb5vic5r85qrq2spzb0r1jniw12sq0jb113dp"))))
    (properties `((upstream-name . "rhine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-MonadRandom)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-dunai)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-simple-affine-space)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-vector-sized)))
    (home-page "https://hackage.haskell.org/package/rhine")
    (synopsis "Functional Reactive Programming with type-level clocks")
    (description
     "Rhine is a library for synchronous and asynchronous Functional Reactive Programming (FRP).
It separates the aspects of clocking, scheduling and resampling
from each other, and ensures clock-safety on the type level.
Signal processing units can be annotated by clocks,
which hold the information when data will be
input, processed and output.
Different components of the signal network
will become active at different times, or work
at different rates.
To schedule the components and allow them to communicate,
several standard scheduling and resampling solutions are implemented.
Own schedules and resampling buffers can be implemented in a reusable fashion.
A (synchronous) program outputting \"Hello World!\" every tenth of a second looks like this:
@@flow $ constMCl (putStrLn \"Hello World!\") \\@@\\@@ (waitClock :: Millisecond 100)@@")
    (license license:bsd-3)))

haskell-8.10-rhine

(define-public haskell-8.10-roc-id
  (package
    (name "haskell-8.10-roc-id")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/roc-id/roc-id-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ac4hrl6qihrhcyx41rf0qnmf9bi848nhdgs71mq3i9gqbnxfi1i"))))
    (properties `((upstream-name . "roc-id") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-MonadRandom)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Only)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-vector-sized)))
    (home-page "https://github.com/jonathanknowles/roc-id#readme")
    (synopsis "Implementation of the ROC National ID standard.")
    (description
     "This package provides an implementation of the ROC National Identification
Number (中華民國身分證號碼) standard.

In particular, it provides functions for parsing and validating identification
numbers from textual input.

See the \"ROC.ID\" module to get started.

For more details of the standard on which this package is based, see:

* https://zh.wikipedia.org/wiki/中華民國國民身分證
* https://en.wikipedia.org/wiki/National_Identification_Card_(Republic_of_China)")
    (license license:bsd-3)))

haskell-8.10-roc-id

(define-public haskell-8.10-rocksdb-query
  (package
    (name "haskell-8.10-rocksdb-query")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-query/rocksdb-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sh88q0vq0b13ig6vmwi8wa73d45qxdkbbc29zphch6p2z4n81wq"))))
    (properties `((upstream-name . "rocksdb-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-rocksdb-haskell-jprupp)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (propagated-inputs (list (@ (gnu packages databases) rocksdb)))
    (home-page "https://github.com/jprupp/rocksdb-query#readme")
    (synopsis "RocksDB database querying library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/rocksdb-query#readme>")
    (license license:expat)))

haskell-8.10-rocksdb-query

(define-public haskell-8.10-rp-tree
  (package
    (name "haskell-8.10-rp-tree")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rp-tree/rp-tree-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ww3ckf1bq24p4d52mip6mxxk0z65p3pq7d4a1xy8yalsjhyyl0h"))))
    (properties `((upstream-name . "rp-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-boxes)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-heaps)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-serialise)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-splitmix-distributions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)))
    (home-page "https://github.com/ocramz/rp-tree")
    (synopsis "Random projection trees")
    (description
     "Random projection trees for approximate nearest neighbor search in high-dimensional vector spaces

To use the library, import \"Data.RPTree\", which also contains all documentation.")
    (license license:bsd-3)))

haskell-8.10-rp-tree

(define-public haskell-8.10-safe-tensor
  (package
    (name "haskell-8.10-safe-tensor")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-tensor/safe-tensor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ms8mrlvvivk474qpa9sqprpr7b8p3l5iq1z58yd81djdkrpqar3"))))
    (properties `((upstream-name . "safe-tensor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-singletons)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nilsalex/safe-tensor#readme")
    (synopsis "Dependently typed tensor algebra")
    (description
     "For an introduction to the library, see \"Math.Tensor.Safe\". For more information, see the README on GitHub at <https://github.com/nilsalex/safe-tensor#readme>")
    (license license:expat)))

haskell-8.10-safe-tensor

(define-public haskell-8.10-safeio
  (package
    (name "haskell-8.10-safeio")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/safeio/safeio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04g3070cbjdqj0h9l9ii6470xcbn40xfv4fr89a8yvnkdim9nyfm"))))
    (properties `((upstream-name . "safeio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (home-page "https://github.com/luispedro/safeio#readme")
    (synopsis "Write output to disk atomically")
    (description
     "This package implements utilities to perform atomic output so as to avoid the problem of partial intermediate files.")
    (license license:expat)))

haskell-8.10-safeio

(define-public haskell-8.10-sequence-formats
  (package
    (name "haskell-8.10-sequence-formats")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sequence-formats/sequence-formats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ilirvbi5jzqzrpqg2b8v2w0c3pwvgcshvvp821rvcqkfl9wfvj3"))))
    (properties `((upstream-name . "sequence-formats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-lens-family)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-safe)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/stschiff/sequence-formats")
    (synopsis
     "A package with basic parsing utilities for several Bioinformatic data formats.")
    (description
     "Contains utilities to parse and write Eigenstrat, Fasta, FreqSum, VCF, Plink and other file formats used in population genetics analyses.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-sequence-formats

(define-public haskell-8.10-servant-blaze
  (package
    (name "haskell-8.10-servant-blaze")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y38lzmh5jr3bix0cqrcx9zkjdr1598hz7rvpnm827qw0ln3cmra")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Blaze-html support for servant")
    (description "Servant support for blaze-html

'HTML' content type which will use `ToMarkup` class.")
    (license license:bsd-3)))

haskell-8.10-servant-blaze

(define-public haskell-8.10-servant-client-core
  (package
    (name "haskell-8.10-servant-client-core")
    (version "0.18.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client-core/servant-client-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iln4axymmmk3ib0wxmpzjgq16lip8nz7xich3ysgzx6g2n15xsd"))))
    (properties `((upstream-name . "servant-client-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-sop-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Core functionality and class for client function generation for servant APIs")
    (description
     "This library provides backend-agnostic generation of client functions. For
more information, see the README.")
    (license license:bsd-3)))

haskell-8.10-servant-client-core

(define-public haskell-8.10-servant-exceptions
  (package
    (name "haskell-8.10-servant-exceptions")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-exceptions/servant-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bzxac87x3nfg5hllqxfi2qrdkiy2zfxwzkcg6vyjirnwpqvn49b"))))
    (properties `((upstream-name . "servant-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ch1bo/servant-exceptions#readme")
    (synopsis "Extensible exceptions for servant APIs")
    (description
     "`servant-exceptions` provides a `Throw` combinator to declare what
types of errors an API might throw. The server
implementation catches them and allows for a canonical
encoding using servant content-type machinery.")
    (license license:bsd-3)))

haskell-8.10-servant-exceptions

(define-public haskell-8.10-servant-multipart-api
  (package
    (name "haskell-8.10-servant-multipart-api")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-multipart-api/servant-multipart-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gifa9g7ggs0plzffrd9a8j24dmqvgbkkdkfzyy7mpmwrjqw7mcj"))))
    (properties `((upstream-name . "servant-multipart-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1zhiszjg8n37g25sh2cnw509n0v4b89fd93j466f2gzwkxfaaw0m")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-servant/servant-multipart#readme")
    (synopsis "multipart/form-data (e.g file upload) support for servant")
    (description
     "This package contains servant API types that support multiform upload, used by
servant-multipart and servant-multipart-client for backend/client implementation.")
    (license license:bsd-3)))

haskell-8.10-servant-multipart-api

(define-public haskell-8.10-servant-rawm
  (package
    (name "haskell-8.10-servant-rawm")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-rawm/servant-rawm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05gv21y7vzw7gdbsk0nax47rnn4isjmx7hbbwilsv0cj7l8qm1bk"))))
    (properties `((upstream-name . "servant-rawm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/servant-rawm")
    (synopsis "Embed a raw 'Application' in a Servant API")
    (description
     "Please see <https://github.com/cdepillabout/servant-rawm#readme README.md>.

After @@servant-rawm@@ 1.0.0.0, the implementation are divided into
three packages: @@servant-rawm-server@@, @@servant-rawm-client@@,
and @@servant-rawm-docs@@.

You need to use either of the three implementations for the 'RawM' endpoint
to function correctly.")
    (license license:bsd-3)))

haskell-8.10-servant-rawm

(define-public haskell-8.10-singleton-nats
  (package
    (name "haskell-8.10-singleton-nats")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singleton-nats/singleton-nats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qmkqfj8rch9qcczs05lm5l3sx29slmqw156g4hhr3d735xg4nk1"))))
    (properties `((upstream-name . "singleton-nats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-singletons)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/AndrasKovacs/singleton-nats")
    (synopsis
     "Unary natural numbers relying on the singletons infrastructure.")
    (description
     "Unary natural number relying on the <https://hackage.haskell.org/package/singletons singletons> infrastructure. More information about the general usage of singletons can be found on the <https://github.com/goldfirere/singletons singletons github> page.")
    (license license:bsd-3)))

haskell-8.10-singleton-nats

(define-public haskell-8.10-singletons-presburger
  (package
    (name "haskell-8.10-singletons-presburger")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons-presburger/singletons-presburger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s12g1qcdz035y2lzjivw2m2jm9hqvbwvgmxvahn4a2j89f4zgky"))))
    (properties `((upstream-name . "singletons-presburger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-equational-reasoning)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-singletons)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/konn/ghc-typelits-presburger#readme")
    (synopsis
     "Presburger Arithmetic Solver for GHC Type-level natural numbers with Singletons package.")
    (description
     "The @@singletons-presburger@@ plugin augments GHC type-system with Presburger
Arithmetic Solver for Type-level natural numbers, with integration with <https://hackage.haskell.org/package/singletons singletons> package.

You can use by adding this package to @@dependencies@@ and add the following pragma
to the head of .hs files:

> OPTIONS_GHC -fplugin Data.Singletons.TypeNats.Presburger")
    (license license:bsd-3)))

haskell-8.10-singletons-presburger

(define-public haskell-8.10-store-streaming
  (package
    (name "haskell-8.10-store-streaming")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/store-streaming/store-streaming-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b164ixsqgrar4riqlm3ip5rfbinapk6md7hnz32gzcmrgav283q"))))
    (properties `((upstream-name . "store-streaming") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-store)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-store-core)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Streaming interfaces for `store`")
    (description "")
    (license license:expat)))

haskell-8.10-store-streaming

(define-public haskell-8.10-tar-conduit
  (package
    (name "haskell-8.10-tar-conduit")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tar-conduit/tar-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgn3hyf20g1gfnzy8f41s7nj54kfcyjk2izw99svrw8f3dphi80"))))
    (properties `((upstream-name . "tar-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)))
    (home-page "https://github.com/snoyberg/tar-conduit#readme")
    (synopsis "Extract and create tar files using conduit for streaming")
    (description
     "Please see README.md. This is just filler to avoid warnings.")
    (license license:expat)))

haskell-8.10-tar-conduit

(define-public haskell-8.10-threepenny-gui
  (package
    (name "haskell-8.10-threepenny-gui")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/threepenny-gui/threepenny-gui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00sjkfa9qfnnwqfdw68yb8hq6nm1y5qv9896rzn5aachr7mlfpx2"))))
    (properties `((upstream-name . "threepenny-gui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-rebug")
       #:cabal-revision
       ("7" "0lf7w1kxnd0wwqwrq2svbki1cbzwl9ggvfl1bvxvhg1qrw0avqbd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-snap-core)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-snap-server)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-websockets)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-websockets-snap)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://wiki.haskell.org/Threepenny-gui")
    (synopsis "GUI framework that uses the web browser as a display.")
    (description
     "Threepenny-GUI is a GUI framework that uses the web browser as a display.

It's very easy to install because everyone has a web browser installed.

A program written with Threepenny is essentially a small web server that
displays the user interface as a web page to any browser that connects to it.
You can freely manipulate the HTML DOM and handle JavaScript events
from your Haskell code.

Stability forecast: This is an experimental release! Send me your feedback!
Significant API changes are likely in future versions.

NOTE: This library contains examples, but they are not built by default.
To build and install the example, use the @@buildExamples@@ flag like this

@@cabal install threepenny-gui -fbuildExamples@@")
    (license license:bsd-3)))

haskell-8.10-threepenny-gui

(define-public haskell-8.10-tinylog
  (package
    (name "haskell-8.10-tinylog")
    (version "0.15.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tinylog/tinylog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pwdymx4kx3im9pzah0lmh64x7agdklf6dwqpjx93ybswi61cwfb"))))
    (properties `((upstream-name . "tinylog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-double-conversion)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-fast-logger)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unix-time)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://gitlab.com/twittner/tinylog/")
    (synopsis "Simplistic logging using fast-logger.")
    (description "Trivial logger on top of fast-logger.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-tinylog

(define-public haskell-8.10-type-natural
  (package
    (name "haskell-8.10-type-natural")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-natural/type-natural-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dzmaia5w59cmq6aivsamklq6ydd72l9y44az1plycmscm0kchiz"))))
    (properties `((upstream-name . "type-natural") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-equational-reasoning)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/konn/type-natural")
    (synopsis "Type-level natural and proofs of their properties.")
    (description "Type-level natural numbers and proofs of their properties.

Version 0.6+ supports __GHC 8+ only__.

__Use 0.5.* with ~ GHC 7.10.3__.")
    (license license:bsd-3)))

haskell-8.10-type-natural

(define-public haskell-8.10-universe
  (package
    (name "haskell-8.10-universe")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe/universe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1v9lgxkfly2570i8x66sjz8nk58a71y3jwlqdc3wi2jmh773y6hi"))))
    (properties `((upstream-name . "universe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-universe-base)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-universe-instances-extended)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-universe-some)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "A class for finite and recursively enumerable types.")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This also provides instances from @@universe-instances-*\" packages.")
    (license license:bsd-3)))

haskell-8.10-universe

(define-public haskell-8.10-wai-conduit
  (package
    (name "haskell-8.10-wai-conduit")
    (version "3.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-conduit/wai-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07yn41rn2skd5p3wqqa09wa761vj7ibl8l19gh4bi4i8slxhk417"))))
    (properties `((upstream-name . "wai-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "conduit wrappers for WAI")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-conduit>.")
    (license license:expat)))

haskell-8.10-wai-conduit

(define-public haskell-8.10-wai-logger
  (package
    (name "haskell-8.10-wai-logger")
    (version "2.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-logger/wai-logger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kp2bg8s2vz9lxa7hmd7xv3jlsz1dmfsgkb405x9sz92x6jb521f"))))
    (properties `((upstream-name . "wai-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteorder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-fast-logger)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page "https://hackage.haskell.org/package/wai-logger")
    (synopsis "A logging system for WAI")
    (description "A logging system for WAI")
    (license license:bsd-3)))

haskell-8.10-wai-logger

(define-public haskell-8.10-x509-system
  (package
    (name "haskell-8.10-x509-system")
    (version "1.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-system/x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "049bdaxrih49nkhkyl2342qnbx2f0q99z8rld648bz1kkgyizz38"))))
    (properties `((upstream-name . "x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-pem)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "Handle per-operating-system X.509 accessors and storage")
    (description
     "System X.509 handling for accessing operating system dependents store and other storage methods")
    (license license:bsd-3)))

haskell-8.10-x509-system

(define-public haskell-8.10-x509-validation
  (package
    (name "haskell-8.10-x509-validation")
    (version "1.6.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-validation/x509-validation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j7is28ljz4yxwxz5ax3x7ykgwkr38dx46bw7vgj4arkk7hl93hd"))))
    (properties `((upstream-name . "x509-validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-asn1-types)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-pem)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 Certificate and CRL validation")
    (description "X.509 Certificate and CRL validation. please see README")
    (license license:bsd-3)))

haskell-8.10-x509-validation

(define-public haskell-8.10-xeno
  (package
    (name "haskell-8.10-xeno")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xeno/xeno-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g7vwp41dz2zvw5s9w7cask543p556wlc4rk3vpx5cawr6v4d2ha"))))
    (properties `((upstream-name . "xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-libxml2")
       #:cabal-revision
       ("1" "0k477wvx1hrbrmxj7rn3zwpxnkjf1xrjpq70fns06zshlvv3hnhm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hexml)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-mutable-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/ocramz/xeno")
    (synopsis "A fast event-based XML parser in pure Haskell")
    (description
     "A fast, low-memory use, event-based XML parser in pure Haskell.  ")
    (license license:bsd-3)))

haskell-8.10-xeno

