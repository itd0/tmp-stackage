;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage019)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.0))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.0-BNFC-meta
  (package
    (name "haskell-9.0-BNFC-meta")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/BNFC-meta/BNFC-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0snackflcjxza4iqbd85fdsmylwr3bj71nsfrs2s2idc3nlxc7ia"))))
    (properties `((upstream-name . "BNFC-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1d0p524370r8jff7p3rnp6hrqlr85nhg8n2ydpfjwwmp4arp1il2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-alex-meta)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-happy-meta)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
    (home-page "https://hackage.haskell.org/package/BNFC-meta")
    (synopsis "Deriving Parsers and Quasi-Quoters from BNF Grammars")
    (description
     "This package provides a very simple way of defining a compiler
front-end for a language by embedding a BNF grammar directly into a Haskell
source file.
Specifically, given a quasi-quoted LBNF grammar (as used by the BNF Converter)
it generates (using Template Haskell) a LALR parser and pretty pretty printer
for the language. The parser is then used to automatically define a
quasi-quoter for the defined language so it can also be seamlessly embedded
in Haskell source code. With a
simple addition to the gramwmar, the user can define a universal syntax for
anti-quoting. This
means that any grammar non-terminal can be replaced by a quoted Haskell
expression of the appropriate type. A few example languages are included in
the source tarball.

The LBNF grammar formalism is described thoroughly in the BNF Converter
documentation: <http://bnfc.digitalgrammars.com/>

This library and the additions it makes to LBNF is described in a
2011 Haskell Symposium paper titled \\\"Embedded Parser Generators\\\":
<http://wiki.portal.chalmers.se/cse/pmwiki.php/FP/EmbeddedParserGenerators>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-BNFC-meta

(define-public haskell-9.0-Chart
  (package
    (name "haskell-9.0-Chart")
    (version "1.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Chart/Chart-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ylxin419s35xq1j4hcnylrch3m252wqdkfjp5b323qhv4a8y1im"))))
    (properties `((upstream-name . "Chart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-operational)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/timbod7/haskell-chart/wiki")
    (synopsis "A library for generating 2D Charts and Plots")
    (description
     "A library for generating 2D Charts and Plots, with backends provided by
Cairo (<http://hackage.haskell.org/package/Chart-cairo>)
and
Diagrams (<http://hackage.haskell.org/package/Chart-diagrams>).
Documentation: https://github.com/timbod7/haskell-chart/wiki.")
    (license license:bsd-3)))

haskell-9.0-Chart

(define-public haskell-9.0-DPutils
  (package
    (name "haskell-9.0-DPutils")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/DPutils/DPutils-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kvj6zkj8r7qp1zvqz68fflxcal3w4qi1y8a70bm6qq5d83ivnd4"))))
    (properties `((upstream-name . "DPutils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-pipes-parse)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-streaming-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stringsearch)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/DPutils")
    (synopsis "utilities for DP")
    (description
     "Small set of utility functions, as well as the base types for
generic backtracing.
")
    (license license:bsd-3)))

haskell-9.0-DPutils

(define-public haskell-9.0-ForestStructures
  (package
    (name "haskell-9.0-ForestStructures")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ForestStructures/ForestStructures-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hhmcc0cpjbixqjgl35gv9dpymamdfb4vhhd5hard0qpg1xllnvw"))))
    (properties `((upstream-name . "ForestStructures") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fgl)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/ForestStructures")
    (synopsis "Tree- and forest structures")
    (description
     "This library provides both static and dynamic tree and forest
structures. Once a tree structure is static, it can be mappend
onto a linearized representation, which is beneficial for
algorithms that do not modify the internal tree structure, but
need fast @@O(1)@@ access to individual nodes, children, and
siblings.")
    (license license:bsd-3)))

haskell-9.0-ForestStructures

(define-public haskell-9.0-HandsomeSoup
  (package
    (name "haskell-9.0-HandsomeSoup")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HandsomeSoup/HandsomeSoup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yzfrvivvxwlaiqwbjx27rxwq9mmnnpb512vwklzw7nyzg9xmqha"))))
    (properties `((upstream-name . "HandsomeSoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTTP)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-hxt)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hxt-http)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/egonSchiele/HandsomeSoup")
    (synopsis "Work with HTML more easily in HXT")
    (description
     "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/HandsomeSoup")
    (license license:bsd-3)))

haskell-9.0-HandsomeSoup

(define-public haskell-9.0-Spock-api
  (package
    (name "haskell-9.0-Spock-api")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-api/Spock-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wqbq8vgq5sifybw32prkmcjwm2dqz4z3sv8ci4s603a2sril7h7"))))
    (properties `((upstream-name . "Spock-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hvect)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-reroute)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description "API definition DSL for Spock web framework")
    (license license:bsd-3)))

haskell-9.0-Spock-api

(define-public haskell-9.0-aeson-commit
  (package
    (name "haskell-9.0-aeson-commit")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-commit/aeson-commit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xbck5hcbfqm2kc3yzrl1dzdmjl9zf84vc33ird3c50ny884amwa"))))
    (properties `((upstream-name . "aeson-commit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-aeson-qq)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/xc-jp/aeson-commit#readme")
    (synopsis "Parse Aeson data with commitment")
    (description
     "Commitment mechanism for @@aeson@@ parsers.
Commitment means that if some initial parsing succeeds, subsequent failures are unrecoverable.")
    (license license:bsd-3)))

haskell-9.0-aeson-commit

(define-public haskell-9.0-aeson-typescript
  (package
    (name "haskell-9.0-aeson-typescript")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-typescript/aeson-typescript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xbj6m1lxpv4qclz5msrdplpy3mdxq5icjl3fq4bwbqy5rs6vczv"))))
    (properties `((upstream-name . "aeson-typescript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-string-interpolate)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/codedownio/aeson-typescript#readme")
    (synopsis "Generate TypeScript definition files from your ADTs")
    (description
     "Please see the README on Github at <https://github.com/codedownio/aeson-typescript#readme>")
    (license license:bsd-3)))

haskell-9.0-aeson-typescript

(define-public haskell-9.0-agda2lagda
  (package
    (name "haskell-9.0-agda2lagda")
    (version "0.2021.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/agda2lagda/agda2lagda-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1108xzl4fv86qpasg1wbc26bypd06s41kmgzybrggc76pv15hbis"))))
    (properties `((upstream-name . "agda2lagda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-goldplate)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andreasabel/agda2lagda")
    (synopsis "Translate .agda files into .lagda.tex files.")
    (description "Simple command line tool to convert plain Agda
or Haskell files into literate files.  Line comments
are interpreted as text, the rest as code blocks.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-agda2lagda

(define-public haskell-9.0-alternators
  (package
    (name "haskell-9.0-alternators")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-newtype-generics)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/louispan/alternators#readme")
    (synopsis "Handy functions when using transformers.")
    (description
     "Useful monads built on top of transformers. Please see README.md")
    (license license:bsd-3)))

haskell-9.0-alternators

(define-public haskell-9.0-api-field-json-th
  (package
    (name "haskell-9.0-api-field-json-th")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nakaji-dayo/api-field-json-th")
    (synopsis "option of aeson's deriveJSON ")
    (description "Utils for using aeson's deriveJSON with lens's makeFields")
    (license license:bsd-3)))

haskell-9.0-api-field-json-th

(define-public haskell-9.0-arithmoi
  (package
    (name "haskell-9.0-arithmoi")
    (version "0.12.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/arithmoi/arithmoi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03mxkzcg2pik4p1ik648h3w953zmf47ycafm2gd7hgg4gadsnslj"))))
    (properties `((upstream-name . "arithmoi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-chimera)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-exact-pi)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-integer-roots)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-mod)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-semirings)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-rerun)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/arithmoi")
    (synopsis "Efficient basic number-theoretic functions.")
    (description "A library of basic functionality needed for
number-theoretic calculations. The aim of this library
is to provide efficient implementations of the functions.
Primes and related things (totients, factorisation),
powers (integer roots and tests, modular exponentiation).")
    (license license:expat)))

haskell-9.0-arithmoi

(define-public haskell-9.0-ascii-numbers
  (package
    (name "haskell-9.0-ascii-numbers")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-numbers/ascii-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zmid1p3gqdmbriq6d87fyz69pksh1ha2x7w4m4pw7nch85440f5"))))
    (properties `((upstream-name . "ascii-numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-ascii-case)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-ascii-char)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-ascii-superset)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-d10)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-invert)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "ASCII representations of numbers")
    (description "This package provides functions for converting back and
forth between numbers and their ASCII representations.")
    (license license:asl2.0)))

haskell-9.0-ascii-numbers

(define-public haskell-9.0-ascii-th
  (package
    (name "haskell-9.0-ascii-th")
    (version "1.0.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-th/ascii-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14a50pxmri17nch7bcmrdflrqq5qq2z5012aiqh260iq4qsw74xq"))))
    (properties `((upstream-name . "ascii-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "037i6n02c9xsxj5zz1nxihwgzhksbzjzd0s2a2m8ndsq3a5hgc61")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-ascii-char)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-ascii-superset)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Template Haskell support for ASCII")
    (description "This package defines Template Haskell support for ASCII,
including quasi-quoters for expressing ASCII strings.")
    (license license:asl2.0)))

haskell-9.0-ascii-th

(define-public haskell-9.0-aws-xray-client
  (package
    (name "haskell-9.0-aws-xray-client")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-xray-client/aws-xray-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i60ggcrwp2vkyagj8jqb33wh7y0h3anag9l2pb5zh6xl2n043ai"))))
    (properties `((upstream-name . "aws-xray-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-aeson-qq)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-generic-arbitrary)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray.")
    (description
     "The core client for enabling AWX X-Ray.

See other `aws-xray-client-*` packages for usage and integration examples.")
    (license license:expat)))

haskell-9.0-aws-xray-client

(define-public haskell-9.0-base16-lens
  (package
    (name "haskell-9.0-base16-lens")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base16-lens/base16-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04qz8gm969vlaxsk1j3rlpqph74qjkfr3rkpfkkxrfmxih6cm2fj"))))
    (properties `((upstream-name . "base16-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-base16)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base16-lens")
    (synopsis "Optics for the Base16 library")
    (description "Prisms and pattern synonyms for the Base16 library")
    (license license:bsd-3)))

haskell-9.0-base16-lens

(define-public haskell-9.0-base32-lens
  (package
    (name "haskell-9.0-base32-lens")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base32-lens/base32-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wam29m7vz5srrj135wmsbmg9qqhsidnwfhbicy0vmx342ai8bs6"))))
    (properties `((upstream-name . "base32-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-base32)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base32-lens")
    (synopsis "Optics for the Base32 library")
    (description "Prisms and pattern synonyms for the Base32 library")
    (license license:bsd-3)))

haskell-9.0-base32-lens

(define-public haskell-9.0-base64-bytestring-type
  (package
    (name "haskell-9.0-base64-bytestring-type")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-api-data)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-serialise)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/base64-bytestring-type#readme")
    (synopsis "A newtype around ByteString, for base64 encoding")
    (description "A newtype around ByteString, for base64 encoding.
Strict and lazy, normal and url alphabet variants.")
    (license license:bsd-3)))

haskell-9.0-base64-bytestring-type

(define-public haskell-9.0-base64-lens
  (package
    (name "haskell-9.0-base64-lens")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-lens/base64-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iszvlc22h7crwqhcafy974l0l1rgxbcjf6lb5yxsvp6q66gzhrn"))))
    (properties `((upstream-name . "base64-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04mm8fq2lr4lv2a64aiy1q9mzg9n5cd1s62jpcbq1jgq0q4wilkh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-base64)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base64-lens")
    (synopsis "Optics for the Base64 library")
    (description "Prisms and pattern synonyms for the Base64 library")
    (license license:bsd-3)))

haskell-9.0-base64-lens

(define-public haskell-9.0-bench
  (package
    (name "haskell-9.0-bench")
    (version "1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bench/bench-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sy97qpv6paar2d5syppk6lc06wjx6qyz5aidsmh30jq853nydx6"))))
    (properties `((upstream-name . "bench") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0i4rsw28q2qzihv7cvf32nidpmsl4hks8wzafyi8v5i4gb5jqa7q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-criterion)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-turtle)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Gabriella439/bench")
    (synopsis "Command-line benchmark tool")
    (description "Think of this as a more powerful alternative to the @@time@@
command.  Use this command-line tool to benchmark a command
using Haskell's @@criterion@@ library.")
    (license license:bsd-3)))

haskell-9.0-bench

(define-public haskell-9.0-bson-lens
  (package
    (name "haskell-9.0-bson-lens")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage008) haskell-9.0-bson)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jb55/bson-lens")
    (synopsis "BSON lenses")
    (description "Lenses for Data.Bson")
    (license license:expat)))

haskell-9.0-bson-lens

(define-public haskell-9.0-buffer-builder
  (package
    (name "haskell-9.0-buffer-builder")
    (version "0.2.4.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/buffer-builder/buffer-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14l70h4j1dmhm96fsxg1mhiw00h9jqw0wy02v31lsz0jwpdr2513"))))
    (properties `((upstream-name . "buffer-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-HTF)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-criterion)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/chadaustin/buffer-builder")
    (synopsis
     "Library for efficiently building up buffers, one piece at a time")
    (description
     "\"Data.BufferBuilder\" is an efficient library for incrementally building
up 'ByteString's, one chunk at a time.  Early benchmarks show it
is over twice as fast as ByteString Builder, primarily because
'BufferBuilder' is built upon an ST-style restricted monad and
mutable state instead of ByteString Builder's monoidal AST.

Internally, BufferBuilder is backed by a few C functions.
Examination of GHC's output shows nearly optimal code generation
with no intermediate thunks -- and thus, continuation passing and
its associated indirect jumps and stack traffic only occur when
BufferBuilder is asked to append a non-strict ByteString.

I benchmarked four approaches with a URL encoding benchmark:

* State monad, concatenating ByteStrings: 6.98 us

* State monad, ByteString Builder: 2.48 us

* Crazy explicit RealWorld baton passing with unboxed state: 28.94 us (GHC generated really awful code for this, but see the revision history for the technique)

* C + FFI + ReaderT: 1.11 us

Using BufferBuilder is very simple:

> import qualified Data.BufferBuilder as BB
>
> let byteString = BB.runBufferBuilder $ do
>       BB.appendBS \"http\"
>       BB.appendChar8 '/'
>       BB.appendBS \"//\"

This package also provides \"Data.BufferBuilder.Utf8\" for generating UTF-8 buffers
and \"Data.BufferBuilder.Json\" for encoding data structures into JSON.")
    (license license:bsd-3)))

haskell-9.0-buffer-builder

(define-public haskell-9.0-byte-order
  (package
    (name "haskell-9.0-byte-order")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byte-order/byte-order-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lr5ijhc165qhviabklnl0zpbk5400wb1fqd1xn7x0ga1vvclxhl"))))
    (properties `((upstream-name . "byte-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0gkp45pasdg9k98yaw3fpsch4wy50q5n4wdmqlsffciimc0k11x1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-primitive-unaligned)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-wide-word)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/byte-order")
    (synopsis "Portable big-endian and little-endian conversions")
    (description
     "This library provides an interface to portably work with byte
arrays whose contents are known to be of a fixed endianness.
There are two ways to use this module. See the `System.ByteOrder`
module for more documentation.")
    (license license:bsd-3)))

haskell-9.0-byte-order

(define-public haskell-9.0-cacophony
  (package
    (name "haskell-9.0-cacophony")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cacophony/cacophony-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w9v04mdyzvwndqfb8my9a82b51avgwfnl6g7w89xj37ax9ariaj"))))
    (properties `((upstream-name . "cacophony") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-tools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-coroutine)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/centromere/cacophony#readme")
    (synopsis "A library implementing the Noise protocol.")
    (description
     "This library implements the <https://noiseprotocol.org Noise> protocol.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-cacophony

(define-public haskell-9.0-capability
  (package
    (name "haskell-9.0-capability")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/capability/capability-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sksd42ywaq5av7a1h9y66pclsk1fd9qx46q38kgs3av88zhzqci"))))
    (properties `((upstream-name . "capability") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-hspec-jenkins" "-f-dev")
       #:cabal-revision
       ("2" "1kap52pv98sgr2mqxcd66wgxxyjp94p8w1b7b3gqwvk9jcanfwxl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-generic-lens)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-mutable-containers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tweag/capability")
    (synopsis "Extensional capabilities and deriving combinators")
    (description
     "Standard capability type classes for extensional effects and combinators
to derive capability instances with little boilerplate.")
    (license license:bsd-3)))

haskell-9.0-capability

(define-public haskell-9.0-capataz
  (package
    (name "haskell-9.0-capataz")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/capataz/capataz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14mda2yvg0phpfhkacm5whh4hqcvyw14xiilx28ghc4rkf7al0fi"))))
    (properties `((upstream-name . "capataz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-teardown)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/roman/Haskell-capataz#readme")
    (synopsis "OTP-like supervision trees in Haskell")
    (description
     "`capataz` enhances the reliability of your concurrent applications by offering
supervision of green threads that run in your application.

Advantages over standard library:

* Links related long-living processes together under a common capataz
supervisor, with restart/shutdown order

* Set restart strategies (Permanent, Transient, Temporary) on `IO`
sub-routines on a granular level

* Set restart strategies on a pool of long-living worker threads (AllForOne,
OneForOne)

* Complete telemetry on the sub-routine lifecycle of your application (start,
error, restarts, shutdown)")
    (license license:expat)))

haskell-9.0-capataz

(define-public haskell-9.0-cheapskate-highlight
  (package
    (name "haskell-9.0-cheapskate-highlight")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate-highlight/cheapskate-highlight-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w6k694gmnx7h8ix79z8scsdl65zbilxni1vjr90ka2fdfrazxss"))))
    (properties `((upstream-name . "cheapskate-highlight") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c8kxqdqf0j962xjdrrjfcbjsl0c1kax31rjykymv7w16d6hmlj4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-cheapskate)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-highlighting-kate)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/aelve/cheapskate-highlight")
    (synopsis "Code highlighting for cheapskate")
    (description
     "Code highlighting for cheapskate-parsed Markdown. Takes cheapskate AST,
returns cheapskate AST with code blocks highlighted.")
    (license license:bsd-3)))

haskell-9.0-cheapskate-highlight

(define-public haskell-9.0-cheapskate-lucid
  (package
    (name "haskell-9.0-cheapskate-lucid")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate-lucid/cheapskate-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibjfy5dbkizg8cw4avhwl62xpk735a1a7bc0nkhf9zxpq9fb0pm"))))
    (properties `((upstream-name . "cheapskate-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "197nx95xw21i7zyvgzcgnr36ab6vrk17c66iz8ndwz61vp1jf6hc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-cheapskate)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lucid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/aelve/cheapskate-lucid")
    (synopsis "Use cheapskate with Lucid")
    (description
     "A package for rendering Markdown (parsed via cheapskate) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-9.0-cheapskate-lucid

(define-public haskell-9.0-clash-prelude
  (package
    (name "haskell-9.0-clash-prelude")
    (version "1.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-prelude/clash-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12ic8jcgz3jr4zrgrx06dzd6whlypyyxilrgbja27dcdv02fs6yr"))))
    (properties `((upstream-name . "clash-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-large-tuples" "-f-super-strict" "-f-strict-mapsignal" "-f-multiple-hidden" "-fdoctests" "-funittests" "-fbenchmarks")
       #:cabal-revision
       ("1" "09ra3gbhghrqlzaanjlvm0qpj05v3ilps62lblzy44n7sxmc5db7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-arrows)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-ghc-typelits-extra)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-half)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-interpolate)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-recursion-schemes)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-singletons)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-th-lift)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-th-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-type-errors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-uniplate)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://clash-lang.org/")
    (synopsis
     "Clash: a functional hardware description language - Prelude library")
    (description
     "Clash is a functional hardware description language that borrows both its
syntax and semantics from the functional programming language Haskell. The
Clash compiler transforms these high-level descriptions to low-level
synthesizable VHDL, Verilog, or SystemVerilog.

Features of Clash:

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

haskell-9.0-clash-prelude

(define-public haskell-9.0-columnar
  (package
    (name "haskell-9.0-columnar")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/columnar/columnar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qf5fbd9cwc22npww4qsjaj7rxdy2r3rjm19w23a9shqvgc2l6av"))))
    (properties `((upstream-name . "columnar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-enum-text)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-fmt)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-possibly)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdornan/columnar#readme")
    (synopsis "A CSV toolkit based on cassava and enum-text")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/columnar#readme>")
    (license license:bsd-3)))

haskell-9.0-columnar

(define-public haskell-9.0-commonmark-pandoc
  (package
    (name "haskell-9.0-commonmark-pandoc")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commonmark-pandoc/commonmark-pandoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dpi8zvjshab96w56qfqcys9h09f46lld8sc9q4xzb0y1p6lwmap"))))
    (properties `((upstream-name . "commonmark-pandoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-commonmark)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-commonmark-extensions)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pandoc-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Bridge between commonmark and pandoc AST.")
    (description "This library provides typeclasses for rendering
commonmark to Pandoc types.")
    (license license:bsd-3)))

haskell-9.0-commonmark-pandoc

(define-public haskell-9.0-componentm
  (package
    (name "haskell-9.0-componentm")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/componentm/componentm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19xnav3xiw5v8sdmw6a90wdhxxkjlkvpkwrf0pjsxlisgn93vqpg"))))
    (properties `((upstream-name . "componentm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-teardown)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/roman/Haskell-componentm#readme")
    (synopsis "Monad for allocation and cleanup of application resources")
    (description "This library allows you to allocate resources with
clean up strategies when initializing your application.
It then provides a Monadic interface to compose multiple
resources without having to deal with cleanup operations
explicitely.")
    (license license:expat)))

haskell-9.0-componentm

(define-public haskell-9.0-composable-associations
  (package
    (name "haskell-9.0-composable-associations")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/SamProtas/composable-associations#readme")
    (synopsis
     "Types and helpers for composing types into a single larger key-value type.")
    (description
     "A library providing generic types and helpers for composing types together into a a single key-value type.

This is useful when a normalized data model has a denormalized serialization format. Using this libraries types and
functions you build compose your data into the denormalized key-value format needed for serialization. Other
libraries provide concrete implementations for a given serialization format.")
    (license license:bsd-3)))

haskell-9.0-composable-associations

(define-public haskell-9.0-concise
  (package
    (name "haskell-9.0-concise")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/frasertweedale/hs-concise")
    (synopsis "Utilities for Control.Lens.Cons")
    (description
     "concise provides a handful of functions to extend what you can
do with Control.Lens.Cons.")
    (license license:bsd-3)))

haskell-9.0-concise

(define-public haskell-9.0-conduit-aeson
  (package
    (name "haskell-9.0-conduit-aeson")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-aeson/conduit-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jam2d4kk1pky9d88afl467a7sf5q46079cpfx9g2mjx7nc6x6zn"))))
    (properties `((upstream-name . "conduit-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lehins/conduit-aeson")
    (synopsis "Short description")
    (description
     "Please see the README on GitHub at <https://github.com/lehins/conduit-aeson#readme>")
    (license license:bsd-3)))

haskell-9.0-conduit-aeson

(define-public haskell-9.0-conduit-zstd
  (package
    (name "haskell-9.0-conduit-zstd")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-zstd)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/luispedro/conduit-zstd#readme")
    (synopsis "Conduit-based ZStd Compression")
    (description
     "Zstandard compression packaged as a conduit. This is a very thin wrapper around the [official hs-zstd interface](https://github.com/facebookexperimental/hs-zstd/)")
    (license license:expat)))

haskell-9.0-conduit-zstd

(define-public haskell-9.0-conferer-aeson
  (package
    (name "haskell-9.0-conferer-aeson")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conferer-aeson/conferer-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07rdal3smq1s14zmsn7g26vc6sqj21rsa2a1vcbrwrfgh9x36jkn"))))
    (properties `((upstream-name . "conferer-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "000fs57llk3f1x0rgdkxzbqzwzh5fx3mirpx0scmnj936byapp4c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-aeson-qq)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-conferer)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://conferer.ludat.io")
    (synopsis "conferer's source for reading json files")
    (description
     "Library to abstract the parsing of many haskell config values from different config sources")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-conferer-aeson

(define-public haskell-9.0-construct
  (package
    (name "haskell-9.0-construct")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/construct/construct-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ja4xxlr9pyd2gq3w07847zz3glcx3ygd9bygjhr3ppi2n3fiwx0"))))
    (properties `((upstream-name . "construct") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-incremental-parser)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-input-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-rank2classes)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/construct")
    (synopsis
     "Haskell version of the Construct library for easy specification of file formats")
    (description
     "A Haskell version of the <https://construct.readthedocs.io/en/latest/intro.html Construct> library for Python. A
succinct file format specification provides both a parser and the serializer for the format.")
    (license license:bsd-3)))

haskell-9.0-construct

(define-public haskell-9.0-core-program
  (package
    (name "haskell-9.0-core-program")
    (version "0.4.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-program/core-program-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bkjb9lpcnkj1lkpw309q3chd9aw5s5gvdprr335121xpjbgl33m"))))
    (properties `((upstream-name . "core-program") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-chronologique)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-core-data)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-core-text)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-fsnotify)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-hourglass)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-terminal-size)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-typed-process)))
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

haskell-9.0-core-program

(define-public haskell-9.0-cron
  (package
    (name "haskell-9.0-cron")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cron/cron-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f8jb2pxy89hkdnm20yz88b3j3vgh1a9c1dxiym3150izp34ikd5"))))
    (properties `((upstream-name . "cron") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")
       #:cabal-revision
       ("1" "1xlfpdb7f5ycdn19f3a8c4lzr7w4cv02g6k83rrm4a8xbdda66hg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mtl-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "http://github.com/michaelxavier/cron")
    (synopsis "Cron datatypes and Attoparsec parser")
    (description
     "Cron data structure and Attoparsec parser. The idea is to embed it in larger
systems which want to roll their own scheduled tasks in a format that people
are used to.
'System.Cron' is where all the interesting datatypes live. You will also find
'scheduleMatches', which you can use to compare a time against a
'CronSchedule' to see if an action needs to be performed.  System.Cron.Parser
is where you will find the parsers `cronSchedule`, `crontabEntry` and
`cronTab`. To parse individual schedules up to full crontab files.")
    (license license:expat)))

haskell-9.0-cron

(define-public haskell-9.0-cryptonite-conduit
  (package
    (name "haskell-9.0-cryptonite-conduit")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-crypto/cryptonite-conduit")
    (synopsis "cryptonite conduit")
    (description "Conduit bridge for cryptonite

For now only provide a conduit version for hash and hmac, but
with contribution, this could provide cipher conduits too,
and probably other things.")
    (license license:bsd-3)))

haskell-9.0-cryptonite-conduit

(define-public haskell-9.0-cryptostore
  (package
    (name "haskell-9.0-cryptostore")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptostore/cryptostore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w84klg3r10vapkc8s6q21ldnp3014x9nvi5ffsmzikn7g7pw1g5"))))
    (properties `((upstream-name . "cryptostore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-asn1-types)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-basement)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-hourglass)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-pem)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocheron/cryptostore")
    (synopsis "Serialization of cryptographic data types")
    (description "Haskell implementation of PKCS \\#8, PKCS \\#12 and CMS
(Cryptographic Message Syntax).")
    (license license:bsd-3)))

haskell-9.0-cryptostore

(define-public haskell-9.0-csv-conduit
  (package
    (name "haskell-9.0-csv-conduit")
    (version "0.7.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/csv-conduit/csv-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xh11h4qibjcv8b0rk5mwdzww183kpjqzl3x22rbfryjvrp0n07w"))))
    (properties `((upstream-name . "csv-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")
       #:cabal-revision
       ("1" "18dad4w8i2jma39flmzrjpxjvnkzcb8fnhxm67rl9iv3b6ip86ng")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ozataman/csv-conduit")
    (synopsis
     "A flexible, fast, conduit-based CSV parser library for Haskell.")
    (description
     "CSV files are the de-facto standard in many situations involving data transfer,
particularly when dealing with enterprise application or disparate database
systems.

While there are a number of CSV libraries in Haskell, at the time of this
project's start in 2010, there wasn't one that provided all of the following:

* Full flexibility in quote characters, separators, input/output

* Constant space operation

* Robust parsing, correctness and error resiliency

* Convenient interface that supports a variety of use cases

* Fast operation

This library is an attempt to close these gaps. Please note that
this library started its life based on the enumerator package and
has recently been ported to work with conduits instead. In the
process, it has been greatly simplified thanks to the modular nature
of the conduits library.

Following the port to conduits, the library has also gained the
ability to parameterize on the stream type and work both with
ByteString and Text.

For more documentation and examples, check out the README at:

<http://github.com/ozataman/csv-conduit>
")
    (license license:bsd-3)))

haskell-9.0-csv-conduit

(define-public haskell-9.0-debian
  (package
    (name "haskell-9.0-debian")
    (version "4.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/debian/debian-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11510xb7a9nlvaygrmwbx9imagj8517iz2am6jv88934m0l5iy1n"))))
    (properties `((upstream-name . "debian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-ListLike)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-SHA)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-bz2)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-either)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hostname)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-process-extras)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-pureMD5)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-regex-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-th-lift)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-th-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/clinty/debian-haskell")
    (synopsis "Modules for working with the Debian package system")
    (description
     "This library includes modules covering some basic data types defined by
the Debian policy manual - version numbers, control file syntax, etc.")
    (license license:bsd-3)))

haskell-9.0-debian

(define-public haskell-9.0-dependent-map
  (package
    (name "haskell-9.0-dependent-map")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dependent-map/dependent-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b0zhyl3wkl4kkrxvq7vwjz3gn0ndxjjgyw9cky8a6xyv190pkjk"))))
    (properties `((upstream-name . "dependent-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "160p9crvlx1sn60inkwxa6mv1h2d4fgqnpsb2km67zrkpdfyd2s2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-constraints-extras)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-dependent-sum)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/obsidiansystems/dependent-map")
    (synopsis "Dependent finite maps (partial dependent products)")
    (description "Provides a type called @@DMap@@ which generalizes
@@Data.Map.Map@@, allowing keys to specify the type
of value that can be associated with them.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-dependent-map

(define-public haskell-9.0-dependent-sum-template
  (package
    (name "haskell-9.0-dependent-sum-template")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dependent-sum-template/dependent-sum-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03xffmih70ksk7jgfs3ypaa91bm1x21fjxqpj1gkhp9gbj6w2vyl"))))
    (properties `((upstream-name . "dependent-sum-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-constraints-extras)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-dependent-sum)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-th-extras)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/obsidiansystems/dependent-sum")
    (synopsis
     "Template Haskell code to generate instances of classes in dependent-sum package")
    (description
     "Template Haskell code to generate instances of classes in dependent-sum package, such as 'GEq' and 'GCompare'.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-dependent-sum-template

(define-public haskell-9.0-di
  (package
    (name "haskell-9.0-di")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di/di-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "13d503xhmnj2br9m4r4xx58hd2p8jsj8hxf9b4k4451p31kbzs54"))))
    (properties `((upstream-name . "di") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-df1)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-di-core)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-di-df1)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-di-handle)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-di-monad)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging using di, mtl and df1.")
    (description
     "Typeful hierarchical structured logging using di, mtl and df1.

This is meta-package bringing in together things from:

* [di-core](https://hackage.haskell.org/package/di-core)

* [di-monad](https://hackage.haskell.org/package/di-monad)

* [di-handle](https://hackage.haskell.org/package/di-handle)

* [di-df1](https://hackage.haskell.org/package/di-df1)

See the \"Di\" module for more documentation.")
    (license license:bsd-3)))

haskell-9.0-di

(define-public haskell-9.0-discrimination
  (package
    (name "haskell-9.0-discrimination")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/discrimination/discrimination-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p0hryrp15bc8cjfr2hypkg35fy1m30hr19s9p6rj91cxxgjbfq2"))))
    (properties `((upstream-name . "discrimination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1iz2vfizkid17m1k9j1a1rdzr44ir2fgw0nnhg1drjlyirc09p9f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-criterion)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-promises)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/discrimination/")
    (synopsis
     "Fast generic linear-time sorting, joins and container construction.")
    (description
     "This package provides fast, generic, linear-time discrimination and sorting.

The techniques applied are based on <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011a.pdf multiple> <http://www.diku.dk/hjemmesider/ansatte/henglein/papers/henglein2011c.pdf papers> and <https://www.youtube.com/watch?v=sz9ZlZIRDAg talks> by <http://www.diku.dk/hjemmesider/ansatte/henglein/ Fritz Henglein>.")
    (license license:bsd-3)))

haskell-9.0-discrimination

(define-public haskell-9.0-editor-open
  (package
    (name "haskell-9.0-editor-open")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.0-editor-open

(define-public haskell-9.0-elynx-markov
  (package
    (name "haskell-9.0-elynx-markov")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-markov/elynx-markov-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xwvnfyil8kp2qxcv8h4k623qn8kajp8mj4a6jbjjp8qk70rlbrf"))))
    (properties `((upstream-name . "elynx-markov") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-elynx-seq)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-elynx-tools)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-integration)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-math-functions)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-statistics)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Simulate molecular sequences along trees")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.0-elynx-markov

(define-public haskell-9.0-ersatz
  (package
    (name "haskell-9.0-ersatz")
    (version "0.4.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ersatz/ersatz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ph2ayw4vb4rrgfmm8dhwr18172igx2sczjhv2vf3b6vd5r0z1hy"))))
    (properties `((upstream-name . "ersatz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexamples")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages maths) minisat)))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-streams)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-ersatz

(define-public haskell-9.0-essence-of-live-coding-gloss
  (package
    (name "haskell-9.0-essence-of-live-coding-gloss")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-gloss/essence-of-live-coding-gloss-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02jdi5ijkhf9jc9r5jyqvlk6idmgbjbv3x4yw6ich2m95yhf8hrl"))))
    (properties `((upstream-name . "essence-of-live-coding-gloss")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-foreign-store)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-gloss)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework - Gloss backend")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.
There are also useful utilities for debugging and quickchecking.

This package contains a backend for Gloss (http://gloss.ouroborus.net/).")
    (license license:bsd-3)))

haskell-9.0-essence-of-live-coding-gloss

(define-public haskell-9.0-essence-of-live-coding-pulse
  (package
    (name "haskell-9.0-essence-of-live-coding-pulse")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-pulse/essence-of-live-coding-pulse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16fipxz90vlsy9hgksiw7m7r7wzrqrjdhb6fg11m6jlrk1f5bkka"))))
    (properties `((upstream-name . "essence-of-live-coding-pulse")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-foreign-store)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-pulse-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages pulseaudio) pulseaudio)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework - pulse backend")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.
There are also useful utilities for debugging and quickchecking.

This package contains the backend for PulseAudio.")
    (license license:bsd-3)))

haskell-9.0-essence-of-live-coding-pulse

(define-public haskell-9.0-essence-of-live-coding-quickcheck
  (package
    (name "haskell-9.0-essence-of-live-coding-quickcheck")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-quickcheck/essence-of-live-coding-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hkzp0q0xk3wa892vnjimi7m9gq56m5wx1m2i72ssl6x2jgy52hl"))))
    (properties `((upstream-name . "essence-of-live-coding-quickcheck")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-boltzmann-samplers)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework - QuickCheck integration")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.

This package contains useful utilities for quickchecking.")
    (license license:bsd-3)))

haskell-9.0-essence-of-live-coding-quickcheck

(define-public haskell-9.0-evm-opcodes
  (package
    (name "haskell-9.0-evm-opcodes")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/evm-opcodes/evm-opcodes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p7gb3k64jsjscfxf2cd34igkm9j8q0rq3irfh1x4jdryvck2jch"))))
    (properties `((upstream-name . "evm-opcodes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-data-dword)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-tasty-hspec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sshine/evm-opcodes")
    (synopsis "Opcode types for Ethereum Virtual Machine (EVM)")
    (description
     "This library provides opcode types for the Ethereum Virtual Machine.")
    (license license:expat)))

haskell-9.0-evm-opcodes

(define-public haskell-9.0-focuslist
  (package
    (name "haskell-9.0-focuslist")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/focuslist/focuslist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bna0akhjf8ldx6g8n5w0ni5mhx5j69n0dzpj25vbdc3y8y9crqh"))))
    (properties `((upstream-name . "focuslist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildreadme")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/focuslist")
    (synopsis "Lists with a focused element")
    (description
     "Please see <https://github.com/cdepillabout/focuslist#readme README.md>.")
    (license license:bsd-3)))

haskell-9.0-focuslist

(define-public haskell-9.0-folds
  (package
    (name "haskell-9.0-folds")
    (version "0.7.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/folds/folds-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11278546mq05rhyjfmhg0iasqjsn898l44dhp5qgaw1zwzywir2i"))))
    (properties `((upstream-name . "folds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimize")
       #:cabal-revision
       ("2" "13agcwgdwbs4kclgmrdqlj3m0bndad98wznk363y54psgqqrl9cx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-adjunctions)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-data-reify)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-pointed)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/folds")
    (synopsis "Beautiful Folding")
    (description
     "This package is a playground full of comonadic folds.

This style of fold is documented in <https://www.schoolofhaskell.com/user/edwardk/cellular-automata/part-2 \"Cellular Automata, Part II: PNGs and Moore\">

This package can be seen as what happens if you chase Max Rabkin's <http://squing.blogspot.com/2008/11/beautiful-folding.html \"Beautiful Folding\"> to its logical conclusion.

More information on this approach can be found in the <http://conal.net/blog/posts/another-lovely-example-of-type-class-morphisms \"Another lovely example of type class morphisms\"> and <http://conal.net/blog/posts/more-beautiful-fold-zipping \"More beautiful fold zipping\"> posts by Conal Elliott, as well as in Gabriel Gonzales' <http://www.haskellforall.com/2013/08/composable-streaming-folds.html \"Composable Streaming Folds\">")
    (license license:bsd-3)))

haskell-9.0-folds

(define-public haskell-9.0-fsnotify-conduit
  (package
    (name "haskell-9.0-fsnotify-conduit")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-fsnotify)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fpco/fsnotify-conduit#readme")
    (synopsis "Get filesystem notifications as a stream of events")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/fsnotify-conduit>")
    (license license:expat)))

haskell-9.0-fsnotify-conduit

(define-public haskell-9.0-fused-effects
  (package
    (name "haskell-9.0-fused-effects")
    (version "1.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fused-effects/fused-effects-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h9nnfn0i89gr8151dlxcyjh9467l25y6glyy5zbqkhwxglmjns0"))))
    (properties `((upstream-name . "fused-effects") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hedgehog-fn)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-inspection-testing)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "https://github.com/fused-effects/fused-effects")
    (synopsis "A fast, flexible, fused effect system.")
    (description
     "A fast, flexible, fused effect system, à la Effect Handlers in Scope, Monad Transformers and Modular Algebraic Effects: What Binds Them Together, and Fusion for Free—Efficient Algebraic Effect Handlers.")
    (license license:bsd-3)))

haskell-9.0-fused-effects

(define-public haskell-9.0-fuzzy-dates
  (package
    (name "haskell-9.0-fuzzy-dates")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzy-dates/fuzzy-dates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12ga6d4kp6mk6cg781ibaxxmpq7kfh8i4yg8r4awiwp1ic8lrcd9"))))
    (properties `((upstream-name . "fuzzy-dates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-hourglass)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ReedOei/fuzzy-dates#readme")
    (synopsis "Libary for parsing dates in strings in varied formats.")
    (description
     "Please see the README on GitHub at <https://github.com/ReedOei/fuzzy-dates#readme>")
    (license license:bsd-3)))

haskell-9.0-fuzzy-dates

(define-public haskell-9.0-generics-eot
  (package
    (name "haskell-9.0-generics-eot")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-eot/generics-eot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6zhs6l1xcig66757664f1bchzlm4f1ijvg5dsnacq05jbdxrlv"))))
    (properties `((upstream-name . "generics-eot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-interpolate)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mockery)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shake)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://generics-eot.readthedocs.io/")
    (synopsis
     "A library for generic programming that aims to be easy to understand")
    (description
     "Documentation is here: <https://generics-eot.readthedocs.io/>")
    (license license:bsd-3)))

haskell-9.0-generics-eot

(define-public haskell-9.0-generics-sop-lens
  (package
    (name "haskell-9.0-generics-sop-lens")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-sop-lens/generics-sop-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yl74pz6r2zf9sspzbqg6xvr6k9b5irq3c3pjrf5ih6hfrz4k1ks"))))
    (properties `((upstream-name . "generics-sop-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0p9h7xbd0jcf85r480gbnyyh822r3wziv1rg2qwgq0ll5apqvzmn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-generics-sop)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/generics-sop-lens#readme")
    (synopsis "Lenses for types in generics-sop")
    (description "Lenses for types in generics-sop package")
    (license license:bsd-3)))

haskell-9.0-generics-sop-lens

(define-public haskell-9.0-genvalidity-bytestring
  (package
    (name "haskell-9.0-genvalidity-bytestring")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-bytestring/genvalidity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bsi0y05pivyx14cvl7w46fgp1y5b53w2bk07q3vgzk079vfrcrg"))))
    (properties `((upstream-name . "genvalidity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-bytestring)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for ByteString")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-bytestring

(define-public haskell-9.0-genvalidity-containers
  (package
    (name "haskell-9.0-genvalidity-containers")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-containers/genvalidity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "146nnn1k82js6vkgx3ys5nl251jbryqg1lvb56fd3849az68px3k"))))
    (properties `((upstream-name . "genvalidity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for containers")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-containers

(define-public haskell-9.0-genvalidity-criterion
  (package
    (name "haskell-9.0-genvalidity-criterion")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-criterion/genvalidity-criterion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "050i515v8wggamlnywmx93nlb8gqhnlf5qafsrn0gl5w8d82blc9"))))
    (properties `((upstream-name . "genvalidity-criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-criterion)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Criterion benchmarks for generators")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-criterion

(define-public haskell-9.0-genvalidity-hspec-aeson
  (package
    (name "haskell-9.0-genvalidity-hspec-aeson")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-aeson/genvalidity-hspec-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18ga4g62z0fwkxbr2390dbmhpxpzczgz923gq0vvhnvc34r1vjh6"))))
    (properties `((upstream-name . "genvalidity-hspec-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for aeson-related instances")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-hspec-aeson

(define-public haskell-9.0-genvalidity-hspec-binary
  (package
    (name "haskell-9.0-genvalidity-hspec-binary")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-binary/genvalidity-hspec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08avm7kdx6y90mmms5hdq4xryg5jdca6bqfhzy9wrkr79q2jv4vc"))))
    (properties `((upstream-name . "genvalidity-hspec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for binary-related Instances")
    (description
     "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.")
    (license license:expat)))

haskell-9.0-genvalidity-hspec-binary

(define-public haskell-9.0-genvalidity-hspec-cereal
  (package
    (name "haskell-9.0-genvalidity-hspec-cereal")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-cereal/genvalidity-hspec-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cj5jcgjyjf8ib7h8ldkjfwgdq4wzk7xkmxlmyyi37iscjpv32ni"))))
    (properties `((upstream-name . "genvalidity-hspec-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for cereal-related instances")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-hspec-cereal

(define-public haskell-9.0-genvalidity-hspec-hashable
  (package
    (name "haskell-9.0-genvalidity-hspec-hashable")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-hashable/genvalidity-hspec-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14fg796iivlpp4gqsmma9zf0z9iqk524ydyqmza83qrjh8v2ff5v"))))
    (properties `((upstream-name . "genvalidity-hspec-hashable")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances")
    (description "Standard spec's for Hashable instances")
    (license license:expat)))

haskell-9.0-genvalidity-hspec-hashable

(define-public haskell-9.0-genvalidity-hspec-optics
  (package
    (name "haskell-9.0-genvalidity-hspec-optics")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-optics/genvalidity-hspec-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bhhhihk4r8q78l35dm4gm8kf5mjzpynawbcq9vzpq3ny9h7bxmr"))))
    (properties `((upstream-name . "genvalidity-hspec-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for lens")
    (description "Standard spec's for lens (van Laarhoven encoding)")
    (license license:expat)))

haskell-9.0-genvalidity-hspec-optics

(define-public haskell-9.0-genvalidity-scientific
  (package
    (name "haskell-9.0-genvalidity-scientific")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-scientific/genvalidity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xi1a1jsby1dqv50lmpp98x2y5j9vaf3sl38spv5bnafyp1i6pmq"))))
    (properties `((upstream-name . "genvalidity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-scientific)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Scientific")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-scientific

(define-public haskell-9.0-genvalidity-time
  (package
    (name "haskell-9.0-genvalidity-time")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-time/genvalidity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15xj7x915524h0hi9b6c7y6imwkv3g7b10cr7wx8yaysh5d1cx7r"))))
    (properties `((upstream-name . "genvalidity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-time)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for time")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.0-genvalidity-time

(define-public haskell-9.0-genvalidity-unordered-containers
  (package
    (name "haskell-9.0-genvalidity-unordered-containers")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-unordered-containers/genvalidity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sd67x2kw7l0kbsaa67x3an94sv1hvnkbb8r42v36cc5jjaw29dk"))))
    (properties `((upstream-name . "genvalidity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for unordered-containers")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-unordered-containers

(define-public haskell-9.0-genvalidity-uuid
  (package
    (name "haskell-9.0-genvalidity-uuid")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-uuid/genvalidity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w53ziz3zbm4dv64gr60md5riis28bi3lrznzsrjyvd6nngxx460"))))
    (properties `((upstream-name . "genvalidity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-uuid)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-uuid)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for UUID")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-uuid

(define-public haskell-9.0-genvalidity-vector
  (package
    (name "haskell-9.0-genvalidity-vector")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-vector/genvalidity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l2zjbfjg05xxxgn359zfj93yx26zcz9xlayw2jf9brwv8wx23gy"))))
    (properties `((upstream-name . "genvalidity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-validity-vector)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for vector")
    (description "")
    (license license:expat)))

haskell-9.0-genvalidity-vector

(define-public haskell-9.0-ghc-typelits-presburger
  (package
    (name "haskell-9.0-ghc-typelits-presburger")
    (version "0.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-presburger/ghc-typelits-presburger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11rzfvs2kvknz8892bii2ljh6hbaa1zy0hnwi6pi1xghvwp1fckq"))))
    (properties `((upstream-name . "ghc-typelits-presburger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-discover)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/konn/ghc-typelits-presburger#readme")
    (synopsis
     "Presburger Arithmetic Solver for GHC Type-level natural numbers.")
    (description
     "@@ghc-typelits-presburger@@ augments GHC type-system with Presburger
Arithmetic Solver for Type-level natural numbers.
This plugin only work with GHC builtin operations.
To work with those of @@singletons@@ package, use @@ghc-typelits-meta@@ and/or @@ghc-typelits-presburger@@ instead.

Since 0.3.0.0, integration with <https://hackage.haskell.org/package/singletons singletons> package moves to <https://hackage.haskell.org/package/singletons-presburger singletons-presburger>.

You can use by adding this package to @@build-depends@@ and add the following pragma
to the head of .hs files:


> OPTIONS_GHC -fplugin GHC.TypeLits.Presburger")
    (license license:bsd-3)))

haskell-9.0-ghc-typelits-presburger

(define-public haskell-9.0-ghcid
  (package
    (name "haskell-9.0-ghcid")
    (version "0.8.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ghcid/ghcid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yqc1pkfajnr56gnh43sbj50r7c3r41b2jfz07ivgl6phi4frjbq"))))
    (properties `((upstream-name . "ghcid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0s4z20cbap0bymljkdbw6lr3dchi34yvy9j27f4xjwx93dhnrmkk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-fsnotify)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-terminal-size)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/ghcid#readme")
    (synopsis "GHCi based bare bones IDE")
    (description
     "Either \\\"GHCi as a daemon\\\" or \\\"GHC + a bit of an IDE\\\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @@ghcid --topmost --command=ghci@@, where @@--topmost@@ makes the window on top of all others (Windows only) and @@--command@@ is the command to start GHCi on your project (defaults to @@ghci@@ if you have a @@.ghci@@ file, or else to @@cabal repl@@).")
    (license license:bsd-3)))

haskell-9.0-ghcid

(define-public haskell-9.0-gotyno-hs
  (package
    (name "haskell-9.0-gotyno-hs")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gotyno-hs/gotyno-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06iyihagbsxddn2lq26razb5q6j3g4mwb134lb62caw3r7iyxfd7"))))
    (properties `((upstream-name . "gotyno-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-fsnotify)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-rio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/gotyno-hs")
    (synopsis
     "A type definition compiler supporting multiple output languages.")
    (description
     "Compiles type definitions into F#, TypeScript and Python, with validators, decoders and encoders.")
    (license license:bsd-2)))

haskell-9.0-gotyno-hs

(define-public haskell-9.0-grouped-list
  (package
    (name "haskell-9.0-grouped-list")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/grouped-list/grouped-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kv0c2j8g8mydkziyjm87j53g5jr6cbyrvik9z2w5izby5ws6bjs"))))
    (properties `((upstream-name . "grouped-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-pointed)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/Daniel-Diaz/grouped-list/blob/master/README.md")
    (synopsis "Grouped lists. Equal consecutive elements are grouped.")
    (description
     "Grouped lists work like regular lists, except for two conditions:

* Grouped lists are always finite. Attempting to construct an infinite
grouped list will result in an infinite loop.

* Grouped lists internally represent consecutive equal elements as only
one, hence the name of /grouped lists/.

This mean that grouped lists are ideal for cases where the list has many
repetitions (like @@[1,1,1,1,7,7,7,7,7,7,7,7,2,2,2,2,2]@@, although they might
present some deficiencies in the absent of repetitions.")
    (license license:bsd-3)))

haskell-9.0-grouped-list

(define-public haskell-9.0-hackage-cli
  (package
    (name "haskell-9.0-hackage-cli")
    (version "0.0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-cli/hackage-cli-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wnh3571mgwyl9c5bfkwvr4rvsnw41qb9mlz1nda1ya53qfdjl4p"))))
    (properties `((upstream-name . "hackage-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "06225nrw6icdlkcxp0wnh006fxsnyfpl55i9qm7pgybxb3qgf8l0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-http-io-streams)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-io-streams)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-netrc)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-process-extras)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stringsearch)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-tagsoup)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-tar)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hackage-trustees/hackage-cli")
    (synopsis "CLI tool for Hackage")
    (description "With @@hackage-cli@@ you can manage @@.cabal@@ files,
e.g. (bulk-)upload revised variants.")
    (license license:gpl3+)))

haskell-9.0-hackage-cli

(define-public haskell-9.0-hal
  (package
    (name "haskell-9.0-hal")
    (version "0.4.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hal/hal-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1mxlyx0zxvklrybasx8p6di72aw431mbbyj06pb91570j9c46fp0"))))
    (properties `((upstream-name . "hal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "143z15p6skr333f1vazhy5hn7rirpkn8zdfh3fzhz311ws7m7lg8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-envy)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Nike-inc/hal#readme")
    (synopsis
     "A runtime environment for Haskell applications running on AWS Lambda.")
    (description
     "This library uniquely supports different types of AWS Lambda Handlers for your
needs/comfort with advanced Haskell. Instead of exposing a single function
that constructs a Lambda, this library exposes many.")
    (license license:bsd-3)))

haskell-9.0-hal

(define-public haskell-9.0-haskell-lsp-types
  (package
    (name "haskell-9.0-haskell-lsp-types")
    (version "0.24.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-lsp-types/haskell-lsp-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p7k2g2xs95ylsnnz2np0w8c7p5dzmlss41g0kzblaz5n3352kbn"))))
    (properties `((upstream-name . "haskell-lsp-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1wy26rv0zih8zgc4as5prf305qw2llcc1srx3rcnzfwlggkslsnr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alanz/haskell-lsp")
    (synopsis
     "Haskell library for the Microsoft Language Server Protocol, data types")
    (description
     "An implementation of the types to allow language implementors to
support the Language Server Protocol for their specific language.")
    (license license:expat)))

haskell-9.0-haskell-lsp-types

(define-public haskell-9.0-hasty-hamiltonian
  (package
    (name "haskell-9.0-hasty-hamiltonian")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasty-hamiltonian/hasty-hamiltonian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qvqh5d213lq02qq25s1a6z783836h5gi5zra99pprblpdffaazq"))))
    (properties `((upstream-name . "hasty-hamiltonian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-ad)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-mcmc-types)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-mwc-probability)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jtobin/hasty-hamiltonian")
    (synopsis "Speedy traversal through parameter space.")
    (description
     "Gradient-based traversal through parameter space.

This implementation of HMC algorithm uses 'lens' as a means to operate over
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

haskell-9.0-hasty-hamiltonian

(define-public haskell-9.0-haxr
  (package
    (name "haskell-9.0-haxr")
    (version "3000.11.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/haxr/haxr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12f3acc253x88pk20b60z1qzyhbngvg7zzb9j6azbii0hx8yxxhy"))))
    (properties `((upstream-name . "haxr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("3" "0w3v3rmz71bpbv8blkl46qvlmxyx8kkadqxq105k3l5al51qrphp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-HaXml)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-http-streams)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-io-streams)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mtl-compat)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-old-time)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.haskell.org/haskellwiki/HaXR")
    (synopsis "XML-RPC client and server library.")
    (description "HaXR is a library for writing XML-RPC
client and server applications in Haskell.")
    (license license:bsd-3)))

haskell-9.0-haxr

(define-public haskell-9.0-hledger
  (package
    (name "haskell-9.0-hledger")
    (version "1.25")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hledger/hledger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dmzmvkg8gk8rwbhvc4v4ch12i1pqvd91jx3z5c0plmx49f8q65k"))))
    (properties `((upstream-name . "hledger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fterminfo" "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-Decimal)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-githash)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskeline)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hledger-lib)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lucid)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-math-functions)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-shakespeare)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-tabular)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-timeit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-wizards)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hledger.org")
    (synopsis "Command-line interface for the hledger accounting system")
    (description
     "The command-line interface for the hledger accounting system.
Its basic function is to read a plain text file describing
financial transactions and produce useful reports.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-hledger

(define-public haskell-9.0-hledger-iadd
  (package
    (name "haskell-9.0-hledger-iadd")
    (version "1.3.17")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-iadd/hledger-iadd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b3qz5vm8db6gsdakg8nf3qc6rp7mlh3zpkzvhi80pqm3jzdbjph"))))
    (properties `((upstream-name . "hledger-iadd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0xb476i2xn0ncfqx65qy4vs0g2dchw5p0naxgz4zfmffrmyfsc92")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-brick)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hledger-lib)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-text-zipper)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-vty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hpdeifel/hledger-iadd#readme")
    (synopsis "A terminal UI as drop-in replacement for hledger add")
    (description
     "This is a terminal UI as drop-in replacement for hledger add.

It improves in the following ways on hledger's add command:

* Interactive as-you-type completion for
account names and descriptions with optional
fuzzy matching.

* Integrated calculator: Amounts can be written
as simple sums with real-time feedback on the
result.

* All actions while entering a transaction can
be undone

* Configurable format for date input. Instead
of @@y\\/m\\/d@@ it is also possible to use other
formats like the german @@d.m.y@@.")
    (license license:bsd-3)))

haskell-9.0-hledger-iadd

(define-public haskell-9.0-hledger-interest
  (package
    (name "haskell-9.0-hledger-interest")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-interest/hledger-interest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r8iydl66k2j7xv1b465alf3h8mqwjfz13ffwsd50h0kscxjmxhg"))))
    (properties `((upstream-name . "hledger-interest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1hsd1r4j0737lkllxa3ivrbdcp3da2vr5fiakfhrw5fqsbi3p8rc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-Decimal)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hledger-lib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/hledger-interest")
    (synopsis "computes interest for a given account")
    (description
     "hledger-interest is a small command-line utility based on Simon
Michael's hleder library. Its purpose is to compute interest for a
given ledger account. Using command line flags, the program can be
configured to use various schemes for day-counting, such as act\\/act,
30\\/360, 30E\\/360, and 30\\/360isda. Furthermore, it supports a (small)
number of interest schemes, i.e. annual interest with a fixed rate and
the scheme mandated by the German BGB288 (Basiszins fuer
Verbrauchergeschaefte). Extending support for other schemes is fairly
easy, but currently requires changes to the source code.

As an example, consider the following loan, stored in a file called
@@test.ledger@@:

> 2008/09/26 Loan
>     Assets:Bank          EUR 10000.00
>     Liabilities:Bank
>
> 2008/11/27 Payment
>     Assets:Bank          EUR -3771.12
>     Liabilities:Bank
>
> 2009/05/03 Payment
>     Assets:Bank          EUR -1200.00
>     Liabilities:Bank
>
> 2010/12/10 Payment
>     Assets:Bank          EUR -3700.00
>     Liabilities:Bank

Suppose that loan earns 5% interest per year, and payments amortize
interest before amortizing the principal claim, then the resulting
ledger would look like this:

> $ hledger-interest --file=test.ledger --source=Expenses:Interest --target=Liabilities:Bank --30-360 --annual=0.05 Liabilities:Bank
> 2008/09/26 Loan
>     Assets:Bank              EUR  10000.00
>     Liabilities:Bank
>
> 2008/11/27 Payment
>     Assets:Bank              EUR  -3771.12
>     Liabilities:Bank
>
> 2008/11/27 5.00% interest for EUR -10000.00 over 61 days
>     Liabilities:Bank         EUR    -84.72
>     Expenses:Interest
>
> 2008/12/31 5.00% interest for EUR -6313.60 over 34 days
>     Liabilities:Bank         EUR    -29.81
>     Expenses:Interest
>
> 2009/05/03 Payment
>     Assets:Bank              EUR  -1200.00
>     Liabilities:Bank
>
> 2009/05/03 5.00% interest for EUR -6343.42 over 123 days
>     Liabilities:Bank         EUR   -108.37
>     Expenses:Interest
>
> 2009/12/31 5.00% interest for EUR -5251.78 over 238 days
>     Liabilities:Bank         EUR   -173.60
>     Expenses:Interest
>
> 2010/12/10 Payment
>     Assets:Bank              EUR  -3700.00
>     Liabilities:Bank
>
> 2010/12/10 5.00% interest for EUR -5425.38 over 340 days
>     Liabilities:Bank         EUR   -256.20
>     Expenses:Interest
>
> 2010/12/31 5.00% interest for EUR -1981.58 over 21 days
>     Liabilities:Bank         EUR     -5.78
>     Expenses:Interest

Running the utility with @@--help@@ gives a brief overview over the
available options:

> Usage: hledger-interest [OPTION...] ACCOUNT
>   -h          --help                      print this message and exit
>   -V          --version                   show version number and exit
>   -v          --verbose                   echo input ledger to stdout (default)
>   -q          --quiet                     don't echo input ledger to stdout
>               --today                     compute interest up until today
>   -f FILE     --file=FILE                 input ledger file (pass '-' for stdin)
>   -s ACCOUNT  --source=ACCOUNT            interest source account
>   -t ACCOUNT  --target=ACCOUNT            interest target account
>   -I          --ignore-assertions         ignore any failing balance assertions
>               --act                       use 'act' day counting convention
>               --30-360                    use '30/360' day counting convention
>               --30E-360                   use '30E/360' day counting convention
>               --30E-360isda               use '30E/360isda' day counting convention
>               --constant=RATE             constant interest rate
>               --annual-schedule=SCHEDULE  schedule of annual interest rates.
>                                           syntax: '[(Date1,Rate1),(Date2,Rate2),...]'
>               --annual=RATE               annual interest rate
>               --bgb288                    compute interest according to German BGB288")
    (license license:bsd-3)))

haskell-9.0-hledger-interest

(define-public haskell-9.0-horizontal-rule
  (package
    (name "haskell-9.0-horizontal-rule")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/horizontal-rule/horizontal-rule-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1anpf8qgiyvx1fvycr01sz9ak8zxdrarqw32m0kybxs3xhw15myy"))))
    (properties `((upstream-name . "horizontal-rule") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-HMock)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-terminal-size)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/hr-haskell#readme")
    (synopsis "horizontal rule for the terminal")
    (description
     "This package provides a utility for displaying a horizontal rule in a
terminal.  Please see the README on GitHub at
<https://github.com/ExtremaIS/hr-haskell#readme>.")
    (license license:expat)))

haskell-9.0-horizontal-rule

(define-public haskell-9.0-hprotoc
  (package
    (name "haskell-9.0-hprotoc")
    (version "2.4.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hprotoc/hprotoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r7zr4sbg6355zavbzjixvfv10aglz1zs9ajnznpjhnj6lfisf32"))))
    (properties `((upstream-name . "hprotoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0hxhvjk3mswx712viv7krcgiynxq4bjs71vbk2pgm2d50i5qr8mr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-protocol-buffers)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-protocol-buffers-descriptor)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k-bx/protocol-buffers")
    (synopsis "Parse Google Protocol Buffer specifications")
    (description
     "Parse language defined at <http://code.google.com/apis/protocolbuffers/docs/proto.html> and general haskell code to implement messages.")
    (license license:bsd-3)))

haskell-9.0-hprotoc

(define-public haskell-9.0-hslua-packaging
  (package
    (name "haskell-9.0-hslua-packaging")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-packaging/hslua-packaging-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n8vhfi59q6dzcvi4fgsjp8w0slbl8l2s5l6rxgypb6vqgm759l9"))))
    (properties `((upstream-name . "hslua-packaging") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hslua-core)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hslua-objectorientation)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Utilities to build Lua modules.")
    (description "Utilities to package up Haskell functions and
values into a Lua module.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.0-hslua-packaging

(define-public haskell-9.0-hspec-expectations-json
  (package
    (name "haskell-9.0-hspec-expectations-json")
    (version "1.0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations-json/hspec-expectations-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0042xf11w74bx7mlly2ca98778jqyb4p2l9iy92gyys85zn5219v"))))
    (properties `((upstream-name . "hspec-expectations-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-aeson-qq)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/hspec-expectations-json#readme")
    (synopsis "Hspec expectations for JSON Values")
    (description
     "Hspec expectations for JSON Values

Comparing JSON `Value`s in Haskell tests comes with some challenges:

- In API responses, additive changes are typically safe and an important way
to evolve responses without breaking clients. Therefore, assertions against
such responses often want to ignore any unexpected keys in `Object`s (at any
depth), as any clients would.

- Order often doesn't matter in API responses either, so it should be possible
to assert equality regardless of `Array` ordering (again, at any depth).

- When an assertion fails, showing the difference clearly needs to take the
above into account (i.e. it can't show keys you've ignored, or ordering
differences you didn't care about), and it has to display things clearly,
e.g. as a diff.

This library handles all these things.")
    (license license:expat)))

haskell-9.0-hspec-expectations-json

(define-public haskell-9.0-hw-bits
  (package
    (name "haskell-9.0-hw-bits")
    (version "0.7.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-bits/hw-bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1swzr6lz2394p454mqvvgx2fyc1gdm4p9qvv54zyjd67mnhylkq8"))))
    (properties `((upstream-name . "hw-bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsse42")
       #:cabal-revision
       ("2" "1qv1pcy3sfcvpq3wfvimiv2wyy729yk97hswsrh40hlmrws18k2m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-bitvec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hw-int)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hw-string-parse)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-bits#readme")
    (synopsis "Bit manipulation")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-bits

(define-public haskell-9.0-hw-conduit-merges
  (package
    (name "haskell-9.0-hw-conduit-merges")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit-merges/hw-conduit-merges-"
                    version ".tar.gz"))
              (sha256
               (base32
                "042i1cs7qpjs8q8birr6xjzyxp28y7l6isv2fwkisv4agx8kfgm0"))))
    (properties `((upstream-name . "hw-conduit-merges") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r9vq3ibdbkwxg26ds9dllhkgpbhlrv0i02babjpmd3g1nznp0ms")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-works/hw-conduit-merges#readme")
    (synopsis "Additional merges and joins for Conduit")
    (description
     "Additional merges and joins for Conduit. Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-conduit-merges

(define-public haskell-9.0-hw-json-simd
  (package
    (name "haskell-9.0-hw-json-simd")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-simd/hw-json-simd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nn6fyvw0j2csn8anqpgjzdzdasiwa99g1v2qrcyym1wi86biqqb"))))
    (properties `((upstream-name . "hw-json-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")
       #:cabal-revision
       ("1" "0cavymml55m8f1zyh8pby44xq67ckdqdy0wgib8i0xjq00hrp07m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-doctest-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hw-prim)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-json-simd#readme")
    (synopsis "SIMD-based JSON semi-indexer")
    (description
     "Please see the README on GitHub at <https://github.com/haskell-works/hw-json-simd#readme>")
    (license license:bsd-3)))

haskell-9.0-hw-json-simd

(define-public haskell-9.0-hw-mquery
  (package
    (name "haskell-9.0-hw-mquery")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-mquery/hw-mquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jdmgg0y04xl18vkdjwynb48wdl58kkzsw062v2cv65mkjhcvf0l"))))
    (properties `((upstream-name . "hw-mquery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16832r95lljph5vf33l9f544m8q9c3dx9b94wxmjjsl6z3bymmdc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-mquery#readme")
    (synopsis "Monadic query DSL")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-hw-mquery

(define-public haskell-9.0-imagesize-conduit
  (package
    (name "haskell-9.0-imagesize-conduit")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/silkapp/imagesize-conduit")
    (synopsis "Determine the size of some common image formats.")
    (description
     "Currently supports PNG, GIF, and JPEG. This package provides a Sink that will consume the minimum number of bytes necessary to determine the image dimensions.")
    (license license:bsd-3)))

haskell-9.0-imagesize-conduit

(define-public haskell-9.0-influxdb
  (package
    (name "haskell-9.0-influxdb")
    (version "1.9.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/influxdb/influxdb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08nqby0m69n8vqppprd3wk5z4r0aqs8kggkjzps106k809q0ycdg"))))
    (properties `((upstream-name . "influxdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-http-client)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-optional-args)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/maoe/influxdb-haskell")
    (synopsis "InfluxDB client library for Haskell")
    (description "@@influxdb@@ is an InfluxDB client library for Haskell.

See \"Database.InfluxDB\" for a quick start guide.")
    (license license:bsd-3)))

haskell-9.0-influxdb

(define-public haskell-9.0-inliterate
  (package
    (name "haskell-9.0-inliterate")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inliterate/inliterate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17z3s5w49x8j57v6myz2r6i0knnm60ydg3y8d0v008xrwdjcr5id"))))
    (properties `((upstream-name . "inliterate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-cheapskate)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-lucid)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-lucid-extras)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-plotlyhs)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/diffusionkinetics/open/inliterate")
    (synopsis "Interactive literate programming")
    (description
     "Evaluate markdown code blocks to show the results of running the code.")
    (license license:expat)))

haskell-9.0-inliterate

(define-public haskell-9.0-insert-ordered-containers
  (package
    (name "haskell-9.0-insert-ordered-containers")
    (version "0.2.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/insert-ordered-containers/insert-ordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mnc0gby7xz8065rvkqsaqk1vqs0gv1y9qgvwsvxx3gsg9yj3a7r"))))
    (properties `((upstream-name . "insert-ordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "11awwf3lm3qzjqxy8gw9cizr30228cjwhqzff7wvjvdx131s0raa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-optics-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/insert-ordered-containers#readme")
    (synopsis
     "Associative containers retaining insertion order for traversals.")
    (description
     "Associative containers retaining insertion order for traversals.

The implementation is based on `unordered-containers`.")
    (license license:bsd-3)))

haskell-9.0-insert-ordered-containers

(define-public haskell-9.0-intro
  (package
    (name "haskell-9.0-intro")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intro/intro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x48bj9nri2zhsjpwx08nvjmpsjq6zd61npa02zsf357wylxir0x"))))
    (properties `((upstream-name . "intro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-extra)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-optics)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-writer-cps-mtl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/minad/intro#readme")
    (synopsis "Safe and minimal prelude")
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

haskell-9.0-intro

(define-public haskell-9.0-invertible
  (package
    (name "haskell-9.0-invertible")
    (version "0.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invertible/invertible-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ngcmy59cyrg5idcn8a4gxg6ipq88rhhwhdb09gra8jcraq9n7ii"))))
    (properties `((upstream-name . "invertible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-arrows" "-finvariant" "-flens" "-fpartial-isomorphisms" "-f-piso" "-fsemigroupoids" "-f-typecompose")
       #:cabal-revision
       ("1" "19xcczz26ji5xaws4ikvacqz991qgislj32hs8rlks07qw3qmnbn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-invariant)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-partial-isomorphisms)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-invertible

(define-public haskell-9.0-language-nix
  (package
    (name "haskell-9.0-language-nix")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-nix/language-nix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lq07311dg4a32zdp5bc20bw94g0c7pdzxdiwi2y4zbhd1944rzx"))))
    (properties `((upstream-name . "language-nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0g4hq729bz128sf3ifd8rbfamwa8mqqcnhbc3qxnpz1myzvxhnjk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parsec-class)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/NixOS/cabal2nix/tree/master/language-nix#readme")
    (synopsis "Data types and functions to represent the Nix language")
    (description
     "Data types and useful functions to represent and manipulate the Nix
language.")
    (license license:bsd-3)))

haskell-9.0-language-nix

(define-public haskell-9.0-lens-action
  (package
    (name "haskell-9.0-lens-action")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-action/lens-action-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cdprc5j6r976dmrga2zwvcr7qsv7nqy3nvncp66yyy0dk2qlwm3"))))
    (properties `((upstream-name . "lens-action") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0rrrv7k0fz98j99a6gzw858v5w3i378g0b7ijj30dz2am6p6rfnm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/lens-action/")
    (synopsis "Monadic Getters and Folds")
    (description "This package contains combinators and types for working with
monadic getters and folds as split off from the original
lens package.")
    (license license:bsd-3)))

haskell-9.0-lens-action

(define-public haskell-9.0-lens-aeson
  (package
    (name "haskell-9.0-lens-aeson")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-aeson/lens-aeson-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05jyn6rn0anhgfmk754gmmpcy5jv3ki213z4v243n9jvdjdlg7ms"))))
    (properties `((upstream-name . "lens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0l1hkkpp4blkhmbpswl6lqww6wpfm327f8knq1lskhnisbnfmj2j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/lens/lens-aeson/")
    (synopsis "Law-abiding lenses for aeson")
    (description "Law-abiding lenses for aeson.")
    (license license:expat)))

haskell-9.0-lens-aeson

(define-public haskell-9.0-lens-csv
  (package
    (name "haskell-9.0-lens-csv")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-csv/lens-csv-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kkwb32ndhxhlz01pn4xh825x95l8g45cs4h5wxkjh24rywl3rrp"))))
    (properties `((upstream-name . "lens-csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cassava)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChrisPenner/lens-csv#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-csv#readme>")
    (license license:bsd-3)))

haskell-9.0-lens-csv

(define-public haskell-9.0-lens-misc
  (package
    (name "haskell-9.0-lens-misc")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/louispan/lens-misc#readme")
    (synopsis "Miscellaneous lens utilities.")
    (description "Handy functions when using lens.")
    (license license:bsd-3)))

haskell-9.0-lens-misc

(define-public haskell-9.0-lens-process
  (package
    (name "haskell-9.0-lens-process")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-process/lens-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gms2bxa1sygpid09cg3nk1kyhkg4s38dqs0gd77ia2aln6zd7qg"))))
    (properties `((upstream-name . "lens-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y1ran4pjqr2226rkmiqij0pf980npr7iv88y5bgcg7hs22f3b57")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/lens-process")
    (synopsis "Optics for system processes")
    (description
     "'lens-process' is a set of multi-purpose optics and convenience
combinators for working with the `process` library, including
a more well-typed api for the parts that can be typed.")
    (license license:bsd-3)))

haskell-9.0-lens-process

(define-public haskell-9.0-lens-properties
  (package
    (name "haskell-9.0-lens-properties")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "QuickCheck properties for lens")
    (description "QuickCheck properties for lens.")
    (license license:bsd-3)))

haskell-9.0-lens-properties

(define-public haskell-9.0-lens-regex
  (package
    (name "haskell-9.0-lens-regex")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-regex/lens-regex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11zgdk46skj3g0436vilcgg4wvclixh07xjwqfcsfhffn0vn3mz4"))))
    (properties `((upstream-name . "lens-regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-samples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-regex-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/himura/lens-regex")
    (synopsis "Lens powered regular expression")
    (description
     "lens interface for regex-base. Please see the README on Github at <https://github.com/himura/lens-regex#readme>")
    (license license:bsd-3)))

haskell-9.0-lens-regex

(define-public haskell-9.0-lens-regex-pcre
  (package
    (name "haskell-9.0-lens-regex-pcre")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-regex-pcre/lens-regex-pcre-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06540l3rylgpdhfdvd9nwkf6v8hyky4l3igs45zblrmhz4sdql5i"))))
    (properties `((upstream-name . "lens-regex-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-pcre-light)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChrisPenner/lens-regex-pcre#readme")
    (synopsis "A lensy interface to regular expressions")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-regex-pcre#readme>")
    (license license:bsd-3)))

haskell-9.0-lens-regex-pcre

(define-public haskell-9.0-linear
  (package
    (name "haskell-9.0-linear")
    (version "1.21.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/linear/linear-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1d3s1p4imkifn7dccqci2qiwcg99x22kf250hzh4fh4xghi361xr"))))
    (properties `((upstream-name . "linear") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftemplate-haskell" "-f-herbie")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-adjunctions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-bytes)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-reflection)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-simple-reflect)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/linear/")
    (synopsis "Linear Algebra")
    (description
     "Types and combinators for linear algebra on free vector spaces")
    (license license:bsd-3)))

haskell-9.0-linear

(define-public haskell-9.0-linear-base
  (package
    (name "haskell-9.0-linear-base")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linear-base/linear-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00n7rmvkjg42n1pba1y1lziw9a8gyhix15rw13qsyymi8bdr8k82"))))
    (properties `((upstream-name . "linear-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-storable-tuple)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/tweag/linear-base#README")
    (synopsis "Standard library for linear types.")
    (description "Please see README.md.")
    (license license:expat)))

haskell-9.0-linear-base

(define-public haskell-9.0-lsp-types
  (package
    (name "haskell-9.0-lsp-types")
    (version "1.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lsp-types/lsp-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dxf5nnaxs2564hgjldkclhm5gvszjxxvz6gk00jmx0gf8k6dm8z"))))
    (properties `((upstream-name . "lsp-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0p5yywd6lam533arwfw9b4xvmibg9glmfd69j0h5268l62fqdh10")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage008)
                     haskell-9.0-hslogger)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-mod)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-rope-utf16-splay)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-some)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp")
    (synopsis
     "Haskell library for the Microsoft Language Server Protocol, data types")
    (description
     "An implementation of the types to allow language implementors to
support the Language Server Protocol for their specific language.")
    (license license:expat)))

haskell-9.0-lsp-types

(define-public haskell-9.0-lz4-frame-conduit
  (package
    (name "haskell-9.0-lz4-frame-conduit")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lz4-frame-conduit/lz4-frame-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n07cgdwq2miskgqj354hnjghmp555d7n8b39b00sjigdjzkbala"))))
    (properties `((upstream-name . "lz4-frame-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-inline-c)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nh2/lz4-frame-conduit#readme")
    (synopsis "Conduit implementing the official LZ4 frame streaming format")
    (description
     "Conduit implementing the official LZ4 frame streaming format.
Compatible with the lz4 command line utility.")
    (license license:expat)))

haskell-9.0-lz4-frame-conduit

(define-public haskell-9.0-machines
  (package
    (name "haskell-9.0-machines")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines/machines-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cmflvd0xphs15ip61347ph9w4hnhmsa4nlp425i53x1ld99l23c"))))
    (properties `((upstream-name . "machines") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "13msrrbravjx51j40jn5namgbkfc44dv565ry5pdb5l389gzfl1k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-adjunctions)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-pointed)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/machines/")
    (synopsis "Networked stream transducers")
    (description
     "Networked stream transducers

Rúnar Bjarnason's talk on machines can be downloaded from:
<http://web.archive.org/web/20161029161813/https://dl.dropboxusercontent.com/u/4588997/Machines.pdf>")
    (license license:bsd-3)))

haskell-9.0-machines

(define-public haskell-9.0-mcmc
  (package
    (name "haskell-9.0-mcmc")
    (version "0.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mcmc/mcmc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1si81jv8dfwm9lfq3fvfc4mibkg7p61vkjhsgfsmban74v02ja73"))))
    (properties `((upstream-name . "mcmc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-circular)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-covariance)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-dirichlet)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-double-conversion)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-log-domain)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-math-functions)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-statistics)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/mcmc#readme")
    (synopsis "Sample from a posterior using Markov chain Monte Carlo")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/mcmc#readme>")
    (license license:gpl3+)))

haskell-9.0-mcmc

(define-public haskell-9.0-metrics
  (package
    (name "haskell-9.0-metrics")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-metrics

(define-public haskell-9.0-monoidal-containers
  (package
    (name "haskell-9.0-monoidal-containers")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoidal-containers/monoidal-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m41z50r3jvr8vvfry99kamb2h3knm0g7bqfwspchmhwsgqqczh4"))))
    (properties `((upstream-name . "monoidal-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplit-these")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-newtype)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-semialign)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-witherable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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
instance (Ord k, Semigroup a) => Monoid (MonoidalMap k a)
@@")
    (license license:bsd-3)))

haskell-9.0-monoidal-containers

(define-public haskell-9.0-moss
  (package
    (name "haskell-9.0-moss")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/moss/moss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1az701j6gx6ra9j6yz4qib7g5irmd5pjcaj9xqmsc4pwljx8yrzs"))))
    (properties `((upstream-name . "moss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-simple)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/moss#readme")
    (synopsis "Haskell client for Moss")
    (description
     "Please see the README on Github at <https://github.com/mbg/moss#readme>")
    (license license:expat)))

haskell-9.0-moss

(define-public haskell-9.0-nonempty-containers
  (package
    (name "haskell-9.0-nonempty-containers")
    (version "0.3.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonempty-containers/nonempty-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12p40gzhmggbvh466s50d6xqaz9y7d32px3yv911wdwkcs3xxkch"))))
    (properties `((upstream-name . "nonempty-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hedgehog-fn)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-invariant)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-nonempty-vector)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/nonempty-containers#readme")
    (synopsis "Non-empty variants of containers data types, with full API")
    (description
     "Efficient and optimized non-empty versions of types from /containers/.
Inspired by /non-empty-containers/ library, except attempting a more
faithful port (with under-the-hood optimizations) of the full /containers/
API. Also contains a convenient typeclass abstraction for converting
betwewen non-empty and possibly-empty variants. See README.md for more
information.")
    (license license:bsd-3)))

haskell-9.0-nonempty-containers

(define-public haskell-9.0-o-clock
  (package
    (name "haskell-9.0-o-clock")
    (version "1.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/o-clock/o-clock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rq9bn9lxsmgjw6w55r3c15y1pjq36vi246qldr53csr0pa9ggfy"))))
    (properties `((upstream-name . "o-clock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-aeson" "-f-bench-buildable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages check) doctest)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-hunit-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-type-spec)))
    (home-page "https://github.com/serokell/o-clock")
    (synopsis "Type-safe time library.")
    (description "See README.md for details.")
    (license license:mpl2.0)))

haskell-9.0-o-clock

(define-public haskell-9.0-ochintin-daicho
  (package
    (name "haskell-9.0-ochintin-daicho")
    (version "0.3.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ochintin-daicho/ochintin-daicho-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k7k4rj3356n9d8waw5sjiq97w9wbrhq3bwqr0hr3zh2h5imy5sy"))))
    (properties `((upstream-name . "ochintin-daicho") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-bookkeeping)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mono-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-transaction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/arowM/haskell-ochintin-daicho#readme")
    (synopsis "A module to manage payroll books for Japanese companies.")
    (description
     "A module to manage payroll books for Japanese companies. This enable to export data to tax withholding book, etc...")
    (license license:expat)))

haskell-9.0-ochintin-daicho

(define-public haskell-9.0-pager
  (package
    (name "haskell-9.0-pager")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pharpend/pager")
    (synopsis "Open up a pager, like 'less' or 'more'")
    (description
     "This opens up the user's $PAGER. On Linux, this is usually called @@less@@. On
the various BSDs, this is usually @@more@@.

CHANGES

[0.1.1.0] Add @@printOrPage@@ function and @@sendToPagerStrict@@ function.")
    (license license:bsd-2)))

haskell-9.0-pager

(define-public haskell-9.0-path
  (package
    (name "haskell-9.0-path")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path/path-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15xxsjdxxqxnh20iqhprbdyhldk2igl5gd4ld6hhk9nqgwqdcr0f"))))
    (properties `((upstream-name . "path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-genvalidity)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path")
    (synopsis "Support for well-typed paths")
    (description "Support for well-typed paths.")
    (license license:bsd-3)))

haskell-9.0-path

(define-public haskell-9.0-pdf-toolbox-document
  (package
    (name "haskell-9.0-pdf-toolbox-document")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pdf-toolbox-document/pdf-toolbox-document-"
                    version ".tar.gz"))
              (sha256
               (base32
                "172vxsv541hsdkk08rsr21rwdrcxwmf4pwjmgsq2rjwj4ba4723y"))))
    (properties `((upstream-name . "pdf-toolbox-document") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-io-streams)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-pdf-toolbox-content)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-pdf-toolbox-core)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Yuras/pdf-toolbox")
    (synopsis "A collection of tools for processing PDF files.")
    (description "Mid level tools for processing PDF files.

Level of abstraction: document, catalog, page")
    (license license:bsd-3)))

haskell-9.0-pdf-toolbox-document

(define-public haskell-9.0-phatsort
  (package
    (name "haskell-9.0-phatsort")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/phatsort/phatsort-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14czx4s3ywfcxbw8lr60i3cdk62rcfr7m1v98mx3qm1gjinll5js"))))
    (properties `((upstream-name . "phatsort") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")
       #:cabal-revision
       ("2" "087vq0cfrvqgqrph5kkpyrvyfc72n9jh7bip68s30w5y4v55a821")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-HMock)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-random-shuffle)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/phatsort-haskell#readme")
    (synopsis "FAT filesystem sort utility")
    (description
     "This package provides a utility for sorting files and directories on a FAT
filesystem.  Please see the README on GitHub at
<https://github.com/ExtremaIS/phatsort-haskell#readme>.")
    (license license:expat)))

haskell-9.0-phatsort

(define-public haskell-9.0-pipes-extras
  (package
    (name "haskell-9.0-pipes-extras")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-extras")
    (synopsis "Extra utilities for pipes")
    (description
     "This package holds miscellaneous utilities related to the @@pipes@@
library.")
    (license license:bsd-3)))

haskell-9.0-pipes-extras

(define-public haskell-9.0-pipes-fluid
  (package
    (name "haskell-9.0-pipes-fluid")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-fluid/pipes-fluid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01ig0czixnf5fypnfns2kzna676vd3mr2a52fb9f4cg7yy6qwp8h"))))
    (properties `((upstream-name . "pipes-fluid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-lifted-async)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/louispan/pipes-fluid#readme")
    (synopsis
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (description
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (license license:bsd-3)))

haskell-9.0-pipes-fluid

(define-public haskell-9.0-prim-uniq
  (package
    (name "haskell-9.0-prim-uniq")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prim-uniq/prim-uniq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l7jlv3pfasn89n2wpgff972npy423vqsidkkn5crxfyqjyzxbdv"))))
    (properties `((upstream-name . "prim-uniq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-dependent-sum)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/obsidiansystems/prim-uniq")
    (synopsis "Opaque unique identifiers in primitive state monads")
    (description "Opaque unique identifiers in primitive state monads
and a GADT-like type using them as witnesses of type
equality.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-prim-uniq

(define-public haskell-9.0-project-template
  (package
    (name "haskell-9.0-project-template")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/project-template/project-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ac43x36i6b595jhflif1qqhri1rrqw90ama5n7rsh0ffnzyb69d"))))
    (properties `((upstream-name . "project-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/haskell-ide")
    (synopsis "Specify Haskell project templates and generate files")
    (description
     "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>")
    (license license:bsd-3)))

haskell-9.0-project-template

(define-public haskell-9.0-prometheus-client
  (package
    (name "haskell-9.0-prometheus-client")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-client/prometheus-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f9csz40asdkmmh6kp8sc8gkbxvkrvv8v2byxn4jp67lg7s3g9bx"))))
    (properties `((upstream-name . "prometheus-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-data-sketches)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis "Haskell client library for http://prometheus.io.")
    (description "Haskell client library for http://prometheus.io.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-prometheus-client

(define-public haskell-9.0-purescript-bridge
  (package
    (name "haskell-9.0-purescript-bridge")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/purescript-bridge/purescript-bridge-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gplvmkx2c8ksk25wdinhwwbmqa5czbd4nwdgn4sa9ci10f2i4a3"))))
    (properties `((upstream-name . "purescript-bridge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-generic-deriving)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/purescript-bridge")
    (synopsis "Generate PureScript data types from Haskell data types")
    (description "")
    (license license:bsd-3)))

haskell-9.0-purescript-bridge

(define-public haskell-9.0-quickcheck-arbitrary-adt
  (package
    (name "haskell-9.0-quickcheck-arbitrary-adt")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme")
    (synopsis "Generic typeclasses for generating arbitrary ADTs")
    (description "Improve arbitrary value generation for ADTs")
    (license license:bsd-3)))

haskell-9.0-quickcheck-arbitrary-adt

(define-public haskell-9.0-radius
  (package
    (name "haskell-9.0-radius")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/radius/radius-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q7dz40n97z5kajn60fszdhq7yb5m33dbd34j94218iqshz844ql"))))
    (properties `((upstream-name . "radius") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-iproute)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/codemonkeylabs/RADIUS")
    (synopsis "Remote Authentication Dial In User Service (RADIUS)")
    (description
     "This module provides types and on the wire de/coding of RADIUS packets as per RFC2865")
    (license license:bsd-3)))

haskell-9.0-radius

(define-public haskell-9.0-rainbow
  (package
    (name "haskell-9.0-rainbow")
    (version "0.34.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rainbow/rainbow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rx5kci69m7fdi94x35a2wg88fprlix61mvzsqq3waqb7ahc2mlf"))))
    (properties `((upstream-name . "rainbow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.github.com/massysett/rainbow")
    (synopsis "Print text to terminal with colors and effects")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-rainbow

(define-public haskell-9.0-random-tree
  (package
    (name "haskell-9.0-random-tree")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-random-shuffle)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tree-fun)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/random-tree")
    (synopsis "Create random trees")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-random-tree

(define-public haskell-9.0-redact
  (package
    (name "haskell-9.0-redact")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/redact/redact-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0q0sqsqajv8mvz76b9xy40z22j6cbacwn76rwhns5wwj5kwli829"))))
    (properties `((upstream-name . "redact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-HMock)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-explainable-predicates)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/redact-haskell#readme")
    (synopsis "hide secret text on the terminal")
    (description
     "This package provides a utility for redacting secret text on the terminal.
Please see the README on GitHub at
<https://github.com/ExtremaIS/redact-haskell#readme>.")
    (license license:expat)))

haskell-9.0-redact

(define-public haskell-9.0-retry
  (package
    (name "haskell-9.0-retry")
    (version "0.9.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/retry/retry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kafm17xk6hylr0lwa98wxjcx7z3rgnqi4fzxcks7dy9dz5ms7n1"))))
    (properties `((upstream-name . "retry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mtl-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "http://github.com/Soostone/retry")
    (synopsis "Retry combinators for monadic actions that may fail")
    (description
     "This package exposes combinators that can wrap arbitrary
monadic actions. They run the action and potentially retry
running it with some configurable delay for a configurable
number of times.
The purpose is to make it easier to work with IO and
especially network IO actions that often experience temporary
failure and warrant retrying of the original action. For
example, a database query may time out for a while, in which
case we should hang back for a bit and retry the query instead
of simply raising an exception.")
    (license license:bsd-3)))

haskell-9.0-retry

(define-public haskell-9.0-rng-utils
  (package
    (name "haskell-9.0-rng-utils")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rng-utils/rng-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wpyq1lxqcxkzvswfq9sc916alck68g3z5xb04brzxhvwzgppwnq"))))
    (properties `((upstream-name . "rng-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)))
    (home-page "https://bitbucket.org/soostone/rng-utils")
    (synopsis "RNG within an IORef for convenient concurrent use")
    (description
     "rng-utils aims to make it easy to generate an RNG and safely use it concurrently.")
    (license license:bsd-3)))

haskell-9.0-rng-utils

(define-public haskell-9.0-rp-tree
  (package
    (name "haskell-9.0-rp-tree")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rp-tree/rp-tree-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01iy2awnwqgfqyigpggj6gfig930lx655bih1a2hd5ga2fbrymmp"))))
    (properties `((upstream-name . "rp-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-boxes)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-heaps)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-serialise)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-splitmix-distributions)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/rp-tree")
    (synopsis "Random projection trees")
    (description
     "Random projection trees for approximate nearest neighbor search in high-dimensional vector spaces

To use the library, import \"Data.RPTree\", which also contains all documentation.")
    (license license:bsd-3)))

haskell-9.0-rp-tree

(define-public haskell-9.0-salak-yaml
  (package
    (name "haskell-9.0-salak-yaml")
    (version "0.3.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/salak-yaml/salak-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07wcwld58bdr8n5fdfq98x6c1xdr8rrx919y4f9y7abdnc4aj000"))))
    (properties `((upstream-name . "salak-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0x1wkd2yqmgd0lxy45d3w8p53ms942am14flc0m2jz6dk9vi3k7a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-libyaml)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-salak)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/leptonyu/salak#readme")
    (synopsis "Configuration Loader for yaml")
    (description
     "Yaml support for [salak](https://hackage.haskell.org/package/salak).")
    (license license:expat)))

haskell-9.0-salak-yaml

(define-public haskell-9.0-scheduler
  (package
    (name "haskell-9.0-scheduler")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scheduler/scheduler-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hdqm04m3n5y3xrhilj0hykrmqdsjz5p6k2p9y1005khkj5dag9f"))))
    (properties `((upstream-name . "scheduler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017) haskell-9.0-pvar)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "https://github.com/lehins/haskell-scheduler")
    (synopsis "Work stealing scheduler.")
    (description
     "A work stealing scheduler that is designed for parallelization of heavy work loads. It was primarily developed for [massiv](https://github.com/lehins/massiv) array library, but it is general enough to be useful for any computation that fits the model of few workers and many jobs.")
    (license license:bsd-3)))

haskell-9.0-scheduler

(define-public haskell-9.0-semialign-indexed
  (package
    (name "haskell-9.0-semialign-indexed")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign-indexed/semialign-indexed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16f0y3j85zlq2f8z45z085dizvbx4ihppp1ww3swh5daj0zf3kzy"))))
    (properties `((upstream-name . "semialign-indexed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("1" "041zf53szkshc13i0kqgk77rb7r00snknv5qhq2ka4vfg2f0dn4x")))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-semialign)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "SemialignWithIndex, i.e. izipWith and ialignWith")
    (description
     "This package is deprecated.
It simply re-exports [semialign](https://hackage.haskell.org/package/semialign)
(and adds a @@lens@@ constraint).

This package provided @@SemialignWithIndex@@ with two members

@@
class (FunctorWithIndex i f, Semialign f) => SemialignWithIndex i f | f -> i where
\\    ialignWith :: (i -> These a b -> c) -> f a -> f b -> f c
@@

@@
class (SemialignWithIndex i f, Zip f) => ZipWithIndex i f | f -> i where
\\    izipWith   :: (i -> a -> b -> c)    -> f a -> f b -> f c
@@")
    (license license:bsd-3)))

haskell-9.0-semialign-indexed

(define-public haskell-9.0-sequenceTools
  (package
    (name "haskell-9.0-sequenceTools")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sequenceTools/sequenceTools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fbdsyszmkgwiv06145s76m22a60xmmgrhv9xfwc1691jjwwbdl3"))))
    (properties `((upstream-name . "sequenceTools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-foldl)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-lens-family)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-pipes-group)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-pipes-ordered-zip)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-pipes-safe)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-sequence-formats)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sequenceTools")
    (synopsis "A package with tools for processing DNA sequencing data")
    (description
     "The tools in this package process sequencing Data, in particular from ancient DNA sequencing libraries. Key tool in this package is pileupCaller, a tool to randomly sample genotypes from sequencing data.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-sequenceTools

(define-public haskell-9.0-serf
  (package
    (name "haskell-9.0-serf")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-operational)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/sanetracker/serf")
    (synopsis "Interact with Serf via Haskell.")
    (description "Bindings to most of the commands provided by serf.")
    (license license:expat)))

haskell-9.0-serf

(define-public haskell-9.0-servant-client-core
  (package
    (name "haskell-9.0-servant-client-core")
    (version "0.19")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client-core/servant-client-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cisc5cyl367cwrch1gr812aspd36a21hkwi6mwj708rpspwvrmc"))))
    (properties `((upstream-name . "servant-client-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1qhqab6akfw6ay4rlrbwmii1s8flbkgp9b9bfzkdhwng7nvwdc80")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-constraints)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-network-uri)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-sop-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Core functionality and class for client function generation for servant APIs")
    (description
     "This library provides backend-agnostic generation of client functions. For
more information, see the README.")
    (license license:bsd-3)))

haskell-9.0-servant-client-core

(define-public haskell-9.0-servant-docs
  (package
    (name "haskell-9.0-servant-docs")
    (version "0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-docs/servant-docs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0531jldq35sl1qlna0s1n8bakbsplg15611305dk48z80vcpa933"))))
    (properties `((upstream-name . "servant-docs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1yb9axh316dnlqhyxafyl6d3yh1x5skh94mpm8z534xji6n2kpqq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-http-media)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-string-conversions)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-tasty-golden)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-universe-base)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis "generate API docs for your servant webservice")
    (description
     "Library for generating API docs from a servant API definition.

Runnable example <https://github.com/haskell-servant/servant/blob/master/servant-docs/example/greet.hs here>.

<https://github.com/haskell-servant/servant/blob/master/servant-docs/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.0-servant-docs

(define-public haskell-9.0-servant-exceptions
  (package
    (name "haskell-9.0-servant-exceptions")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ch1bo/servant-exceptions#readme")
    (synopsis "Extensible exceptions for servant APIs")
    (description
     "`servant-exceptions` provides a `Throw` combinator to declare what
types of errors an API might throw. The server
implementation catches them and allows for a canonical
encoding using servant content-type machinery.")
    (license license:bsd-3)))

haskell-9.0-servant-exceptions

(define-public haskell-9.0-servant-foreign
  (package
    (name "haskell-9.0-servant-foreign")
    (version "0.15.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-foreign/servant-foreign-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bznb73rbgfgkg7n4pxghkqsfca0yw9vak73c6w8sqvc2mjnc7mz"))))
    (properties `((upstream-name . "servant-foreign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1sds0r9g9fjvf4g8sfwkn80hbsy1pjc4wpbimrk4adb4584wlg1m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-http-types)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Helpers for generating clients for servant APIs in any programming language")
    (description
     "Helper types and functions for generating client functions for servant APIs in any programming language

This package provides types and functions that collect all the data needed to generate client functions in the programming language of your choice. This effectively means you only have to write the code that \"pretty-prints\" this data as some code in your target language.

See the servant-js package for an example

<https://github.com/haskell-servant/servant/blob/master/servant-foreign/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.0-servant-foreign

(define-public haskell-9.0-servant-multipart-api
  (package
    (name "haskell-9.0-servant-multipart-api")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-servant/servant-multipart#readme")
    (synopsis "multipart/form-data (e.g file upload) support for servant")
    (description
     "This package contains servant API types that support multiform upload, used by
servant-multipart and servant-multipart-client for backend/client implementation.")
    (license license:bsd-3)))

haskell-9.0-servant-multipart-api

(define-public haskell-9.0-servant-rawm
  (package
    (name "haskell-9.0-servant-rawm")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-servant)))
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

haskell-9.0-servant-rawm

(define-public haskell-9.0-ses-html
  (package
    (name "haskell-9.0-ses-html")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ses-html/ses-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13x0m3i8gs0rapshniwxhzwz0311fzan7k87s6ink3jk7gh6xxyg"))))
    (properties `((upstream-name . "ses-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-cryptohash)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-http-streams)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ses-html")
    (synopsis
     "Send HTML formatted emails using Amazon's SES REST API with blaze")
    (description
     "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell")
    (license license:bsd-3)))

haskell-9.0-ses-html

(define-public haskell-9.0-shell-conduit
  (package
    (name "haskell-9.0-shell-conduit")
    (version "5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shell-conduit/shell-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02zilgrb64x0rk4b4bihprwq9fr5gydzj003y3fq8ryf7r60g41w"))))
    (properties `((upstream-name . "shell-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-monads-tf)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/shell-conduit")
    (synopsis "Write shell scripts with Conduit")
    (description
     "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.")
    (license license:bsd-3)))

haskell-9.0-shell-conduit

(define-public haskell-9.0-simple-sendfile
  (package
    (name "haskell-9.0-simple-sendfile")
    (version "0.2.30")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-sendfile/simple-sendfile-"
                    version ".tar.gz"))
              (sha256
               (base32
                "112j0qfsjazf9wg1zywf7hjybgsiywk9wkm27yi8xzv27hmlv1mn"))))
    (properties `((upstream-name . "simple-sendfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fallow-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/simple-sendfile")
    (synopsis "Cross platform library for the sendfile system call")
    (description "Cross platform library for the sendfile system call.
This library tries to call minimum system calls which
are the bottleneck of web servers.")
    (license license:bsd-3)))

haskell-9.0-simple-sendfile

(define-public haskell-9.0-singletons-base
  (package
    (name "haskell-9.0-singletons-base")
    (version "3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons-base/singletons-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0syrh4f9rs4g643c90md1vqrpr6p8h8g8sh4x3j2dld12yvrw4wn"))))
    (properties `((upstream-name . "singletons-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-singletons)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-singletons-th)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-th-desugar)))
    (home-page "http://www.github.com/goldfirere/singletons")
    (synopsis "A promoted and singled version of the base library")
    (description
     "@@singletons-base@@ uses @@singletons-th@@ to define promoted and singled
functions from the @@base@@ library, including the \"Prelude\". This library was
originally presented in /Dependently Typed Programming with Singletons/,
published at the Haskell Symposium, 2012.
(<https://cs.brynmawr.edu/~rae/papers/2012/singletons/paper.pdf>)
See also the paper published at Haskell Symposium, 2014, which describes
how promotion works in greater detail:
<https://cs.brynmawr.edu/~rae/papers/2014/promotion/promotion.pdf>.

WARNING: @@singletons-base@@ defines orphan instances for @@Sing@@, @@SingKind@@,
etc. for common types such as @@Bool@@, @@[]@@, @@Maybe@@, etc. If you define
instances of these types in your code, you will likely not be able to use
that code with @@singletons-base@@.

@@singletons-base@@ uses code that relies on bleeding-edge GHC language
extensions. As such, @@singletons-base@@ only supports the latest major version
of GHC (currently GHC 9.0). For more information,
consult the @@singletons@@
@@<https://github.com/goldfirere/singletons/blob/master/README.md README>@@.

You may also be interested in the following related libraries:

* The @@singletons@@ library is a small, foundational library that defines
basic singleton-related types and definitions.

* The @@singletons-th@@ library defines Template Haskell functionality that
allows /promotion/ of term-level functions to type-level equivalents and
/singling/ functions to dependently typed equivalents.")
    (license license:bsd-3)))

haskell-9.0-singletons-base

(define-public haskell-9.0-slist
  (package
    (name "haskell-9.0-slist")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/slist/slist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1j52gvq42x03y7jq0pxzab98qnrsjg6qnw4ysq6cd89cx6gg04ab"))))
    (properties `((upstream-name . "slist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hspec-hedgehog)))
    (home-page "https://github.com/kowainik/slist")
    (synopsis "Sized list")
    (description
     "This package implements @@Slist@@ data structure that stores the size
of the list along with the list itself.")
    (license license:mpl2.0)))

haskell-9.0-slist

(define-public haskell-9.0-speedy-slice
  (package
    (name "haskell-9.0-speedy-slice")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/speedy-slice/speedy-slice-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bmy0hrrqgwbqsk1ckbmzy1hhcwlcjsclcskrdmzfq5afvq9kq3z"))))
    (properties `((upstream-name . "speedy-slice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-kan-extensions)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-mcmc-types)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-mwc-probability)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pipes)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-speedy-slice

(define-public haskell-9.0-stm-conduit
  (package
    (name "haskell-9.0-stm-conduit")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-cereal-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-monad-loops)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stm-chans)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cgaebel/stm-conduit")
    (synopsis
     "Introduces conduits to channels, and promotes using conduits concurrently.")
    (description
     "Provides two simple conduit wrappers around STM channels - a source and a sink.")
    (license license:bsd-3)))

haskell-9.0-stm-conduit

(define-public haskell-9.0-store-streaming
  (package
    (name "haskell-9.0-store-streaming")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage015) haskell-9.0-free)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-store)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-store-core)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-streaming-commons)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Streaming interfaces for `store`")
    (description "")
    (license license:expat)))

haskell-9.0-store-streaming

(define-public haskell-9.0-streamt
  (package
    (name "haskell-9.0-streamt")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/streamt/streamt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0adbn5kh2wqgvwzjgrhcd94abch7if6qz26ihpbm4igwbmwirzgw"))))
    (properties `((upstream-name . "streamt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-criterion)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-logict)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/davidar/streamt")
    (synopsis "Simple, Fair and Terminating Backtracking Monad Transformer")
    (description "This Haskell library provides an implementation of the
MonadPlus type class that enumerates results of a
non-deterministic computation by interleaving
subcomputations in a way that has usually much better
memory performance than other strategies with the same
termination properties.")
    (license license:bsd-3)))

haskell-9.0-streamt

(define-public haskell-9.0-strict-tuple-lens
  (package
    (name "haskell-9.0-strict-tuple-lens")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-tuple-lens/strict-tuple-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02pagvg6rz0bdkxvikv7ac7766b329j84jbd42cjqr193wjphqd4"))))
    (properties `((upstream-name . "strict-tuple-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-strict-tuple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/strict-tuple-lens")
    (synopsis "Optics for the `strict-tuple` library")
    (description
     "This package provides optics for the `strict-tuple` library, using the `lens` library")
    (license license:bsd-3)))

haskell-9.0-strict-tuple-lens

(define-public haskell-9.0-these-lens
  (package
    (name "haskell-9.0-these-lens")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/these-lens/these-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1v3kj7j4bkywbmdbblwqs5gsj5s23d59sb3s27jf3bwdzf9d21p6"))))
    (properties `((upstream-name . "these-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1mncy6mcwqxy4fwibrsfc3jcx183wfjfvfvbj030y86pfihvbwg3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "Lenses for These")
    (description "This package provides Prism and Traversals for @@These@@.")
    (license license:bsd-3)))

haskell-9.0-these-lens

(define-public haskell-9.0-timelens
  (package
    (name "haskell-9.0-timelens")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.github.com/massysett/timelens")
    (synopsis "Lenses for the time package")
    (description
     "These are lenses for the time package.  Please see the README.md
for more information.")
    (license license:bsd-3)))

haskell-9.0-timelens

(define-public haskell-9.0-tls
  (package
    (name "haskell-9.0-tls")
    (version "1.5.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tls/tls-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0rxdv8ab98kd4nqql7djmmi51k4vayq21s38s43sx3rzn0iyla3b"))))
    (properties `((upstream-name . "tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcompat" "-fnetwork" "-f-hans")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-asn1-types)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-hourglass)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-x509)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-x509-store)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-tls")
    (synopsis "TLS/SSL protocol native implementation (Server and Client)")
    (description
     "Native Haskell TLS and SSL protocol implementation for server and client.

This provides a high-level implementation of a sensitive security protocol,
eliminating a common set of security issues through the use of the advanced
type system, high level constructions and common Haskell features.

Currently implement the SSL3.0, TLS1.0, TLS1.1, TLS1.2 and TLS 1.3 protocol,
and support RSA and Ephemeral (Elliptic curve and regular) Diffie Hellman key exchanges,
and many extensions.

Some debug tools linked with tls, are available through the
<http://hackage.haskell.org/package/tls-debug/>.")
    (license license:bsd-3)))

haskell-9.0-tls

(define-public haskell-9.0-tlynx
  (package
    (name "haskell-9.0-tlynx")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tlynx/tlynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q59gfk9i4ghm5gyw104isn0f3ws73n12a9hv6xhs6c3rfl8spr9"))))
    (properties `((upstream-name . "tlynx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-elynx-tools)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-elynx-tree)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-statistics)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle phylogenetic trees")
    (description
     "Examine, compare, and simulate phylogenetic trees in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.0-tlynx

(define-public haskell-9.0-trifecta
  (package
    (name "haskell-9.0-trifecta")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/trifecta/trifecta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1akx8m6mgskwsbhsf90cxlqjq23jk4pwaxagvm923dpncwrlwfla"))))
    (properties `((upstream-name . "trifecta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0a7cfbd04w3zbm234mmpib9mxar46ra5xvb62gcnbmixr7b343j9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-charset)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-fingertree)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-parsers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-reducers)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/trifecta/")
    (synopsis "A modern parser combinator library with convenient diagnostics")
    (description
     "A modern parser combinator library with slicing and Clang-style colored diagnostics

For example:

<<https://i.imgur.com/ZyzUSSn.png>>

<images/example.png (Local Copy)>")
    (license license:bsd-3)))

haskell-9.0-trifecta

(define-public haskell-9.0-twitter-types-lens
  (package
    (name "haskell-9.0-twitter-types-lens")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/twitter-types-lens/twitter-types-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l0qbpri3ah0xw6k74a5490fsxwisc8h8yip7ikhbsyf0vkqr2wc"))))
    (properties `((upstream-name . "twitter-types-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-twitter-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/himura/twitter-types")
    (synopsis "Twitter JSON types (lens powered)")
    (description
     "Please see the README on Github at <https://github.com/himura/twitter-types#readme>")
    (license license:bsd-3)))

haskell-9.0-twitter-types-lens

(define-public haskell-9.0-typelits-witnesses
  (package
    (name "haskell-9.0-typelits-witnesses")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typelits-witnesses/typelits-witnesses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1khy5nacmsl7h4vg7driv4yb9m3zvkhbf8divyhd249i6bdmql70"))))
    (properties `((upstream-name . "typelits-witnesses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11lpv0zymmxlqh2sac324znmr5rhvvfvjipddgyhv6y3l7zy7jhs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-dependent-sum)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/typelits-witnesses")
    (synopsis
     "Existential witnesses, singletons, and classes for operations on GHC TypeLits")
    (description
     "This library contains:

*   A small specialized subset of the *singletons* library as it pertains to
`Nat` and `Symbol`, for when you need some simple functionality without
wanting to invoke the entire *singletons* library.
*   Operations for manipulating these singletons and `KnownNat` and
`KnownSymbol` instances, such as addition and multiplication of
singletons/`KnownNat` instances.
*   Operations for the comparison of `Nat`s in a way that works well with
*GHC.TypeLits*'s different comparison systems.  This is helpful for
bridging together libraries that use different systems; this functionality
is not yet provided by *singletons*.")
    (license license:expat)))

haskell-9.0-typelits-witnesses

(define-public haskell-9.0-uri-bytestring
  (package
    (name "haskell-9.0-uri-bytestring")
    (version "0.3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring/uri-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s0k26v5x6601rbpkjkl5vp3dkp9xwj1dlgy4xkl470i4sna1rzk"))))
    (properties `((upstream-name . "uri-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-th-lift-instances)))
    (home-page "https://github.com/Soostone/uri-bytestring")
    (synopsis "Haskell URI parsing as ByteStrings")
    (description
     "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.")
    (license license:bsd-3)))

haskell-9.0-uri-bytestring

(define-public haskell-9.0-validation
  (package
    (name "haskell-9.0-validation")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validation/validation-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15hhz2kj6h9zv568bvq79ymck3s3b89fpkasdavbwvyhfyjm5k8x"))))
    (properties `((upstream-name . "validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-assoc)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/qfpl/validation")
    (synopsis "A data-type like Either but with an accumulating Applicative")
    (description
     "<<https://raw.githubusercontent.com/qfpl/assets/master/data61-transparent-bg.png>>

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

haskell-9.0-validation

(define-public haskell-9.0-vector-circular
  (package
    (name "haskell-9.0-vector-circular")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-circular/vector-circular-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18aijs6yn01bv3zal7l0wsck0hd54bbhckjc67cvr8wmpqdk2xxw"))))
    (properties `((upstream-name . "vector-circular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-hedgehog-classes)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-nonempty-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/vector-circular")
    (synopsis "circular vectors")
    (description
     "nonempty circular vector data structure library. indexing is always total")
    (license license:expat)))

haskell-9.0-vector-circular

(define-public haskell-9.0-vector-instances
  (package
    (name "haskell-9.0-vector-instances")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage016) haskell-9.0-keys)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-pointed)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/vector-instances")
    (synopsis "Orphan Instances for 'Data.Vector'")
    (description "")
    (license license:bsd-3)))

haskell-9.0-vector-instances

(define-public haskell-9.0-vectortiles
  (package
    (name "haskell-9.0-vectortiles")
    (version "1.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vectortiles/vectortiles-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g5n7xrpzj1kfbmk97lak6p7m0g7irkcmd5cl0gh23bxsfzmbnkh"))))
    (properties `((upstream-name . "vectortiles") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-protocol-buffers)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-protocol-buffers-descriptor)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fosskers/vectortiles")
    (synopsis "GIS Vector Tiles, as defined by Mapbox.")
    (description
     "GIS Vector Tiles, as defined by Mapbox.
This library implements version 2.1 of the official Mapbox spec, as defined
here: <https://github.com/mapbox/vector-tile-spec/tree/master/2.1>

Note that currently this library ignores top-level protobuf extensions,
/Value/ extensions, and /UNKNOWN/ geometries.")
    (license license:bsd-3)))

haskell-9.0-vectortiles

(define-public haskell-9.0-with-utf8
  (package
    (name "haskell-9.0-with-utf8")
    (version "1.0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/with-utf8/with-utf8-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ddhnnp48ndngwd81agxajig533r39wy31l49znpjqy9d1ccw1q7"))))
    (properties `((upstream-name . "with-utf8") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-th-env)))
    (home-page "https://github.com/serokell/haskell-with-utf8#readme")
    (synopsis "Get your IO right on the first try")
    (description
     "This minimalistic library helps you navigate the world of text encodings
avoiding @@invalid argument (invalid byte sequence)@@
and @@invalid argument (invalid character)@@ in runtime.

See <https://serokell.io/blog/haskell-with-utf8 this blog post> for why this
library exists and what exactly it does.

The two most important modules are:

* \"Main.Utf8\"
* \"System.IO.Utf8\"")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-with-utf8

(define-public haskell-9.0-xml-conduit
  (package
    (name "haskell-9.0-xml-conduit")
    (version "1.9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit/xml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zzh7xnmbm68dab1vqsjkr6ghxqgnla5nik4amrwlmhbdih1gcdx"))))
    (properties `((upstream-name . "xml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0m6sknp9xxz8a3dhvyfpyjvxp8ph511w19j4vj1qsd6hl2pazjy6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/xml")
    (synopsis
     "Pure-Haskell utilities for dealing with XML with the conduit package.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.")
    (license license:expat)))

haskell-9.0-xml-conduit

(define-public haskell-9.0-xmlbf-xeno
  (package
    (name "haskell-9.0-xmlbf-xeno")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmlbf-xeno/xmlbf-xeno-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x33885kjddmc39p2jxafypcgpm5fajdxzdd6l9z5bpihlpgk7ig"))))
    (properties `((upstream-name . "xmlbf-xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-html-entities)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-xeno)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-xmlbf)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis "xeno backend support for the xmlbf library.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-xmlbf-xeno

(define-public haskell-9.0-xmonad-contrib
  (package
    (name "haskell-9.0-xmonad-contrib")
    (version "0.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmonad-contrib/xmonad-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lwj8xkyaw6h0rv3lz2jdqrwzz7yghfmnhpndygkb3wgyhvq6dxb"))))
    (properties `((upstream-name . "xmonad-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse_xft" "-f-pedantic")
       #:cabal-revision
       ("1" "0dc9nbn0kaw98rgpi1rq8np601zjhdr1y0ydg6yb82wwaqawql6z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-X11)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-X11-xft)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-xmonad)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://xmonad.org/")
    (synopsis "Community-maintained extensions for xmonad")
    (description
     "Community-maintained tiling algorithms and extension modules for xmonad,
an X11 tiling window manager.

For an introduction to building, configuring and using xmonad
extensions, see \"XMonad.Doc\". In particular:

\"XMonad.Doc.Configuring\", a guide to configuring xmonad

\"XMonad.Doc.Extending\", using the contributed extensions library

\"XMonad.Doc.Developing\", introduction to xmonad internals and writing
your own extensions.
")
    (license license:bsd-3)))

haskell-9.0-xmonad-contrib

(define-public haskell-9.0-yaml
  (package
    (name "haskell-9.0-yaml")
    (version "0.11.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yaml/yaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s0arllihjjqp65jbc8c1w5106i2infppsirvbsifpmpkf14w6pn"))))
    (properties `((upstream-name . "yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fno-examples" "-fno-exe")
       #:cabal-revision
       ("2" "1dix5jm3d380vjr9l6wqz54zk883kilk8rijlvjp6b13mjxwcj1l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-aeson)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-libyaml)
                  (@ (gnu packages stackage ghc-9.0 stage016)
                     haskell-9.0-mockery)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Support for parsing and rendering YAML documents.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/yaml>")
    (license license:bsd-3)))

haskell-9.0-yaml

(define-public haskell-9.0-zim-parser
  (package
    (name "haskell-9.0-zim-parser")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-binary-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-hspec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-lzma)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/robbinch/zim-parser#readme")
    (synopsis "Read and parse ZIM files")
    (description
     "zim-parser is a library to read and parse ZIM (http://openzim.org) files.
ZiM files contain offline web content (eg. Wikipedia) which can be browsed
locally without an Internet connection.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-zim-parser

(define-public haskell-9.0-zip-stream
  (package
    (name "haskell-9.0-zip-stream")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-stream/zip-stream-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fx8kj0ijm3555grhdns7agmi084584fh1v0mvkm4x696h1zzvli"))))
    (properties `((upstream-name . "zip-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-binary-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage017)
                     haskell-9.0-conduit)
                  (@ (gnu packages stackage ghc-9.0 stage018)
                     haskell-9.0-conduit-extra)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-digest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage015)
                     haskell-9.0-resourcet)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/zip-stream")
    (synopsis "ZIP archive streaming using conduits")
    (description
     "Process (extract and create) zip files as streams (e.g., over the network), accessing contained files without having to write the zip file to disk (unlike zip-conduit).")
    (license license:bsd-3)))

haskell-9.0-zip-stream

(define-public haskell-9.0-zippers
  (package
    (name "haskell-9.0-zippers")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zippers/zippers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0n85mnp3mv8qwk3wmmm2wpc3j2l4q2fb0gbzb5il3nrd0p42xjld"))))
    (properties `((upstream-name . "zippers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ppm6a56z7nr90q6ffffkvb2syfi9nlzi806g3r5z7dinn262gnc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage018) haskell-9.0-lens)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage014)
                     haskell-9.0-semigroupoids)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/zippers/")
    (synopsis "Traversal based zippers")
    (description "Traversal based zippers.")
    (license license:bsd-3)))

haskell-9.0-zippers

