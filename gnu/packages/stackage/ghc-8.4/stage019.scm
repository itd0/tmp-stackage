;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage019)
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
(define-public haskell-8.4-accuerr
  (package
    (name "haskell-8.4-accuerr")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/accuerr/accuerr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dlszai5bz05algxm98kjhnjwa7mwj620d52vrsc4fxds8q84sjg"))))
    (properties `((upstream-name . "accuerr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "http://www.github.com/massysett/accuerr")
    (synopsis "Data type like Either but with accumulating error type")
    (description
     "Please see the \"Accuerr\" Haddock documentation for more information.")
    (license license:bsd-3)))

haskell-8.4-accuerr

(define-public haskell-8.4-aern2-mp
  (package
    (name "haskell-8.4-aern2-mp")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aern2-mp/aern2-mp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gyicxsdqzdbhs9bss5cfjqx859iksr7z1ilsfm9077jdf2032vm"))))
    (properties `((upstream-name . "aern2-mp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-usecdar")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-convertible)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-mixed-types-num)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-rounded)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)
                             (@ (gnu packages multiprecision) mpfr)))
    (home-page "https://github.com/michalkonecny/aern2")
    (synopsis "Multi-precision ball (interval) arithmetic")
    (description
     "This package provides the following types:

* Dyadic:  variable-precision floats with exact ring operations

* MPBall: float ± error bound with field & elementary interval-like operations

The types have instances of both <https://hackage.haskell.org/package/mixed-types-num MixedTypeNumPrelude>
type classes as well as with traditional Prelude type classes.

There is a plan to add an Integer-only backend so that aern2-mp can
be used without MPFR.")
    (license license:bsd-3)))

haskell-8.4-aern2-mp

