;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage015)
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
(define-public haskell-8.6-RSA
  (package
    (name "haskell-8.6-RSA")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/RSA/RSA-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "06k7nd7b1rdfb7891gw9bihrd9ripffbgqa14q1ryyj6vqa9r4jw"))))
    (properties `((upstream-name . "RSA") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-SHA)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-crypto-api)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-crypto-pubkey-types)))
    (home-page "https://hackage.haskell.org/package/RSA")
    (synopsis
     "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.")
    (description
     "This library implements the RSA encryption and signature
algorithms for arbitrarily-sized ByteStrings. While the
implementations work, they are not necessarily the fastest ones
on the planet. Particularly key generation. The algorithms
included are based of RFC 3447, or the Public-Key Cryptography
Standard for RSA, version 2.1 (a.k.a, PKCS#1 v2.1).")
    (license license:bsd-3)))

haskell-8.6-RSA

(define-public haskell-8.6-aeson-extra
  (package
    (name "haskell-8.6-aeson-extra")
    (version "0.4.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-extra/aeson-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k15vkyf635nh904diyg931ziwdngikvp7c9c339pys3savf5qr2"))))
    (properties `((upstream-name . "aeson-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0gwjgxpgq7lncylfpccikmn3jk2jmz54vsgjialhwa26iv9f9n4a")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-semialign)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-these)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/phadej/aeson-extra#readme")
    (synopsis "Extra goodies for aeson")
    (description
     "Package provides extra functionality on top of @@aeson@@ and @@aeson-compat@@")
    (license license:bsd-3)))

haskell-8.6-aeson-extra

(define-public haskell-8.6-apply-refact
  (package
    (name "haskell-8.6-apply-refact")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apply-refact/apply-refact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p2mqgjcqr1zcmk8zgr0yq7g8z1agsa6l493lkj6g3ya9lyhxgig"))))
    (properties `((upstream-name . "apply-refact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-filemanip)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-ghc-exactprint)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-refact)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-silently)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-tasty-golden)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)))
    (home-page "https://hackage.haskell.org/package/apply-refact")
    (synopsis "Perform refactorings specified by the refact library.")
    (description
     "Perform refactorings specified by the refact library. It is primarily used with HLint's --refactor flag.")
    (license license:bsd-3)))

haskell-8.6-apply-refact

(define-public haskell-8.6-attoparsec-uri
  (package
    (name "haskell-8.6-attoparsec-uri")
    (version "0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-uri/attoparsec-uri-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p3j4m5ps4j8phm2c00rk6m06vidckf14fy50xgcq2zr8b1lk79n"))))
    (properties `((upstream-name . "attoparsec-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-attoparsec-ip)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytedump)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-ip)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-strict)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/athanclark/attoparsec-uri#readme")
    (synopsis "URI parser / printer using attoparsec")
    (description
     "Please see the README on GitHub at <https://github.com/githubuser/purescript-iso#readme>")
    (license license:bsd-3)))

haskell-8.6-attoparsec-uri

(define-public haskell-8.6-base64-bytestring-type
  (package
    (name "haskell-8.6-base64-bytestring-type")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-bytestring-type/base64-bytestring-type-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03kq4rjj6by02rf3hg815jfdqpdk0xygm5f46r2pn8mb99yd01zn"))))
    (properties `((upstream-name . "base64-bytestring-type") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcereal" "-fserialise" "-fhttp-api-data")
       #:cabal-revision
       ("15" "0yka3aazfd5jj0dqh89cpjc8sgx3yhiiqfhrpb9z5p4zvbyvym6g")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-serialise)))
    (home-page "https://github.com/phadej/base64-bytestring-type#readme")
    (synopsis "A newtype around ByteString, for base64 encoding")
    (description "A newtype around ByteString, for base64 encoding.
Strict and lazy, normal and url alphabet variants.")
    (license license:bsd-3)))

haskell-8.6-base64-bytestring-type

(define-public haskell-8.6-boltzmann-samplers
  (package
    (name "haskell-8.6-boltzmann-samplers")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boltzmann-samplers/boltzmann-samplers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13l7ml35hm0i2rgw419n7xp2zp58pafm6gmmik3jgbmhfwgkwz6y"))))
    (properties `((upstream-name . "boltzmann-samplers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-ad)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/Lysxia/boltzmann-samplers#readme")
    (synopsis "Uniform random generators")
    (description
     "Random generators with a uniform distribution conditioned
to a given size.
See also @@<http://hackage.haskell.org/package/testing-feat testing-feat>@@,
which is currently a faster method with similar results.")
    (license license:expat)))

haskell-8.6-boltzmann-samplers

(define-public haskell-8.6-brick
  (package
    (name "haskell-8.6-brick")
    (version "0.47.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/brick/brick-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s0frxr6spgxzzvnym8rf40wj261clv7yfy2fxgm8iyjrr0ki49h"))))
    (properties `((upstream-name . "brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fdemos")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-config-ini)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-data-clist)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-zipper)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-vty)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-word-wrap)))
    (home-page "https://github.com/jtdaugherty/brick/")
    (synopsis "A declarative terminal user interface library")
    (description
     "Write terminal applications painlessly with 'brick'! You write an
event handler and a drawing function and the library does the rest.


> module Main where
>
> import Brick
>
> ui :: Widget ()
> ui = str \"Hello, world!\"
>
> main :: IO ()
> main = simpleMain ui


To get started, see:

* <https://github.com/jtdaugherty/brick/blob/master/README.md The README>

* The <https://github.com/jtdaugherty/brick/blob/master/docs/guide.rst Brick user guide>

* The demonstration programs in the 'programs' directory


This package deprecates <http://hackage.haskell.org/package/vty-ui vty-ui>.")
    (license license:bsd-3)))

haskell-8.6-brick

(define-public haskell-8.6-bulletproofs
  (package
    (name "haskell-8.6-bulletproofs")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bulletproofs/bulletproofs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aw485g11mpx74wx3pb831z64jq085pvrp150fy0fbnjyi0ahvkc"))))
    (properties `((upstream-name . "bulletproofs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0cw0a7rz1wwqlk8w8rkcz84mwjj8gaf46q071dglxhazm0h7rf10")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-arithmoi)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-random-shuffle)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-discover)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/adjoint-io/bulletproofs#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/adjoint-io/bulletproofs#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-bulletproofs

(define-public haskell-8.6-conduit
  (package
    (name "haskell-8.6-conduit")
    (version "1.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/conduit/conduit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12c21vrij63z60y3xd0dkg0da8sdhfq6nj5s3p5qknys5klwpqkq"))))
    (properties `((upstream-name . "conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zaphzg2pdky5hralk0xkqcc0rcsdf7mj385yp5hax31yijjlmyz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-silently)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Streaming data processing library.")
    (description
     "`conduit` is a solution to the streaming data problem, allowing for production,
transformation, and consumption of streams of data in constant memory. It is an
alternative to lazy I\\/O which guarantees deterministic resource handling.

For more information about conduit in general, and how this package in
particular fits into the ecosystem, see [the conduit
homepage](https://github.com/snoyberg/conduit#readme).

Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/conduit>.")
    (license license:expat)))

haskell-8.6-conduit

(define-public haskell-8.6-core-data
  (package
    (name "haskell-8.6-core-data")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-data/core-data-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17lvpbyrr9wm93qprk45n5gf3f6k47f9wf7ays0bfk0hx23chc1n"))))
    (properties `((upstream-name . "core-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-core-text)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/oprdyn/unbeliever#readme")
    (synopsis
     "Convenience wrappers around common data structures and encodings")
    (description
     "Wrappers around common data structures and encodings.

This is part of a library intended to ease interoperability and assist in
building command-line programs, both tools and longer-running daemons.
A list of features and some background to the library's design is contained
in the
<https://github.com/oprdyn/unbeliever/blob/master/README.markdown README>
on GitHub.")
    (license license:bsd-3)))

haskell-8.6-core-data

(define-public haskell-8.6-criterion
  (package
    (name "haskell-8.6-criterion")
    (version "1.5.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion/criterion-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0m2k323r00q3x5fk8gfcd2y39kmj35nzb8fwqmxjlg7kiz3nkyx5"))))
    (properties `((upstream-name . "criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast" "-f-embed-data-files")
       #:cabal-revision
       ("2" "08ln88xm8p192h30sdldl65zv7lv1blrwca6s98z3db8mdhqnsws")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-binary-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-code-page)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-criterion-measurement)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-js-flot)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-js-jquery)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-microstache)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mwc-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-statistics)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-algorithms)))
    (home-page "http://www.serpentine.com/criterion")
    (synopsis "Robust, reliable performance measurement and analysis")
    (description
     "This library provides a powerful but simple way to measure software
performance.  It provides both a framework for executing and
analysing benchmarks and a set of driver functions that makes it
easy to build and run benchmarks, and to analyse their results.

The fastest way to get started is to read the
<http://www.serpentine.com/criterion/tutorial.html online tutorial>,
followed by the documentation and examples in the \"Criterion.Main\"
module.

For examples of the kinds of reports that criterion generates, see
<http://www.serpentine.com/criterion the home page>.")
    (license license:bsd-3)))

haskell-8.6-criterion

(define-public haskell-8.6-crypto-pubkey
  (package
    (name "haskell-8.6-crypto-pubkey")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-pubkey/crypto-pubkey-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vmmx2fqq2xc3xfavy22i2nyynpk88jhmjr62qgxw5w5qgsz5k60"))))
    (properties `((upstream-name . "crypto-pubkey") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-crypto-numbers)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-random)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/vincenthz/hs-crypto-pubkey")
    (synopsis "Public Key cryptography")
    (description
     "Public Key cryptography

Supports RSA PKCS15, RSA OAEP, RSA PSS, DSA, ElGamal signature.

Also have primitive support for Diffie Hellman, and ElGamal encryption")
    (license license:bsd-3)))

haskell-8.6-crypto-pubkey

(define-public haskell-8.6-crypto-pubkey-openssh
  (package
    (name "haskell-8.6-crypto-pubkey-openssh")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-pubkey-openssh/crypto-pubkey-openssh-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ndb1crjl3xbd18bfs3ipqbzn120mpqnn27jfi4vjqf5ak48b444"))))
    (properties `((upstream-name . "crypto-pubkey-openssh") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-openssh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-asn1-types)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)))
    (home-page "https://github.com/knsd/crypto-pubkey-openssh")
    (synopsis "OpenSSH keys decoder/encoder")
    (description "OpenSSH keys decoder/encoder")
    (license license:expat)))

haskell-8.6-crypto-pubkey-openssh

(define-public haskell-8.6-cyclotomic
  (package
    (name "haskell-8.6-cyclotomic")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cyclotomic/cyclotomic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d2jnpgal88j05jk62p3xwfkarigclgw2hy77ph0lii360wijljh"))))
    (properties `((upstream-name . "cyclotomic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-arithmoi)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-test-framework-smallcheck)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://hackage.haskell.org/package/cyclotomic")
    (synopsis "A subfield of the complex numbers for exact calculation.")
    (description "The cyclotomic numbers are a subset of the
complex numbers that are represented exactly, enabling exact
computations and equality comparisons.  They
contain the Gaussian rationals (complex numbers
of the form p + q i with p and q rational), as well
as all complex roots of unity.  The
cyclotomic numbers contain the square roots of
all rational numbers.  They contain the sine and
cosine of all rational multiples of pi.
The cyclotomic numbers form a field, being closed under
addition, subtraction, mutiplication, and division.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-cyclotomic

(define-public haskell-8.6-distribution-opensuse
  (package
    (name "haskell-8.6-distribution-opensuse")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distribution-opensuse/distribution-opensuse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1drjlcakv48djnqyrl50c6l974zrxm1gq3z8cx58xndfb2j0hzq6"))))
    (properties `((upstream-name . "distribution-opensuse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Diff)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-hsemail)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-parsec-class)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-turtle)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/peti/distribution-opensuse/")
    (synopsis
     "Types, functions, and tools to manipulate the openSUSE distribution")
    (description
     "This library is a loose collection of types, functions, and tools that
users and developers of the
<https://opensuse.org/ openSUSE Linux distribution> might find useful.")
    (license license:bsd-3)))

haskell-8.6-distribution-opensuse

(define-public haskell-8.6-enum-text
  (package
    (name "haskell-8.6-enum-text")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enum-text/enum-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v48hmxbpzjpclg1q0avrc1dp4giglbxy2rkqnbj4f0sprp03kff"))))
    (properties `((upstream-name . "enum-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-fmt)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-possibly)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/cdornan/enum-text#readme")
    (synopsis "A text rendering and parsing toolkit for enumerated types")
    (description
     "A text rendering and parsing toolkit for enumerated types. Please see the README on GitHub at <https://github.com/cdornan/enum-text#readme>")
    (license license:bsd-3)))

haskell-8.6-enum-text

(define-public haskell-8.6-envelope
  (package
    (name "haskell-8.6-envelope")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/envelope/envelope-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ybyhq3yfcyaj1q1pwm41xzyfjdkmy6lls0n7kn5ks06z7inykfg"))))
    (properties `((upstream-name . "envelope") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/cdepillabout/envelope#readme")
    (synopsis
     "Defines generic 'Envelope' type to wrap reponses from a JSON API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-envelope

(define-public haskell-8.6-eventful-core
  (package
    (name "haskell-8.6-eventful-core")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-core/eventful-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06chbjrxfxk0fr9lgdic6bmylnv3kz398l9drqr85r6qk1s5xxg0"))))
    (properties `((upstream-name . "eventful-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-path-pieces)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-sum-type-boilerplate)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Core module for eventful")
    (description "Core module for eventful")
    (license license:expat)))

haskell-8.6-eventful-core

(define-public haskell-8.6-file-modules
  (package
    (name "haskell-8.6-file-modules")
    (version "0.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-modules/file-modules-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgjy3axfhgv5nkvwbaylc8hc8d1fjb53n2rhmpxfzppa6yjvspz"))))
    (properties `((upstream-name . "file-modules") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-MissingH)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-regex-compat)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yamadapc/stack-run-auto")
    (synopsis "Takes a Haskell source-code file and outputs its modules.")
    (description
     "Uses @@haskell-src-exts@@ to parse module imports and follows links
. to local modules in order to build a list of module dependencies.")
    (license license:expat)))

haskell-8.6-file-modules

(define-public haskell-8.6-flat-mcmc
  (package
    (name "haskell-8.6-flat-mcmc")
    (version "1.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flat-mcmc/flat-mcmc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fi18hx6mz7qskhnnjviaghqz0vsbrvglyk16xzj3kywx70hakpb"))))
    (properties `((upstream-name . "flat-mcmc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-formatting)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mcmc-types)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-monad-par)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-mwc-probability)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/jtobin/flat-mcmc")
    (synopsis "Painless general-purpose sampling.")
    (description
     "flat-mcmc is a Haskell library for painless, efficient, general-purpose
sampling from continuous distributions.

flat-mcmc uses an ensemble sampler that is invariant to affine
transformations of space.  It wanders a target probability distribution's
parameter space as if it had been \"flattened\" or \"unstretched\" in some sense,
allowing many particles to explore it locally and in parallel.

In general this sampler is useful when you want decent performance without
dealing with any tuning parameters or local proposal distributions.

flat-mcmc exports an 'mcmc' function that prints a trace to stdout, as well
as a 'flat' transition operator that can be used more generally.

> import Numeric.MCMC.Flat
> import qualified Data.Vector.Unboxed as U (unsafeIndex)
>
> rosenbrock :: Particle -> Double
> rosenbrock xs = negate (5  * (x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2) where
>   x0 = U.unsafeIndex xs 0
>   x1 = U.unsafeIndex xs 1
>
> origin :: Ensemble
> origin = ensemble [
>     particle [negate 1.0, negate 1.0]
>   , particle [negate 1.0, 1.0]
>   , particle [1.0, negate 1.0]
>   , particle [1.0, 1.0]
>   ]
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 12500 origin rosenbrock")
    (license license:expat)))

haskell-8.6-flat-mcmc

(define-public haskell-8.6-generic-data-surgery
  (package
    (name "haskell-8.6-generic-data-surgery")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-data-surgery/generic-data-surgery-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02pnxdhmc5m7i9m269s1pggn6gsqj73flv6d86zfkpnqwwsvd5qs"))))
    (properties `((upstream-name . "generic-data-surgery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-first-class-families)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-generic-data)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/Lysxia/generic-data-surgery#readme")
    (synopsis "Surgery for generic data types")
    (description
     "Transform data types before passing them to generic functions.")
    (license license:expat)))

haskell-8.6-generic-data-surgery

(define-public haskell-8.6-genvalidity-hspec-aeson
  (package
    (name "haskell-8.6-genvalidity-hspec-aeson")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-aeson/genvalidity-hspec-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vqbvkjhq35jm3sr7g5jmwnalzcf8yy76fvd33x6gwayv78rp0ab"))))
    (properties `((upstream-name . "genvalidity-hspec-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-genvalidity-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for aeson-related instances")
    (description "")
    (license license:expat)))

haskell-8.6-genvalidity-hspec-aeson

(define-public haskell-8.6-genvalidity-path
  (package
    (name "haskell-8.6-genvalidity-path")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-path/genvalidity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sv059xwz0qrw5718qszh3h7n923xxq3klvzmfrr7k4k5q48513l"))))
    (properties `((upstream-name . "genvalidity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-genvalidity)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-validity-path)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Path")
    (description "")
    (license license:expat)))

haskell-8.6-genvalidity-path

(define-public haskell-8.6-gloss-examples
  (package
    (name "haskell-8.6-gloss-examples")
    (version "1.13.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-examples/gloss-examples-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g2l3jjj2mmmw9w45bmasqn9nbbsxxny6zhdvda931r6ryanq8db"))))
    (properties `((upstream-name . "gloss-examples") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-llvm")
       #:cabal-revision
       ("1" "0nl59mlaz1g1f5rfi1mdzpw0wm2dwk0jnjj0rlfn0lil9pbm8xd7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-bmp)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-gloss)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-gloss-algorithms)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-gloss-raster)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-repa)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-repa-algorithms)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-repa-io)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Examples using the gloss library")
    (description
     "Examples using the gloss graphics library.
A mixed bag of fractals, particle simulations and cellular automata.")
    (license license:expat)))

haskell-8.6-gloss-examples

(define-public haskell-8.6-greskell
  (package
    (name "haskell-8.6-greskell")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell/greskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0byg8f4m5n2l81y1l6lnd6zyskk1y7wj1983ziw29jkpyckjbpgl"))))
    (properties `((upstream-name . "greskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-hint-test" "-f-server-test" "-f-server-behavior-test")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-doctest-discover)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-greskell-core)
                  (@ (gnu packages stackage ghc-8.6 stage012) haskell-8.6-hint)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell binding for Gremlin graph query language")
    (description
     "Haskell binding for [Gremlin graph query language](http://tinkerpop.apache.org/gremlin.html).
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is the main entry point of greskell family.
It re-exports [greskell-core](http://hackage.haskell.org/package/greskell-core) package,
and adds some useful functions to it.")
    (license license:bsd-3)))

haskell-8.6-greskell

(define-public haskell-8.6-greskell-websocket
  (package
    (name "haskell-8.6-greskell-websocket")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/greskell-websocket/greskell-websocket-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wz4x7n64cwdjsmyziy9v76aa7p3kxjmbd9bfxc4rpqdjyfk34px"))))
    (properties `((upstream-name . "greskell-websocket") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-server-test")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-greskell-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hashtables)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/debug-ito/greskell/")
    (synopsis "Haskell client for Gremlin Server using WebSocket serializer")
    (description
     "Haskell client for [Gremlin Server](http://tinkerpop.apache.org/docs/current/reference/#gremlin-server) using WebSocket serializer.
See [README.md](https://github.com/debug-ito/greskell/blob/master/README.md) for detail.

This package is based on [greskell-core](http://hackage.haskell.org/package/greskell-core),
and best used with [greskell](http://hackage.haskell.org/package/greskell) package.")
    (license license:bsd-3)))

haskell-8.6-greskell-websocket

(define-public haskell-8.6-groom
  (package
    (name "haskell-8.6-groom")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/groom/groom-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17g51p15209wwgq83clsd97xvy4kchbx8jzh74qgc9hvmz9s9d56"))))
    (properties `((upstream-name . "groom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)))
    (home-page "https://hackage.haskell.org/package/groom")
    (synopsis "Pretty printing for well-behaved Show
instances.")
    (description
     "Automatically derived Show instances are an easy way
to inspect data in your program.  However, for large
data-structures, the resulting output lacks
whitespace, making it unreadable.  Groom offers an
replacement to `show' called `groom' which attempts
to pretty-print the output of `show'.  For example:

> let x = parseExp \"foobar 1 [1,2]\"
> in do
>   putStrLn (show x)
>   putStrLn (groom x)

results in:

> ParseOk (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1))) (List [Lit (Int 1),Lit (Int 2)]))
> ParseOk
>   (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1)))
>      (List [Lit (Int 1), Lit (Int 2)]))

Groom works only on Show instances that output valid
Haskell code; if Groom can't understand its input,
it will not make any changes.")
    (license license:bsd-3)))

haskell-8.6-groom

(define-public haskell-8.6-hadolint
  (package
    (name "haskell-8.6-hadolint")
    (version "1.17.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hadolint/hadolint-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00lyf2m6q866383q79b705xhn987504wz3fp3zh7m8580v8phy5p"))))
    (properties `((upstream-name . "hadolint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-HsYAML)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-ShellCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-gitrev)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-language-docker)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "https://github.com/hadolint/hadolint")
    (synopsis "Dockerfile Linter JavaScript API")
    (description
     "A smarter Dockerfile linter that helps you build best practice Docker images.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-hadolint

(define-public haskell-8.6-haskell-names
  (package
    (name "haskell-8.6-haskell-names")
    (version "0.9.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-names/haskell-names-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ad0kdp4a9gq10g9flmmjn0ibfaipq2qnrz5a13r1mgyb6skzc5j"))))
    (properties `((upstream-name . "haskell-names") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-data-lens-light)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-traverse-with-class)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)))
    (home-page "http://documentup.com/haskell-suite/haskell-names")
    (synopsis "Name resolution library for Haskell")
    (description
     "This package takes modules parsed with `haskell-src-exts`, resolves used names and annotates the parsed module with scoping information.")
    (license license:bsd-3)))

haskell-8.6-haskell-names

(define-public haskell-8.6-haskell-src-exts-util
  (package
    (name "haskell-8.6-haskell-src-exts-util")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts-util/haskell-src-exts-util-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fvqi72m74p7q5sbpy8m2chm8a1lgy10mfrcxcz8wrh59vngj0n8"))))
    (properties `((upstream-name . "haskell-src-exts-util") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)))
    (home-page "https://github.com/pepeiborra/haskell-src-exts-util")
    (synopsis "Helper functions for working with haskell-src-exts trees")
    (description "Helper functions for working with haskell-src-exts trees.")
    (license license:bsd-3)))

haskell-8.6-haskell-src-exts-util

(define-public haskell-8.6-haskell-src-meta
  (package
    (name "haskell-8.6-haskell-src-meta")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-meta/haskell-src-meta-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17znnaqj2hnnfyc9p9xjzbs97h2jh1h4f4qbw648y3xa14wx5ra9"))))
    (properties `((upstream-name . "haskell-src-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-th-orphans)))
    (home-page "https://hackage.haskell.org/package/haskell-src-meta")
    (synopsis "Parse source to template-haskell abstract syntax.")
    (description "The translation from haskell-src-exts abstract syntax
to template-haskell abstract syntax isn't 100% complete yet.")
    (license license:bsd-3)))

haskell-8.6-haskell-src-meta

(define-public haskell-8.6-haskintex
  (package
    (name "haskell-8.6-haskintex")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskintex/haskintex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1n6xbk8mc4n7a7w9hw2q21ya784jd2wqfvx54iqz9fik5w8p8jcx"))))
    (properties `((upstream-name . "haskintex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-HaTeX)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage012) haskell-8.6-hint)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "http://daniel-diaz.github.io/projects/haskintex")
    (synopsis "Haskell Evaluation inside of LaTeX code.")
    (description
     "The /haskintex/ (Haskell in LaTeX) program is a tool that reads a LaTeX file and evaluates Haskell expressions contained
in some specific commands and environments. It allows you to define your own functions, use any GHC Haskell language
extension and, in brief, anything you can do within Haskell.
Additionally, it is possible to include expressions of 'LaTeX' type (see /HaTeX/ package) and render them as LaTeX code.
You can freely add any Haskell code you need, and make this code appear /optionally/ in the LaTeX output. It is a tiny program,
and therefore, easy to understand, use and predict.

Additions from last version:

* /haskintex/ is now able to detect that is running on a cabal sandbox, and will use the sandbox package
db if this is the case. Unless the flag @@-nosandbox@@ is given, in which case the sandbox will be ignored.

* New flag @@-nosandbox@@. Ignore sandbox if /haskintex/ runs on one.
")
    (license license:bsd-3)))

haskell-8.6-haskintex

(define-public haskell-8.6-hsc2hs
  (package
    (name "haskell-8.6-hsc2hs")
    (version "0.68.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsc2hs/hsc2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1clj6bgs9vmiv3mjzp82lvyyik5zr5411nxab7hydbrgq94pbk70"))))
    (properties `((upstream-name . "hsc2hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-in-ghc-tree")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://hackage.haskell.org/package/hsc2hs")
    (synopsis
     "A preprocessor that helps with writing Haskell bindings to C code")
    (description
     "The hsc2hs program can be used to automate some parts of the
process of writing Haskell bindings to C code.  It reads an
almost-Haskell source file with embedded special constructs, and
outputs a real Haskell file with these constructs processed, based
on information taken from some C headers.  The extra constructs
provide Haskell counterparts of C types, values of C constants,
including sizes of C types, and access to fields of C structs.

For more details, see the
<http://downloads.haskell.org/~ghc/master/users-guide/utils.html#writing-haskell-interfaces-to-c-code-hsc2hs hsc2hs section>
in the GHC User's Guide.")
    (license license:bsd-3)))

haskell-8.6-hsc2hs

(define-public haskell-8.6-hspec-pg-transact
  (package
    (name "haskell-8.6-hspec-pg-transact")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-pg-transact/hspec-pg-transact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "030wy3ajlfd7pi6gwfn6xcsl2yi0gvznxl8m7kq001bkiabjmv55"))))
    (properties `((upstream-name . "hspec-pg-transact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-pg-transact)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tmp-postgres)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/jfischoff/pg-transact-hspec#readme")
    (synopsis "Helpers for creating database tests with hspec and pg-transact")
    (description
     "Helpers for creating database tests with hspec and pg-transact

@@hspec-pg-transact@@ utilizes @@tmp-postgres@@ to automatically and connect to a temporary instance of @@postgres@@ on a random port.

>
> describeDB migrate \"Query” $
>   itDB \"work\" $ do
>     execute_ [sql|
>       INSERT INTO things
>       VALUES (‘me’) |]
>     query_ [sql|
>       SELECT name
>        FROM things |]
>       `shouldReturn` [Only \"me\"]

In the example above @@describeDB@@ wraps @@describe@@ with a @@beforeAll@@ hook for creating a db and a @@afterAll@@ hook for stopping a db.

Tests can be written with @@itDB@@ which is wrapper around @@it@@ that uses the passed in @@Connection@@ to run a db transaction automatically for the test.

The libary also provides a few other functions for more fine grained control over running transactions in tests.
")
    (license license:bsd-3)))

haskell-8.6-hspec-pg-transact

(define-public haskell-8.6-htoml
  (package
    (name "haskell-8.6-htoml")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/htoml/htoml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vw59kmwwqcr6ja9rx2q5l7s78n384cl7fdbq1azp03g6a5diy08"))))
    (properties `((upstream-name . "htoml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1aci42zkrsbnxh090aah3j2c094gqkb0yh7i2prvlkhfsfi8r70b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/cies/htoml")
    (synopsis "Parser for TOML files")
    (description "TOML is an obvious and minimal format for config files.

This package provides a TOML parser,
build with the Parsec library. It exposes a JSON
interface using the Aeson library.")
    (license license:bsd-3)))

haskell-8.6-htoml

(define-public haskell-8.6-inline-c-cpp
  (package
    (name "haskell-8.6-inline-c-cpp")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-c-cpp/inline-c-cpp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sxwx9dh60qfpa72dymj015zwd6prhb70x5mkabqzi7nhg3aakln"))))
    (properties `((upstream-name . "inline-c-cpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-inline-c)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://hackage.haskell.org/package/inline-c-cpp")
    (synopsis "Lets you embed C++ code into Haskell.")
    (description
     "Utilities to inline C++ code into Haskell using inline-c.  See
tests for example on how to build.")
    (license license:expat)))

haskell-8.6-inline-c-cpp

(define-public haskell-8.6-inline-r
  (package
    (name "haskell-8.6-inline-r")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-r/inline-r-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lwdmdd4mx800zmiyg5z8nkpg2x31lqw74pgb515kyb9v97jykr4"))))
    (properties `((upstream-name . "inline-r") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-inline-c)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-setenv)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-singletons)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-th-lift)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-th-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages statistics) r)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://tweag.github.io/HaskellR")
    (synopsis
     "Seamlessly call R from Haskell and vice versa. No FFI required.")
    (description "For up to date Haddock documentation, please see
<http://www.stackage.org/package/inline-r>.")
    (license license:bsd-3)))

haskell-8.6-inline-r

(define-public haskell-8.6-interpolator
  (package
    (name "haskell-8.6-interpolator")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolator/interpolator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kkasycgba525mag4362w8kirnxjydrmh7gjqk5xs6zgcp1ralb7"))))
    (properties `((upstream-name . "interpolator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-product-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)))
    (home-page "https://github.com/tvision-insights/interpolator")
    (synopsis
     "Runtime interpolation of environment variables in records using profunctors")
    (description
     "Runtime interpolation of environment variables in records using profunctors. See
the [README](https://github.com/tvision-insights/interpolator/blob/master/README.md).")
    (license license:expat)))

haskell-8.6-interpolator

(define-public haskell-8.6-kan-extensions
  (package
    (name "haskell-8.6-kan-extensions")
    (version "5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kan-extensions/kan-extensions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lyvyiwwh962j2nnnsqzlvp5zq6z8p3spvhmji99cjvldxc7wwkb"))))
    (properties `((upstream-name . "kan-extensions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1kiazy9sd42iham8h9f6biifiwc26x0fci4p0376wq1n6fcxl9y4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-invariant)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "http://github.com/ekmett/kan-extensions/")
    (synopsis
     "Kan extensions, Kan lifts, the Yoneda lemma, and (co)density (co)monads")
    (description
     "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads.")
    (license license:bsd-3)))

haskell-8.6-kan-extensions

(define-public haskell-8.6-kleene
  (package
    (name "haskell-8.6-kleene")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kleene/kleene-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00w1gywdhqyy2k3y238gfjs9h2w4pjanmi45bna5lj215n0jb0hg"))))
    (properties `((upstream-name . "kleene") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0fqzr4bwiif9ifmdjxkcnky9hn5ygn8pj3gd004dc27nx6dhxzmc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-MemoTrie)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-lattices)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-range-set-list)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-regex-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-step-function)))
    (home-page "https://github.com/phadej/kleene")
    (synopsis "Kleene algebra")
    (description
     "Kleene algebra

Think: Regular expressions

Implements ideas from /Regular-expression derivatives re-examined/ by
Scott Owens, John Reppy and Aaron Turon
<https://doi.org/10.1017/S0956796808007090>")
    (license license:bsd-3)))

haskell-8.6-kleene

(define-public haskell-8.6-liboath-hs
  (package
    (name "haskell-8.6-liboath-hs")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/liboath-hs/liboath-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ikh4rch2zdv9xan70qkf68m9hdz8k86ji7jw9xci1cvg318zd1k"))))
    (properties `((upstream-name . "liboath-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rkmsnxn41i542zpxmp9agz9kzk4r3krklr0f1awf27cn44r4v64")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-inline-c)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)
                  (@ (gnu packages authentication) oath-toolkit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages authentication) oath-toolkit)))
    (home-page "https://github.com/parsonsmatt/liboath-hs#readme")
    (synopsis "Bindings to liboath")
    (description "See README for details.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-liboath-hs

(define-public haskell-8.6-massiv-io
  (package
    (name "haskell-8.6-massiv-io")
    (version "0.1.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-io/massiv-io-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0splwbavahv3g0p1pyhym9hwncaw7zd5f12girwxlwhcdwrsgz3r"))))
    (properties `((upstream-name . "massiv-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r8vbzh2hmyh736ihwvrp8xb8c8xrjw5zi0yk68vrg0bi4szp4jj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-massiv)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-netpbm)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis "Import/export of Image files into massiv Arrays")
    (description
     "This package contains functionality for import/export of arrays
into the real world. For now it only has the ability to read/write
image files in various formats.")
    (license license:bsd-3)))

haskell-8.6-massiv-io

(define-public haskell-8.6-massiv-test
  (package
    (name "haskell-8.6-massiv-test")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-test/massiv-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13sp8xw7rbwqgafn3f5f971l9i80cm09fan27cgpx8r8nmyrmhp2"))))
    (properties `((upstream-name . "massiv-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1180fwsk9kmckyxdygc367ivknyj07i98ppnqihp3qk9x4iy15bc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-massiv)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-scheduler)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis
     "Library that contains generators, properties and tests for Massiv Array Library.")
    (description
     "This library is designed for users of massiv library that need random generators for writing custom property tests and reusing some of the predefined ones.")
    (license license:bsd-3)))

haskell-8.6-massiv-test

(define-public haskell-8.6-mutable-containers
  (package
    (name "haskell-8.6-mutable-containers")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mutable-containers/mutable-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zhkhlvg9yw45fg3srvzx7j81547djpkfw7higdvlj7fmph6c6b4"))))
    (properties `((upstream-name . "mutable-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Abstactions and concrete implementations of mutable containers")
    (description
     "See docs and README at <http://www.stackage.org/package/mutable-containers>")
    (license license:expat)))

haskell-8.6-mutable-containers

(define-public haskell-8.6-mwc-probability-transition
  (package
    (name "haskell-8.6-mwc-probability-transition")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-probability-transition/mwc-probability-transition-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s770dhcj2ig1nj57fmwa1z5q7dbk2mx9rw4civkk9xjygrvci1y"))))
    (properties `((upstream-name . "mwc-probability-transition")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-logging-effect)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-mwc-probability)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "https://github.com/ocramz/mwc-probability-transition")
    (synopsis "A Markov stochastic transition operator with logging")
    (description
     "
This package provides a 'Transition' type that is useful for modelling (and debugging) stochastic transition kernels (used in e.g. the integration of SDEs, Markov chain Monte Carlo algorithms etc.).

It wraps the compositional random sampling functionality of `mwc-probability` and offers structured logging via `logging-effect`.")
    (license license:bsd-3)))

haskell-8.6-mwc-probability-transition

(define-public haskell-8.6-netwire-input-glfw
  (package
    (name "haskell-8.6-netwire-input-glfw")
    (version "0.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netwire-input-glfw/netwire-input-glfw-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r186xwr5lycs0snr8amvyxvbq2l5jd9p20v8n12zyjm60kmi90y"))))
    (properties `((upstream-name . "netwire-input-glfw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-GLFW-b)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-OpenGL)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-netwire)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-netwire-input)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxcursor)
                             (@ (gnu packages xorg) libxi)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxxf86vm)))
    (home-page "https://www.github.com/Mokosha/netwire-input-glfw")
    (synopsis "GLFW instance of netwire-input")
    (description "This package contains the necessary glue to allow the use
of wires from the netwire-input package. In general, the
types associated here should be used only sparingly to
plumb the input state through your netwire program.
Otherwise, the state should not be modified directly.")
    (license license:expat)))

haskell-8.6-netwire-input-glfw

(define-public haskell-8.6-network-ip
  (package
    (name "haskell-8.6-network-ip")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-ip/network-ip-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0p4mn7vz74kxmsc8xvg7gx5rs38knnv518bc0qv0b07ki51wq7g0"))))
    (properties `((upstream-name . "network-ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-data-dword)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-endian)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-data-serializer)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-data-textual)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-text-printer)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-type-hint)))
    (home-page "https://github.com/mvv/network-ip")
    (synopsis "Internet Protocol data structures")
    (description "This package provides Internet Protocol data structures")
    (license license:bsd-3)))

haskell-8.6-network-ip

(define-public haskell-8.6-pairing
  (package
    (name "haskell-8.6-pairing")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pairing/pairing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0phw8caxrxyr2wlk8gcmrr8k03d0vnc4rq5c88dh3bb9jz4fdpcw"))))
    (properties `((upstream-name . "pairing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0lfv9kh7gxcmwrsb2hkdfhpxhig0bnadx3wbz9scbidz09d6a2fa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-arithmoi)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-galois-field)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hexstring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-discover)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/adjoint-io/pairing#readme")
    (synopsis "Bilinear pairings")
    (description "Optimal Ate pairing over Barreto-Naehrig curves")
    (license license:expat)))

haskell-8.6-pairing

(define-public haskell-8.6-pipes-bytestring
  (package
    (name "haskell-8.6-pipes-bytestring")
    (version "2.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-bytestring/pipes-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "061wcb48mdq694zhwb5xh423ss6f7cccxahc05cifrzkh033gp5i"))))
    (properties `((upstream-name . "pipes-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-pipes-group)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-pipes-parse)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-stringsearch)))
    (home-page "https://hackage.haskell.org/package/pipes-bytestring")
    (synopsis "ByteString support for pipes")
    (description
     "This library provides @@pipes@@ utilities for @@ByteString@@s")
    (license license:bsd-3)))

haskell-8.6-pipes-bytestring

(define-public haskell-8.6-pipes-wai
  (package
    (name "haskell-8.6-pipes-wai")
    (version "3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-wai/pipes-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0akd0n2qgv32pcq717j2xr2g29qmaz2v610ddx7vc4hc2kgp19h4"))))
    (properties `((upstream-name . "pipes-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (home-page "http://github.com/iand675/pipes-wai")
    (synopsis "A port of wai-conduit for the pipes ecosystem")
    (description
     "A light-weight wrapper around Network.Wai to provide easy pipes support.")
    (license license:expat)))

haskell-8.6-pipes-wai

(define-public haskell-8.6-postgresql-orm
  (package
    (name "haskell-8.6-postgresql-orm")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-orm/postgresql-orm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fqas5ycxx43lvc8zm6ljh3lqgrhwrn712r2ijyjswdqrmf7wl53"))))
    (properties `((upstream-name . "postgresql-orm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://hackage.haskell.org/package/postgresql-orm")
    (synopsis
     "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL.")
    (description
     "An ORM (Object Relational Mapping) and migrations DSL for PostgreSQL. See
\"Database.PostgreSQL.ORM\" for documentation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-postgresql-orm

(define-public haskell-8.6-postgresql-simple-queue
  (package
    (name "haskell-8.6-postgresql-simple-queue")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple-queue/postgresql-simple-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gss9s2splrvwgxhkjpqvx0cg9kx9dqpw4aq2wbh8l879v2nj2rk"))))
    (properties `((upstream-name . "postgresql-simple-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-pg-transact)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/jfischoff/postgresql-queue#readme")
    (synopsis "A PostgreSQL backed queue")
    (description
     "This module utilize PostgreSQL to implement a durable queue for efficently processing arbitrary payloads which can be represented as JSON.

Typically a producer would enqueue a new payload as part of larger database
transaction

>  createAccount userRecord = do
>     'runDBTSerializable' $ do
>        createUserDB userRecord
>        'enqueueDB' \"queue_schema\" $ makeVerificationEmail userRecord

In another thread or process, the consumer would drain the queue.

>   forever $ do
>     -- Attempt get a payload or block until one is available
>     payload <- lock \"queue\" conn
>
>     -- Perform application specifc parsing of the payload value
>     case fromJSON $ pValue payload of
>       Success x -> sendEmail x -- Perform application specific processing
>       Error err -> logErr err
>
>     -- Remove the payload from future processing
>     dequeue \"queue\" conn $ pId payload
>
> To support multiple queues in the same database, the API expects a table name string
> to determine which queue tables to use.")
    (license license:bsd-3)))

haskell-8.6-postgresql-simple-queue

(define-public haskell-8.6-proto-lens-protoc
  (package
    (name "haskell-8.6-proto-lens-protoc")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-protoc/proto-lens-protoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r6il4gvvcggxxbz2hq1kkw1qwk1rspqcb2j04ngd06pmvicw78n"))))
    (properties `((upstream-name . "proto-lens-protoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-lens-family)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-proto-lens)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Protocol buffer compiler for the proto-lens library.")
    (description
     "Turn protocol buffer files (.proto) into Haskell files (.hs) which can be used with the proto-lens package.
The library component of this package contains compiler code (namely Data.ProtoLens.Compiler.*) is not guaranteed to have stable APIs.'")
    (license license:bsd-3)))

haskell-8.6-proto-lens-protoc

(define-public haskell-8.6-pushbullet-types
  (package
    (name "haskell-8.6-pushbullet-types")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pushbullet-types/pushbullet-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ny8nlk50cn6zgikg7xwylkrablj05vcm5gjm9y4zdzhbz7s4qb4"))))
    (properties `((upstream-name . "pushbullet-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/pushbullet-types")
    (synopsis "Datatypes used by the Pushbullet APIs")
    (description "")
    (license license:expat)))

haskell-8.6-pushbullet-types

(define-public haskell-8.6-quadratic-irrational
  (package
    (name "haskell-8.6-quadratic-irrational")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quadratic-irrational/quadratic-irrational-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kfgvixvcawfhw4vv0zg2r0d6hrlak01q9isqc3n3lc63qaifxgy"))))
    (properties `((upstream-name . "quadratic-irrational") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11snayb371lpsz7p74sbbl3kq0i3i2vnp852x8vw482v48kld5vl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-arithmoi)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-numbers)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/ion1/quadratic-irrational")
    (synopsis "An implementation of quadratic irrationals")
    (description
     "A library for exact computation with
<http://en.wikipedia.org/wiki/Quadratic_irrational quadratic irrationals>
with support for exact conversion from and to
<http://en.wikipedia.org/wiki/Periodic_continued_fraction (potentially periodic) simple continued fractions>.

A quadratic irrational is a number that can be expressed in the form

> (a + b √c) / d

where @@a@@, @@b@@ and @@d@@ are integers and @@c@@ is a square-free natural number.

Some examples of such numbers are

* @@7/2@@,

* @@√2@@,

* @@(1 + √5)\\/2@@
(<http://en.wikipedia.org/wiki/Golden_ratio the golden ratio>),

* solutions to quadratic equations with rational constants – the
<http://en.wikipedia.org/wiki/Quadratic_formula quadratic formula> has a
familiar shape.

A simple continued fraction is a number expressed in the form

> a + 1/(b + 1/(c + 1/(d + 1/(e + …))))

or alternatively written as

> [a; b, c, d, e, …]

where @@a@@ is an integer and @@b@@, @@c@@, @@d@@, @@e@@, … are positive integers.

Every finite SCF represents a rational number and every infinite, periodic
SCF represents a quadratic irrational.

> 3.5      = [3; 2]
> (1+√5)/2 = [1; 1, 1, 1, …]
> √2       = [1; 2, 2, 2, …]")
    (license license:expat)))

haskell-8.6-quadratic-irrational

(define-public haskell-8.6-quickcheck-state-machine
  (package
    (name "haskell-8.6-quickcheck-state-machine")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-state-machine/quickcheck-state-machine-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zbjap2jjd534w6cigi4xz34x3f6w8icvxyvxs35j61c52cp2pry"))))
    (properties `((upstream-name . "quickcheck-state-machine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-matrix)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tree-diff)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page
     "https://github.com/advancedtelematic/quickcheck-state-machine#readme")
    (synopsis "Test monadic programs using state machine based models")
    (description
     "See README at <https://github.com/advancedtelematic/quickcheck-state-machine#readme>")
    (license license:bsd-3)))

haskell-8.6-quickcheck-state-machine

(define-public haskell-8.6-random-fu
  (package
    (name "haskell-8.6-random-fu")
    (version "0.2.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-fu/random-fu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "071b3gi88kmrfiy6kyz1x67mqljwqb4l45vzg1rc2zig3iwy66ih"))))
    (properties `((upstream-name . "random-fu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4_2" "-fmtl2")
       #:cabal-revision
       ("1" "0fwvx9nf7vba6r5gfzw6xz4lfs8nlznv2bdlaj584iavppyqmp33")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-erf)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-math-functions)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-random-shuffle)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-random-source)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-rvar)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/mokus0/random-fu")
    (synopsis "Random number generation")
    (description "Random number generation based on modeling random
variables in two complementary ways: first, by the
parameters of standard mathematical distributions and,
second, by an abstract type ('RVar') which can be
composed and manipulated monadically and sampled in
either monadic or \\\"pure\\\" styles.

The primary purpose of this library is to support
defining and sampling a wide variety of high quality
random variables.  Quality is prioritized over speed,
but performance is an important goal too.

In my testing, I have found it capable of speed
comparable to other Haskell libraries, but still
a fair bit slower than straight C implementations of
the same algorithms.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-random-fu

(define-public haskell-8.6-regex-applicative-text
  (package
    (name "haskell-8.6-regex-applicative-text")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-applicative-text/regex-applicative-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ng2qhk4mvpzl8fx91ig7ldv09v9aqdsvn6yl9yjapc6h0ghb4xh"))))
    (properties `((upstream-name . "regex-applicative-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "16a2d8d84gzbjbvs7pc7sz5bi7rz2s5c57gkwi0vf5lmscgjy25h")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-regex-applicative)))
    (home-page "https://github.com/phadej/regex-applicative-text#readme")
    (synopsis "regex-applicative on text")
    (description "Wrapped regex-applicative primitives to work with Text")
    (license license:bsd-3)))

haskell-8.6-regex-applicative-text

(define-public haskell-8.6-relapse
  (package
    (name "haskell-8.6-relapse")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relapse/relapse-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06dam4albrjf3jppnvw77lldhwf2kkm65aw1dyyng3niwgsqmik5"))))
    (properties `((upstream-name . "relapse") (hidden? . #f)))
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
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-include-file)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/iostat/relapse#readme")
    (synopsis "Sensible RLP encoding")
    (description
     "An implementation of RLP as specified in the Ethereum Wiki, using Attoparsec")
    (license license:expat)))

haskell-8.6-relapse

(define-public haskell-8.6-rerebase
  (package
    (name "haskell-8.6-rerebase")
    (version "1.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rerebase/rerebase-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jbqif6k249rkknm2zwk8v8jil3kgi9ar53358v8l4ffx346rm82"))))
    (properties `((upstream-name . "rerebase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-rebase)))
    (home-page "https://github.com/nikita-volkov/rerebase ")
    (synopsis
     "Reexports from \"base\" with a bunch of other standard libraries")
    (description
     "A rich drop-in replacement for \\\"base\\\".
For details and docs please visit
<https://github.com/nikita-volkov/rerebase the project's GitHub page>.")
    (license license:expat)))

haskell-8.6-rerebase

(define-public haskell-8.6-result
  (package
    (name "haskell-8.6-result")
    (version "0.2.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/result/result-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ibqc5h2vxy4h3sn94jxmjk099fkainnyd2y457g4ldqv9ydj9pm"))))
    (properties `((upstream-name . "result") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-keys)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/srijs/haskell-result")
    (synopsis "Encode success or at least one error")
    (description "")
    (license license:expat)))

haskell-8.6-result

(define-public haskell-8.6-rg
  (package
    (name "haskell-8.6-rg")
    (version "1.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rg/rg-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1cnh3pmq80vziwr2rnz2zinlhak5abrkcpcrrs6x6jz0aq9npnj7"))))
    (properties `((upstream-name . "rg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-fmt)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-possibly)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/cdornan/rg#readme")
    (synopsis "A dynamic/unbounded alternative to Bounded Enum")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/rg#readme>")
    (license license:bsd-3)))

haskell-8.6-rg

(define-public haskell-8.6-salak-toml
  (package
    (name "haskell-8.6-salak-toml")
    (version "0.3.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/salak-toml/salak-toml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18spk2m75inddz9k0pwg58cr61rfbw1fnki56nnq7jng0wii376y"))))
    (properties `((upstream-name . "salak-toml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-salak)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tomland)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/leptonyu/salak#readme")
    (synopsis "Configuration Loader for toml")
    (description
     "Toml support for [salak](https://hackage.haskell.org/package/salak).")
    (license license:expat)))

haskell-8.6-salak-toml

(define-public haskell-8.6-sexp-grammar
  (package
    (name "haskell-8.6-sexp-grammar")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sexp-grammar/sexp-grammar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cmn5y72wp9dlzqzrv4rmfb1zm3zw517la0kf0vgyv3nhsn58397"))))
    (properties `((upstream-name . "sexp-grammar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ldn44hmgj254wkjh4j1x4mf2k7665pbc2d29lafrkyx83iaw2fk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-alex)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-invertible-grammar)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "https://github.com/esmolanka/sexp-grammar")
    (synopsis "Invertible grammar combinators for S-expressions")
    (description
     "Serialisation to and deserialisation from S-expressions derived from
a single grammar definition.")
    (license license:bsd-3)))

haskell-8.6-sexp-grammar

(define-public haskell-8.6-store
  (package
    (name "haskell-8.6-store")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/store/store-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vavjbwys2l97ncb2d761rn7kk14f0gqmhvday8lqyxv91skq124"))))
    (properties `((upstream-name . "store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-comparison-bench" "-f-integer-simple" "-f-small-bench")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-store-core)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
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
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Fast binary serialization")
    (description "")
    (license license:expat)))

haskell-8.6-store

(define-public haskell-8.6-streaming-attoparsec
  (package
    (name "haskell-8.6-streaming-attoparsec")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-attoparsec/streaming-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "151gjivqbadh1wfbj53d0ahw4cjax4nnhg1v0l1piqnp1mbz7j8y"))))
    (properties `((upstream-name . "streaming-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-streaming)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-streaming-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/haskell-streaming/streaming-attoparsec")
    (synopsis "Attoparsec integration for the streaming ecosystem")
    (description "Attoparsec integration for the streaming ecosystem.")
    (license license:bsd-3)))

haskell-8.6-streaming-attoparsec

(define-public haskell-8.6-streaming-cassava
  (package
    (name "haskell-8.6-streaming-cassava")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-cassava/streaming-cassava-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dr58azgyw7ihxrabva7fh0yafq2kx12yvap4jl6ljnlwvcapa5i"))))
    (properties `((upstream-name . "streaming-cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-streaming)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-streaming-bytestring)))
    (home-page "https://hackage.haskell.org/package/streaming-cassava")
    (synopsis "Cassava support for the streaming ecosystem")
    (description
     "Stream values to\\/from CSV using Cassava.

Support is available for both named and \\\"plain\\\" data types,
optional header support and option handling.")
    (license license:expat)))

haskell-8.6-streaming-cassava

(define-public haskell-8.6-streaming-wai
  (package
    (name "haskell-8.6-streaming-wai")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-wai/streaming-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c5gpxnpfz4hk7ypigdnq1w7h6wslzfpib1y3drj67fchqiiid1m"))))
    (properties `((upstream-name . "streaming-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-streaming)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (home-page "http://github.com/jb55/streaming-wai")
    (synopsis "Streaming Wai utilities")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-streaming-wai

(define-public haskell-8.6-streams
  (package
    (name "haskell-8.6-streams")
    (version "3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/streams/streams-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h2fjlcsqnwwsqdk371m6drb119rx76b122mmwkd7zl3d86zhcr9"))))
    (properties `((upstream-name . "streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "http://github.com/ekmett/streams/issues")
    (synopsis "Various Haskell 2010 stream comonads")
    (description
     "Various Haskell 2010 stream comonads.
* \"Data.Stream.Future\" provides a coinductive anti-causal stream, or non-empty 'ZipList'. The comonad provides access to only the
tail of the stream. Like a conventional 'ZipList', this is /not/ a monad.

> data Future a = Last a | a :< Future a

* \"Data.Stream.Future.Skew\" provides a non-empty skew-binary random-access-list with the semantics of @@Data.Stream.Future@@. As with
\"Data.Stream.Future\" this stream is not a 'Monad', since the 'Applicative' instance zips streams of potentially differing lengths.
The random-access-list structure provides a number of operations logarithmic access time, but makes 'Data.Stream.Future.Skew.cons'
less productive. Where applicable \"Data.Stream.Infinite.Skew\" may be more efficient, due to a lazier and more efficient 'Applicative'
instance.

>

* \"Data.Stream.Infinite\" provides a coinductive infinite anti-causal stream. The 'Comonad' provides access to the tail of the
stream and the 'Applicative' zips streams together. Unlike 'Future', infinite stream form a 'Monad'. The monad diagonalizes
the 'Stream', which is consistent with the behavior of the 'Applicative', and the view of a 'Stream' as a isomorphic to the reader
monad from the natural numbers. Being infinite in length, there is no 'Alternative' instance.

> data Stream a = a :< Stream a

* \"Data.Stream.Infinite.Skew\" provides an infinite skew-binary random-access-list with the semantics of \"Data.Stream.Infinite\"
Since every stream is infinite, the 'Applicative' instance can be considerably less strict than the corresponding instance for
\"Data.Stream.Future.Skew\" and performs asymptotically better.

>

* \"Data.Stream.Infinite.Functional.Zipper\" provides a bi-infinite sequence, represented as a pure function with an accumulating
parameter added to optimize moving the current focus.

> data Zipper a = !Integer :~ (Integer -> a)

* \"Data.Stream.Supply\" provides a comonadic supply of unique values, which are
generated impurely as the tree is explored.")
    (license license:bsd-3)))

haskell-8.6-streams

(define-public haskell-8.6-tasty-th
  (package
    (name "haskell-8.6-tasty-th")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-th/tasty-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b2ivrw2257m4cy4rjnkwqlarh83j1y3zywnmaqqqbvy667sqnj3"))))
    (properties `((upstream-name . "tasty-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "http://github.com/bennofs/tasty-th")
    (synopsis "Automatic tasty test case discovery using TH")
    (description
     "Generate tasty TestTrees automatically with TemplateHaskell. See the README for example usage.")
    (license license:bsd-3)))

haskell-8.6-tasty-th

(define-public haskell-8.6-test-framework-th
  (package
    (name "haskell-8.6-test-framework-th")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-th/test-framework-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12lw7yj02jb9s0i7rb98jjam43j2h0gzmnbj9zi933fx7sg0sy4b"))))
    (properties `((upstream-name . "test-framework-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-language-haskell-extract)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)))
    (home-page "http://github.com/finnsson/test-generator")
    (synopsis
     "Automagically generate the HUnit- and Quickcheck-bulk-code using Template Haskell.")
    (description
     "@@test-framework-th@@ contains two interesting functions: @@defaultMainGenerator@@ and @@testGroupGenerator@@.

@@defaultMainGenerator@@ will extract all functions beginning with case_, prop_ or test_in the module and put them in a testGroup.

> -- file SomeModule.hs
> ( -# LANGUAGE TemplateHaskell #- )
> module SomeModule where
> import Test.Framework.TH
> import Test.Framework
> import Test.HUnit
> import Test.Framework.Providers.HUnit
> import Test.Framework.Providers.QuickCheck2
>
> -- observe this line!
> main = $(defaultMainGenerator)
> case_1 = do 1 @@=? 1
> case_2 = do 2 @@=? 2
> prop_reverse xs = reverse (reverse xs) == xs
>    where types = xs::[Int]

is the same as

> -- file SomeModule.hs
> ( -# LANGUAGE TemplateHaskell #- )
> module SomeModule where
> import Test.Framework.TH
> import Test.Framework
> import Test.HUnit
> import Test.Framework.Providers.HUnit
> import Test.Framework.Providers.QuickCheck2
>
> -- observe this line!
> main =
>   defaultMain [
>     testGroup \"SomeModule\" [ testCase \"1\" case_1, testCase \"2\" case_2, testProperty \"reverse\" prop_reverse]
>     ]
>
> case_1 = do 1 @@=? 1
> case_2 = do 2 @@=? 2
> prop_reverse xs = reverse (reverse xs) == xs
>    where types = xs::[Int]

@@testGroupGenerator@@ is like @@defaultMainGenerator@@ but without @@defaultMain@@. It is useful if you need a function for the testgroup
(e.g. if you want to be able to call the testgroup from another module).")
    (license license:bsd-3)))

haskell-8.6-test-framework-th

(define-public haskell-8.6-tonatona
  (package
    (name "haskell-8.6-tonatona")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonatona/tonatona-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17hd93m2i79pb39z00x0sdvhfds3b5fgyhld8pr64rlnr9wm039l"))))
    (properties `((upstream-name . "tonatona") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tonaparser-notests)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "meta application framework")
    (description
     "Tonatona is a **meta** application framework. It handles lots of boring tasks that are needed for real-world development such as reading in values defined in environment variables, setting up logging, sending emails, accessing databases, etc.")
    (license license:expat)))

haskell-8.6-tonatona

(define-public haskell-8.6-transaction
  (package
    (name "haskell-8.6-transaction")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transaction/transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1if04fm2kvkd25ksk1llqqkwaqy8y7pafbywmz70mrr68wrb2r6j"))))
    (properties `((upstream-name . "transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)))
    (home-page "https://github.com/arowM/haskell-transaction#readme")
    (synopsis "Monadic representation of transactions.")
    (description
     "Monadic representation of transactions. Alike `List`, but can be declared with `do` notations.")
    (license license:expat)))

haskell-8.6-transaction

(define-public haskell-8.6-unboxing-vector
  (package
    (name "haskell-8.6-unboxing-vector")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unboxing-vector/unboxing-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i2d5gzvrdi5alaj8inw0jzlh0kkd23pg5dwm24h8jyqh0kmnhj8"))))
    (properties `((upstream-name . "unboxing-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-should-not-typecheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/minoki/unboxing-vector#readme")
    (synopsis "A newtype-friendly variant of unboxed vectors")
    (description
     "Please see the README on GitHub at <https://github.com/minoki/unboxing-vector#readme>")
    (license license:bsd-3)))

haskell-8.6-unboxing-vector

(define-public haskell-8.6-uncertain
  (package
    (name "haskell-8.6-uncertain")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uncertain/uncertain-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wkgk6504qyirr2bq3m4pqgwdvrpnrig1bnzcls0r7krsig8arvg"))))
    (properties `((upstream-name . "uncertain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-ad)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mwc-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "https://github.com/mstksg/uncertain")
    (synopsis
     "Manipulating numbers with inherent experimental/measurement uncertainty")
    (description
     "See <https://github.com/mstksg/uncertain/blob/master/README.md README.md>.

Documentation maintained at <https://mstksg.github.io/uncertain>")
    (license license:bsd-3)))

haskell-8.6-uncertain

(define-public haskell-8.6-universe-instances-extended
  (package
    (name "haskell-8.6-universe-instances-extended")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-extended/universe-instances-extended-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ppklq2rjcryld9d9kdzz55vfllfpxxgsvvkhpd1jrvhyj51yahh"))))
    (properties `((upstream-name . "universe-instances-extended")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0g3qpvgw304yml1n9ly78qrsrrw53f6zpkciyk1xc0nmlm0dkwih")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from selected extra packages")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them
defined in @@universe-base@@ package:

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@")
    (license license:bsd-3)))

haskell-8.6-universe-instances-extended

(define-public haskell-8.6-vector-sized
  (package
    (name "haskell-8.6-vector-sized")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-sized/vector-sized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l7d9nzazxh372pc7fwvbxib7hfmgkjg8c5iv7m5d240n1qk13pj"))))
    (properties `((upstream-name . "vector-sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-finite-typelits)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-indexed-list-literals)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/expipiplus1/vector-sized#readme")
    (synopsis "Size tagged vectors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-vector-sized

(define-public haskell-8.6-wai-cors
  (package
    (name "haskell-8.6-wai-cors")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-cors/wai-cors-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10gv3jjlkcb13031frr818p56v2s0qf6dqjsfpwlhwdxdssvx5r5"))))
    (properties `((upstream-name . "wai-cors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (home-page "https://github.com/larskuhtz/wai-cors")
    (synopsis "CORS for WAI")
    (description "This package provides an implemenation of
Cross-Origin resource sharing (CORS) for
<http://hackage.haskell.org/package/wai Wai>
that aims to be compliant with <http://www.w3.org/TR/cors>.")
    (license license:expat)))

haskell-8.6-wai-cors

(define-public haskell-8.6-wai-eventsource
  (package
    (name "haskell-8.6-wai-eventsource")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-eventsource/wai-eventsource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h5zlqky7ldqbmiaixizhk1s8ghf5i3ha1xfz8flxgzr7gr0al3q"))))
    (properties `((upstream-name . "wai-eventsource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (home-page "http://www.yesodweb.com/book/web-application-interface")
    (synopsis "WAI support for server-sent events (deprecated)")
    (description "Since WAI 3.0, this code has been merged into wai-extra.")
    (license license:expat)))

haskell-8.6-wai-eventsource

(define-public haskell-8.6-wai-middleware-caching
  (package
    (name "haskell-8.6-wai-middleware-caching")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching/wai-middleware-caching-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13fp08ba46wn7gianfbirag8yj14s2x41fkhdb5mx7arjafgpd8m"))))
    (properties `((upstream-name . "wai-middleware-caching") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching#readme")
    (synopsis "WAI Middleware to cache things")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-wai-middleware-caching

(define-public haskell-8.6-wai-middleware-static
  (package
    (name "haskell-8.6-wai-middleware-static")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-static/wai-middleware-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z5yapcf8j9w71f2na30snmalsajlyi8an2f9qrjdmajabyykr0b"))))
    (properties `((upstream-name . "wai-middleware-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "17vq38dh7x1kqzfwla1s0rldd5hzm5mcrx49sjlzy8b66gd2n3ac")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-expiring-cache-map)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-mime-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/scotty-web/wai-middleware-static")
    (synopsis "WAI middleware that serves requests to static files.")
    (description
     "WAI middleware that intercepts requests to static files and serves them
if they exist.

[WAI] <http://hackage.haskell.org/package/wai>")
    (license license:bsd-3)))

haskell-8.6-wai-middleware-static

(define-public haskell-8.6-wai-middleware-travisci
  (package
    (name "haskell-8.6-wai-middleware-travisci")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-travisci/wai-middleware-travisci-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a58mlgimr6137aiwcdxjk15zy3y58dds4zxffd3vvn0lkzg5jdv"))))
    (properties `((upstream-name . "wai-middleware-travisci") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0j1k2y75gwbny72zf5nrwzanh7sn2plscnrjd4hw5npccxi4dchx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vault)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/mitchellwrosen/wai-middleware-travisci")
    (synopsis
     "WAI middleware for authenticating webhook payloads from Travis CI")
    (description
     "This package provides a simple WAI middleware for authenticating webhook
payloads from @@travis-ci.com@@.")
    (license license:bsd-3)))

haskell-8.6-wai-middleware-travisci

(define-public haskell-8.6-wai-predicates
  (package
    (name "haskell-8.6-wai-predicates")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-predicates/wai-predicates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hnpzf7zwizx67ql4fwpqj7xlgkn6c2ms8w4kjapmgxv8z8zdcxp"))))
    (properties `((upstream-name . "wai-predicates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-singletons)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vault)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://gitlab.com/twittner/wai-predicates/")
    (synopsis "WAI request predicates")
    (description
     "Evaluate predicate functions against WAI requests and receive
metadata in addition to a success/failure indicator.
Predicates can be combined using logical connectives and the
metadata are passed on accordingly.

<http://hackage.haskell.org/package/wai-routing wai-routing>
extends the functionality of @@wai-predicates@@ with additional
predicates and predicated request routing.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-wai-predicates

(define-public haskell-8.6-wai-session
  (package
    (name "haskell-8.6-wai-session")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-session/wai-session-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lq0gqndb9simd1zkz355m604dwrpcdwxcl3bgagi6kb8h12fffj"))))
    (properties `((upstream-name . "wai-session") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-StateVar)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vault)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (home-page "https://github.com/singpolyma/wai-session")
    (synopsis "Flexible session middleware for WAI")
    (description
     "Provides a generic, cookie-based middleware for sessions that is
parameterised over the session store, the cookie name, and the
cookie parameters (such as path, expiry, etc).  Passes a pair of
functions (lookup key, set key) for the current session through the
'Vault' in the 'Request'.

Also provides a simple example session store based on threadsafe
'IORef's and 'Data.Map'.

See example/Main.hs in git for example usage.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-wai-session

(define-public haskell-8.6-web-routes-hsp
  (package
    (name "haskell-8.6-web-routes-hsp")
    (version "0.24.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-hsp/web-routes-hsp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1arc22l7xk49fp80i1fkvj8xj71lqxrs2g5gnvjzwlkc0azzaz6a"))))
    (properties `((upstream-name . "web-routes-hsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001) haskell-8.6-hsp)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-web-routes)))
    (home-page "https://hackage.haskell.org/package/web-routes-hsp")
    (synopsis "Adds XMLGenerator instance for RouteT monad")
    (description
     "The module makes it easy to use type-safe URLs in HSP templates")
    (license license:bsd-3)))

haskell-8.6-web-routes-hsp

(define-public haskell-8.6-web-routes-wai
  (package
    (name "haskell-8.6-web-routes-wai")
    (version "0.24.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/web-routes-wai/web-routes-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j9h22nsj7zf5qpf4i07jdcih00r2fivdilvj8wsylk4d23x27wf"))))
    (properties `((upstream-name . "web-routes-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-web-routes)))
    (home-page "https://hackage.haskell.org/package/web-routes-wai")
    (synopsis
     "Library for maintaining correctness of URLs within an application.")
    (description
     "A collection of types and functions that ensure that URLs generated by an application are valid. Need more properties here.")
    (license license:bsd-3)))

haskell-8.6-web-routes-wai

(define-public haskell-8.6-x509
  (package
    (name "haskell-8.6-x509")
    (version "1.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/x509/x509-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1j67c35g8334jx7x32hh6awhr43dplp0qwal5gnlkmx09axzrc5i"))))
    (properties `((upstream-name . "x509") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z98llpggldy4yb7afcsn3r3q4vklvx2pqyrhy9fir5y2yd5l601")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-asn1-parse)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-asn1-types)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-hourglass)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X509 reader and writer")
    (description "X509 reader and writer. please see README")
    (license license:bsd-3)))

haskell-8.6-x509

(define-public haskell-8.6-yi-language
  (package
    (name "haskell-8.6-yi-language")
    (version "0.18.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yi-language/yi-language-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w647h1v1mjhqxnq9a7zwh42ry8dfd8franr9p8k8662q3lalvp8"))))
    (properties `((upstream-name . "yi-language") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-alex)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-microlens-platform)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-oo-prototypes)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-pointedlist)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/yi-editor/yi#readme")
    (synopsis "Collection of language-related Yi libraries.")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-yi-language