(define-public haskell-8.4-alternators
  (package
    (name "haskell-8.4-alternators")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alternators/alternators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ffk7xhx7n7h5mhb43ss6kprm9mzc0jzdnagz5wdsgqr8a5mnfa4"))))
    (properties `((upstream-name . "alternators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-newtype-generics)))
    (home-page "https://github.com/louispan/alternators#readme")
    (synopsis "Handy functions when using transformers.")
    (description
     "Useful monads built on top of transformers. Please see README.md")
    (license license:bsd-3)))

haskell-8.4-alternators

(define-public haskell-8.4-api-field-json-th
  (package
    (name "haskell-8.4-api-field-json-th")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/api-field-json-th/api-field-json-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "097pn19247g73rw0si33m5l1w797s9759ma3ki9h90dwd4w9rm5q"))))
    (properties `((upstream-name . "api-field-json-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (home-page "https://github.com/nakaji-dayo/api-field-json-th")
    (synopsis "option of aeson's deriveJSON ")
    (description "Utils for using aeson's deriveJSON with lens's makeFields")
    (license license:bsd-3)))

haskell-8.4-api-field-json-th

(define-public haskell-8.4-beam-migrate
  (package
    (name "haskell-8.4-beam-migrate")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-migrate/beam-migrate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wwkyg87wf3qcj8c5j3ammdkmjacgzw35pgxbq75bvfkx8k5j69d"))))
    (properties `((upstream-name . "beam-migrate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")
       #:cabal-revision
       ("1" "1ghg6n0dj63i0am7wh0cg95hwyf29gnkm0llrw3wb5pj8f7937gv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-beam-core)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-dependent-map)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-dependent-sum)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-pqueue)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uuid-types)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://travis.athougies.net/projects/beam.html")
    (synopsis "SQL DDL support and migrations support library for Beam")
    (description
     "This package provides type classes to allow backends to implement
SQL DDL support for beam. This allows you to use beam syntax to
write type-safe schema generation code.
The package also provides features to introspect beam schemas,
and support for automatic generation of migrations in SQL and
Haskell formats.
This is mostly a low-level support library. Most often, this
library is used to write tooling to support DDL manipulation in
your project, or to enable migrations support in beam backends.
For a more turnkey solution for database migrations, consider
the <http://hackage.haskell.org/package/beam-migrate-cli beam-migrate>
command line tool. This provides out-of-the-box support for migrations,
schema change management, and version control, based on the features
provided in this library.")
    (license license:expat)))

haskell-8.4-beam-migrate

(define-public haskell-8.4-bitcoin-tx
  (package
    (name "haskell-8.4-bitcoin-tx")
    (version "0.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitcoin-tx/bitcoin-tx-" version
                    ".tar.gz"))
              (sha256
               (base32
                "006c55l6q6cknxw0k0kzr8vkv8azapfb4mkax6ac6rih6mjq5f1v"))))
    (properties `((upstream-name . "bitcoin-tx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-bitcoin-script)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-bitcoin-types)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hexstring)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Utility functions for manipulating bitcoin transactions")
    (description
     "This library provides the same functionality as the bitcoin-tx command line
utility, which was introduced in Bitcoin Core v0.10. These functions are
pure and require no communication with a bitcoin daemon.")
    (license license:expat)))

haskell-8.4-bitcoin-tx

(define-public haskell-8.4-boundingboxes
  (package
    (name "haskell-8.4-boundingboxes")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boundingboxes/boundingboxes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r3mffqxqadn8qklq3kr0ggirkficfj8ic1fxgki2zrc5jm4f2g8"))))
    (properties `((upstream-name . "boundingboxes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qz1bnci5bhb8zqc2dw19sa0k9i57fyhhdh78s3yllp3aijdc3n6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page "https://github.com/fumieval/boundingboxes")
    (synopsis "A generic boundingbox for an arbitrary vector")
    (description "")
    (license license:bsd-3)))

haskell-8.4-boundingboxes

(define-public haskell-8.4-brittany
  (package
    (name "haskell-8.4-brittany")
    (version "0.11.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/brittany/brittany-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fgcim4q5y7csk8c038rm97w6b8bgynmi6h1dwyr2hsmzw9hxa26"))))
    (properties `((upstream-name . "brittany") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-brittany-dev-lib")
       #:cabal-revision
       ("2" "1f20w6zzbygnpa7f6xbaqxx34l62r53ikywg2snn0zkfizf3lcgx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-butcher)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-czipwith)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-data-tree-print)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-ghc-exactprint)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-monad-memo)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-multistate)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unsafe)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/lspitzner/brittany/")
    (synopsis "Haskell source code formatter")
    (description
     "See <https://github.com/lspitzner/brittany/blob/master/README.md the README>.

If you are interested in the implementation, have a look at <https://github.com/lspitzner/brittany/blob/master/doc/implementation/theory.md this document>;

The implementation is documented in more detail <https://github.com/lspitzner/brittany/blob/master/doc/implementation/index.md here>.")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-8.4-brittany

(define-public haskell-8.4-bson-lens
  (package
    (name "haskell-8.4-bson-lens")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bson-lens/bson-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q5ixrfgybf80q0x2p80qjy1kqarm2129hmzzqgcpn7jvqbv8fyp"))))
    (properties `((upstream-name . "bson-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-bson)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/jb55/bson-lens")
    (synopsis "BSON lenses")
    (description "Lenses for Data.Bson")
    (license license:expat)))

haskell-8.4-bson-lens

(define-public haskell-8.4-clash-prelude
  (package
    (name "haskell-8.4-clash-prelude")
    (version "0.99.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-prelude/clash-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g3pidjpcpzhkgyxw1w58ck0ihpla58nxx3xgkrcfz903xkjhipg"))))
    (properties `((upstream-name . "clash-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdoctests" "-fbenchmarks")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-ghc-typelits-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-half)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "CAES Language for Synchronous Hardware - Prelude library")
    (description
     "CλaSH (pronounced ‘clash’) is a functional hardware description language that
borrows both its syntax and semantics from the functional programming language
Haskell. The CλaSH compiler transforms these high-level descriptions to
low-level synthesizable VHDL, Verilog, or SystemVerilog.

Features of CλaSH:

* Strongly typed, but with a very high degree of type inference, enabling both
safe and fast prototyping using concise descriptions.

* Interactive REPL: load your designs in an interpreter and easily test all
your component without needing to setup a test bench.

* Higher-order functions, with type inference, result in designs that are
fully parametric by default.

* Synchronous sequential circuit design based on streams of values, called
@@Signal@@s, lead to natural descriptions of feedback loops.

* Support for multiple clock domains, with type safe clock domain crossing.


This package provides:

* Prelude library containing datatypes and functions for circuit design

To use the library:

* Import \"Clash.Prelude\"

* Alternatively, if you want to explicitly route clock and reset ports,
for more straightforward multi-clock designs, you can import the
\"Clash.Explicit.Prelude\" module. Note that you should not import
\"Clash.Prelude\" and \"Clash.Explicit.Prelude\" at the same time as they
have overlapping definitions.

A preliminary version of a tutorial can be found in \"Clash.Tutorial\", for a
general overview of the library you should however check out \"Clash.Prelude\".
Some circuit examples can be found in \"Clash.Examples\".")
    (license license:bsd-2)))

haskell-8.4-clash-prelude

(define-public haskell-8.4-composable-associations
  (package
    (name "haskell-8.4-composable-associations")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composable-associations/composable-associations-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03l056yb6k8x5xrfdszsn4w2739zyiqzrl6q3ci19dg1gsy106lx"))))
    (properties `((upstream-name . "composable-associations") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/SamProtas/composable-associations#readme")
    (synopsis
     "Types and helpers for composing types into a single larger key-value type.")
    (description
     "A library providing generic types and helpers for composing types together into a a single key-value type.

This is useful when a normalized data model has a denormalized serialization format. Using this libraries types and
functions you build compose your data into the denormalized key-value format needed for serialization. Other
libraries provide concrete implementations for a given serialization format.")
    (license license:bsd-3)))

haskell-8.4-composable-associations

(define-public haskell-8.4-compressed
  (package
    (name "haskell-8.4-compressed")
    (version "3.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compressed/compressed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gfxmfyzgpa176igsby50jpfhpfvd078d7nyvwwg2cjx8hpvyyyp"))))
    (properties `((upstream-name . "compressed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0h3kfr2kdn74vk0mam5mwk6phclrcm79khd8yz2pp8j9zv1v8q3r")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-fingertree)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage016) haskell-8.4-keys)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-pointed)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-reducers)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/ekmett/compressed/")
    (synopsis "Compressed containers and reducers")
    (description "Compressed containers and reducers.")
    (license license:bsd-3)))

haskell-8.4-compressed

(define-public haskell-8.4-concise
  (package
    (name "haskell-8.4-concise")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/concise/concise-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09crgc6gjfidlad6263253xx1di6wfhc9awhira21s0z7rddy9sw"))))
    (properties `((upstream-name . "concise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (home-page "https://github.com/frasertweedale/hs-concise")
    (synopsis "Utilities for Control.Lens.Cons")
    (description
     "concise provides a handful of functions to extend what you can
do with Control.Lens.Cons.")
    (license license:bsd-3)))

haskell-8.4-concise

(define-public haskell-8.4-conduit-throttle
  (package
    (name "haskell-8.4-conduit-throttle")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-throttle/conduit-throttle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ad3balm1r5jm4jvf26pr1kaiqnzvjznjh5kidk2bknxylbddmld"))))
    (properties `((upstream-name . "conduit-throttle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stm-chans)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-throttle-io-stream)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mtesseract/conduit-throttle#readme")
    (synopsis "Throttle Conduit Producers")
    (description
     "This packages is based on the throttle-io-stream package and provides functionality for throttling Conduit producers according to a provided configuration.")
    (license license:bsd-3)))

haskell-8.4-conduit-throttle

(define-public haskell-8.4-connection
  (package
    (name "haskell-8.4-connection")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/connection/connection-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1swkb9w5vx9ph7x55y51dc0srj2z27nd9ibgn8c0qcl6hx7g9cbh"))))
    (properties `((upstream-name . "connection") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0bhwcd9dqa2jk23bdz3z3vn2p1gzssinp96dxzznb7af4y5x2gmk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-socks)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-system)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-connection")
    (synopsis "Simple and easy network connections API")
    (description "Simple network library for all your connection need.

Features: Really simple to use, SSL/TLS, SOCKS.

This library provides a very simple api to create sockets
to a destination with the choice of SSL/TLS, and SOCKS.")
    (license license:bsd-3)))

haskell-8.4-connection

(define-public haskell-8.4-cpio-conduit
  (package
    (name "haskell-8.4-cpio-conduit")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cpio-conduit/cpio-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04zma03ivg9x5f1xkdpc828fk2lh6qrn7cig7gprci13id9yf2wg"))))
    (properties `((upstream-name . "cpio-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/da-x/cpio-conduit")
    (synopsis "Conduit-based CPIO")
    (description
     "This is a native Haskell implementation of the CPIO protocol over the Conduit library. See <http://www.gnu.org/software/cpio/>.
Only the commonly used CPIO formats are supported (crc and newc).")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-cpio-conduit

(define-public haskell-8.4-cql-io
  (package
    (name "haskell-8.4-cql-io")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cql-io/cql-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kdv00fv21s8vbb3dfgzlgsrr0xxl4p2h655ga3q5cg47by564xc"))))
    (properties `((upstream-name . "cql-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-auto-update)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-cql)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-iproute)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-retry)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-tinylog)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)))
    (home-page "https://gitlab.com/twittner/cql-io/")
    (synopsis "Cassandra CQL client.")
    (description
     "CQL Cassandra driver supporting native protocol versions 3 and 4.

This library uses the <http://hackage.haskell.org/package/cql cql> library
which implements Cassandra's CQL protocol and complements it with the
neccessary I/O operations. The feature-set includes:

* /Node discovery/. The driver discovers nodes automatically from a small
set of bootstrap nodes.

* /Customisable load-balancing policies/. In addition to pre-built LB
policies such as round-robin, users of this library can provide their
own policies if desired.

* /Support for connection streams/. Requests can be multiplexed over a
few connections.

* /Customisable retry settings/. Support for default retry settings as well
as local overrides per query.

* /Prepared queries/. Prepared queries are an optimisation which parse
and prepare a query only once on Cassandra nodes but execute it many
times with different concrete values.

* /TLS support/. Client to node communication can optionally use transport
layer security (using HsOpenSSL).")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.4-cql-io

(define-public haskell-8.4-cryptonite-conduit
  (package
    (name "haskell-8.4-cryptonite-conduit")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite-conduit/cryptonite-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bldcmda4xh52mw1wfrjljv8crhw3al7v7kv1j0vidvr7ymnjpbh"))))
    (properties `((upstream-name . "cryptonite-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hh2nzfz4qpxgivfilgk4ll416lph8b2fdkzpzrmqfjglivydfmz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-crypto/cryptonite-conduit")
    (synopsis "cryptonite conduit")
    (description "Conduit bridge for cryptonite

For now only provide a conduit version for hash and hmac, but
with contribution, this could provide cipher conduits too,
and probably other things.")
    (license license:bsd-3)))

haskell-8.4-cryptonite-conduit

(define-public haskell-8.4-data-diverse-lens
  (package
    (name "haskell-8.4-data-diverse-lens")
    (version "4.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-diverse-lens/data-diverse-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11nrisgx7yb7qp03s3hxkbygc170fggbi3mcid196dhakxv4kl4p"))))
    (properties `((upstream-name . "data-diverse-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-data-diverse)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-has)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/louispan/data-diverse-lens#readme")
    (synopsis
     "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which")
    (description
     "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which
Refer to [ManySpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/ManySpec.hs) and [WhichSpec.hs](https://github.com/louispan/data-diverse-lens/blob/master/test/Data/Diverse/Lens/WhichSpec.hs) for example usages.")
    (license license:bsd-3)))

haskell-8.4-data-diverse-lens

(define-public haskell-8.4-dbus
  (package
    (name "haskell-8.4-dbus")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dbus/dbus-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xg8wzs7xnh3455v3bbw9nd8inzr06n5939pzlq3nd4ajp3ba9d3"))))
    (properties `((upstream-name . "dbus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "082lawjjkdyi8dgggaiw9hq5pf2w6kbm3vxa07hdyx3jmalb2sjd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-libxml-sax)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages xml) libxml2)))
    (home-page "https://github.com/rblaze/haskell-dbus#readme")
    (synopsis "A client library for the D-Bus IPC system.")
    (description
     "D-Bus is a simple, message-based protocol for inter-process
communication, which allows applications to interact with other parts of
the machine and the user's session using remote procedure calls.

D-Bus is a essential part of the modern Linux desktop, where it replaces
earlier protocols such as CORBA and DCOP.

This library is an implementation of the D-Bus protocol in Haskell. It
can be used to add D-Bus support to Haskell applications, without the
awkward interfaces common to foreign bindings.

Example: connect to the session bus, and get a list of active names.

@@
&#x7b;-\\# LANGUAGE OverloadedStrings \\#-&#x7d;

import Data.List (sort)
import DBus
import DBus.Client

main = do
&#x20;   client <- connectSession
&#x20;   //
&#x20;   \\-- Request a list of connected clients from the bus
&#x20;   reply <- call_ client (methodCall \\\"\\/org\\/freedesktop\\/DBus\\\" \\\"org.freedesktop.DBus\\\" \\\"ListNames\\\")
&#x20;       &#x7b; methodCallDestination = Just \\\"org.freedesktop.DBus\\\"
&#x20;       &#x7d;
&#x20;   //
&#x20;   \\-- org.freedesktop.DBus.ListNames() returns a single value, which is
&#x20;   \\-- a list of names (here represented as [String])
&#x20;   let Just names = fromVariant (methodReturnBody reply !! 0)
&#x20;   //
&#x20;   \\-- Print each name on a line, sorted so reserved names are below
&#x20;   \\-- temporary names.
&#x20;   mapM_ putStrLn (sort names)
@@

>$ ghc --make list-names.hs
>$ ./list-names
>:1.0
>:1.1
>:1.10
>:1.106
>:1.109
>:1.110
>ca.desrt.dconf
>org.freedesktop.DBus
>org.freedesktop.Notifications
>org.freedesktop.secrets
>org.gnome.ScreenSaver")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-dbus

(define-public haskell-8.4-debug
  (package
    (name "haskell-8.4-debug")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/debug/debug-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0j4jskz8zq2ww81mfarshi5g2m6xfivgl26grkhcacqq6k3483rk"))))
    (properties `((upstream-name . "debug") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-Hoed)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-libgraph)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-open-browser)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-prettyprinter-compat-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/ndmitchell/debug")
    (synopsis "Simple trace-based debugger")
    (description
     "An easy to use debugger for viewing function calls and intermediate variables.
To use, annotate the function under test, run the code, and view the generated web page.
Full usage instructions are at \"Debug\".")
    (license license:bsd-3)))

haskell-8.4-debug

(define-public haskell-8.4-dotenv
  (package
    (name "haskell-8.4-dotenv")
    (version "0.5.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dotenv/dotenv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qglnss7jpns585l1k2m3pwqv7mq3jvh66ypmjjxxi1zcihbz5x1"))))
    (properties `((upstream-name . "dotenv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/stackbuilders/dotenv-hs")
    (synopsis "Loads environment variables from dotenv files")
    (description
     "
In most applications,
<http://12factor.net/config configuration should be separated from code>.
While it usually works well to keep configuration in the
environment, there are cases where you may want to store
configuration in a file outside of version control.

\"Dotenv\" files have become popular for storing configuration,
especially in development and test environments. In
<https://github.com/bkeepers/dotenv Ruby>,
<https://github.com/theskumar/python-dotenv Python> and
<https://www.npmjs.com/package/dotenv Javascript> there are libraries
to facilitate loading of configuration options from configuration
files. This library loads configuration to environment variables for
programs written in Haskell.

To use, call `loadFile` from your application:

> import Configuration.Dotenv
> loadFile False \"/my/dotenvfile\"

This package also includes an executable that can be used
to inspect the results of applying one or more Dotenv files
to the environment, or for invoking your executables with
an environment after one or more Dotenv files is applied.

See the <https://github.com/stackbuilders/dotenv-hs Github>
page for more information on this package.")
    (license license:expat)))

haskell-8.4-dotenv

(define-public haskell-8.4-editor-open
  (package
    (name "haskell-8.4-editor-open")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/editor-open/editor-open-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0raj0s8v72kz63hqpqhf58sx0a8mcwi4ania40spjirdrsdx3i9g"))))
    (properties `((upstream-name . "editor-open") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/pharpend/editor-open")
    (synopsis "Open the user's $VISUAL or $EDITOR for text input.")
    (description
     "You know when you run @@git commit@@, and an editor pops open so you can enter a
commit message? This is a Haskell library that does that.

This library isn't very portable. It relies on the @@$EDITOR@@ environment
variable. The concept only exists on *nix systems.

CHANGES

[0.6.0.0] Support less common @@$VISUAL@@. @@vi@@ is the fallback editor now
instead of @@nano@@.

[0.5.0.0] Now use conduits on the backend. Support @@base\\<4.8@@")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-editor-open

(define-public haskell-8.4-errors-ext
  (package
    (name "haskell-8.4-errors-ext")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/errors-ext/errors-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "064nvpc8yy3n6nvc7cmxmgblmarg4wlvawj0k7bc3mj6h0rnavj0"))))
    (properties `((upstream-name . "errors-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-binary-ext)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)))
    (home-page "https://github.com/A1-Triard/errors-ext#readme")
    (synopsis "`bracket`-like functions for `ExceptT` over `IO` monad.")
    (description
     "Please see the README on GitHub at <https://github.com/A1-Triard/errors-ext#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-errors-ext

(define-public haskell-8.4-ersatz
  (package
    (name "haskell-8.4-ersatz")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ersatz/ersatz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06d0fc5s5yxk1q54fsbnnhmvf25m5g86fqdzb42f0ckc0h3sbp22"))))
    (properties `((upstream-name . "ersatz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fexamples" "-f-test-hlint")))
    (outputs (list "out" "static" "doc"))
    (native-inputs (list (@ (gnu packages maths) minisat)))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/ekmett/ersatz")
    (synopsis
     "A monad for expressing SAT or QSAT problems using observable sharing.")
    (description
     "A monad for expressing SAT or QSAT problems using observable sharing.

For example, we can express a full-adder with:

> full_adder :: Bit -> Bit -> Bit -> (Bit, Bit)
> full_adder a b cin = (s2, c1 || c2)
>   where (s1,c1) = half_adder a b
>         (s2,c2) = half_adder s1 cin

> half_adder :: Bit -> Bit -> (Bit, Bit)
> half_adder a b = (a `xor` b, a && b)

/Longer Examples/

Included are a couple of examples included with the distribution.
Neither are as fast as a dedicated solver for their respective
domains, but they showcase how you can solve real world problems
involving 10s or 100s of thousands of variables and constraints
with `ersatz`.

@@ersatz-sudoku@@

> % time ersatz-sudoku
> Problem:
> ┌───────┬───────┬───────┐
> │ 5 3   │   7   │       │
> │ 6     │ 1 9 5 │       │
> │   9 8 │       │   6   │
> ├───────┼───────┼───────┤
> │ 8     │   6   │     3 │
> │ 4     │ 8   3 │     1 │
> │ 7     │   2   │     6 │
> ├───────┼───────┼───────┤
> │   6   │       │ 2 8   │
> │       │ 4 1 9 │     5 │
> │       │   8   │   7 9 │
> └───────┴───────┴───────┘
> Solution:
> ┌───────┬───────┬───────┐
> │ 5 3 4 │ 6 7 8 │ 9 1 2 │
> │ 6 7 2 │ 1 9 5 │ 3 4 8 │
> │ 1 9 8 │ 3 4 2 │ 5 6 7 │
> ├───────┼───────┼───────┤
> │ 8 5 9 │ 7 6 1 │ 4 2 3 │
> │ 4 2 6 │ 8 5 3 │ 7 9 1 │
> │ 7 1 3 │ 9 2 4 │ 8 5 6 │
> ├───────┼───────┼───────┤
> │ 9 6 1 │ 5 3 7 │ 2 8 4 │
> │ 2 8 7 │ 4 1 9 │ 6 3 5 │
> │ 3 4 5 │ 2 8 6 │ 1 7 9 │
> └───────┴───────┴───────┘
> ersatz-sudoku  1,13s user 0,04s system 99% cpu 1,179 total

@@ersatz-regexp-grid@@

This solves the \\\"regular crossword puzzle\\\" (<https://github.com/ekmett/ersatz/raw/master/notes/grid.pdf grid.pdf>) from the 2013 MIT mystery hunt.

> % time ersatz-regexp-grid

\"SPOILER\"

> ersatz-regexp-grid  2,45s user 0,05s system 99% cpu 2,502 total")
    (license license:bsd-3)))

haskell-8.4-ersatz

(define-public haskell-8.4-extensible
  (package
    (name "haskell-8.4-extensible")
    (version "0.4.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extensible/extensible-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11iyz4lgs2bf6wg1iiancwj58ywpj8f93bqj9scy4mzz8mpyllmp"))))
    (properties `((upstream-name . "extensible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0lrmd9fd4vmsg3zi78cdjn028bpfmh437j6kksanslmwq45nn4bi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-StateVar)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monad-skeleton)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/fumieval/extensible")
    (synopsis "Extensible, efficient, optics-friendly data types and effects")
    (description
     "This package provides a powerful framework to combine and manipulate various types of structures.

See also <https://www.schoolofhaskell.com/user/fumieval/extensible School of Haskell> for tutorials.")
    (license license:bsd-3)))

haskell-8.4-extensible

(define-public haskell-8.4-focuslist
  (package
    (name "haskell-8.4-focuslist")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/focuslist/focuslist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qq5ixaxrwy2wn8xz8ckva9m50bkygj2gpw89fdry4wglvkrmvpx"))))
    (properties `((upstream-name . "focuslist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildreadme")
       #:cabal-revision
       ("2" "12x38kxhcjdqfwl8y8zdrwcpv6jdm7jaqc48ww3hg6fpv8rvvd49")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)))
    (home-page "https://github.com/cdepillabout/focuslist")
    (synopsis "Lists with a focused element")
    (description
     "Please see <https://github.com/cdepillabout/focuslist#readme README.md>.")
    (license license:bsd-3)))

haskell-8.4-focuslist

(define-public haskell-8.4-folds
  (package
    (name "haskell-8.4-folds")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/folds/folds-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wj5fd3icj05w3lziv4rmqahsh42kzckxybjacyvwb45kiy6yvjw"))))
    (properties `((upstream-name . "folds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-ftest-hlint" "-foptimize")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-reify)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-pointed)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/ekmett/folds")
    (synopsis "Beautiful Folding")
    (description
     "This package is a playground full of comonadic folds.

This style of fold is documented in <https://www.fpcomplete.com/user/edwardk/cellular-automata/part-2 \"Cellular Automata, Part II: PNGs and Moore\">

This package can be seen as what happens if you chase Max Rabkin's <http://squing.blogspot.com/2008/11/beautiful-folding.html \"Beautiful Folding\"> to its logical conclusion.

More information on this approach can be found in the <http://conal.net/blog/posts/another-lovely-example-of-type-class-morphisms \"Another lovely example of type class morphisms\"> and <http://conal.net/blog/posts/more-beautiful-fold-zipping \"More beautiful fold zipping\"> posts by Conal Elliott, as well as in Gabriel Gonzales' <http://www.haskellforall.com/2013/08/composable-streaming-folds.html \"Composable Streaming Folds\">")
    (license license:bsd-3)))

haskell-8.4-folds

(define-public haskell-8.4-frontmatter
  (package
    (name "haskell-8.4-frontmatter")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/frontmatter/frontmatter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17dr2g1rywai80hx2v51ljwjpsn6m1jgg6lb4gq9fwq9snq9gsv6"))))
    (properties `((upstream-name . "frontmatter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/yamadapc/haskell-frontmatter")
    (synopsis "Parses frontmatter as used in Jekyll markdown files.")
    (description "Parses frontmatter as used in Jekyll markdown files.

Provides a parser that'll parse the frontmatter only and
one that'll execute a YAML parser on it, so that it's a
YAML frontmatter parser.")
    (license license:expat)))

haskell-8.4-frontmatter

(define-public haskell-8.4-fuzzy-dates
  (package
    (name "haskell-8.4-fuzzy-dates")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzy-dates/fuzzy-dates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hanmwzr1g11am4z3r9wrkzfycvk76a03cg9bqpifidv7y9hcd73"))))
    (properties `((upstream-name . "fuzzy-dates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hourglass)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page "https://github.com/ReedOei/fuzzy-dates#readme")
    (synopsis "Libary for parsing dates in strings in varied formats.")
    (description
     "Please see the README on GitHub at <https://github.com/ReedOei/fuzzy-dates#readme>")
    (license license:bsd-3)))

haskell-8.4-fuzzy-dates

(define-public haskell-8.4-fuzzyset
  (package
    (name "haskell-8.4-fuzzyset")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzyset/fuzzyset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18v1zsmdgy5if7l23vciip6dbbhbpgvn0dy0ray0pqwdcw9yh6kk"))))
    (properties `((upstream-name . "fuzzyset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-text-metrics)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/laserpants/fuzzyset-haskell")
    (synopsis "Fuzzy set for approximate string matching")
    (description
     "This library is based on the Python and JavaScript libraries with the same name.")
    (license license:bsd-3)))

haskell-8.4-fuzzyset

(define-public haskell-8.4-generics-sop-lens
  (package
    (name "haskell-8.4-generics-sop-lens")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-sop-lens/generics-sop-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p2ji955hy9r6c1wmiziga9pbbli24my3vmx19gf4i8db36d8jaf"))))
    (properties `((upstream-name . "generics-sop-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0j4j3kk2nsl5n5gp0vrzqdc5y9ly31b4nvhq0bpgcpzibvik7ssw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-generics-sop)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page "https://github.com/phadej/generics-sop-lens#readme")
    (synopsis "Lenses for types in generics-sop")
    (description "Lenses for types in generics-sop package")
    (license license:bsd-3)))

haskell-8.4-generics-sop-lens

(define-public haskell-8.4-glaze
  (package
    (name "haskell-8.4-glaze")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/glaze/glaze-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18925rqf3ah1k7xcb15zk0gcbc4slvvhr5lsz32fh96gid089cdv"))))
    (properties `((upstream-name . "glaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page "https://github.com/louispan/glaze#readme")
    (synopsis
     "Framework for rendering things with metadata/headers and values")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-glaze

(define-public haskell-8.4-groundhog-th
  (package
    (name "haskell-8.4-groundhog-th")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog-th/groundhog-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hrk86s5mfj33sx5im6pcym1br160vnp17yhi82b2x1imm26cmlk"))))
    (properties `((upstream-name . "groundhog-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-groundhog)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://hackage.haskell.org/package/groundhog-th")
    (synopsis "Type-safe datatype-database mapping library.")
    (description
     "This library helps to generate instances for Groundhog datatypes.")
    (license license:bsd-3)))

haskell-8.4-groundhog-th

(define-public haskell-8.4-hamilton
  (package
    (name "haskell-8.4-hamilton")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hamilton/hamilton-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06yvmm9641v74kd265csycwp6ywyc19mx0r0csycljcfghhj6xiw"))))
    (properties `((upstream-name . "hamilton") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016) haskell-8.4-ad)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-finite-typelits)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-hmatrix-vector-sized)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-typelits-witnesses)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-vector-sized)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-vty)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/mstksg/hamilton#readme")
    (synopsis
     "Physics on generalized coordinate systems using Hamiltonian Mechanics and AD")
    (description
     "See README.md (or read online at <https://github.com/mstksg/hamilton#readme>)")
    (license license:bsd-3)))

haskell-8.4-hamilton

(define-public haskell-8.4-hapistrano
  (package
    (name "haskell-8.4-hapistrano")
    (version "0.3.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hapistrano/hapistrano-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kkasqfx7k8sl22sklysxl76d5ljcm7p96hgcak7qgwwbj7igj56"))))
    (properties `((upstream-name . "hapistrano") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev" "-f-static")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-formatting)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-gitrev)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-path)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-path-io)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-silently)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-typed-process)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/stackbuilders/hapistrano")
    (synopsis "A deployment library for Haskell applications")
    (description
     "
Hapistrano makes it easy to reliably deploy Haskell applications
to a server.

Following popular libraries like Ruby's <http://capistranorb.com/
Capistrano>, Hapistrano does the work of building the application
with dependencies into a distinct folder, and then atomically moves
a symlink to the latest complete build.

This allows for atomic switchovers to new application code after the
build is complete. Rollback is even simpler, since Hapistrano can
just point the `current` symlink to the previous release.

See <https://github.com/stackbuilders/hapistrano the project readme on GitHub>
for more information.
")
    (license license:expat)))

haskell-8.4-hapistrano

(define-public haskell-8.4-haskell-lsp-types
  (package
    (name "haskell-8.4-haskell-lsp-types")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-lsp-types/haskell-lsp-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wchy8qrd450s90j6d26psznrd3n245lvn01qxa42l5akljmlymx"))))
    (properties `((upstream-name . "haskell-lsp-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/alanz/haskell-lsp")
    (synopsis
     "Haskell library for the Microsoft Language Server Protocol, data types")
    (description
     "An implementation of the types to allow language implementors to
support the Language Server Protocol for their specific language.")
    (license license:expat)))

haskell-8.4-haskell-lsp-types

(define-public haskell-8.4-haskell-spacegoo
  (package
    (name "haskell-8.4-haskell-spacegoo")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-spacegoo/haskell-spacegoo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g6ximrv5jwibklkyr74vy3qkx8mv4xbpc7f6w1qg9gnlylzmcqy"))))
    (properties `((upstream-name . "haskell-spacegoo") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-vector-space)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/haskell-spacegoo")
    (synopsis "Client API for Rocket Scissor Spacegoo")
    (description
     "Using this package you can quickly create code to take
part in a game of Rocket Scissor Spacegoo; see
<https://bitbucket.org/dividuum/rocket-scissor-spacegoo> for more details on the
game.")
    (license license:expat)))

haskell-8.4-haskell-spacegoo

(define-public haskell-8.4-haskey-mtl
  (package
    (name "haskell-8.4-haskey-mtl")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskey-mtl/haskey-mtl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "154jny8frg61amsyh15w4n6clj9alp8rsa8qxgg9xh8xj2i01yqz"))))
    (properties `((upstream-name . "haskey-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-haskey)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-haskey-btree)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/haskell-haskey")
    (synopsis "A monad transformer supporting Haskey transactions.")
    (description
     "This library provides a monad transformer supporting Haskey transactions,
with default lifted instances for all mtl monad transformers.

For more information on how to use this package, visit
<https://github.com/haskell-haskey/haskey-mtl>")
    (license license:bsd-3)))

haskell-8.4-haskey-mtl

(define-public haskell-8.4-hasty-hamiltonian
  (package
    (name "haskell-8.4-hasty-hamiltonian")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasty-hamiltonian/hasty-hamiltonian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17nc33q9vkq13wp5dqrq2vq6bz408ll8h84fg7mapks5w5r9sag6"))))
    (properties `((upstream-name . "hasty-hamiltonian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k883ziy63p3zmpyfzck5jw2143b6ijcsvwi704rp94pvh0vk02z")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016) haskell-8.4-ad)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-kan-extensions)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-mcmc-types)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-mwc-probability)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "http://github.com/jtobin/hasty-hamiltonian")
    (synopsis "Speedy traversal through parameter space.")
    (description
     "Gradient-based traversal through parameter space.

This implementation of the HMC algorithm uses 'lens' as a means to operate over
generic indexed traversable functors, so you can expect it to work if your
target function takes a list, vector, map, sequence, etc. as its argument.

If you don't want to calculate your gradients by hand you can use the
handy <https://hackage.haskell.org/package/ad ad> library for automatic
differentiation.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in memory, and a 'hamiltonian' transition operator
that can be used more generally.

> import Numeric.AD (grad)
> import Numeric.MCMC.Hamiltonian
>
> target :: RealFloat a => [a] -> a
> target [x0, x1] = negate ((x0 + 2 * x1 - 7) ^ 2 + (2 * x0 + x1 - 5) ^ 2)
>
> gTarget :: [Double] -> [Double]
> gTarget = grad target
>
> booth :: Target [Double]
> booth = Target target (Just gTarget)
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 0.05 20 [0, 0] booth")
    (license license:expat)))

haskell-8.4-hasty-hamiltonian

(define-public haskell-8.4-hexml-lens
  (package
    (name "haskell-8.4-hexml-lens")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hexml-lens/hexml-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ss9riq7ppmqav4p38ckk479ggq7iy7xm0wsanr29ybg43vlx8xs"))))
    (properties `((upstream-name . "hexml-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-foundation)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hexml)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)))
    (home-page "https://github.com/pepeiborra/hexml-lens#readme")
    (synopsis "Lenses for the hexml package")
    (description "Lenses for the hexml package")
    (license license:bsd-3)))

haskell-8.4-hexml-lens

(define-public haskell-8.4-hlint
  (package
    (name "haskell-8.4-hlint")
    (version "2.1.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hlint/hlint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nv6627dacfsfjd3irmkff06hj1hr194zpm9xq6ng93dxhkhsnab"))))
    (properties `((upstream-name . "hlint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fthreaded" "-fgpl")
       #:cabal-revision
       ("1" "0xaikvhz5ka48k9kf0cvsb5cj3lc65hykkpfw3jww5bj7b3ngd20")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-cpphs)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-exts-util)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hscolour)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-refact)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/ndmitchell/hlint#readme")
    (synopsis "Source code suggestions")
    (description "HLint gives suggestions on how to improve your source code.")
    (license license:bsd-3)))

haskell-8.4-hlint

(define-public haskell-8.4-hmatrix-backprop
  (package
    (name "haskell-8.4-hmatrix-backprop")
    (version "0.1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-backprop/hmatrix-backprop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x833a48czc2hphswxgwf1ihkgxz13w3bz2d2zs9dqq8xkzdf4mx"))))
    (properties `((upstream-name . "hmatrix-backprop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03zrx1kvyz8gn2w2ygd7ql98yimsm3kyrnrr1cc99mz1cm0phnrv")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-backprop)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-finite-typelits)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-hmatrix-vector-sized)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-microlens-platform)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-vector-sized)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/mstksg/hmatrix-backprop#readme")
    (synopsis "hmatrix operations lifted for backprop")
    (description
     "hmatrix operations lifted for backprop, along with orphan instances.

Meant to act as a drop-in replacement to the API of
Numeric.LinearAlgebra.Static.  Just change your imports, and your
functions are automatically backpropagatable.

See README on Github at <https://github.com/mstksg/hmatrix-backprop#readme>")
    (license license:bsd-3)))

haskell-8.4-hmatrix-backprop

(define-public haskell-8.4-hpc-coveralls
  (package
    (name "haskell-8.4-hpc-coveralls")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpc-coveralls/hpc-coveralls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "116g0awcmc0ldij9pcqiiyrhij049r9sl9qrj5q2gc0d5jmkk1z5"))))
    (properties `((upstream-name . "hpc-coveralls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-curl)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-directory-tree)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-pureMD5)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-retry)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (propagated-inputs (list (@ (gnu packages curl) curl)))
    (home-page "https://github.com/guillaume-nargeot/hpc-coveralls")
    (synopsis "Coveralls.io support for Haskell.")
    (description
     "This utility converts and sends Haskell projects hpc code coverage to
<http://coveralls.io/ coverall.io>.

/Usage/

Below is the simplest example of .travis.yml configuration to use with Travis CI:

> language: haskell
> ghc: 7.8
> script:
>   - cabal configure --enable-tests --enable-library-coverage && cabal build && cabal test
> after_script:
>   - cabal install hpc-coveralls
>   - hpc-coveralls [options] [test-suite-names]

Further information can be found in the <https://github.com/guillaume-nargeot/hpc-coveralls README>.")
    (license license:bsd-3)))

haskell-8.4-hpc-coveralls

(define-public haskell-8.4-hw-rankselect-base
  (package
    (name "haskell-8.4-hw-rankselect-base")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-rankselect-base/hw-rankselect-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q4kywln4bls2dvazhqh2acw4yqnabnx0mdkhldgg70q8amnq2nj"))))
    (properties `((upstream-name . "hw-rankselect-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("3" "1hbbxxzmar0djj4r43nr3ar9nsl659wnq20rw6cp6q974ivlglx2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-bits-extra)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hw-bits)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hw-int)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hw-prim)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hw-string-parse)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/haskell-works/hw-rankselect-base#readme")
    (synopsis "Rank-select base")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-hw-rankselect-base

(define-public haskell-8.4-imagesize-conduit
  (package
    (name "haskell-8.4-imagesize-conduit")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/imagesize-conduit/imagesize-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06dc0453l7n3g05pg118y4smlzkl6p56zazpi4dr41dkg12pii9i"))))
    (properties `((upstream-name . "imagesize-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0p4zmizr01pg3d7gb0q88j1alvvlzbdvzyf1wbgajng68a4g0li9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/silkapp/imagesize-conduit")
    (synopsis "Determine the size of some common image formats.")
    (description
     "Currently supports PNG, GIF, and JPEG. This package provides a Sink that will consume the minimum number of bytes necessary to determine the image dimensions.")
    (license license:bsd-3)))

haskell-8.4-imagesize-conduit

(define-public haskell-8.4-influxdb
  (package
    (name "haskell-8.4-influxdb")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/influxdb/influxdb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hfyp284lpvgy0rqn7rjr7c8z0ah8h0vl3xhfrff8x1z1511n2dp"))))
    (properties `((upstream-name . "influxdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-optional-args)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/maoe/influxdb-haskell")
    (synopsis "Haskell client library for InfluxDB")
    (description "@@influxdb@@ is a Haskell client library for InfluxDB.

See \"Database.InfluxDB\" for a quick start guide.")
    (license license:bsd-3)))

haskell-8.4-influxdb

(define-public haskell-8.4-insert-ordered-containers
  (package
    (name "haskell-8.4-insert-ordered-containers")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/insert-ordered-containers/insert-ordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1612f455dw37da9g7bsd1s5kyi84mnr1ifnjw69892amyimi47fp"))))
    (properties `((upstream-name . "insert-ordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("9" "02d4zqyb9dbahkpcbpgxylrc5xxc0zbw1awj5w0jyrql2g2b6a5f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/phadej/insert-ordered-containers#readme")
    (synopsis
     "Associative containers retaining insertion order for traversals.")
    (description
     "Associative containers retaining insertion order for traversals.

The implementation is based on `unordered-containers`.")
    (license license:bsd-3)))

haskell-8.4-insert-ordered-containers

(define-public haskell-8.4-intro
  (package
    (name "haskell-8.4-intro")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intro/intro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nffkv59ws5ls8smafsvbgnpfhs6bbf6balwn23za1dlb5982ky3"))))
    (properties `((upstream-name . "intro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-writer-cps-mtl)))
    (home-page "https://github.com/minad/intro#readme")
    (synopsis
     "\"Fixed Prelude\" - Mostly total and safe, provides Text and Monad transformers")
    (description
     "Intro is a modern Prelude which provides safe alternatives
for most of the partial functions and follows other
best practices, e.g., Text is preferred over String.
For String overloading the extension 'OverloadedStrings' should be used.
Container types and Monad transformers are provided.

Most important - this Prelude tries to keep things simple.
This means it just reexports from base and commonly used libraries
and adds only very few additional functions.
Everything is exported explicitly to provide a stable interface
and to improve the quality of the documentation.")
    (license license:expat)))

haskell-8.4-intro

(define-public haskell-8.4-invertible
  (package
    (name "haskell-8.4-invertible")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invertible/invertible-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fwdbg0pimi9hfyp20fsvyxpicjd7jxg4vsh5kykkxviyfhxl2ha"))))
    (properties `((upstream-name . "invertible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-arrows" "-finvariant" "-flens" "-fpartial-isomorphisms" "-f-piso" "-fsemigroupoids" "-f-typecompose")
       #:cabal-revision
       ("1" "0zd2j4r0vkxkjpwa39nfjj2w9q7n9i2s9v1349rcxi3syk7f46w7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-invariant)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-partial-isomorphisms)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)))
    (home-page "https://hackage.haskell.org/package/invertible")
    (synopsis
     "bidirectional arrows, bijective functions, and invariant functors")
    (description
     "Representations and operations for bidirectional arrows (total isomorphisms: an
arrow paired with its inverse).  Classes for invariant functors and monoidal
functors.  Includes a number of useful bijections and operations, as well as
interoperability with related packages.

Most users will want to import one or more of \"Data.Invertible\" qualified, \"Control.Invertible.Monoidal\" unqualified, and any additional compatibility modules.")
    (license license:bsd-3)))

haskell-8.4-invertible

(define-public haskell-8.4-json-autotype
  (package
    (name "haskell-8.4-json-autotype")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-autotype/json-autotype-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mip3k489321sqzzwbv0sbcscv2q9n4lbc63sx8lslsy95da9x68"))))
    (properties `((upstream-name . "json-autotype") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "00wbcq9bx6sq6i5756ja6pf016xbpk2kflq20ncdv76zycxdkqnm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-GenericPretty)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/mgajda/json-autotype")
    (synopsis "Automatic type declaration for JSON input data")
    (description
     "Generates datatype declarations with Aeson's \"FromJSON\" instances
from a set of example \".json\" files.

To get started you need to install the package,
and run \"json-autotype\" binary on an input \".json\" file.
That will generate a new Aeson-based JSON parser.

\"$ json-autotype input.json -o JSONTypes.hs\"

Feel free to tweak the by changing types of the fields
- any field type that is instance of \"FromJSON\" should work.

You may immediately test the parser by calling it as a script:

\"$ runghc JSONTypes.hs input.json\"

One can now use multiple input files to generate better type description.

Now with Elm code generation support!
(If you want your favourite programming language supported too -
name your price and mail the author.)

See introduction on  <https://github.com/mgajda/json-autotype>
for details.")
    (license license:bsd-3)))

haskell-8.4-json-autotype

(define-public haskell-8.4-language-nix
  (package
    (name "haskell-8.4-language-nix")
    (version "2.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-nix/language-nix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kqsw0hk03wdn7mszyjgi38nxk1wmhbxfv6di3irrhsaf807657h"))))
    (properties `((upstream-name . "language-nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zv12p4ralrks0517zs52rzmzmsxxkcxkqz7zijfgcsvh6bsmafi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page "https://github.com/peti/language-nix#readme")
    (synopsis
     "Data types and useful functions to represent and manipulate the Nix language.")
    (description
     "Data types and useful functions to represent and manipulate the Nix language.")
    (license license:bsd-3)))

haskell-8.4-language-nix

(define-public haskell-8.4-lens-action
  (package
    (name "haskell-8.4-lens-action")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-action/lens-action-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q4q190lv6gh3bvdz9n177hwrckkkbfbwcw64b9ksz11gxn8m106"))))
    (properties `((upstream-name . "lens-action") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "http://github.com/ekmett/lens-action/")
    (synopsis "Monadic Getters and Folds")
    (description "This package contains combinators and types for working with
monadic getters and folds as split off from the original
lens package.")
    (license license:bsd-3)))

haskell-8.4-lens-action

(define-public haskell-8.4-lens-aeson
  (package
    (name "haskell-8.4-lens-aeson")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-aeson/lens-aeson-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k028ycmhz7mnjlrap88fqix4nmmpyy6b88m16kv77d3r8sz04a3"))))
    (properties `((upstream-name . "lens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("6" "1pg5v8fnlqw1krgi3d2a03a0zkjjdv5yp5f5z6q4mlb5jldz99a8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-simple-reflect)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/lens/lens-aeson/")
    (synopsis "Law-abiding lenses for aeson")
    (description "Law-abiding lenses for aeson")
    (license license:expat)))

haskell-8.4-lens-aeson

(define-public haskell-8.4-lens-datetime
  (package
    (name "haskell-8.4-lens-datetime")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-datetime/lens-datetime-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m6cns38xggw8kcc9h0mf4q024cvc8njm7n33f8gi7hwyxxqs7xv"))))
    (properties `((upstream-name . "lens-datetime") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page "https://github.com/nilcons/lens-datetime")
    (synopsis "Lenses for Data.Time.* types")
    (description
     "The @@lens-datetime@@ library provides a unified lens based accessors
to the various types in @@Data.Time.Clock@@, @@Data.Time.Calendar@@ and
@@Data.Time.LocalTime@@. This library only tries to make some of the
common use-cases convenient, it doesn't aim for completeness. If you
want completeness and/or efficiency try the @@thyme@@ package instead
(<http://hackage.haskell.org/package/thyme>).

Demonstration of basic uses.

>import Control.Lens
>import Data.Time
>import Data.Time.Lens
>
>aDay :: Day
>aDay = fromGregorian 2013 08 22
>
>aLocal :: LocalTime
>aLocal = LocalTime aDay (TimeOfDay 13 45 28)
>
>aUTC :: UTCTime
>aUTC = UTCTime aDay 7458.9

You can then do the following:

>> aLocal ^. years
>2013
>> aUTC ^. months
>8
>> aLocal & time .~ midnight
>2013-08-22 00:00:00
>> aUTC & days .~ 1 & months .~ 1
>2013-01-01 02:04:18.9 UTC

You can manipulate the date-time values with proper roll-over
behavior via the @@FlexibleDateTime@@ mechanism:

>> aLocal & flexDT.months +~ 12
>2014-08-22 13:45:28
>> aUTC & flexDT.days +~ 100
>2013-11-30 02:04:18.9 UTC
>> aLocal & flexDT.minutes +~ 120
>2013-08-22 15:45:28
>> aLocal & flexDT %~ ((days +~ 7) . (hours +~ 2))
>2013-08-22 13:45:28")
    (license license:bsd-3)))

haskell-8.4-lens-datetime

(define-public haskell-8.4-lens-misc
  (package
    (name "haskell-8.4-lens-misc")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-misc/lens-misc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jyqxi83imkyd318m17p2z84zqaxyb08mk5gy7q7saay2blmz4jr"))))
    (properties `((upstream-name . "lens-misc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/louispan/lens-misc#readme")
    (synopsis "Miscellaneous lens utilities.")
    (description "Handy functions when using lens.")
    (license license:bsd-3)))

haskell-8.4-lens-misc

(define-public haskell-8.4-lens-properties
  (package
    (name "haskell-8.4-lens-properties")
    (version "4.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-properties/lens-properties-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1caciyn75na3f25q9qxjl7ibjam22xlhl5k2pqfiak10lxsmnz2g"))))
    (properties `((upstream-name . "lens-properties") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "10c8phmf4znr6a9gkzvi2b9q9b9qc8cmslaxlx2hv59j62216h0f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "QuickCheck properties for lens")
    (description "QuickCheck properties for lens.")
    (license license:bsd-3)))

haskell-8.4-lens-properties

(define-public haskell-8.4-lens-regex
  (package
    (name "haskell-8.4-lens-regex")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-regex/lens-regex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hjizjmvdngxn63gs7x87qidh71aqhvyigrnqlbfjqan76pb6m29"))))
    (properties `((upstream-name . "lens-regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-samples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)))
    (home-page "https://github.com/himura/lens-regex")
    (synopsis "Lens powered regular expression")
    (description "Lens powered regular expression")
    (license license:bsd-3)))

haskell-8.4-lens-regex

(define-public haskell-8.4-linear
  (package
    (name "haskell-8.4-linear")
    (version "1.20.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/linear/linear-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "046vkvxlb0s286qr55s0c6db0rlwbm1cmlmwhrrkqbkzhfcipgay"))))
    (properties `((upstream-name . "linear") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftemplate-haskell" "-f-herbie")
       #:cabal-revision
       ("2" "00k4lv77mkidilbcq45q87rhc9s1wqkbxy43hfzqm08c8pc4cjn4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-simple-reflect)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "http://github.com/ekmett/linear/")
    (synopsis "Linear Algebra")
    (description
     "Types and combinators for linear algebra on free vector spaces")
    (license license:bsd-3)))

haskell-8.4-linear

(define-public haskell-8.4-lxd-client-config
  (package
    (name "haskell-8.4-lxd-client-config")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lxd-client-config/lxd-client-config-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kxg42hrgq5w38v1zsq8v9x0ky83c02k8rx2qcyazh7bkg4m4f4h"))))
    (properties `((upstream-name . "lxd-client-config") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/hverr/haskell-lxd-client-config#readme")
    (synopsis "Read the configuration file of the standard LXD client.")
    (description
     "This package can read the configuration file of the standard LXD client.

It can for example extract information about the configured LXD remotes on
your system.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-lxd-client-config

(define-public haskell-8.4-machines
  (package
    (name "haskell-8.4-machines")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines/machines-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0s3pvdklanw6a41pyyqrplm3vid63dpy6vd6qhp86dnb4wp2ppkj"))))
    (properties `((upstream-name . "machines") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1h0qq6kxv4kc0j0rmx7rhwhvfg1hc08r10q152km4p8kgshcwlig")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-pointed)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "http://github.com/ekmett/machines/")
    (synopsis "Networked stream transducers")
    (description "Networked stream transducers

Rúnar Bjarnason's talk on machines can be downloaded from:
<https://dl.dropbox.com/u/4588997/Machines.pdf>")
    (license license:bsd-3)))

haskell-8.4-machines

(define-public haskell-8.4-metrics
  (package
    (name "haskell-8.4-metrics")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/metrics/metrics-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f2vqwldp457956bx839r9v3xpmp95q42insn2xcdw669rq6wpym"))))
    (properties `((upstream-name . "metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)))
    (home-page "https://hackage.haskell.org/package/metrics")
    (synopsis "High-performance application metric tracking")
    (description
     "A port of Coda Hale's excellent metrics library for the JVM

<https://github.com/codahale/metrics>

For motivation about why you might want to track application metrics, check Coda\\'s talk:

<http://www.youtube.com/watch?v=czes-oa0yik>

Interesting portions of this package's documentation were also appropriated from the metrics library's documentation:

<http://metrics.codahale.com>")
    (license license:expat)))

haskell-8.4-metrics

(define-public haskell-8.4-milena
  (package
    (name "haskell-8.4-milena")
    (version "0.5.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/milena/milena-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s3bxj6d3p0fng08da9y2qb8cl967lqhsqplhcwmaj3aai72rj5w"))))
    (properties `((upstream-name . "milena") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-digest)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-murmur-hash)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/adamflott/milena.git#readme")
    (synopsis "A Kafka client for Haskell.")
    (description
     "A Kafka client for Haskell.
The protocol module is stable (the only changes will be to support changes in the Kafka protocol). The API is functional but subject to change.")
    (license license:bsd-3)))

haskell-8.4-milena

(define-public haskell-8.4-mmark
  (package
    (name "haskell-8.4-mmark")
    (version "0.0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmark/mmark-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d0jxxj0b1jy9mym6389dmm6biiw8kzdh06zj2j0gsjczn2n60zw"))))
    (properties `((upstream-name . "mmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("7" "0nmbj8bkkzy7aclmhw92vcqk94ncdvyycaf2kpvdhf056hw0q85i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-email-validate)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-html-entity-map)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-lucid)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-modern-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parser-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-text-metrics)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/mmark-md/mmark")
    (synopsis "Strict markdown processor for writers")
    (description "Strict markdown processor for writers.")
    (license license:bsd-3)))

haskell-8.4-mmark

(define-public haskell-8.4-monad-logger
  (package
    (name "haskell-8.4-monad-logger")
    (version "0.3.30")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger/monad-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "102l0v75hbvkmrypiyg4ybb6rbc7nij5nxs1aihmqfdpg04rkkp7"))))
    (properties `((upstream-name . "monad-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate_haskell")
       #:cabal-revision
       ("3" "1gy9z9wxhxxihs8xr5csz1761vf3yync8fsal79v2b2a27kv30ww")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stm-chans)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/monad-logger#readme")
    (synopsis "A class of monads which can log messages.")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/monad-logger>")
    (license license:expat)))

haskell-8.4-monad-logger

(define-public haskell-8.4-mongoDB
  (package
    (name "haskell-8.4-mongoDB")
    (version "2.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mongoDB/mongoDB-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06g7mvazsymbyzm1zhsyfpbmhvlizidb4lp5l6axfw2wh90h5f7x"))))
    (properties `((upstream-name . "mongoDB") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-bson)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hashtables)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-nonce)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-pureMD5)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-random-shuffle)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mongodb-haskell/mongodb")
    (synopsis "Driver (client) for MongoDB, a free, scalable, fast, document
DBMS")
    (description "This package lets you connect to MongoDB servers and
update/query their data. Please see the example in
Database.MongoDB and the tutorial from the homepage. For
information about MongoDB itself, see www.mongodb.org.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-mongoDB

(define-public haskell-8.4-monoidal-containers
  (package
    (name "haskell-8.4-monoidal-containers")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoidal-containers/monoidal-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11gpqp4c54q6kmsdfpl0lcrfj6687h51mjpgirl299j6bam2bhs4"))))
    (properties `((upstream-name . "monoidal-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-newtype)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/bgamari/monoidal-containers")
    (synopsis "Containers with monoidal accumulation")
    (description
     "Containers with merging via monoidal accumulation. The 'Monoid' instances
provided by the @@containers@@ and @@unordered-containers@@ packages merge
structures in a left-biased manner instead of using the underlying monoidal
structure of the value.

This package wraps the types provided by these packages, but provides @@Monoid@@
instances implemented in terms of the value type's 'mappend'. For instance,
the @@Monoid@@ @@Map@@ instance looks like,

@@
instance (Ord k, Monoid a) => Monoid (MonoidalMap k a)
@@")
    (license license:bsd-3)))

haskell-8.4-monoidal-containers

(define-public haskell-8.4-mustache
  (package
    (name "haskell-8.4-mustache")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mustache/mustache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q3vadcvv2pxg6rpp92jq5zy784jxphdfpf6xn9y6wg9g3jn7201"))))
    (properties `((upstream-name . "mustache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0i9mm4y6jbpw9a15sr8nb084vndgz99xl0vv290cv76bxw7k9h2r")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/JustusAdam/mustache")
    (synopsis "A mustache template parser library.")
    (description
     "Allows parsing and rendering template files with mustache markup. See the
mustache <http://mustache.github.io/mustache.5.html language reference>.

Implements the mustache spec version 1.1.3.

/Note/: Versions including and beyond 0.4 are compatible with ghc 7.8 again.")
    (license license:bsd-3)))

haskell-8.4-mustache

(define-public haskell-8.4-network-simple-tls
  (package
    (name "haskell-8.4-network-simple-tls")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-simple-tls/network-simple-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12kwi2jc8g310wrw7ynq2hfhkxhh95qn0fy205g7a48xrw75npyj"))))
    (properties `((upstream-name . "network-simple-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-network-simple)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-system)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/k0001/network-simple-tls")
    (synopsis "Simple interface to TLS secured network sockets.")
    (description "Simple interface to TLS secured network sockets.")
    (license license:bsd-3)))

haskell-8.4-network-simple-tls

(define-public haskell-8.4-nvim-hs
  (package
    (name "haskell-8.4-nvim-hs")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nvim-hs/nvim-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07pnabrb9hs2l8ajrzcs3wz1m9vfq88wqjirf84ygmmnnd8dva71"))))
    (properties `((upstream-name . "nvim-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-cereal-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage001) haskell-8.4-dyre)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-foreign-store)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hslogger)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-messagepack)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-setenv)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/neovimhaskell/nvim-hs")
    (synopsis "Haskell plugin backend for neovim")
    (description
     "This package provides a plugin provider for neovim. It allows you to write
plugins for one of the great editors of our time in the best programming
language of our time! ;-)

You should find all the documentation you need inside the \"Neovim\" module.
Most other modules are considered internal, so don't be annoyed if using
things from there may break your code!

The following modules may also be of interest and they should not change
their API: \"Neovim.Quickfix\"

If you want to write unit tests that interact with neovim, \"Neovim.Test\"
provides some useful functions for that.

If you are keen to debug /nvim-hs/ or a module you are writing, take a look
at the \"Neovim.Debug\" module.

If you spot any errors or if you have great ideas, feel free to open an issue
on github.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-nvim-hs

(define-public haskell-8.4-pager
  (package
    (name "haskell-8.4-pager")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pager/pager-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wzfsindjxx61nca36hhldy0y33pgagg506ls9ldvrkvl4n4y7iy"))))
    (properties `((upstream-name . "pager") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/pharpend/pager")
    (synopsis "Open up a pager, like 'less' or 'more'")
    (description
     "This opens up the user's $PAGER. On Linux, this is usually called @@less@@. On
the various BSDs, this is usually @@more@@.

CHANGES

[0.1.1.0] Add @@printOrPage@@ function and @@sendToPagerStrict@@ function.")
    (license license:bsd-2)))

haskell-8.4-pager

(define-public haskell-8.4-pipes-extras
  (package
    (name "haskell-8.4-pipes-extras")
    (version "1.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-extras/pipes-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cyb05bv5xkarab3090ikpjiqm79lr46n3nalplliz8jr4x67a82"))))
    (properties `((upstream-name . "pipes-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0gqqhvq5h6kkz6k4dpvlky7lbrfbgqp30whn7cglaplrqzlfwbvd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (home-page "https://hackage.haskell.org/package/pipes-extras")
    (synopsis "Extra utilities for pipes")
    (description
     "This package holds miscellaneous utilities related to the @@pipes@@
library.")
    (license license:bsd-3)))

haskell-8.4-pipes-extras

(define-public haskell-8.4-project-template
  (package
    (name "haskell-8.4-project-template")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/project-template/project-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p69ww4rhah2qxragl615wl4a6mk4x9w09am8knmz3s4lxpljlpb"))))
    (properties `((upstream-name . "project-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0lq3sqnq0nr0gbvgzp0lqdl3j3mqdmdlf8xsw0j3pjh581xj3k0a")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fpco/haskell-ide")
    (synopsis "Specify Haskell project templates and generate files")
    (description
     "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>")
    (license license:bsd-3)))

haskell-8.4-project-template

(define-public haskell-8.4-purescript-bridge
  (package
    (name "haskell-8.4-purescript-bridge")
    (version "0.13.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/purescript-bridge/purescript-bridge-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jai0vrfw997w7gjs168bk8n2xjw30hnhd82pch5n58w1sy6n6ib"))))
    (properties `((upstream-name . "purescript-bridge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page "https://hackage.haskell.org/package/purescript-bridge")
    (synopsis "Generate PureScript data types from Haskell data types")
    (description "")
    (license license:bsd-3)))

haskell-8.4-purescript-bridge

(define-public haskell-8.4-qnap-decrypt
  (package
    (name "haskell-8.4-qnap-decrypt")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qnap-decrypt/qnap-decrypt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gwnpyzyrfw6i8a5arm8q6psjhwa8kl8n94wcglsnl59k1iadfb6"))))
    (properties `((upstream-name . "qnap-decrypt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-cipher-aes128)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/alexkazik/qnap-decrypt#readme")
    (synopsis "Decrypt files encrypted by QNAP's Hybrid Backup Sync")
    (description
     "Please see the README on Github at <https://github.com/alexkazik/qnap-decrypt#readme>")
    (license license:bsd-3)))

haskell-8.4-qnap-decrypt

(define-public haskell-8.4-quickcheck-arbitrary-adt
  (package
    (name "haskell-8.4-quickcheck-arbitrary-adt")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-arbitrary-adt/quickcheck-arbitrary-adt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fa5gb111m740q399l7wbr9n03ws9rasq48jhnx7dvvd6qh2wjjw"))))
    (properties `((upstream-name . "quickcheck-arbitrary-adt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page
     "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme")
    (synopsis "Generic typeclasses for generating arbitrary ADTs")
    (description "Improve arbitrary value generation for ADTs")
    (license license:bsd-3)))

haskell-8.4-quickcheck-arbitrary-adt

(define-public haskell-8.4-random-tree
  (package
    (name "haskell-8.4-random-tree")
    (version "0.6.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-tree/random-tree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hhwb4kah1j1hjsqwys24g0csq1hvz0vlgf6z9vwiql4w5y4wq1b"))))
    (properties `((upstream-name . "random-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-random-shuffle)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-tree-fun)))
    (home-page "https://hackage.haskell.org/package/random-tree")
    (synopsis "Create random trees")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-random-tree

(define-public haskell-8.4-references
  (package
    (name "haskell-8.4-references")
    (version "0.3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/references/references-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03n18skl989ksssi2lv50bns1iw9qixacabs9qvli4b36rnn01xw"))))
    (properties `((upstream-name . "references") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-instance-control)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "https://github.com/lazac/references")
    (synopsis "Selectors for reading and updating data.")
    (description
     "References are data accessors that can read, write or update the accessed infromation through their context. They are first-class values, can be passed in functions, transformed, combined. References generalize lenses, folds and traversals for haskell (see: < https://hackage.haskell.org/package/lens>).

References are more general than field selectors in traditional languages.

* References are first-class values. If there is a struct in C, for example, with an `int` field `fl`, then fl can only be used as part of an expression. One can not generalize a function to take a field selector and transform the selected data or use it in other ways.

* They can have different meanings, while field accessors can only represent data-level containment. They can express uncertain containment (like field selectors of C unions), different viewpoints of the same data, and other concepts.

There are two things that references can do but the previously mentioned access methods don't.

* References can cooperate with monads, for example IO. This opens many new applications.

* References can be added using the @@&+&@@ operator, to create new lenses more easily.

Basic idea taken from the currently not maintained package <https://hackage.haskell.org/package/yall>.

An example use of the references (a logger application that spawns new threads to update a global log):

> logger =
>   (forever $ do
>      log <- logChan ^? chan&logRecord    -- Extract the log record from the received log message
>      thrId <- forkIO (do time <- getTime
>                          ioref&lastLogTime != time $ logDB     -- Update the last logging time mutable log database
>                          let logMsg = senderThread .- show     -- Transform the thread id to a string and
>                                         $ loggingTime .= time  -- update the time
>                                         $ log                  -- inside the log message
>                          ioref&debugInfos !~ addLogEntry log $ logDB  -- update the table of log entries
>                          mvar !- (+1) $ count )
>      mvar !- (thrId:) $ updaters                               -- Record the spawned thread
>     ) `catch` stopUpdaters updaters
>   where stopUpdaters updaters ThreadKilled =
>           mvar&traverse !| killThread $ updaters               -- Kill all spawned threads before stopping

There are a bunch of predefined references for datatypes included in standard libraries.

New references can be created in several ways:

* From getter, setter and updater, using the @@reference@@ function.

* From getter and setter, using one of the simplified functions (@@lens@@, @@simplePartial@@, @@partial@@, ...).

* Using the `Data.Traversal` instance on a datatype to generate a traversal of each element.

* Using lenses from `Control.Lens` package. There are a lot of packages defining lenses, folds and traversals
for various data structures, so it is very useful that all of them can simply be converted into a reference.

* Generating references for newly defined datatypes using the `makeReferences` Template Haskell function.
")
    (license license:bsd-3)))

haskell-8.4-references

(define-public haskell-8.4-serf
  (package
    (name "haskell-8.4-serf")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/serf/serf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ry0shqmazxcsjxsh6amvz2fky2fy3wwlck7d331j8csz7fwdjfn"))))
    (properties `((upstream-name . "serf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-operational)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/sanetracker/serf")
    (synopsis "Interact with Serf via Haskell.")
    (description "Bindings to most of the commands provided by serf.")
    (license license:expat)))

haskell-8.4-serf

(define-public haskell-8.4-servant-docs
  (package
    (name "haskell-8.4-servant-docs")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-docs/servant-docs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x6lvpvlm1lh51y2pmldrjdjjrs5qnq44m2abczr75fjjy6hla3b"))))
    (properties `((upstream-name . "servant-docs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0w9yi4rmfq4irmnia9rl9pb66ix086ic9nd0grspnk54ib7970cl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-control-monad-omega)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-string-conversions)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "generate API docs for your servant webservice")
    (description
     "Library for generating API docs from a servant API definition.

Runnable example <https://github.com/haskell-servant/servant/blob/master/servant-docs/example/greet.hs here>.

<https://github.com/haskell-servant/servant/blob/master/servant-docs/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.4-servant-docs

(define-public haskell-8.4-servant-foreign
  (package
    (name "haskell-8.4-servant-foreign")
    (version "0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-foreign/servant-foreign-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01cq938b4szvnapf8c4ir8j09aq25jwgnp3jbfxnja027c1v3735"))))
    (properties `((upstream-name . "servant-foreign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1alal6ps1lwl8yd2vwkpmkn4a69blr1ws2cba7mc7a2w63lg1pyz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)))
    (home-page "https://hackage.haskell.org/package/servant-foreign")
    (synopsis
     "Helpers for generating clients for servant APIs in any programming language")
    (description
     "Helper types and functions for generating client functions for servant APIs in any programming language

This package provides types and functions that collect all the data needed to generate client functions in the programming language of your choice. This effectively means you only have to write the code that \"pretty-prints\" this data as some code in your target language.

See the servant-js package for an example

<https://github.com/haskell-servant/servant/blob/master/servant-foreign/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.4-servant-foreign

(define-public haskell-8.4-shell-conduit
  (package
    (name "haskell-8.4-shell-conduit")
    (version "4.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shell-conduit/shell-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c5yvm08l37qblqks1r23znixxas39gl1d3mlm6rq8a6zfvcacbg"))))
    (properties `((upstream-name . "shell-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monads-tf)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/psibi/shell-conduit")
    (synopsis "Write shell scripts with Conduit")
    (description
     "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.")
    (license license:bsd-3)))

haskell-8.4-shell-conduit

(define-public haskell-8.4-simple-sendfile
  (package
    (name "haskell-8.4-simple-sendfile")
    (version "0.2.27")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-sendfile/simple-sendfile-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bwwqzcm56m2w4ymsa054sxmpbj76h9pvb0jf8zxp8lr41cp51gn"))))
    (properties `((upstream-name . "simple-sendfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fallow-bsd")
       #:cabal-revision
       ("2" "1590hn309h3jndahqh8ddrrn0jvag51al8jgb2p5l9m5r1ipn3i5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/simple-sendfile")
    (synopsis "Cross platform library for the sendfile system call")
    (description "Cross platform library for the sendfile system call.
This library tries to call minimum system calls which
are the bottleneck of web servers.")
    (license license:bsd-3)))

haskell-8.4-simple-sendfile

(define-public haskell-8.4-speedy-slice
  (package
    (name "haskell-8.4-speedy-slice")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/speedy-slice/speedy-slice-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16982nx9br5v37vzmww2di1vmj7y8g59myvhiw3l1fc1nq88mgzg"))))
    (properties `((upstream-name . "speedy-slice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-kan-extensions)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-mcmc-types)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-mwc-probability)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "http://github.com/jtobin/speedy-slice")
    (synopsis "Speedy slice sampling.")
    (description
     "Speedy slice sampling.

This implementation of the slice sampling algorithm uses 'lens' as a means to
operate over generic indexed traversable functors, so you can expect it to
work if your target function takes a list, vector, map, sequence, etc. as its
argument.

Additionally you can sample over anything that's an instance of both 'Num' and
'Variate', which is useful in the case of discrete parameters.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in memory, and a 'slice' transition operator that can
be used more generally.

> import Numeric.MCMC.Slice
> import Data.Sequence (Seq, index, fromList)
>
> bnn :: Seq Double -> Double
> bnn xs = -0.5 * (x0 ^ 2 * x1 ^ 2 + x0 ^ 2 + x1 ^ 2 - 8 * x0 - 8 * x1) where
>   x0 = index xs 0
>   x1 = index xs 1
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 1 (fromList [0, 0]) bnn")
    (license license:expat)))

haskell-8.4-speedy-slice

(define-public haskell-8.4-stache
  (package
    (name "haskell-8.4-stache")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stache/stache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fqipjyin2hpklm0gaab4qhcfj9gzkpb2g948sqzf1n6alkxvyvb"))))
    (properties `((upstream-name . "stache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("8" "0jz9cg3w71nvxc4y6hrwjayxl2291q5xm5r4qrhz1ag1lvzk26yn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/stackbuilders/stache")
    (synopsis "Mustache templates for Haskell")
    (description "Mustache templates for Haskell.")
    (license license:bsd-3)))

haskell-8.4-stache

(define-public haskell-8.4-stm-conduit
  (package
    (name "haskell-8.4-stm-conduit")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-conduit/stm-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hhlxvpp7mah8dcvkknh6skx44jfk3092zz2w52zlr255bkmn3p8"))))
    (properties `((upstream-name . "stm-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-cereal-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stm-chans)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cgaebel/stm-conduit")
    (synopsis
     "Introduces conduits to channels, and promotes using conduits concurrently.")
    (description
     "Provides two simple conduit wrappers around STM channels - a source and a sink.")
    (license license:bsd-3)))

haskell-8.4-stm-conduit

(define-public haskell-8.4-stratosphere
  (package
    (name "haskell-8.4-stratosphere")
    (version "0.24.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stratosphere/stratosphere-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n4gry4vgqb64vy9ncyz3hcsjv31a869al5kbwgzi7pd7rp61zla"))))
    (properties `((upstream-name . "stratosphere") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-flibrary-only")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-aeson-qq)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/frontrowed/stratosphere#readme")
    (synopsis "EDSL for AWS CloudFormation")
    (description "EDSL for AWS CloudFormation")
    (license license:expat)))

haskell-8.4-stratosphere

(define-public haskell-8.4-strict-base-types
  (package
    (name "haskell-8.4-strict-base-types")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-base-types/strict-base-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yihvjijag9g55ihrgqj0vwn6ksvscj3r0n2zzxz2qbxrhx6m1pq"))))
    (properties `((upstream-name . "strict-base-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)))
    (home-page "https://github.com/meiersi/strict-base-types")
    (synopsis "Strict variants of the types provided in base.")
    (description
     "It is common knowledge that lazy datastructures can lead to space-leaks.
This problem is particularly prominent, when using lazy datastructures to
store the state of a long-running application in memory. The easiest
solution to this problem is to use fully strict types to store such state
values. By \\\"fully strict types\\\" we mean types for whose values it holds
that, if they are in weak-head normal form, then they are also in normal
form. Intuitively, this means that values of fully strict types cannot
contain unevaluated thunks.

To define a fully strict datatype, one typically uses the following recipe.

1. Make all fields of every constructor strict; i.e., add a bang to
all fields.

2. Use only strict types for the fields of the constructors.

The second requirement is problematic as it rules out the use of
the standard Haskell 'Maybe', 'Either', and pair types. This library
solves this problem by providing strict variants of these types and their
corresponding standard support functions and type-class instances.

Note that this library does currently not provide fully strict lists.
They can be added if they are really required. However, in many cases one
probably wants to use unboxed or strict boxed vectors from the 'vector'
library (<http://hackage.haskell.org/package/vector>) instead of strict
lists.  Moreover, instead of @@String@@s one probably wants to use strict
@@Text@@ values from the @@text@@ library
(<http://hackage.haskell.org/package/text>).

This library comes with batteries included; i.e., missing instances
for type-classes from the @@deepseq@@, @@binary@@, @@aeson@@, @@QuickCheck@@, and
@@lens@@ packages are included. Of particluar interest is the @@Strict@@
type-class provided by the lens library
(<http://hackage.haskell.org/packages/archive/lens/3.9.0.2/doc/html/Control-Lens-Iso.html#t:Strict>).
It is used in the following example to simplify the modification of
strict fields.

> (-# LANGUAGE TemplateHaskell #-)   -- replace with curly braces,
> (-# LANGUAGE OverloadedStrings #-) -- the Haddock prologues are a P.I.T.A!
>
> import           Control.Lens ( (.=), Strict(strict), from, Iso', makeLenses)
> import           Control.Monad.State.Strict (State)
> import qualified Data.Map                   as M
> import qualified Data.Maybe.Strict          as S
> import qualified Data.Text                  as T
>
> -- | An example of a state record as it could be used in a (very minimal)
> -- role-playing game.
> data GameState = GameState
>     ( _gsCooldown :: !(S.Maybe Int)
>     , _gsHealth   :: !Int
>     )  -- replace with curly braces, *grmbl*
>
> makeLenses ''GameState
>
> -- The isomorphism, which converts a strict field to its lazy variant
> lazy :: Strict lazy strict => Iso' strict lazy
> lazy = from strict
>
> type Game = State GameState
>
> cast :: T.Text -> Game ()
> cast spell =
>     gsCooldown.lazy .= M.lookup spell spellDuration
>     -- ... implement remainder of spell-casting ...
>   where
>     spellDuration = M.fromList [(\"fireball\", 5)]

See
<http://www.haskellforall.com/2013/05/program-imperatively-using-haskell.html>
for a gentle introduction to lenses and state manipulation.

Note that this package uses the types provided by the 'strict' package
(<http://hackage.haskell.org/package/strict>), but organizes them a bit
differently. More precisely, the @@strict-base-types@@ package

- only provides the fully strict variants of types from 'base',

- is in-sync with the current base library (base-4.6),

- provides the missing instances for (future) Haskell platform packages, and

- conforms to the standard policy that strictness variants of an existing
datatype are identified by suffixing \\'Strict\\' or \\'Lazy\\' in the
module hierarchy.")
    (license license:bsd-3)))

haskell-8.4-strict-base-types

(define-public haskell-8.4-stylish-haskell
  (package
    (name "haskell-8.4-stylish-haskell")
    (version "0.9.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stylish-haskell/stylish-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16r2nm1y0s5ybrq2pzsq00nfq7k0i70nyg7ynmhx76lld82i17yv"))))
    (properties `((upstream-name . "stylish-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/jaspervdj/stylish-haskell")
    (synopsis "Haskell code prettifier")
    (description
     "A Haskell code prettifier. For more information, see:

<https://github.com/jaspervdj/stylish-haskell/blob/master/README.markdown>")
    (license license:bsd-3)))

haskell-8.4-stylish-haskell

(define-public haskell-8.4-tcp-streams
  (package
    (name "haskell-8.4-tcp-streams")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tcp-streams/tcp-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qa8dvlxg6r7f6qxq46xj1fq5ksbvznjqs624v57ay2nvgji5n3p"))))
    (properties `((upstream-name . "tcp-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-pem)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-system)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/didi-FP/tcp-streams")
    (synopsis "One stop solution for tcp client and server with tls support.")
    (description
     "One stop solution for tcp client and server with tls support.")
    (license license:bsd-3)))

haskell-8.4-tcp-streams

(define-public haskell-8.4-timelens
  (package
    (name "haskell-8.4-timelens")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timelens/timelens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r57fib5nzvrk8gsn26364l1a14zj9sg3kv2db4pjzy3dq0zmrpl"))))
    (properties `((upstream-name . "timelens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)))
    (home-page "http://www.github.com/massysett/timelens")
    (synopsis "Lenses for the time package")
    (description
     "These are lenses for the time package.  Please see the README.md
for more information.")
    (license license:bsd-3)))

haskell-8.4-timelens

(define-public haskell-8.4-tls-debug
  (package
    (name "haskell-8.4-tls-debug")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tls-debug/tls-debug-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16zb4dray3l6sdckixyd2a5hbf6s0svy5f5bfffq48zr7f3c8id3"))))
    (properties `((upstream-name . "tls-debug") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-pem)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-system)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-tls")
    (synopsis "Set of programs for TLS testing and debugging")
    (description
     "A set of program to test and debug various aspect of the TLS package.
")
    (license license:bsd-3)))

haskell-8.4-tls-debug

(define-public haskell-8.4-tls-session-manager
  (package
    (name "haskell-8.4-tls-session-manager")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tls-session-manager/tls-session-manager-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rvmln545vghsx8zhxp44f0f6pzma8cylarmfhhysy55ipywr1n5"))))
    (properties `((upstream-name . "tls-session-manager") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-auto-update)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-psqueues)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/tls-session-manager")
    (synopsis "In-memory TLS session manager")
    (description
     "TLS session manager with limitation, automatic pruning, energy saving and replay resistance")
    (license license:bsd-3)))

haskell-8.4-tls-session-manager

(define-public haskell-8.4-trifecta
  (package
    (name "haskell-8.4-trifecta")
    (version "2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/trifecta/trifecta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hznd8i65s81xy13i2qc7cvipw3lfb2yhkv53apbdsh6sbljz5sk"))))
    (properties `((upstream-name . "trifecta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0xbwyvwl6f2zylk60f2akwgq03qv49113xil7b1z1s3vlwbn5aj1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-charset)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-fingertree)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-reducers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "http://github.com/ekmett/trifecta/")
    (synopsis "A modern parser combinator library with convenient diagnostics")
    (description
     "A modern parser combinator library with slicing and Clang-style colored diagnostics")
    (license license:bsd-3)))

haskell-8.4-trifecta

(define-public haskell-8.4-validation
  (package
    (name "haskell-8.4-validation")
    (version "1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validation/validation-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08drmdvyzg2frbb26icy1mlz52xv0l6gi3v8gb7xp0vrcci5libh"))))
    (properties `((upstream-name . "validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1x1g4nannz81j1h64l1m3ancc96zc57d1bjhj1wk7bwn1xxbi5h3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/qfpl/validation")
    (synopsis "A data-type like Either but with an accumulating Applicative")
    (description
     "<<http://i.imgur.com/uZnp9ke.png>>

A data-type like Either but with differing properties and type-class
instances.

Library support is provided for this different representation, include
`lens`-related functions for converting between each and abstracting over their
similarities.

* `Validation`

The `Validation` data type is isomorphic to `Either`, but has an instance
of `Applicative` that accumulates on the error side. That is to say, if two
(or more) errors are encountered, they are appended using a `Semigroup`
operation.

As a consequence of this `Applicative` instance, there is no corresponding
`Bind` or `Monad` instance. `Validation` is an example of, \"An applicative
functor that is not a monad.\"")
    (license license:bsd-3)))

haskell-8.4-validation

(define-public haskell-8.4-vec
  (package
    (name "haskell-8.4-vec")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vec/vec-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0m70ld5vy96vca4wdm45q1ixwznl3yfj8jzil2kjfkzzac5fym5y"))))
    (properties `((upstream-name . "vec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "093q5qlhlia12ckhvax322lyy3sb554pg46ghabvsvx8znixw2hh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-fin)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Vec: length-indexed (sized) list")
    (description
     "This package provides length-indexed (sized) lists, also known as vectors.

@@
data Vec n a where
\\    VNil  :: Vec 'Nat.Z a
\\    (:::) :: a -> Vec n a -> Vec ('Nat.S n) a
@@

The functions are implemented in three flavours:

* __naive__: with explicit recursion. It's simple, constraint-less, yet slow.

* __pull__: using @@Fin n -> a@@ representation, which fuses well,
but makes some programs hard to write. And

* __inline__: which exploits how GHC dictionary inlining works, unrolling
recursion if the size of 'Vec' is known statically.

As best approach depends on the application, @@vec@@ doesn't do any magic
transformation. Benchmark your code.

This package uses [fin](https://hackage.haskell.org/package/fin), i.e. not @@GHC.TypeLits@@, for indexes.

See [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)
by Sam Lindley and Conor McBride for answers to /how/ and /why/.
Read [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)
by Jeremy Gibbons for (not so) different ones.

=== Similar packages

* [linear](https://hackage.haskell.org/package/linear) has 'V' type,
which uses 'Vector' from @@vector@@ package as backing store.
@@Vec@@ is a real GADT, but tries to provide as many useful instances (upto @@lens@@).

* [vector-sized](https://hackage.haskell.org/package/vector-sized)
Great package using @@GHC.TypeLits@@. Current version (0.6.1.0) uses
@@finite-typelits@@ and @@Int@@ indexes.

* [sized-vector](https://hackage.haskell.org/package/sized-vector) depends
on @@singletons@@ package. @@vec@@ isn't light on dependencies either,
but try to provide wide GHC support.

* [fixed-vector](https://hackage.haskell.org/package/fixed-vector)

* [sized](https://hackage.haskell.org/package/sized) also depends
on a @@singletons@@ package. The @@Sized f n a@@ type is generalisation of
@@linear@@'s @@V@@ for any @@ListLike@@.

* [clash-prelude](https://hackage.haskell.org/package/clash-prelude)
is a kitchen sink package, which has @@CLaSH.Sized.Vector@@ module.
Also depends on @@singletons@@.")
    (license license:bsd-3)))

haskell-8.4-vec

(define-public haskell-8.4-vector-instances
  (package
    (name "haskell-8.4-vector-instances")
    (version "3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-instances/vector-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10akvpa5w9bp0d8hflab63r9laa9gy2hv167smhjsdzq1kplc0hv"))))
    (properties `((upstream-name . "vector-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fhashable")
       #:cabal-revision
       ("1" "177jllmcv0517vppc4lx0l0kvicgaf1h060lkcnv7fl0hnp16zf5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage016) haskell-8.4-keys)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-pointed)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/ekmett/vector-instances")
    (synopsis "Orphan Instances for 'Data.Vector'")
    (description "")
    (license license:bsd-3)))

haskell-8.4-vector-instances

(define-public haskell-8.4-viewprof
  (package
    (name "haskell-8.4-viewprof")
    (version "0.0.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/viewprof/viewprof-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11nd137135jq19l58g5fkxzznbv2hdrfyy231fy9s8hifm2rz14d"))))
    (properties `((upstream-name . "viewprof") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-brick)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-ghc-prof)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-vty)))
    (home-page "https://github.com/maoe/viewprof")
    (synopsis "Text-based interactive GHC .prof viewer")
    (description "viewprof is a text-based interactive GHC .prof viewer.

You can find a screenshot and some explanation in
<https://github.com/maoe/viewprof#readme the README>.")
    (license license:bsd-3)))

haskell-8.4-viewprof

(define-public haskell-8.4-weeder
  (package
    (name "haskell-8.4-weeder")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/weeder/weeder-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ylwq1087x6ppn5y5krvl6q6fxcln58y8fwbah3ygp0cpgm4w816"))))
    (properties `((upstream-name . "weeder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-foundation)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (home-page "https://github.com/ndmitchell/weeder#readme")
    (synopsis "Detect dead code")
    (description
     "Find redundant package dependencies or redundant module exports.")
    (license license:bsd-3)))

haskell-8.4-weeder

(define-public haskell-8.4-writer-cps-lens
  (package
    (name "haskell-8.4-writer-cps-lens")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/writer-cps-lens/writer-cps-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vq6sfq7c58py9p3lgq2b4l9rl46n555vlmxfp6b7p469xpqnsrd"))))
    (properties `((upstream-name . "writer-cps-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-writer-cps-mtl)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-writer-cps-transformers)))
    (home-page "https://github.com/louispan/writer-cps-lens#readme")
    (synopsis "Lens instances for the stricter CPS WriterT and RWST")
    (description
     "Control.Lens Strict, Wrapped, Magnify and Zoomed instances for the stricter WriterT and RWST from writer-cps-transformers.")
    (license license:bsd-3)))

haskell-8.4-writer-cps-lens

(define-public haskell-8.4-xml-conduit
  (package
    (name "haskell-8.4-xml-conduit")
    (version "1.8.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit/xml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "177gmyigxql1pn3ncz0r8annwv5cbxnihbgrrg1dhm4gmc9jy2wq"))))
    (properties `((upstream-name . "xml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/snoyberg/xml")
    (synopsis
     "Pure-Haskell utilities for dealing with XML with the conduit package.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.")
    (license license:expat)))

haskell-8.4-xml-conduit

(define-public haskell-8.4-xmlbf-xeno
  (package
    (name "haskell-8.4-xmlbf-xeno")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmlbf-xeno/xmlbf-xeno-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cnxcw1sh92ljcpla2j7pg0md8yj7j48jgjlsn0f9ha0j90lw73c"))))
    (properties `((upstream-name . "xmlbf-xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-html-entities)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-xeno)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-xmlbf)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis "xeno backend support for the xmlbf library.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-xmlbf-xeno

(define-public haskell-8.4-zim-parser
  (package
    (name "haskell-8.4-zim-parser")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zim-parser/zim-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12apl53kj1lzfkw566z3j5fir8iab25s2pkajb3dmq2lbhwnlzxj"))))
    (properties `((upstream-name . "zim-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-binary-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-lzma)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/robbinch/zim-parser#readme")
    (synopsis "Read and parse ZIM files")
    (description
     "zim-parser is a library to read and parse ZIM (http://openzim.org) files.
ZiM files contain offline web content (eg. Wikipedia) which can be browsed
locally without an Internet connection.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-zim-parser

(define-public haskell-8.4-zip
  (package
    (name "haskell-8.4-zip")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zip/zip-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1p6r4rmagq2x44wizpxk3844vh5nv2k51wl3h6vx5xnf5im2v535"))))
    (properties `((upstream-name . "zip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-bzlib-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-digest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/zip")
    (synopsis "Operations on zip archives")
    (description "Operations on zip archives.")
    (license license:bsd-3)))

haskell-8.4-zip

(define-public haskell-8.4-zip-stream
  (package
    (name "haskell-8.4-zip-stream")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-stream/zip-stream-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wnjj1sp5y24iqd1ffmz6lmsvh0527v05zhzygqaf65j8sny535q"))))
    (properties `((upstream-name . "zip-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-binary-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-digest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/zip-stream")
    (synopsis "ZIP archive streaming using conduits")
    (description
     "Process (extract and create) zip files as streams (e.g., over the network), accessing contained files without having to write the zip file to disk (unlike zip-conduit).")
    (license license:bsd-3)))

haskell-8.4-zip-stream

(define-public haskell-8.4-zippers
  (package
    (name "haskell-8.4-zippers")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zippers/zippers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11f0jx0dbm2y9y5hnpakdvk9fmsm3awr2lcxp46dyma6arr7f4id"))))
    (properties `((upstream-name . "zippers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0y0klc2jaj611cjvmqi95dyj9yvribf9xhibn1andrz5rs6ysz3p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "http://github.com/ekmett/zippers/")
    (synopsis "Traversal based zippers")
    (description "Traversal based zippers.")
    (license license:bsd-3)))

haskell-8.4-zippers

