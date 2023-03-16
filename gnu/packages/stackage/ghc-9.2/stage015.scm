;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage015)
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
(define-public haskell-9.2-Chart
  (package
    (name "haskell-9.2-Chart")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-operational)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-Chart

(define-public haskell-9.2-DPutils
  (package
    (name "haskell-9.2-DPutils")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-parse)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-streaming-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stringsearch)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/DPutils")
    (synopsis "utilities for DP")
    (description
     "Small set of utility functions, as well as the base types for
generic backtracing.
")
    (license license:bsd-3)))

haskell-9.2-DPutils

(define-public haskell-9.2-ForestStructures
  (package
    (name "haskell-9.2-ForestStructures")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fgl)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-vector-th-unbox)))
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

haskell-9.2-ForestStructures

(define-public haskell-9.2-HPDF
  (package
    (name "haskell-9.2-HPDF")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HPDF/HPDF-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "037cwhnjr6p2b168bixy9a1n811krcvmyhg2kbhlry02svkars7k"))))
    (properties `((upstream-name . "HPDF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-HTF)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hyphenation)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.alpheccar.org")
    (synopsis "Generation of PDF documents")
    (description
     "A PDF library with support for several pages, page transitions, outlines, annotations, compression, colors, shapes, patterns, jpegs, fonts, typesetting ... Have a look at the \"Graphics.PDF.Documentation\" module to see how to use it. Or, download the package and look at the test.hs file in the Test folder. That file is giving an example of each feature.")
    (license license:bsd-3)))

haskell-9.2-HPDF

(define-public haskell-9.2-Interpolation
  (package
    (name "haskell-9.2-Interpolation")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Interpolation/Interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "046bx18mlgicp26391gvgzbi0wfwl9rddam3jdfz4lpxva4q9xhv"))))
    (properties `((upstream-name . "Interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/Interpolation")
    (synopsis "Multiline strings, interpolation and templating.")
    (description "This package adds quasiquoter for multiline
strings, interpolation and simple templating.
It can handle repetition templates which makes it
Handy for outputting larger structures, such as
latex tables or gnuplot files.

0.3.0 - Instead of Strings, the `str` quasiquoter produces
values of type `(Monoid a, IsString a) => a`, making
it compatible many other libraries, such as
`Data.Text` and `Blaze.Builder`.

0.2.6 - A handy quote for printing

0.2.5.1 - version bump for ghc-7.0.1")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-Interpolation

(define-public haskell-9.2-QuasiText
  (package
    (name "haskell-9.2-QuasiText")
    (version "0.1.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/QuasiText/QuasiText-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06giw0q5lynx05c4h45zwnlcifg91w291h3gwrg68qsjw9lx40g8"))))
    (properties `((upstream-name . "QuasiText") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mikeplus64/QuasiText")
    (synopsis "A QuasiQuoter for Text.")
    (description "A QuasiQuoter for interpolating values into Text strings.")
    (license license:bsd-3)))

haskell-9.2-QuasiText

(define-public haskell-9.2-Spock-api
  (package
    (name "haskell-9.2-Spock-api")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hvect)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-reroute)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description "API definition DSL for Spock web framework")
    (license license:bsd-3)))

haskell-9.2-Spock-api

(define-public haskell-9.2-aern2-real
  (package
    (name "haskell-9.2-aern2-real")
    (version "0.2.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aern2-real/aern2-real-" version
                    ".tar.gz"))
              (sha256
               (base32
                "094hs147jzlg3zqary2zbpi7n18vykj0f7cw89k125zrs2h0f0v2"))))
    (properties `((upstream-name . "aern2-real") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aern2-mp)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-collect-errors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-mixed-types-num)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/michalkonecny/aern2#readme")
    (synopsis "Real numbers as convergent sequences of intervals")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>")
    (license license:bsd-3)))

haskell-9.2-aern2-real

(define-public haskell-9.2-aeson-casing
  (package
    (name "haskell-9.2-aeson-casing")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-casing/aeson-casing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cwjy46ac7vzdvkw6cm5xcbcljf2a4lcvc2xbsh8iwd3fdb0f8rp"))))
    (properties `((upstream-name . "aeson-casing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/aeson-casing")
    (synopsis "Tools to change the formatting of field names in Aeson
instances.")
    (description "Tools to change the formatting of field names in Aeson
instances. This includes CamelCasing, Pascal Casing and
Snake Casing.")
    (license license:expat)))

haskell-9.2-aeson-casing

(define-public haskell-9.2-aeson-qq
  (package
    (name "haskell-9.2-aeson-qq")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-qq/aeson-qq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dpklq2xdhrkg1rdc7zfdjnzm6c3qxx2i1xskrqdxpqi84ffnlyh"))))
    (properties `((upstream-name . "aeson-qq") (hidden? . #f)))
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
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sol/aeson-qq#readme")
    (synopsis "JSON quasiquoter for Haskell")
    (description "@@aeson-qq@@ provides a JSON quasiquoter for Haskell.

This package exposes the function `aesonQQ` that compile-time
converts a string representation of a JSON value into a
`Data.Aeson.Value`.  `aesonQQ` has the signature

>aesonQQ :: QuasiQuoter

Consult the @@README@@ for documentation:
<https://github.com/sol/aeson-qq#readme>")
    (license license:expat)))

haskell-9.2-aeson-qq

(define-public haskell-9.2-alex-meta
  (package
    (name "haskell-9.2-alex-meta")
    (version "0.3.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alex-meta/alex-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lbralcid373p25m4qhrhrjak87p8wp4as3304sj6ba6xka89q3v"))))
    (properties `((upstream-name . "alex-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0b9p2gndna2mk85pywilqwn3zm4yyn9s9ss6p3rlaax70218mlgg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/alex-meta")
    (synopsis "Quasi-quoter for Alex lexers")
    (description
     "A Template-Haskell based version of the Alex lexer generator. It is used by BNFC-meta to generate lexers and currently this is the only feature known to be working.")
    (license license:bsd-3)))

haskell-9.2-alex-meta

(define-public haskell-9.2-alternators
  (package
    (name "haskell-9.2-alternators")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-newtype-generics)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/louispan/alternators#readme")
    (synopsis "Handy functions when using transformers.")
    (description
     "Useful monads built on top of transformers. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-alternators

(define-public haskell-9.2-amqp-utils
  (package
    (name "haskell-9.2-amqp-utils")
    (version "0.6.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amqp-utils/amqp-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qdhp96zqcjd8yd2hmg7c2cl9gdvywp1p3v1xjcax9si5pr83w1i"))))
    (properties `((upstream-name . "amqp-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-amqp)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-filepath-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hinotify)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-magic)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-rawfilepath)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-x509-system)))
    (propagated-inputs (list (@ (gnu packages imagemagick) imagemagick)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/amqp-utils")
    (synopsis "AMQP toolset for the command line")
    (description "AMQP tools consisting of:
AMQP consumer which can
create a temporary queue and attach it to an exchange, or
attach to an existing queue;
display header and body info;
save message bodies to files;
call a callback script.
AMQP publisher with file, line-by-line and
hotfolder capabilities.
AMQP rpc client and server.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-amqp-utils

(define-public haskell-9.2-api-field-json-th
  (package
    (name "haskell-9.2-api-field-json-th")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nakaji-dayo/api-field-json-th")
    (synopsis "option of aeson's deriveJSON ")
    (description "Utils for using aeson's deriveJSON with lens's makeFields")
    (license license:bsd-3)))

haskell-9.2-api-field-json-th

(define-public haskell-9.2-appendful
  (package
    (name "haskell-9.2-appendful")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/appendful/appendful-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07bs55kwj0r5q8z9mvihc890yfan9whis8q1n5k27sbqpfbwaqws"))))
    (properties `((upstream-name . "appendful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/appendful#readme")
    (synopsis "")
    (description "Append-only cooperative agreement")
    (license license:expat)))

haskell-9.2-appendful

(define-public haskell-9.2-attoparsec-path
  (package
    (name "haskell-9.2-attoparsec-path")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-path/attoparsec-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "035n430iwqkfkxpphgn8xjd3h5qav8dwd1gm4a3v3z8h49i2cwfh"))))
    (properties `((upstream-name . "attoparsec-path") (hidden? . #f)))
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
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/attoparsec-path#readme")
    (synopsis "Convenience bindings between path and attoparsec")
    (description "")
    (license license:bsd-3)))

haskell-9.2-attoparsec-path

(define-public haskell-9.2-aura
  (package
    (name "haskell-9.2-aura")
    (version "3.2.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aura/aura-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hw96090gb4rf6n6mf9mn2y50sjgcvny2ipdd9720an33nhpsd3m"))))
    (properties `((upstream-name . "aura") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0ah0hdb3inqbmvriwx67hd7rbj5qkh3q103bvbdd0zj7zaqlz30k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-algebraic-graphs)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-aur)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-language-bash)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-scheduler)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-versions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fosskers/aura")
    (synopsis "A secure package manager for Arch Linux and the AUR.")
    (description
     "Aura is a package manager for Arch Linux. It connects to both the
official Arch repostitories and to the AUR, allowing easy control of all
packages on an Arch system. It allows /all/ pacman operations and provides
/new/ custom ones for dealing with AUR packages. This differs from some other
AUR package managers.")
    (license license:gpl3)))

haskell-9.2-aura

(define-public haskell-9.2-autodocodec-schema
  (package
    (name "haskell-9.2-autodocodec-schema")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/autodocodec-schema/autodocodec-schema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vvwjz8abn6qmk2801p7vyrbjkqcxdqjlc82ha8l9xvb6mmvqy3i"))))
    (properties `((upstream-name . "autodocodec-schema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-validity-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/autodocodec#readme")
    (synopsis "Autodocodec interpreters for JSON Schema")
    (description "")
    (license license:expat)))

haskell-9.2-autodocodec-schema

(define-public haskell-9.2-bimaps
  (package
    (name "haskell-9.2-bimaps")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bimaps/bimaps-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "084mdn650bghq3lxpckiym28jcmzyj1r3hnqjl5ly1r0arjdsx4p"))))
    (properties `((upstream-name . "bimaps") (hidden? . #f)))
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
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cereal-vector)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-storable-tuple)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/bimaps")
    (synopsis "bijections with multiple implementations.")
    (description "Bijections between sets of values.")
    (license license:bsd-3)))

haskell-9.2-bimaps

(define-public haskell-9.2-binary-tagged
  (package
    (name "haskell-9.2-binary-tagged")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-tagged/binary-tagged-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01d1wb8h5mz76l09r2azphvhm1y3nar8pqrh2waxn797bd2dh6fp"))))
    (properties `((upstream-name . "binary-tagged") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0w0n299j37w4xyf69wlfs1s06m01y6yyh9r5clacrr5m893rxy9a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-binary-instances)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-singleton-bool)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-structured)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/binary-tagged")
    (synopsis "Tagged binary serialisation.")
    (description
     "Structurally tag binary serialisation stream.

Say you have:

Say you have a data type

@@
data Record = Record
\\  @{ _recordFields  :: HM.HashMap Text (Integer, ByteString)
\\  , _recordEnabled :: Bool
\\  @}
\\  deriving (Eq, Show, Generic)

instance @@Binary@@ Record
instance 'Structured' Record
@@

then you can serialise and deserialise @@Record@@ values with a structure tag by simply

@@
'structuredEncode' record :: LBS.ByteString
'structuredDecode' lbs    :: IO Record
@@

If structure of @@Record@@ changes in between, deserialisation will fail early.

The overhead is next to non-observable.

@@
benchmarking encode/Binary
time                 352.8 μs   (349.5 μs .. 355.9 μs)

benchmarking encode/Tagged
time                 350.8 μs   (349.0 μs .. 353.1 μs)

benchmarking decode/Binary
time                 346.8 μs   (344.7 μs .. 349.9 μs)

benchmarking decode/Tagged
time                 353.8 μs   (352.0 μs .. 355.8 μs)
@@")
    (license license:bsd-3)))

haskell-9.2-binary-tagged

(define-public haskell-9.2-bitvec
  (package
    (name "haskell-9.2-bitvec")
    (version "1.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bitvec/bitvec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0l85lshzh5c0s59pbbh76vg65bzz7x4y1a9gdvj4dkqz1bsklk0w"))))
    (properties `((upstream-name . "bitvec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-libgmp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/bitvec")
    (synopsis "Space-efficient bit vectors")
    (description
     "A newtype over 'Bool' with a better 'Vector' instance: 8x less memory, up to 1000x faster.

The <https://hackage.haskell.org/package/vector vector>
package represents unboxed arrays of 'Bool's
spending 1 byte (8 bits) per boolean.
This library provides a newtype wrapper 'Bit' and a custom instance
of an unboxed 'Vector', which packs bits densely,
achieving an __8x smaller memory footprint.__
The performance stays mostly the same;
the most significant degradation happens for random writes
(up to 10% slower).
On the other hand, for certain bulk bit operations
'Vector' 'Bit' is up to 1000x faster than 'Vector' 'Bool'.

=== Thread safety

* \"Data.Bit\" is faster, but writes and flips are thread-unsafe.
This is because naive updates are not atomic:
they read the whole word from memory,
then modify a bit, then write the whole word back.
* \"Data.Bit.ThreadSafe\" is slower (up to 20%),
but writes and flips are thread-safe.

=== Similar packages

* <https://hackage.haskell.org/package/bv bv> and
<https://hackage.haskell.org/package/bv-little bv-little>
do not offer mutable vectors.

* <https://hackage.haskell.org/package/array array>
is memory-efficient for 'Bool', but lacks
a handy 'Vector' interface and is not thread-safe.")
    (license license:bsd-3)))

haskell-9.2-bitvec

(define-public haskell-9.2-boundingboxes
  (package
    (name "haskell-9.2-boundingboxes")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/boundingboxes")
    (synopsis "A generic boundingbox for an arbitrary vector")
    (description "")
    (license license:bsd-3)))

haskell-9.2-boundingboxes

(define-public haskell-9.2-bower-json
  (package
    (name "haskell-9.2-bower-json")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bower-json/bower-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lnhcgivg38nicncb6czkkk3z2mk3jbifv1b4r51lk3p9blzydfl"))))
    (properties `((upstream-name . "bower-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-better-errors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hdgarrood/bower-json")
    (synopsis "Read bower.json from Haskell")
    (description
     "Bower is a package manager for the web (see <http://bower.io>).
This package provides a data type and ToJSON/FromJSON instances for Bower's
package manifest file, bower.json.")
    (license license:expat)))

haskell-9.2-bower-json

(define-public haskell-9.2-breakpoint
  (package
    (name "haskell-9.2-breakpoint")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/breakpoint/breakpoint-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hk9mjijxvqjzcfqllzi53rmxiyggbxash05jbb742wrq832h2xw"))))
    (properties `((upstream-name . "breakpoint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskeline)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pretty-simple)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/breakpoint")
    (synopsis "Set breakpoints using a GHC plugin")
    (description
     "A plugin that allows you to set breakpoints for debugging purposes.

See the [README](https://github.com/aaronallen8455/breakpoint#breakpoint) for details.")
    (license license:expat)))

haskell-9.2-breakpoint

(define-public haskell-9.2-bson-lens
  (package
    (name "haskell-9.2-bson-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008) haskell-9.2-bson)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jb55/bson-lens")
    (synopsis "BSON lenses")
    (description "Lenses for Data.Bson")
    (license license:expat)))

haskell-9.2-bson-lens

(define-public haskell-9.2-cabal-file
  (package
    (name "haskell-9.2-cabal-file")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-file/cabal-file-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05sah1w0nbvirnvj520ijyz2jrdbp5cciryhziyrgaimfvi9kbnb"))))
    (properties `((upstream-name . "cabal-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hackage-security)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-simple-cabal)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-simple-cmd)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/cabal-file")
    (synopsis "Cabal file access")
    (description
     "cabal-file is a small library on top of the 'hackage-security' library
for accessing the local Hackage repo index cache, and a command-line tool
'cblfile' which can diff .cabal versions, list package versions,
save a cabal file, and show metadata from the index. It uses
simple-cabal to display package dependency lists.")
    (license license:bsd-3)))

haskell-9.2-cabal-file

(define-public haskell-9.2-cabal-flatpak
  (package
    (name "haskell-9.2-cabal-flatpak")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-flatpak/cabal-flatpak-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k0fzhyvlcq1l09fnf3f3wig4g9l61wsm1dmsjd3nwsgh52xb37v"))))
    (properties `((upstream-name . "cabal-flatpak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "04fk0hdbdgfw5md19kjgs3mrmkcwhn4qm2qd7fav6nph0rdkwr10")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-cabal-plan)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pathtype)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-shell-utility)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-tar)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hub.darcs.net/thielema/cabal-flatpak/")
    (synopsis "Generate a FlatPak manifest from a Cabal package description")
    (description
     "Generate a FlatPak manifest from a Cabal package description.

Inspired by Richard Szibele's stackpak:
<https://gitlab.com/rszibele/stackpak#readme>

See also David Lettier's post on Flatpak for Haskell:
<https://medium.com/@@lettier/how-to-flatpak-a-haskell-app-into-flathub-86ef6d69e94d>")
    (license license:bsd-3)))

haskell-9.2-cabal-flatpak

(define-public haskell-9.2-cabal-install
  (package
    (name "haskell-9.2-cabal-install")
    (version "3.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-install/cabal-install-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dihpm4h3xh13vnpvwflnb7v614qdvljycc6ffg5cvhwbwfrxyfw"))))
    (properties `((upstream-name . "cabal-install") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-native-dns" "-f-debug-expensive-assertions" "-f-debug-conflict-sets" "-f-debug-tracetree" "-flukko")
       #:cabal-revision
       ("2" "1kpgyfl5njxp4c8ax5ziag1bhqvph3h0pn660v3vpxalz8d1j6xv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-HTTP)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-echo)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-edit-distance)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hackage-security)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lukko)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-regex-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-posix)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-tar)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.haskell.org/cabal/")
    (synopsis "The command-line interface for Cabal and Hackage.")
    (description
     "The \\'cabal\\' command-line program simplifies the process of managing
Haskell software by automating the fetching, configuration, compilation
and installation of Haskell libraries and programs.")
    (license license:bsd-3)))

haskell-9.2-cabal-install

(define-public haskell-9.2-cacophony
  (package
    (name "haskell-9.2-cacophony")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-coroutine)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/centromere/cacophony#readme")
    (synopsis "A library implementing the Noise protocol.")
    (description
     "This library implements the <https://noiseprotocol.org Noise> protocol.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-cacophony

(define-public haskell-9.2-capability
  (package
    (name "haskell-9.2-capability")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-generic-lens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-mutable-containers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tweag/capability")
    (synopsis "Extensional capabilities and deriving combinators")
    (description
     "Standard capability type classes for extensional effects and combinators
to derive capability instances with little boilerplate.")
    (license license:bsd-3)))

haskell-9.2-capability

(define-public haskell-9.2-cborg-json
  (package
    (name "haskell-9.2-cborg-json")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cborg-json/cborg-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m3w0yyp6xb07fx04g5c52pb0b46vpkgpi32w1c8bz867x2p7hsq"))))
    (properties `((upstream-name . "cborg-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zzn2p6yl9mqw7agm5w7iiz105078gv66vxr8bqazilgssqk5wyg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-cborg)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A library for encoding JSON as CBOR")
    (description "This package implements the bijection between JSON and
CBOR defined in the CBOR specification, RFC 7049.")
    (license license:bsd-3)))

haskell-9.2-cborg-json

(define-public haskell-9.2-columnar
  (package
    (name "haskell-9.2-columnar")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-enum-text)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-fmt)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-possibly)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdornan/columnar#readme")
    (synopsis "A CSV toolkit based on cassava and enum-text")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/columnar#readme>")
    (license license:bsd-3)))

haskell-9.2-columnar

(define-public haskell-9.2-commonmark-pandoc
  (package
    (name "haskell-9.2-commonmark-pandoc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-commonmark)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-commonmark-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pandoc-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Bridge between commonmark and pandoc AST.")
    (description "This library provides typeclasses for rendering
commonmark to Pandoc types.")
    (license license:bsd-3)))

haskell-9.2-commonmark-pandoc

(define-public haskell-9.2-compiler-warnings
  (package
    (name "haskell-9.2-compiler-warnings")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compiler-warnings/compiler-warnings-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qswbwi2i8xqv61gjnx77w3j53ybyblsdyk974bb2qad3dzcbx4c"))))
    (properties `((upstream-name . "compiler-warnings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yi-editor/compiler-warnings#readme")
    (synopsis "Parser for common compiler warning formats")
    (description "")
    (license license:bsd-2)))

haskell-9.2-compiler-warnings

(define-public haskell-9.2-componentm-devel
  (package
    (name "haskell-9.2-componentm-devel")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/componentm-devel/componentm-devel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02jvv2f5akl47jg66xwcgj0s5wif0wckp2d0y6x4imr6kcy31mrd"))))
    (properties `((upstream-name . "componentm-devel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-componentm)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-foreign-store)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-teardown)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/roman/Haskell-componentm#readme")
    (synopsis "Easy REPL driven development using ComponentM")
    (description
     "This library enhances the componentm with auto-reloading
capabilites for your application, allowing to ensure cleanup
of resources when doing REPL driven development, or when using
ghcid")
    (license license:expat)))

haskell-9.2-componentm-devel

(define-public haskell-9.2-composable-associations
  (package
    (name "haskell-9.2-composable-associations")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
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

haskell-9.2-composable-associations

(define-public haskell-9.2-concise
  (package
    (name "haskell-9.2-concise")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/frasertweedale/hs-concise")
    (synopsis "Utilities for Control.Lens.Cons")
    (description
     "concise provides a handful of functions to extend what you can
do with Control.Lens.Cons.")
    (license license:bsd-3)))

haskell-9.2-concise

(define-public haskell-9.2-conduit-aeson
  (package
    (name "haskell-9.2-conduit-aeson")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lehins/conduit-aeson")
    (synopsis "Short description")
    (description
     "Please see the README on GitHub at <https://github.com/lehins/conduit-aeson#readme>")
    (license license:bsd-3)))

haskell-9.2-conduit-aeson

(define-public haskell-9.2-conduit-zstd
  (package
    (name "haskell-9.2-conduit-zstd")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-zstd)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/luispedro/conduit-zstd#readme")
    (synopsis "Conduit-based ZStd Compression")
    (description
     "Zstandard compression packaged as a conduit. This is a very thin wrapper around the [official hs-zstd interface](https://github.com/facebookexperimental/hs-zstd/)")
    (license license:expat)))

haskell-9.2-conduit-zstd

(define-public haskell-9.2-construct
  (package
    (name "haskell-9.2-construct")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-incremental-parser)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-input-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-rank2classes)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/construct")
    (synopsis
     "Haskell version of the Construct library for easy specification of file formats")
    (description
     "A Haskell version of the <https://construct.readthedocs.io/en/latest/intro.html Construct> library for Python. A
succinct file format specification provides both a parser and the serializer for the format.")
    (license license:bsd-3)))

haskell-9.2-construct

(define-public haskell-9.2-contiguous
  (package
    (name "haskell-9.2-contiguous")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contiguous/contiguous-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vqzv5xr6dkvw0789rz3z39b7ldm9xrk2sv8c9k2fk14yxl7qibx"))))
    (properties `((upstream-name . "contiguous") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1q1yihx7caa639mfmk0a2n881qrj3g3gm9mb6m23bv5xkkbklrmp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-run-st)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/contiguous")
    (synopsis "Unified interface for primitive arrays")
    (description "This package provides a typeclass `Contiguous` that offers a
unified interface to working with `Array`, `SmallArray`,
`PrimArray`, and `UnliftedArray`.")
    (license license:bsd-3)))

haskell-9.2-contiguous

(define-public haskell-9.2-covariance
  (package
    (name "haskell-9.2-covariance")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/covariance/covariance-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qidlpg3g76vw390bdily0hdnzx2xlnb21ai11xzffwqywg5xpzh"))))
    (properties `((upstream-name . "covariance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-glasso)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hmatrix)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-statistics)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/covariance")
    (synopsis
     "Well-conditioned estimation of large-dimensional covariance matrices")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/covariance#readme>")
    (license license:gpl3+)))

haskell-9.2-covariance

(define-public haskell-9.2-criterion
  (package
    (name "haskell-9.2-criterion")
    (version "1.5.13.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion/criterion-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19vrlldgw2kz5426j0iwsvvhxkbnrnan859vr6ryqh13nrg59a72"))))
    (properties `((upstream-name . "criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast" "-f-embed-data-files")
       #:cabal-revision
       ("2" "09s70kqkp1j78idaqrpnz8v870vy6xyclnpz9g4x70cr4r67lqkd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-binary-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-code-page)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-criterion-measurement)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-js-chart)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-microstache)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-statistics)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-criterion

(define-public haskell-9.2-cryptonite-conduit
  (package
    (name "haskell-9.2-cryptonite-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
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

haskell-9.2-cryptonite-conduit

(define-public haskell-9.2-csv-conduit
  (package
    (name "haskell-9.2-csv-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-csv-conduit

(define-public haskell-9.2-cursor-gen
  (package
    (name "haskell-9.2-cursor-gen")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-gen/cursor-gen-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a591kx30d8zmwl1rp78scjgbakkslq45wx6f558wmpph33gnw5s"))))
    (properties `((upstream-name . "cursor-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-cursor)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-hspec-optics)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)))
    (home-page "https://github.com/NorfairKing/cursor")
    (synopsis "Generators for Purely Functional Cursors")
    (description
     "Generators for Purely Functional Cursors for common data structures")
    (license license:expat)))

haskell-9.2-cursor-gen

(define-public haskell-9.2-data-msgpack
  (package
    (name "haskell-9.2-data-msgpack")
    (version "0.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-msgpack/data-msgpack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x2qgipyjb5h5n1bx429rwdaamw4xdm7gwj08vlw6n6sycqwnq04"))))
    (properties `((upstream-name . "data-msgpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-data-msgpack-types)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-groom)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-9.2-data-msgpack

(define-public haskell-9.2-data-sketches
  (package
    (name "haskell-9.2-data-sketches")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-sketches/data-sketches-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a3157ch2l2vn6s1b6mcfjw3lnvp45vm3dykzbjmfglhz7x9dxbz"))))
    (properties `((upstream-name . "data-sketches") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-data-sketches-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-statistics)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/iand675/datasketches-haskell#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/iand675/datasketches-haskell#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-data-sketches

(define-public haskell-9.2-dataurl
  (package
    (name "haskell-9.2-dataurl")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dataurl/dataurl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1chgcq2vc5kya8zmi0ir4589fph2rdssw1ivnkq209g7vd42prxi"))))
    (properties `((upstream-name . "dataurl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-HTF)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/dataurl#readme")
    (synopsis "Handle data-urls")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-dataurl

(define-public haskell-9.2-dbcleaner
  (package
    (name "haskell-9.2-dbcleaner")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dbcleaner/dbcleaner-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d8ghd4i7qq3zp1vmxvsx7s66ip3qqfzacfnb2n4i3cdd7hv05q8"))))
    (properties `((upstream-name . "dbcleaner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/dbcleaner")
    (synopsis "Clean database tables automatically around hspec tests")
    (description "A simple database cleaner library for testing that provides
different cleanup strategies.")
    (license license:expat)))

haskell-9.2-dbcleaner

(define-public haskell-9.2-debian
  (package
    (name "haskell-9.2-debian")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-ListLike)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-SHA)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-bz2)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hostname)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-process-extras)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-pureMD5)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-regex-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-th-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/clinty/debian-haskell")
    (synopsis "Modules for working with the Debian package system")
    (description
     "This library includes modules covering some basic data types defined by
the Debian policy manual - version numbers, control file syntax, etc.")
    (license license:bsd-3)))

haskell-9.2-debian

(define-public haskell-9.2-dependent-sum
  (package
    (name "haskell-9.2-dependent-sum")
    (version "0.7.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dependent-sum/dependent-sum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1frw5965v8i6xqdgs95gg8asgdqcqnmfahz0pmbwiaw5ybn62rc2"))))
    (properties `((upstream-name . "dependent-sum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-constraints-extras)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-some)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/obsidiansystems/dependent-sum")
    (synopsis "Dependent sum type")
    (description "A dependent sum is a generalization of a
particular way of thinking about the @@Either@@
type.  @@Either a b@@ can be thought of as a
2-tuple @@(tag, value)@@, where the value of the
tag determines the type of the value.  In
particular, either @@tag = Left@@ and @@value :: a@@
or @@tag = Right@@ and @@value :: b@@.

This package allows you to define your own
dependent sum types by using your own \\\"tag\\\"
types.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-dependent-sum

(define-public haskell-9.2-drifter-postgresql
  (package
    (name "haskell-9.2-drifter-postgresql")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/drifter-postgresql/drifter-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p7ddvfmjhf22psga0phhw2m0sdhymsc5k13jrwrdawsxivh2clk"))))
    (properties `((upstream-name . "drifter-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-drifter)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "http://github.com/michaelxavier/drifter-postgresql")
    (synopsis "PostgreSQL support for the drifter schema migration tool")
    (description "Support for postgresql-simple Query migrations as well as
arbitrary Haskell IO functions. Be sure to check the
examples dir for a usage example.")
    (license license:expat)))

haskell-9.2-drifter-postgresql

(define-public haskell-9.2-editor-open
  (package
    (name "haskell-9.2-editor-open")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
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

haskell-9.2-editor-open

(define-public haskell-9.2-elynx-seq
  (package
    (name "haskell-9.2-elynx-seq")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-seq/elynx-seq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08wcikxgzl0j60xzffih5fd3mjbjisf17gr5aa1njjhs0vh6y8mg"))))
    (properties `((upstream-name . "elynx-seq") (hidden? . #f)))
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
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-elynx-tools)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-matrices)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-vector-th-unbox)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle molecular sequences")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.2-elynx-seq

(define-public haskell-9.2-elynx-tree
  (package
    (name "haskell-9.2-elynx-tree")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-tree/elynx-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jcqz49ml20cg0mwkpqjci44fkbcjhxf6dhhl8y68yczlz0778zs"))))
    (properties `((upstream-name . "elynx-tree") (hidden? . #f)))
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
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-elynx-nexus)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-elynx-tools)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-statistics)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle phylogenetic trees")
    (description
     "Examine, compare, and simulate phylogenetic trees in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.2-elynx-tree

(define-public haskell-9.2-ersatz
  (package
    (name "haskell-9.2-ersatz")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-streams)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
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

haskell-9.2-ersatz

(define-public haskell-9.2-essence-of-live-coding-gloss
  (package
    (name "haskell-9.2-essence-of-live-coding-gloss")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-gloss/essence-of-live-coding-gloss-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iv5wgzfxy1k80dh6c6hrzh4jcjy3ak4l3l004jm3wpfm7fm0lmx"))))
    (properties `((upstream-name . "essence-of-live-coding-gloss")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-foreign-store)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-gloss)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
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

haskell-9.2-essence-of-live-coding-gloss

(define-public haskell-9.2-essence-of-live-coding-pulse
  (package
    (name "haskell-9.2-essence-of-live-coding-pulse")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-pulse/essence-of-live-coding-pulse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bmnc7901zgak223kfm29md0w5fd9lfv4dxc8c27cdcrdqnqfc2p"))))
    (properties `((upstream-name . "essence-of-live-coding-pulse")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-foreign-store)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-pulse-simple)))
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

haskell-9.2-essence-of-live-coding-pulse

(define-public haskell-9.2-essence-of-live-coding-quickcheck
  (package
    (name "haskell-9.2-essence-of-live-coding-quickcheck")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-quickcheck/essence-of-live-coding-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jn5bz7xq8jmlkhrrbn5mj3ywh8288gpx43n8fkjzmzdk233kbvp"))))
    (properties `((upstream-name . "essence-of-live-coding-quickcheck")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-boltzmann-samplers)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)))
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

haskell-9.2-essence-of-live-coding-quickcheck

(define-public haskell-9.2-extended-reals
  (package
    (name "haskell-9.2-extended-reals")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extended-reals/extended-reals-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19df7zlm8kisihmnpg3ni5qg4p0vkilsny0ngch0b8b0pr56cb0c"))))
    (properties `((upstream-name . "extended-reals") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07qsnn05q9n2l4jh7agql44l2z7rqnwdcp9bssri4chs0jvk15rg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/msakai/extended-reals/")
    (synopsis "Extension of real numbers with positive/negative infinities")
    (description
     "Extension of real numbers with positive/negative infinities (±∞).
It is useful for describing various limiting behaviors in mathematics.")
    (license license:bsd-3)))

haskell-9.2-extended-reals

(define-public haskell-9.2-extensible
  (package
    (name "haskell-9.2-extensible")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extensible/extensible-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06zmc71r4cqglkv3av38djbkakvw9zxc3901xi2h65fwxn4npvnc"))))
    (properties `((upstream-name . "extensible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-barbies" "-fcassava" "-fislabel")
       #:cabal-revision
       ("1" "1k8z4dnwkjisba6w5qjxyxvh7ibp6nvl82d6l8apjh7hriapwfx9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-StateVar)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-incremental)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-membership)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/extensible")
    (synopsis "Extensible, efficient, optics-friendly data types and effects")
    (description
     "This package provides a powerful framework to combine and manipulate various types of structures.

See also <https://www.schoolofhaskell.com/user/fumieval/extensible School of Haskell> for tutorials.")
    (license license:bsd-3)))

haskell-9.2-extensible

(define-public haskell-9.2-fasta
  (package
    (name "haskell-9.2-fasta")
    (version "0.10.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fasta/fasta-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1glp326k079iab1ifj58fnk6yz9iyhjq23q1ar6ykpi9a3yhsxib"))))
    (properties `((upstream-name . "fasta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pipes-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pipes-group)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pipes-text)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/GregorySchwartz/fasta")
    (synopsis "A simple, mindless parser for fasta files.")
    (description
     "The fasta type specifically split by String, Text, Lazy Text, ByteString, and Lazy ByteString for simplicity and ease of use, although lacking many features of other parsers. Mainly for use with bioinformatics applications which are very general and need no conversion overhead.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-fasta

(define-public haskell-9.2-focuslist
  (package
    (name "haskell-9.2-focuslist")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/focuslist")
    (synopsis "Lists with a focused element")
    (description
     "Please see <https://github.com/cdepillabout/focuslist#readme README.md>.")
    (license license:bsd-3)))

haskell-9.2-focuslist

(define-public haskell-9.2-folds
  (package
    (name "haskell-9.2-folds")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-data-reify)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pointed)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/folds")
    (synopsis "Beautiful Folding")
    (description
     "This package is a playground full of comonadic folds.

This style of fold is documented in <https://www.schoolofhaskell.com/user/edwardk/cellular-automata/part-2 \"Cellular Automata, Part II: PNGs and Moore\">

This package can be seen as what happens if you chase Max Rabkin's <http://squing.blogspot.com/2008/11/beautiful-folding.html \"Beautiful Folding\"> to its logical conclusion.

More information on this approach can be found in the <http://conal.net/blog/posts/another-lovely-example-of-type-class-morphisms \"Another lovely example of type class morphisms\"> and <http://conal.net/blog/posts/more-beautiful-fold-zipping \"More beautiful fold zipping\"> posts by Conal Elliott, as well as in Gabriel Gonzales' <http://www.haskellforall.com/2013/08/composable-streaming-folds.html \"Composable Streaming Folds\">")
    (license license:bsd-3)))

haskell-9.2-folds

(define-public haskell-9.2-fortran-src
  (package
    (name "haskell-9.2-fortran-src")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fortran-src/fortran-src-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02n9s5an0z39gx8ks9pr3vrj6h683yra2djwi2m62rl76yw9nsmw"))))
    (properties `((upstream-name . "fortran-src") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-GenericPretty)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fgl)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-singletons)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-singletons-base)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-singletons-th)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-uniplate)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/camfort/fortran-src#readme")
    (synopsis
     "Parsers and analyses for Fortran standards 66, 77, 90, 95 and 2003 (partial).")
    (description
     "Provides lexing, parsing, and basic analyses of Fortran code covering standards: FORTRAN 66, FORTRAN 77, Fortran 90, Fortran 95, Fortran 2003 (partial) and some legacy extensions. Includes data flow and basic block analysis, a renamer, and type analysis. For example usage, see the @@<https://hackage.haskell.org/package/camfort CamFort>@@ project, which uses fortran-src as its front end.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-fortran-src

(define-public haskell-9.2-fuzzy-dates
  (package
    (name "haskell-9.2-fuzzy-dates")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ReedOei/fuzzy-dates#readme")
    (synopsis "Libary for parsing dates in strings in varied formats.")
    (description
     "Please see the README on GitHub at <https://github.com/ReedOei/fuzzy-dates#readme>")
    (license license:bsd-3)))

haskell-9.2-fuzzy-dates

(define-public haskell-9.2-generics-sop-lens
  (package
    (name "haskell-9.2-generics-sop-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-generics-sop)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/generics-sop-lens#readme")
    (synopsis "Lenses for types in generics-sop")
    (description "Lenses for types in generics-sop package")
    (license license:bsd-3)))

haskell-9.2-generics-sop-lens

(define-public haskell-9.2-genvalidity-aeson
  (package
    (name "haskell-9.2-genvalidity-aeson")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-aeson/genvalidity-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j5sms6f3ivxn981gzqsyhks2q2fws8xdbnnffb209dr0afg00b1"))))
    (properties `((upstream-name . "genvalidity-aeson") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-vector)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-validity-aeson)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for aeson")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-aeson

(define-public haskell-9.2-genvalidity-case-insensitive
  (package
    (name "haskell-9.2-genvalidity-case-insensitive")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-case-insensitive/genvalidity-case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a8ajycxzmsyip47m5yvzzr8l74awbycynyqhwpmkbjk5y56mqj0"))))
    (properties `((upstream-name . "genvalidity-case-insensitive")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-validity-case-insensitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for case-insensitive")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-case-insensitive

(define-public haskell-9.2-github
  (package
    (name "haskell-9.2-github")
    (version "0.28.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/github/github-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16ahq2ng52ypkkgqbbmizr486px3dh709hw3jdn7jzglgvn20712"))))
    (properties `((upstream-name . "github") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-openssl")
       #:cabal-revision
       ("1" "1irbqis6iv62nqc75fy87mv1lahrnybq1j8mal15n129sxyyvz56")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-binary-instances)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-deepseq-generics)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-link-header)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-iso8601-time)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-github/github")
    (synopsis "Access to the GitHub API, v3.")
    (description
     "The GitHub API provides programmatic access to the full
GitHub Web site, from Issues to Gists to repos down to the underlying git data
like references and trees. This library wraps all of that, exposing a basic but
Haskell-friendly set of functions and data structures.

For supported endpoints see \"GitHub\" module.

> import qualified GitHub as GH
>
> main :: IO ()
> main = do
>     possibleUser <- GH.github' GH.userInfoForR \"phadej\"
>     print possibleUser

For more of an overview please see the README: <https://github.com/haskell-github/github/blob/master/README.md>")
    (license license:bsd-3)))

haskell-9.2-github

(define-public haskell-9.2-github-release
  (package
    (name "haskell-9.2-github-release")
    (version "2.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-release/github-release-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xyh4nkrclpvy5i9v0yqlbzm6aq5gl4p3sairdi1abnyzn3ij04h"))))
    (properties `((upstream-name . "github-release") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-burrito)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-optparse-generic)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/github-release")
    (synopsis "Upload files to GitHub releases.")
    (description "GitHub Release uploads files to GitHub releases.")
    (license license:expat)))

haskell-9.2-github-release

(define-public haskell-9.2-github-rest
  (package
    (name "haskell-9.2-github-rest")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-rest/github-rest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "139ysq1m1ndy6z1znfd1np25ynxankkfm6xmwabhdr7yiqzi2v1b"))))
    (properties `((upstream-name . "github-rest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0390zxa270d8x8a0imd71z72l6hxnn1ip6jjgrrvrs3zj20c7adp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-jwt)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/LeapYear/github-rest#readme")
    (synopsis "Query the GitHub REST API programmatically")
    (description
     "Query the GitHub REST API programmatically, which can provide a more
flexible and clear interface than if all of the endpoints and their types
were defined as Haskell values.")
    (license license:bsd-3)))

haskell-9.2-github-rest

(define-public haskell-9.2-goldplate
  (package
    (name "haskell-9.2-goldplate")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/goldplate/goldplate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f2n981676ykrv08fgdj87mj5r4841a18ywvgpc2hgapsgwbgma1"))))
    (properties `((upstream-name . "goldplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0h1ayys29md2nbiqshdrhr8kz06dikiwkb4ikcg3wfzb4k1lpzvl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fugue/goldplate")
    (synopsis "A lightweight golden test runner")
    (description
     "Language-agnostic golden test runner for command-line applications.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-goldplate

(define-public haskell-9.2-graph-core
  (package
    (name "haskell-9.2-graph-core")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graph-core/graph-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0m7820dwasix5x6ni6gphbqwswxm7qv9xxw9qgl7ifzb82m0p3rp"))))
    (properties `((upstream-name . "graph-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-HTF)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/factisresearch/graph-core")
    (synopsis "Fast, memory efficient and persistent graph implementation")
    (description
     "A small package providing a powerful and easy to use Haskell graph implementation.")
    (license license:expat)))

haskell-9.2-graph-core

(define-public haskell-9.2-grouped-list
  (package
    (name "haskell-9.2-grouped-list")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pointed)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
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

haskell-9.2-grouped-list

(define-public haskell-9.2-hamlet
  (package
    (name "haskell-9.2-hamlet")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hamlet/hamlet-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rla3ap3malk8j6mh07fr2aqvbscpy743wrfq3skgjv3j4jlpjfi"))))
    (properties `((upstream-name . "hamlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.yesodweb.com/book/shakespearean-templates")
    (synopsis
     "Haml-like template files that are compile-time checked (deprecated)")
    (description
     "Hamlet gives you a type-safe tool for generating HTML code. It works via Quasi-Quoting, and generating extremely efficient output code. The syntax is white-space sensitive, and it helps you avoid cross-site scripting issues and 404 errors. Please see the documentation at <http://www.yesodweb.com/book/shakespearean-templates> for more details.

Here is a quick overview of hamlet html. Due to haddock escaping issues, we can't properly show variable insertion, but we are still going to show some conditionals. Please see <http://www.yesodweb.com/book/shakespearean-templates> for a thorough description

> !!!
> <html>
>     <head>
>         <title>Hamlet Demo
>     <body>
>         <h1>Information on John Doe
>         <h2>
>             $if isMarried person
>                 Married
>             $else
>                 Not married")
    (license license:expat)))

haskell-9.2-hamlet

(define-public haskell-9.2-happy-meta
  (package
    (name "haskell-9.2-happy-meta")
    (version "0.2.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happy-meta/happy-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vgv5fx1fya7wfh3zwdgy0hm0lyzp171gnpp6ymfd6kqmqkl3293"))))
    (properties `((upstream-name . "happy-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1p50xyx6hl0iyqmqxacisfmpq702rm797fjhfaxjjw6733k5zmrc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/happy-meta")
    (synopsis "Quasi-quoter for Happy parsers")
    (description
     "A Template-Haskell based version of the Happy parser generator. Used to generate parsers for BNFC-meta, currently this is the only use known to be working.")
    (license license:bsd-3)))

haskell-9.2-happy-meta

(define-public haskell-9.2-hasty-hamiltonian
  (package
    (name "haskell-9.2-hasty-hamiltonian")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-ad)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-mcmc-types)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-mwc-probability)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
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

haskell-9.2-hasty-hamiltonian

(define-public haskell-9.2-haxr
  (package
    (name "haskell-9.2-haxr")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-HaXml)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-streams)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mtl-compat)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-old-time)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.haskell.org/haskellwiki/HaXR")
    (synopsis "XML-RPC client and server library.")
    (description "HaXR is a library for writing XML-RPC
client and server applications in Haskell.")
    (license license:bsd-3)))

haskell-9.2-haxr

(define-public haskell-9.2-here
  (package
    (name "haskell-9.2-here")
    (version "1.2.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/here/here-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "001wfyvigl2xswqysnpignkl124hybf833875mkcsn8yp8krqvs0"))))
    (properties `((upstream-name . "here") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tmhedberg/here")
    (synopsis "Here docs & interpolated strings via quasiquotation")
    (description "Here docs & interpolated strings via quasiquotation")
    (license license:bsd-3)))

haskell-9.2-here

(define-public haskell-9.2-heterocephalus
  (package
    (name "haskell-9.2-heterocephalus")
    (version "1.0.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/heterocephalus/heterocephalus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dxvmkrkhqfapbywr202s4182r3nqlciqvbixd5g7c851qwfvpj2"))))
    (properties `((upstream-name . "heterocephalus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-template-haskell-compat-v0208)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/arowM/heterocephalus#readme")
    (synopsis
     "A type-safe template engine for working with front end development tools")
    (description
     "Recent front end development tools and languages are growing fast and have
quite a complicated ecosystem. Few front end developers want to be forced
use Shakespeare templates. Instead, they would rather use @@node@@-friendly
engines such that @@pug@@, @@slim@@, and @@haml@@. However, in using these
template engines, we lose the compile-time variable interpolation and type
checking from Shakespeare.

Heterocephalus is intended for use with another feature rich template
engine and provides a way to interpolate server side variables into a
precompiled template file with @@forall@@, @@if@@, and @@case@@ statements.")
    (license license:expat)))

haskell-9.2-heterocephalus

(define-public haskell-9.2-hexml-lens
  (package
    (name "haskell-9.2-hexml-lens")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hexml-lens/hexml-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1z522r600b0jzz0fw612a78k296cmpnfddwd5dfg4d4bcqc1db6n"))))
    (properties `((upstream-name . "hexml-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-foundation)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hexml)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pepeiborra/hexml-lens#readme")
    (synopsis "Lenses for the hexml package")
    (description "Lenses for the hexml package")
    (license license:bsd-3)))

haskell-9.2-hexml-lens

(define-public haskell-9.2-horizontal-rule
  (package
    (name "haskell-9.2-horizontal-rule")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-HMock)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-terminal-size)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/hr-haskell#readme")
    (synopsis "horizontal rule for the terminal")
    (description
     "This package provides a utility for displaying a horizontal rule in a
terminal.  Please see the README on GitHub at
<https://github.com/ExtremaIS/hr-haskell#readme>.")
    (license license:expat)))

haskell-9.2-horizontal-rule

(define-public haskell-9.2-hslua-aeson
  (package
    (name "haskell-9.2-hslua-aeson")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-aeson/hslua-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0igmkay5bf3wg1n6rqm20kjv1xq36x552lgdvr1vlpwikgsiq8mb"))))
    (properties `((upstream-name . "hslua-aeson") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Allow aeson data types to be used with Lua.")
    (description "This package provides instances to push and receive any
datatype encodable as JSON to and from the Lua stack.")
    (license license:expat)))

haskell-9.2-hslua-aeson

(define-public haskell-9.2-hslua-classes
  (package
    (name "haskell-9.2-hslua-classes")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-classes/hslua-classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z7ym3whcq16k2cm9jf7sf0vwmp52iv1f0iicvv4jk6xks9d6ia1"))))
    (properties `((upstream-name . "hslua-classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Type classes for HsLua")
    (description "Type classes for convenient marshalling and calling of
Lua functions.")
    (license license:expat)))

haskell-9.2-hslua-classes

(define-public haskell-9.2-hslua-objectorientation
  (package
    (name "haskell-9.2-hslua-objectorientation")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-objectorientation/hslua-objectorientation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13011yzz6lrgl2gasn9w5ggdqgrdz49hhqk1h259qd9gq29jnq3y"))))
    (properties `((upstream-name . "hslua-objectorientation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Object orientation tools for HsLua")
    (description "Expose Haskell objects to Lua with an object oriented
interface.")
    (license license:expat)))

haskell-9.2-hslua-objectorientation

(define-public haskell-9.2-hsx2hs
  (package
    (name "haskell-9.2-hsx2hs")
    (version "0.14.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsx2hs/hsx2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04anp9jfr6y0f4dwzn6k051jkbvmnkdayjg980y2pjj6jqqxr00x"))))
    (properties `((upstream-name . "hsx2hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/seereason/hsx2hs")
    (synopsis
     "HSX (Haskell Source with XML) allows literal XML syntax in Haskell source code.")
    (description
     "HSX (Haskell Source with XML) allows literal XML syntax in Haskell source code.
The hsx2hs preprocessor translates .hsx source files into ordinary .hs files. Literal
XML syntax is translated into function calls for creating XML values of the appropriate
forms.
hsx2hs transforms literal XML syntax into a series of function calls. Any project
can make use of the syntax by providing definitions for those functions, and the
XML values produced will be of the types specified. This works for any types, since
hsx2hs doesn't make any assumptions, or inserts any information depending on types.
XMLGenerator defines a few typeclasses that together cover the functions injected by the
preprocessor. A project that uses these classes to provide the semantics for the injected
syntax will be able to use any functions written in terms of these, allowing better code
reusability than if each project defines its own semantics for the XML syntax. Also, the classes
makes it possible to use the literal syntax at different types within the same module.
Achieving that is not as simple as it may seem, but the XMLGenerator module provides all the
necessary machinery.")
    (license license:bsd-3)))

haskell-9.2-hsx2hs

(define-public haskell-9.2-http-client-restricted
  (package
    (name "haskell-9.2-http-client-restricted")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-restricted/http-client-restricted-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vfm9qc3zr0rmq2ddgyg13i67020cdk8xqhyzfc2zcn1km2p6r85"))))
    (properties `((upstream-name . "http-client-restricted") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/http-client-restricted")
    (synopsis "restricting the servers that http-client will use")
    (description
     "Addition to the http-client and http-client-tls
libraries, that restricts the HTTP servers that can be used.

This is useful when a security policy needs to eg, prevent connections to
HTTP servers on localhost or a local network, or only allow connections
to a specific HTTP server.

It handles restricting redirects as well as the initial HTTP connection,
and it also guards against DNS poisoning attacks.")
    (license license:expat)))

haskell-9.2-http-client-restricted

(define-public haskell-9.2-hvega
  (package
    (name "haskell-9.2-hvega")
    (version "0.12.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hvega/hvega-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dmc8va82qzr9c7kn8w3nm70f3nb59gz3f6178j6iaph0acplyfh"))))
    (properties `((upstream-name . "hvega") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-tools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/DougBurke/hvega")
    (synopsis "Create Vega-Lite visualizations (version 4) in Haskell.")
    (description
     "This is based on the elm-vegalite package
(<http://package.elm-lang.org/packages/gicentre/elm-vegalite/latest>)
by Jo Wood of the giCentre at the City University of London.")
    (license license:bsd-3)))

haskell-9.2-hvega

(define-public haskell-9.2-hw-conduit
  (package
    (name "haskell-9.2-hw-conduit")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit/hw-conduit-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iv001vm0xlz9msw5f6bcr2a4fd7rhyd1zmk3axnh80g4m8lknzj"))))
    (properties `((upstream-name . "hw-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04vgiy5i3qwxspdxwb4nyw0snzqvsiqilwibb8zjv0nd51d9kpwk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-conduit#readme")
    (synopsis "Conduits for tokenizing streams.")
    (description "Conduits for tokenizing streams. Please see README.md")
    (license license:expat)))

haskell-9.2-hw-conduit

(define-public haskell-9.2-hw-conduit-merges
  (package
    (name "haskell-9.2-hw-conduit-merges")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-works/hw-conduit-merges#readme")
    (synopsis "Additional merges and joins for Conduit")
    (description
     "Additional merges and joins for Conduit. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-conduit-merges

(define-public haskell-9.2-hw-diagnostics
  (package
    (name "haskell-9.2-hw-diagnostics")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-diagnostics/hw-diagnostics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "111g54c5bhgjii6vbyb116bg3dxywa9l693r8xjjrxpamzvi0avj"))))
    (properties `((upstream-name . "hw-diagnostics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0mfixppzi2x528z9vl8m22rifksg3r8czbg5z6n4x0p1pav20im9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-diagnostics#readme")
    (synopsis "Diagnostics library")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-diagnostics

(define-public haskell-9.2-hw-string-parse
  (package
    (name "haskell-9.2-hw-string-parse")
    (version "0.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-string-parse/hw-string-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sg5s84pqyl93wm052ifrqv90cyc28awh4i6vcd8zbq746wdqz4k"))))
    (properties `((upstream-name . "hw-string-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0afarlf42yfsgbv4lwhl7hnrsxv6b5dilja1660fnxvw350ldiik")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-string-parse#readme")
    (synopsis "String parser")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-string-parse

(define-public haskell-9.2-hworker
  (package
    (name "haskell-9.2-hworker")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hworker/hworker-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "079z4ahnbwibhy15jm3ymfzbfxgwy7f2l1raq06sp47ip16wrjrl"))))
    (properties `((upstream-name . "hworker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0w2bpvfr68n2qipvr8gc5096dain3g2536m4n9kqx1fahf12mwy5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hedis)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/dbp/hworker")
    (synopsis "A reliable at-least-once job queue built on top of redis.")
    (description "See README.")
    (license license:isc)))

haskell-9.2-hworker

(define-public haskell-9.2-imagesize-conduit
  (package
    (name "haskell-9.2-imagesize-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/silkapp/imagesize-conduit")
    (synopsis "Determine the size of some common image formats.")
    (description
     "Currently supports PNG, GIF, and JPEG. This package provides a Sink that will consume the minimum number of bytes necessary to determine the image dimensions.")
    (license license:bsd-3)))

haskell-9.2-imagesize-conduit

(define-public haskell-9.2-influxdb
  (package
    (name "haskell-9.2-influxdb")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-optional-args)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/maoe/influxdb-haskell")
    (synopsis "InfluxDB client library for Haskell")
    (description "@@influxdb@@ is an InfluxDB client library for Haskell.

See \"Database.InfluxDB\" for a quick start guide.")
    (license license:bsd-3)))

haskell-9.2-influxdb

(define-public haskell-9.2-inliterate
  (package
    (name "haskell-9.2-inliterate")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-cheapskate)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-lucid-extras)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-plotlyhs)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/diffusionkinetics/open/inliterate")
    (synopsis "Interactive literate programming")
    (description
     "Evaluate markdown code blocks to show the results of running the code.")
    (license license:expat)))

haskell-9.2-inliterate

(define-public haskell-9.2-insert-ordered-containers
  (package
    (name "haskell-9.2-insert-ordered-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-optics-core)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-optics-extra)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/insert-ordered-containers#readme")
    (synopsis
     "Associative containers retaining insertion order for traversals.")
    (description
     "Associative containers retaining insertion order for traversals.

The implementation is based on `unordered-containers`.")
    (license license:bsd-3)))

haskell-9.2-insert-ordered-containers

(define-public haskell-9.2-interpolate
  (package
    (name "haskell-9.2-interpolate")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolate/interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03jrkj9c62w0c2awym8mhpsgpd0jffl50cqwfrm7bbdfhd8dsxi7"))))
    (properties `((upstream-name . "interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sol/interpolate#readme")
    (synopsis "String interpolation done right")
    (description "String interpolation done right")
    (license license:expat)))

haskell-9.2-interpolate

(define-public haskell-9.2-interpolatedstring-perl6
  (package
    (name "haskell-9.2-interpolatedstring-perl6")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolatedstring-perl6/interpolatedstring-perl6-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dvv9dsf5mr6y7aikd57c0qlh1lkbq3y37bvn3hy2g15cn5ix2ss"))))
    (properties `((upstream-name . "interpolatedstring-perl6") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/interpolatedstring-perl6")
    (synopsis "QuasiQuoter for Perl6-style multi-line interpolated strings")
    (description
     "QuasiQuoter for Perl6-style multi-line interpolated strings with \\\"q\\\", \\\"qq\\\" and \\\"qc\\\" support.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-interpolatedstring-perl6

(define-public haskell-9.2-ip6addr
  (package
    (name "haskell-9.2-ip6addr")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ip6addr/ip6addr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16dbvrsbg7l4z31faxm1pxps0plg89d4ny2mxsgwyq8r351irmwc"))))
    (properties `((upstream-name . "ip6addr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-IPv6Addr)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichelBoucey/ip6addr")
    (synopsis
     "Commandline tool to deal with IPv6 address text representations")
    (description
     "Commandline tool to validate, canonize and generate IPv6 address text representations")
    (license license:bsd-3)))

haskell-9.2-ip6addr

(define-public haskell-9.2-ipynb
  (package
    (name "haskell-9.2-ipynb")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ipynb/ipynb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1iwia4sxg40m4d290gys72wabqmkqx24ywsaranwzk2wx5s3sx4s"))))
    (properties `((upstream-name . "ipynb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fl9x5amq0g5dg57dcgc0g4ir0r1fdbx06aldsqdwzdc9zs97v6k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-microlens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ipynb")
    (synopsis "Data structure for working with Jupyter notebooks (ipynb).")
    (description "ipynb defines a data structure for representing Jupyter
notebooks, along with ToJSON and FromJSON instances
for conversion to and from JSON .ipynb files.")
    (license license:bsd-3)))

haskell-9.2-ipynb

(define-public haskell-9.2-jl
  (package
    (name "haskell-9.2-jl")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jl/jl-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "15vvn3swjpc5qmdng1fcd8m9nif4qnjmpmxc9hdw5cswzl055lkj"))))
    (properties `((upstream-name . "jl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-optparse-simple)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/chrisdone/jl#readme")
    (synopsis "Functional sed for JSON")
    (description
     "jl (\"JSON lambda\") is a tiny functional language for querying and manipulating JSON.")
    (license license:bsd-3)))

haskell-9.2-jl

(define-public haskell-9.2-jmacro
  (package
    (name "haskell-9.2-jmacro")
    (version "0.6.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jmacro/jmacro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17z39w888nrq0jfzi74z1wnswzmcyi2x6h2p2nnmhyjsgvpjkcxa"))))
    (properties `((upstream-name . "jmacro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-benchmarks")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parseargs)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-posix)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/jmacro")
    (synopsis
     "QuasiQuotation library for programmatic generation of Javascript code.")
    (description
     "Javascript syntax, functional syntax, hygienic names, compile-time guarantees of syntactic correctness, limited typechecking. Additional documentation available at <http://www.haskell.org/haskellwiki/Jmacro>")
    (license license:bsd-3)))

haskell-9.2-jmacro

(define-public haskell-9.2-language-c-quote
  (package
    (name "haskell-9.2-language-c-quote")
    (version "0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c-quote/language-c-quote-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02axz6498sg2rf24qds39n9gysc4lm3v354h2qyhrhadlfq8sf6d"))))
    (properties `((upstream-name . "language-c-quote") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ffull-haskell-antiquotes")
       #:cabal-revision
       ("1" "1vl92h4z294ycg87140qk7v40r7vz43n8anpd2w1jdnwd6w4f4m3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-alex)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-exception-mtl)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-exception-transformers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-happy)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mainland-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-srcloc)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mainland/language-c-quote")
    (synopsis "C/CUDA/OpenCL/Objective-C quasiquoting library.")
    (description
     "This package provides a general parser for the C language, including most GCC
extensions and some CUDA and OpenCL extensions as well as the entire Objective-C
language.")
    (license license:bsd-3)))

haskell-9.2-language-c-quote

(define-public haskell-9.2-language-nix
  (package
    (name "haskell-9.2-language-nix")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parsec-class)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/NixOS/cabal2nix/tree/master/language-nix#readme")
    (synopsis "Data types and functions to represent the Nix language")
    (description
     "Data types and useful functions to represent and manipulate the Nix
language.")
    (license license:bsd-3)))

haskell-9.2-language-nix

(define-public haskell-9.2-lens-action
  (package
    (name "haskell-9.2-lens-action")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/lens-action/")
    (synopsis "Monadic Getters and Folds")
    (description "This package contains combinators and types for working with
monadic getters and folds as split off from the original
lens package.")
    (license license:bsd-3)))

haskell-9.2-lens-action

(define-public haskell-9.2-lens-aeson
  (package
    (name "haskell-9.2-lens-aeson")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-aeson/lens-aeson-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wwmg0zv2561dmmbil829dw6qmdl02kfs690iy549nbznj2kil8l"))))
    (properties `((upstream-name . "lens-aeson") (hidden? . #f)))
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
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/lens/lens-aeson/")
    (synopsis "Law-abiding lenses for aeson")
    (description "Law-abiding lenses for aeson.")
    (license license:expat)))

haskell-9.2-lens-aeson

(define-public haskell-9.2-lens-csv
  (package
    (name "haskell-9.2-lens-csv")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChrisPenner/lens-csv#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-csv#readme>")
    (license license:bsd-3)))

haskell-9.2-lens-csv

(define-public haskell-9.2-lens-misc
  (package
    (name "haskell-9.2-lens-misc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/louispan/lens-misc#readme")
    (synopsis "Miscellaneous lens utilities.")
    (description "Handy functions when using lens.")
    (license license:bsd-3)))

haskell-9.2-lens-misc

(define-public haskell-9.2-lens-properties
  (package
    (name "haskell-9.2-lens-properties")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "QuickCheck properties for lens")
    (description "QuickCheck properties for lens.")
    (license license:bsd-3)))

haskell-9.2-lens-properties

(define-public haskell-9.2-lens-regex
  (package
    (name "haskell-9.2-lens-regex")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-regex-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/himura/lens-regex")
    (synopsis "Lens powered regular expression")
    (description
     "lens interface for regex-base. Please see the README on Github at <https://github.com/himura/lens-regex#readme>")
    (license license:bsd-3)))

haskell-9.2-lens-regex

(define-public haskell-9.2-lens-regex-pcre
  (package
    (name "haskell-9.2-lens-regex-pcre")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-pcre-light)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChrisPenner/lens-regex-pcre#readme")
    (synopsis "A lensy interface to regular expressions")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-regex-pcre#readme>")
    (license license:bsd-3)))

haskell-9.2-lens-regex-pcre

(define-public haskell-9.2-lifted-async
  (package
    (name "haskell-9.2-lifted-async")
    (version "0.10.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lifted-async/lifted-async-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kq96cp9czf358gykai2vcmynnd7zivqja4pb3f8bif9ypln9vai"))))
    (properties `((upstream-name . "lifted-async") (hidden? . #f)))
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
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/maoe/lifted-async")
    (synopsis
     "Run lifted IO operations asynchronously and wait for their results")
    (description
     "This package provides IO operations from @@async@@ package lifted to any
instance of 'MonadBase' or 'MonadBaseControl'.")
    (license license:bsd-3)))

haskell-9.2-lifted-async

(define-public haskell-9.2-linear
  (package
    (name "haskell-9.2-linear")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-simple-reflect)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/linear/")
    (synopsis "Linear Algebra")
    (description
     "Types and combinators for linear algebra on free vector spaces")
    (license license:bsd-3)))

haskell-9.2-linear

(define-public haskell-9.2-lz4-frame-conduit
  (package
    (name "haskell-9.2-lz4-frame-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-hsc2hs)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-inline-c)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
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

haskell-9.2-lz4-frame-conduit

(define-public haskell-9.2-machines
  (package
    (name "haskell-9.2-machines")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pointed)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/machines/")
    (synopsis "Networked stream transducers")
    (description
     "Networked stream transducers

Rúnar Bjarnason's talk on machines can be downloaded from:
<http://web.archive.org/web/20161029161813/https://dl.dropboxusercontent.com/u/4588997/Machines.pdf>")
    (license license:bsd-3)))

haskell-9.2-machines

(define-public haskell-9.2-mandrill
  (package
    (name "haskell-9.2-mandrill")
    (version "0.5.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mandrill/mandrill-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1p58c83dqbpsl0a41s6xnnwbygk04gmsg51gfqprjkvzbgl2h7zq"))))
    (properties `((upstream-name . "mandrill") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-email-validate)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/mandrill")
    (synopsis "Library for interfacing with the Mandrill JSON API")
    (description "Pure Haskell client for the Mandrill JSON API")
    (license license:expat)))

haskell-9.2-mandrill

(define-public haskell-9.2-massiv
  (package
    (name "haskell-9.2-massiv")
    (version "1.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/massiv/massiv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q0qp4xz7z3r70581lry9bkldjv195wfagazwbq6lkxrf8i25lx1"))))
    (properties `((upstream-name . "massiv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-unsafe-checks")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-scheduler)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-vector-stream)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis "Massiv (Массив) is an Array Library.")
    (description
     "Multi-dimensional Arrays with fusion, stencils and parallel computation.")
    (license license:bsd-3)))

haskell-9.2-massiv

(define-public haskell-9.2-mergeful
  (package
    (name "haskell-9.2-mergeful")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeful/mergeful-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w7ccngqcgvwysw1zbdm0qr6hscqc3dnza9n1cp6xfdb80qjqynn"))))
    (properties `((upstream-name . "mergeful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-time)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/mergeful#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>")
    (license license:expat)))

haskell-9.2-mergeful

(define-public haskell-9.2-mergeless
  (package
    (name "haskell-9.2-mergeless")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeless/mergeless-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0iy4l51kqldgm9wv60g524q67rag9rswapxrymrfy89cshyc5hib"))))
    (properties `((upstream-name . "mergeless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>")
    (license license:expat)))

haskell-9.2-mergeless

(define-public haskell-9.2-metrics
  (package
    (name "haskell-9.2-metrics")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-mwc-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)))
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

haskell-9.2-metrics

(define-public haskell-9.2-mod
  (package
    (name "haskell-9.2-mod")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mod/mod-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0m92yd323kjjwnphqlima2aj0hh7i1gnpblc8a29ks25gj0sv66v"))))
    (properties `((upstream-name . "mod") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemirings" "-fvector")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semirings)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/mod")
    (synopsis "Fast type-safe modular arithmetic")
    (description
     "<https://en.wikipedia.org/wiki/Modular_arithmetic Modular arithmetic>,
promoting moduli to the type level, with an emphasis on performance.
Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.")
    (license license:expat)))

haskell-9.2-mod

(define-public haskell-9.2-monoidal-containers
  (package
    (name "haskell-9.2-monoidal-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-newtype)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semialign)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-witherable)))
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

haskell-9.2-monoidal-containers

(define-public haskell-9.2-morpheus-graphql-core
  (package
    (name "haskell-9.2-morpheus-graphql-core")
    (version "0.27.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-core/morpheus-graphql-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0001pq7zj5rpjcg0jasd3vklisan2i8nxyk8d7xa31d4f1grn5ff"))))
    (properties `((upstream-name . "morpheus-graphql-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-morpheus-graphql-tests)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL Core")
    (description "Build GraphQL APIs with your favorite functional language!")
    (license license:expat)))

haskell-9.2-morpheus-graphql-core

(define-public haskell-9.2-moss
  (package
    (name "haskell-9.2-moss")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-simple)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mbg/moss#readme")
    (synopsis "Haskell client for Moss")
    (description
     "Please see the README on Github at <https://github.com/mbg/moss#readme>")
    (license license:expat)))

haskell-9.2-moss

(define-public haskell-9.2-network-conduit-tls
  (package
    (name "haskell-9.2-network-conduit-tls")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-conduit-tls/network-conduit-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zxdsf7isv3l2g58vsvi8iwlrgf85v7ksa8636kr6ffycbhn1zgc"))))
    (properties `((upstream-name . "network-conduit-tls") (hidden? . #f)))
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
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-streaming-commons)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis "Create TLS-aware network code with conduits")
    (description "Uses the tls package for a pure-Haskell implementation.")
    (license license:expat)))

haskell-9.2-network-conduit-tls

(define-public haskell-9.2-oauthenticated
  (package
    (name "haskell-9.2-oauthenticated")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/oauthenticated/oauthenticated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ca3wkhnk0wakzirh0486g5wkd1wq0381bjgj3ljs22hf4j5i41s"))))
    (properties `((upstream-name . "oauthenticated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tel/oauthenticated.git#readme")
    (synopsis "Simple OAuth for http-client")
    (description
     "/Warning/: This software is pre 1.0 and thus its API may change very
dynamically while updating only minor versions. This package will follow the
PVP once it reaches version 1.0.

OAuth is a popular protocol allowing servers to offer resources owned by some
user to a series of authorized clients securely. For instance, OAuth lets
Twitter provide access to a user's private tweets to the Twitter client
registered on their phone.

@@oauthenticated@@ is a Haskell library implementing OAuth protocols atop the
minimalistic @@http-client@@ HTTP client library extracted from @@http-conduit@@.
\"Network.OAuth\" offers simple functions for signing
'Network.HTTP.Client.Request's along with tools for 'Network.OAuth.Cred'ential
management and 'Network.OAuth.Server' configuration. \"Network.OAuth.Simple\"
provides a slightly more heavy-weight interface which manages the necessary state
and configuration using a monad transformer stack.

There's also an implementation of OAuth's three-legged credential acquisition
protocol built atop the \"Network.OAuth\" API. This can be handled in both
conformant and old-style modes: conformant will reject server responses which
are not conformant with RFC 5849 (which builds atop community version OAuth
1.0a) while old-style better allows for less-than-compliant servers. See
'Network.OAuth.Types.Params.Version' for more details.

Currently @@oauthenticated@@ only supports OAuth 1.0 and is in alpha. OAuth 2.0
support is a potential goal, but it's unclear if it can be transparently
supported at a similar level of abstraction.")
    (license license:expat)))

haskell-9.2-oauthenticated

(define-public haskell-9.2-ochintin-daicho
  (package
    (name "haskell-9.2-ochintin-daicho")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-bookkeeping)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-transaction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/arowM/haskell-ochintin-daicho#readme")
    (synopsis "A module to manage payroll books for Japanese companies.")
    (description
     "A module to manage payroll books for Japanese companies. This enable to export data to tax withholding book, etc...")
    (license license:expat)))

haskell-9.2-ochintin-daicho

(define-public haskell-9.2-opaleye
  (package
    (name "haskell-9.2-opaleye")
    (version "0.9.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/opaleye/opaleye-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xk2ibdakzayqc8h72iq3gav9ism5sww4wiz0wxypm6landzikfr"))))
    (properties `((upstream-name . "opaleye") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-product-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-time-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/tomjaguarpaw/haskell-opaleye")
    (synopsis "An SQL-generating DSL targeting PostgreSQL")
    (description "An SQL-generating DSL targeting PostgreSQL.  Allows
Postgres queries to be written within Haskell in a
typesafe and composable fashion.")
    (license license:bsd-3)))

haskell-9.2-opaleye

(define-public haskell-9.2-opensource
  (package
    (name "haskell-9.2-opensource")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opensource/opensource-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10jlgk1rbpz5h1mbknq0i71k0n4ppp3yd498i7p2l79a9gi6pwqy"))))
    (properties `((upstream-name . "opensource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-transformers_compat")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://api.opensource.org/")
    (synopsis "Haskell API Wrapper for the Open Source License API")
    (description
     "The Open Source API contains metadata regarding OSI Approved Licenses, and crosswalks that help with using and integrating this information with external sources. This library is designed to interact with that API so that users can simply build applications that are license-aware.")
    (license license:expat)))

haskell-9.2-opensource

(define-public haskell-9.2-pager
  (package
    (name "haskell-9.2-pager")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)))
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

haskell-9.2-pager

(define-public haskell-9.2-parsec-numeric
  (package
    (name "haskell-9.2-parsec-numeric")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parsec-numeric/parsec-numeric-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bz5ls9m6ld9v8g641sskzz2ymzibsw9jgf7f8q5wsb3mbj9mpbv"))))
    (properties `((upstream-name . "parsec-numeric") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AndrewRademacher/parsec-numeric")
    (synopsis "Parsec combinators for parsing Haskell numeric types.")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-parsec-numeric

(define-public haskell-9.2-path-binary-instance
  (package
    (name "haskell-9.2-path-binary-instance")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-binary-instance/path-binary-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19ck3ja66vcgl90wyw6r9d2h50kdv9gjs7sxjgciam6v6867vb0y"))))
    (properties `((upstream-name . "path-binary-instance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-binary-instance")
    (synopsis "Binary instance for Path.")
    (description "Binary instance for Path.")
    (license license:expat)))

haskell-9.2-path-binary-instance

(define-public haskell-9.2-path-extensions
  (package
    (name "haskell-9.2-path-extensions")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-extensions/path-extensions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pvjb26arsj892addi9x26v8naislh87x6av70k8fjnsish3pnj5"))))
    (properties `((upstream-name . "path-extensions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-extensions")
    (synopsis
     "Enumeration of common filetype extensions for use with the path library.")
    (description
     "Enumeration of common filetype extensions for use with the path library, add variants for adding an extension to a path and with variants for replacing an existing extension.")
    (license license:expat)))

haskell-9.2-path-extensions

(define-public haskell-9.2-path-extra
  (package
    (name "haskell-9.2-path-extra")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-extra/path-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fh4m3vidf75j43rk1n46y3bsn0j4247bz71s35651vi9s8vw27b"))))
    (properties `((upstream-name . "path-extra") (hidden? . #f)))
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
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/path-extra#readme")
    (synopsis "URLs without host information")
    (description
     "Please see the README on Github at <https://github.com/githubuser/localcooking-db#readme>")
    (license license:bsd-3)))

haskell-9.2-path-extra

(define-public haskell-9.2-path-formatting
  (package
    (name "haskell-9.2-path-formatting")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-formatting/path-formatting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jfl2ggvghnkwhp8p8r1dswjb5dpng8hifzhjh2a982bmlsln9c6"))))
    (properties `((upstream-name . "path-formatting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-formatting")
    (synopsis "Formatting for path")
    (description "Formatting for the path library.")
    (license license:expat)))

haskell-9.2-path-formatting

(define-public haskell-9.2-path-io
  (package
    (name "haskell-9.2-path-io")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path-io/path-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jr1inh3x0a42rdh4q0jipbw8jsprdza1j5xkzd7nxcq0a143g9l"))))
    (properties `((upstream-name . "path-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/path-io")
    (synopsis "Interface to ‘directory’ package for users of ‘path’")
    (description "Interface to ‘directory’ package for users of ‘path’.")
    (license license:bsd-3)))

haskell-9.2-path-io

(define-public haskell-9.2-path-like
  (package
    (name "haskell-9.2-path-like")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-like/path-like-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hr58zcgcybd34zzas5kf0jgcm5z2wdlbhskwj9233503nnlwkq9"))))
    (properties `((upstream-name . "path-like") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-like")
    (synopsis
     "PathLike, FileLike and DirLike type classes for the Path library.")
    (description
     "Type classes for the Path library. Exports PathLike, FileLike and DirLike classes so that stricter types may be used as Paths.")
    (license license:expat)))

haskell-9.2-path-like

(define-public haskell-9.2-path-text-utf8
  (package
    (name "haskell-9.2-path-text-utf8")
    (version "0.0.1.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-text-utf8/path-text-utf8-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dxqbcwsr3ayijssm7wr6z96p3vrwrfqhr15zhg7m3i2ad44wz8c"))))
    (properties `((upstream-name . "path-text-utf8") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/path-text-utf8")
    (synopsis "Read and write UTF-8 text files")
    (description "This is a trivial integration of the @@path@@ and @@text@@
packages, providing convenient functions to read and
write UTF-8 text files.")
    (license license:asl2.0)))

haskell-9.2-path-text-utf8

(define-public haskell-9.2-path-utils
  (package
    (name "haskell-9.2-path-utils")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-utils/path-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k6wfy8vzddfhxsd5zlbjd4397syqhdg6i8v49d218m0qqfhzkpj"))))
    (properties `((upstream-name . "path-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path-utils")
    (synopsis "Handful of simple utility functions for the path library.")
    (description "Handful of simple utility functiosn for the path library.")
    (license license:expat)))

haskell-9.2-path-utils

(define-public haskell-9.2-peregrin
  (package
    (name "haskell-9.2-peregrin")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/peregrin/peregrin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m7s8ws47g9icf9rfi8sk51bjwpbz5av17lbsnfg2cz3gji0977w"))))
    (properties `((upstream-name . "peregrin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/peregrin")
    (synopsis "Database migration support for use in other libraries.")
    (description "Database migration support for use in other libraries.
Currently only supports PostgreSQL.")
    (license license:expat)))

haskell-9.2-peregrin

(define-public haskell-9.2-pg-transact
  (package
    (name "haskell-9.2-pg-transact")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-transact/pg-transact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ch44w9hdvylpcnz1d89v75m4y0rjv1h572bcmcx2n77zs19w45g"))))
    (properties `((upstream-name . "pg-transact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/jfischoff/pg-transact#readme")
    (synopsis "A postgresql-simple transaction monad")
    (description "A postgresql-simple transaction monad")
    (license license:bsd-3)))

haskell-9.2-pg-transact

(define-public haskell-9.2-phatsort
  (package
    (name "haskell-9.2-phatsort")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-HMock)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-random-shuffle)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/phatsort-haskell#readme")
    (synopsis "FAT filesystem sort utility")
    (description
     "This package provides a utility for sorting files and directories on a FAT
filesystem.  Please see the README on GitHub at
<https://github.com/ExtremaIS/phatsort-haskell#readme>.")
    (license license:expat)))

haskell-9.2-phatsort

(define-public haskell-9.2-pipes-extras
  (package
    (name "haskell-9.2-pipes-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/pipes-extras")
    (synopsis "Extra utilities for pipes")
    (description
     "This package holds miscellaneous utilities related to the @@pipes@@
library.")
    (license license:bsd-3)))

haskell-9.2-pipes-extras

(define-public haskell-9.2-postgresql-binary
  (package
    (name "haskell-9.2-postgresql-binary")
    (version "0.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-binary/postgresql-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l8rnsjmxskhlry1p34y1mfcrzwm382v4y2zcwsjhj5r09ihzkm2"))))
    (properties `((upstream-name . "postgresql-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-binary-parser)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-network-ip)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-postgresql-binary

(define-public haskell-9.2-postgresql-migration
  (package
    (name "haskell-9.2-postgresql-migration")
    (version "0.2.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-migration/postgresql-migration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zx6pa9s8k3gq1sgn8pj9xwdlj0wlx49d1mxgmd9s2zk9flfzybf"))))
    (properties `((upstream-name . "postgresql-migration") (hidden? . #f)))
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
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/andrevdm/postgresql-migration")
    (synopsis "PostgreSQL Schema Migrations")
    (description "A PostgreSQL-simple schema migration utility")
    (license license:bsd-3)))

haskell-9.2-postgresql-migration

(define-public haskell-9.2-postgresql-simple-url
  (package
    (name "haskell-9.2-postgresql-simple-url")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple-url/postgresql-simple-url-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jg9gvpidrfy2hqixwqsym1l1mnkafmxwq58jpbzdmrbvryga1qk"))))
    (properties `((upstream-name . "postgresql-simple-url") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1pvfb61ys58s66dass8qfaxrd4pbkbk8hsbrijds6gybcx3a7nhy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/futurice/postgresql-simple-url")
    (synopsis "Parse postgres:// url into ConnectInfo")
    (description
     "The 'Database.PostgreSQL.Simple.URL' module in this package exports
two helper functions 'parseDatabaseUrl' and 'urlToConnectInfo' to
construct 'ConnectInfo' from URI (or string).

@@
>>> parseDatabaseUrl \"postgres://foo:bar@@example.com:2345/database\"
Just (ConnectInfo \"example.com\" 2345 \"foo\" \"bar\" \"database\")
@@")
    (license license:expat)))

haskell-9.2-postgresql-simple-url

(define-public haskell-9.2-pretty-relative-time
  (package
    (name "haskell-9.2-pretty-relative-time")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-relative-time/pretty-relative-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sqdz7bh99ya0d8wb721bbs25cqjfhg81q8xxvrmlamrrgc1z7bh"))))
    (properties `((upstream-name . "pretty-relative-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-time)))
    (home-page "https://github.com/NorfairKing/pretty-relative-time#readme")
    (synopsis "Pretty relative time")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/pretty-relative-time#readme>")
    (license license:expat)))

haskell-9.2-pretty-relative-time

(define-public haskell-9.2-project-template
  (package
    (name "haskell-9.2-project-template")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/haskell-ide")
    (synopsis "Specify Haskell project templates and generate files")
    (description
     "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>")
    (license license:bsd-3)))

haskell-9.2-project-template

(define-public haskell-9.2-psql-helpers
  (package
    (name "haskell-9.2-psql-helpers")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/psql-helpers/psql-helpers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x0r68mfv56rp87j8ick875wbq3qzkii9ia60amx6xr40x1acg7i"))))
    (properties `((upstream-name . "psql-helpers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "http://github.com/agrafix/psql-helpers#readme")
    (synopsis
     "A small collection of helper functions to generate postgresql queries")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-psql-helpers

(define-public haskell-9.2-purescript-bridge
  (package
    (name "haskell-9.2-purescript-bridge")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-generic-deriving)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/purescript-bridge")
    (synopsis "Generate PureScript data types from Haskell data types")
    (description "")
    (license license:bsd-3)))

haskell-9.2-purescript-bridge

(define-public haskell-9.2-pusher-http-haskell
  (package
    (name "haskell-9.2-pusher-http-haskell")
    (version "2.1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pusher-http-haskell/pusher-http-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12gk26br85spyl0pcdr71a0i3mq4cbb8qi6vwkmgx4k6hg7h43xl"))))
    (properties `((upstream-name . "pusher-http-haskell") (hidden? . #f)))
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
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/WillSewell/pusher-http-haskell")
    (synopsis "Haskell client library for the Pusher Channels HTTP API")
    (description
     "Functions that correspond to endpoints of the Pusher Channels
HTTP API. Messages can be triggered, and information about the
channel can be queried. Additionally there are functions
for authenticating users of private and presence channels.")
    (license license:expat)))

haskell-9.2-pusher-http-haskell

(define-public haskell-9.2-qm-interpolated-string
  (package
    (name "haskell-9.2-qm-interpolated-string")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qm-interpolated-string/qm-interpolated-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12jxkkbpmkdrjrkj242z6l4vhbgwj79b8s5l3gxs9fbg4s4pqp2k"))))
    (properties `((upstream-name . "qm-interpolated-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/unclechu/haskell-qm-interpolated-string")
    (synopsis "Implementation of interpolated multiline strings")
    (description "Implementation of interpolated multiline strings
that ignores indentation and trailing whitespaces")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-qm-interpolated-string

(define-public haskell-9.2-quickcheck-arbitrary-adt
  (package
    (name "haskell-9.2-quickcheck-arbitrary-adt")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme")
    (synopsis "Generic typeclasses for generating arbitrary ADTs")
    (description "Improve arbitrary value generation for ADTs")
    (license license:bsd-3)))

haskell-9.2-quickcheck-arbitrary-adt

(define-public haskell-9.2-radius
  (package
    (name "haskell-9.2-radius")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-iproute)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/codemonkeylabs/RADIUS")
    (synopsis "Remote Authentication Dial In User Service (RADIUS)")
    (description
     "This module provides types and on the wire de/coding of RADIUS packets as per RFC2865")
    (license license:bsd-3)))

haskell-9.2-radius

(define-public haskell-9.2-rainbow
  (package
    (name "haskell-9.2-rainbow")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.github.com/massysett/rainbow")
    (synopsis "Print text to terminal with colors and effects")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-rainbow

(define-public haskell-9.2-random-tree
  (package
    (name "haskell-9.2-random-tree")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-random-shuffle)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tree-fun)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/random-tree")
    (synopsis "Create random trees")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-random-tree

(define-public haskell-9.2-ratel
  (package
    (name "haskell-9.2-ratel")
    (version "2.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ratel/ratel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0iwdj9bmv3k7ppq51z66z1h8rrsi6jcc6xpdf5b8c869fazy6nd4"))))
    (properties `((upstream-name . "ratel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ratel")
    (synopsis "Notify Honeybadger about exceptions.")
    (description "Ratel notifies Honeybadger about exceptions.")
    (license license:expat)))

haskell-9.2-ratel

(define-public haskell-9.2-rattletrap
  (package
    (name "haskell-9.2-rattletrap")
    (version "11.2.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rattletrap/rattletrap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r879vbdhv77l14wzv03s8hlhmmzzfl6igkwnclr9lq8ncbafrxm"))))
    (properties `((upstream-name . "rattletrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rattletrap")
    (synopsis "Parse and generate Rocket League replays.")
    (description "Rattletrap parses and generates Rocket League replays.")
    (license license:expat)))

haskell-9.2-rattletrap

(define-public haskell-9.2-redact
  (package
    (name "haskell-9.2-redact")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-HMock)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-explainable-predicates)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/redact-haskell#readme")
    (synopsis "hide secret text on the terminal")
    (description
     "This package provides a utility for redacting secret text on the terminal.
Please see the README on GitHub at
<https://github.com/ExtremaIS/redact-haskell#readme>.")
    (license license:expat)))

haskell-9.2-redact

(define-public haskell-9.2-reform-hamlet
  (package
    (name "haskell-9.2-reform-hamlet")
    (version "0.0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-hamlet/reform-hamlet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rilrrrm681ndgfszv6yxkmfiq8r4gmqd507m0cc3vn3kww2j9si"))))
    (properties `((upstream-name . "reform-hamlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-reform)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "Add support for using Hamlet with Reform")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Hamlet.")
    (license license:bsd-3)))

haskell-9.2-reform-hamlet

(define-public haskell-9.2-rex
  (package
    (name "haskell-9.2-rex")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rex/rex-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "17lbpknqzly7h2gz3x4n4ykjirhqym7bk9wrvjhh23din6brg8p3"))))
    (properties `((upstream-name . "rex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-pcre-light)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/mgsloan/rex")
    (synopsis "A quasi-quoter for typeful results of regex captures.")
    (description "Provides a quasi-quoter for regular expressions which
yields a tuple, of appropriate arity and types,
representing the results of the captures.  Allows the user
to specify parsers for captures as inline Haskell.  Can
also be used to provide typeful pattern matching in
function definitions and pattern matches.  Also, it
precompiles the regular expressions into a PCRE
compiled byte-array representation, at compile time.")
    (license license:bsd-3)))

haskell-9.2-rex

(define-public haskell-9.2-rio-prettyprint
  (package
    (name "haskell-9.2-rio-prettyprint")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-prettyprint/rio-prettyprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zlr8wnh38i3dxxfva91q9cwcsvqx0alf9fscn4c4545qhzw7a02"))))
    (properties `((upstream-name . "rio-prettyprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/commercialhaskell/rio-prettyprint#readme")
    (synopsis "Pretty-printing for RIO")
    (description "Combine RIO's log capabilities with pretty printing")
    (license license:bsd-3)))

haskell-9.2-rio-prettyprint

(define-public haskell-9.2-safe-coloured-text-gen
  (package
    (name "haskell-9.2-safe-coloured-text-gen")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text-gen/safe-coloured-text-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h2n6qvggrzrqfbi9633kjzmlpgqf4anbqzip6l3ygj5p1lk69zb"))))
    (properties `((upstream-name . "safe-coloured-text-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-safe-coloured-text)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "")
    (description "Generators for types in safe-coloured-text")
    (license license:expat)))

haskell-9.2-safe-coloured-text-gen

(define-public haskell-9.2-sandi
  (package
    (name "haskell-9.2-sandi")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sandi/sandi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ndgai8idlxyccvkz5zsgq06v58blc30i6hkky5b1sf5x6gs2h29"))))
    (properties `((upstream-name . "sandi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-conduit")
       #:cabal-revision
       ("1" "1aj9i1ir6ks3bdb47yvqlxv2azrz09p69ggr73m0cxvir9rd0y5j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sandi")
    (synopsis "Data encoding library")
    (description "Reasonably fast data encoding library.")
    (license license:bsd-3)))

haskell-9.2-sandi

(define-public haskell-9.2-scalpel
  (package
    (name "haskell-9.2-scalpel")
    (version "0.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scalpel/scalpel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0w3l38czfsgbyd3x6yir7qw9bl8nmhclrbpbwfyhs39728jlscnc"))))
    (properties `((upstream-name . "scalpel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-scalpel-core)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel is a web scraping library inspired by libraries like Parsec and
Perl's Web::Scraper Scalpel builds on top of TagSoup to provide a
declarative and monadic interface.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-scalpel

(define-public haskell-9.2-semialign-indexed
  (package
    (name "haskell-9.2-semialign-indexed")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semialign)))
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

haskell-9.2-semialign-indexed

(define-public haskell-9.2-sequenceTools
  (package
    (name "haskell-9.2-sequenceTools")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-lens-family)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pipes-group)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pipes-ordered-zip)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-pipes-safe)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-sequence-formats)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sequenceTools")
    (synopsis "A package with tools for processing DNA sequencing data")
    (description
     "The tools in this package process sequencing Data, in particular from ancient DNA sequencing libraries. Key tool in this package is pileupCaller, a tool to randomly sample genotypes from sequencing data.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-sequenceTools

(define-public haskell-9.2-serf
  (package
    (name "haskell-9.2-serf")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-operational)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/sanetracker/serf")
    (synopsis "Interact with Serf via Haskell.")
    (description "Bindings to most of the commands provided by serf.")
    (license license:expat)))

haskell-9.2-serf

(define-public haskell-9.2-serialise
  (package
    (name "haskell-9.2-serialise")
    (version "0.2.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serialise/serialise-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05m5h5vfjp4wvh6y7j2f3d4c3l6gxww2n1v38vqrjacpw641izwk"))))
    (properties `((upstream-name . "serialise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnewtime15")
       #:cabal-revision
       ("2" "0ng4gjxwv2arm1ybqkfl66p1lmcwacym8ygi6nnkygysgchwqa3b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-cborg)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-half)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A binary serialisation library for Haskell values.")
    (description
     "This package (formerly @@binary-serialise-cbor@@) provides pure, efficient
serialization of Haskell values directly into @@ByteString@@s for storage or
transmission purposes. By providing a set of type class instances, you can
also serialise any custom data type you have as well.

The underlying binary format used is the 'Concise Binary Object
Representation', or CBOR, specified in RFC 7049. As a result,
serialised Haskell values have implicit structure outside of the
Haskell program itself, meaning they can be inspected or analyzed
without custom tools.

An implementation of the standard bijection between CBOR and JSON is provided
by the [cborg-json](/package/cborg-json) package. Also see
[cbor-tool](/package/cbor-tool) for a convenient command-line utility for
working with CBOR data.")
    (license license:bsd-3)))

haskell-9.2-serialise

(define-public haskell-9.2-servant-client-core
  (package
    (name "haskell-9.2-servant-client-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-sop-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Core functionality and class for client function generation for servant APIs")
    (description
     "This library provides backend-agnostic generation of client functions. For
more information, see the README.")
    (license license:bsd-3)))

haskell-9.2-servant-client-core

(define-public haskell-9.2-servant-docs
  (package
    (name "haskell-9.2-servant-docs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-string-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-universe-base)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis "generate API docs for your servant webservice")
    (description
     "Library for generating API docs from a servant API definition.

Runnable example <https://github.com/haskell-servant/servant/blob/master/servant-docs/example/greet.hs here>.

<https://github.com/haskell-servant/servant/blob/master/servant-docs/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-9.2-servant-docs

(define-public haskell-9.2-servant-exceptions
  (package
    (name "haskell-9.2-servant-exceptions")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ch1bo/servant-exceptions#readme")
    (synopsis "Extensible exceptions for servant APIs")
    (description
     "`servant-exceptions` provides a `Throw` combinator to declare what
types of errors an API might throw. The server
implementation catches them and allows for a canonical
encoding using servant content-type machinery.")
    (license license:bsd-3)))

haskell-9.2-servant-exceptions

(define-public haskell-9.2-servant-foreign
  (package
    (name "haskell-9.2-servant-foreign")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)))
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

haskell-9.2-servant-foreign

(define-public haskell-9.2-servant-multipart-api
  (package
    (name "haskell-9.2-servant-multipart-api")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-servant/servant-multipart#readme")
    (synopsis "multipart/form-data (e.g file upload) support for servant")
    (description
     "This package contains servant API types that support multiform upload, used by
servant-multipart and servant-multipart-client for backend/client implementation.")
    (license license:bsd-3)))

haskell-9.2-servant-multipart-api

(define-public haskell-9.2-servant-rawm
  (package
    (name "haskell-9.2-servant-rawm")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)))
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

haskell-9.2-servant-rawm

(define-public haskell-9.2-ses-html
  (package
    (name "haskell-9.2-ses-html")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-byteable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-cryptohash)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-streams)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ses-html")
    (synopsis
     "Send HTML formatted emails using Amazon's SES REST API with blaze")
    (description
     "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell")
    (license license:bsd-3)))

haskell-9.2-ses-html

(define-public haskell-9.2-shake-plus
  (package
    (name "haskell-9.2-shake-plus")
    (version "0.3.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-plus/shake-plus-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0022npwhvzlpz6d6xl75kx0f7ydr8fqqcy04zkv70gwsv0gp5zbm"))))
    (properties `((upstream-name . "shake-plus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1az2234agrza3qhsd400bw94qj3dcxjh3fi0aq24ihbm8yx1a21s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-shake)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/shake-plus")
    (synopsis "Re-export of Shake using well-typed paths and ReaderT.")
    (description
     "Re-export of Shake using well-typed paths and ReaderT. You can thread logging through your Shake Actions.")
    (license license:expat)))

haskell-9.2-shake-plus

(define-public haskell-9.2-shakespeare-text
  (package
    (name "haskell-9.2-shakespeare-text")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shakespeare-text/shakespeare-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18ixixb9aqn630s9wblxcki1gggm4i0fj9752c55p3b42q8h86rc"))))
    (properties `((upstream-name . "shakespeare-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.yesodweb.com/book/shakespearean-templates")
    (synopsis
     "Interpolation with quasi-quotation: put variables strings (deprecated)")
    (description
     "interpolation with quasi-quotation: stick haskell variables into haskell strings

Note there is no dependency on haskell-src-extras. If you don't mind that dependency, you may want to look at using these packages: Interpolation, interpolatedstring-perl6, interpolatedstring-qq.

This package has 1 other general feature that those others may not (but would be easy to duplicate): instead of using quasi-quoting you can also use an external file. It also has url/embeding interpolation, with \\@@ and \\^, which are used in Yesod.

This package also uses blaze-builder for efficiently constructing strings (I am not sure what the other packages use). This might be of interest to you for large templates or performance sensitive code, or otherwise having a nice interface to blaze-builder

Shakespeare is a template family for type-safe, efficient templates with simple variable interpolation. Shakespeare templates can be used inline with a quasi-quoter or in an external file. Shakespeare interpolates variables according to the type being inserted.
In this case, the variable type needs a ToText instance.

Please see http://www.yesodweb.com/book/shakespearean-templates for a more thorough description and examples of the shakespeare family of template languages.")
    (license license:expat)))

haskell-9.2-shakespeare-text

(define-public haskell-9.2-shell-conduit
  (package
    (name "haskell-9.2-shell-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-monads-tf)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/shell-conduit")
    (synopsis "Write shell scripts with Conduit")
    (description
     "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.")
    (license license:bsd-3)))

haskell-9.2-shell-conduit

(define-public haskell-9.2-simple-sendfile
  (package
    (name "haskell-9.2-simple-sendfile")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/simple-sendfile")
    (synopsis "Cross platform library for the sendfile system call")
    (description "Cross platform library for the sendfile system call.
This library tries to call minimum system calls which
are the bottleneck of web servers.")
    (license license:bsd-3)))

haskell-9.2-simple-sendfile

(define-public haskell-9.2-singleton-nats
  (package
    (name "haskell-9.2-singleton-nats")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singleton-nats/singleton-nats-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1drjwwkpszgifhnd7p4qqz92z85nh7w81w1hpdqv9a6vc5hfbv7r"))))
    (properties `((upstream-name . "singleton-nats") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsingletons-3-0")
       #:cabal-revision
       ("2" "044gxxa9j076p1g4vca4j8w5brx2qg5yqdvqjvmz6fv5kms4b8jd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-singletons)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-singletons-base)))
    (home-page "https://github.com/AndrasKovacs/singleton-nats")
    (synopsis
     "Unary natural numbers relying on the singletons infrastructure.")
    (description
     "Unary natural number relying on the <https://hackage.haskell.org/package/singletons singletons> infrastructure. More information about the general usage of singletons can be found on the <https://github.com/goldfirere/singletons singletons github> page.")
    (license license:bsd-3)))

haskell-9.2-singleton-nats

(define-public haskell-9.2-singletons-presburger
  (package
    (name "haskell-9.2-singletons-presburger")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-singletons)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-singletons-base)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-singletons-th)))
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

haskell-9.2-singletons-presburger

(define-public haskell-9.2-speedy-slice
  (package
    (name "haskell-9.2-speedy-slice")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-kan-extensions)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-mcmc-types)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-mwc-probability)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-pipes)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
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

haskell-9.2-speedy-slice

(define-public haskell-9.2-state-codes
  (package
    (name "haskell-9.2-state-codes")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/state-codes/state-codes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18gls0gyk3iz9i03zw31x3xhi5m1y2r98qkkrah8kz07fsbxqrqn"))))
    (properties `((upstream-name . "state-codes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acamino/state-codes#README")
    (synopsis "ISO 3166-2:US state codes and i18n names")
    (description
     "This package provides the ISO 3166-2:US state codes and i18n names")
    (license license:expat)))

haskell-9.2-state-codes

(define-public haskell-9.2-stm-conduit
  (package
    (name "haskell-9.2-stm-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-cereal-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stm-chans)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cgaebel/stm-conduit")
    (synopsis
     "Introduces conduits to channels, and promotes using conduits concurrently.")
    (description
     "Provides two simple conduit wrappers around STM channels - a source and a sink.")
    (license license:bsd-3)))

haskell-9.2-stm-conduit

(define-public haskell-9.2-stratosphere
  (package
    (name "haskell-9.2-stratosphere")
    (version "0.60.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stratosphere/stratosphere-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vp5m82h9axvvzqqxf4q5jxcjgym1b8h4x4y4a367bpiy7xk4kwf"))))
    (properties `((upstream-name . "stratosphere") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-flibrary-only")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbj/stratosphere#readme")
    (synopsis "EDSL for AWS CloudFormation")
    (description "EDSL for AWS CloudFormation")
    (license license:expat)))

haskell-9.2-stratosphere

(define-public haskell-9.2-strict-lens
  (package
    (name "haskell-9.2-strict-lens")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-lens/strict-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dsgr53q0sdivrxc7jmbqjd65hav9zwjqc8zfbyybkr1ww17bhf5"))))
    (properties `((upstream-name . "strict-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1sdqml2fizmm1wrlmg1l8b9hnff8la03wl39hr47bldvlqn6dywx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-strict/strict")
    (synopsis "Lenses for types in strict package")
    (description "Lenses for types in strict package.")
    (license license:bsd-3)))

haskell-9.2-strict-lens

(define-public haskell-9.2-string-interpolate
  (package
    (name "haskell-9.2-string-interpolate")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-interpolate/string-interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdd472rvykrqkv76745vavpycvb0dzcaxs3yw9dfczaxaz16xws"))))
    (properties `((upstream-name . "string-interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-extended-benchmarks" "-f-text-builder" "-f-bytestring-builder")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-text)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-unicode)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-conversions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md")
    (synopsis "Haskell string/text/bytestring interpolation that just works")
    (description
     "Unicode-aware string interpolation that handles all textual types.

See the README at <https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md> for more info.")
    (license license:bsd-3)))

haskell-9.2-string-interpolate

(define-public haskell-9.2-stringprep
  (package
    (name "haskell-9.2-stringprep")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stringprep/stringprep-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ha4cvzdppd514xh9315v3nvrn1q4xd74gifdqpszw98hj2mw0b0"))))
    (properties `((upstream-name . "stringprep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-text-icu)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/stringprep")
    (synopsis "Implements the \"StringPrep\" algorithm")
    (description "Implements the \"StringPrep\" algorithm")
    (license license:bsd-3)))

haskell-9.2-stringprep

(define-public haskell-9.2-strive
  (package
    (name "haskell-9.2-strive")
    (version "6.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/strive/strive-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vvv1cc88niciqly68wddpkkly796jyl6hypahyd0rkif53q789l"))))
    (properties `((upstream-name . "strive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-gpolyline)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/strive")
    (synopsis "A client for the Strava V3 API.")
    (description "Strive is a client for the Strava V3 API.")
    (license license:expat)))

haskell-9.2-strive

(define-public haskell-9.2-strongweak
  (package
    (name "haskell-9.2-strongweak")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strongweak/strongweak-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xmqacfv4xqx1v7xdiflmc4am9366jhpdv1r7hldmh1ihw7jkfc3"))))
    (properties `((upstream-name . "strongweak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-generic-random)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-refined)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-vector-sized)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/raehik/strongweak#readme")
    (synopsis "Convert between strong and weak representations of types")
    (description "Please see README.md.")
    (license license:expat)))

haskell-9.2-strongweak

(define-public haskell-9.2-stylish-haskell
  (package
    (name "haskell-9.2-stylish-haskell")
    (version "0.14.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stylish-haskell/stylish-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17w92v0qnwj7m6yqdq5cxbr04xiz0yfnnyx5q54218wdl7n5lf6d"))))
    (properties `((upstream-name . "stylish-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-ghc-lib")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-HsYAML)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-ghc-lib-parser-ex)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/stylish-haskell")
    (synopsis "Haskell code prettifier")
    (description
     "A Haskell code prettifier. For more information, see:

<https://github.com/haskell/stylish-haskell/blob/master/README.markdown>")
    (license license:bsd-3)))

haskell-9.2-stylish-haskell

(define-public haskell-9.2-superbuffer
  (package
    (name "haskell-9.2-superbuffer")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/superbuffer/superbuffer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "024mcjmayirwxqqyr9w1zfsxihi680clzngkpmgccv10phb8qpsp"))))
    (properties `((upstream-name . "superbuffer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-HTF)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/superbuffer#readme")
    (synopsis "Efficiently build a bytestring from smaller chunks")
    (description
     "Efficiently (both fast and memory efficient) build a bytestring from smaller chunks")
    (license license:bsd-3)))

haskell-9.2-superbuffer

(define-public haskell-9.2-tasty-lua
  (package
    (name "haskell-9.2-tasty-lua")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-lua/tasty-lua-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vnyvgcjsvqhwwyqkbgqksr9ppj5whiihpwcqkg33sl7jj3ysdwv"))))
    (properties `((upstream-name . "tasty-lua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua")
    (synopsis "Write tests in Lua, integrate into tasty.")
    (description "Allow users to define tasty tests from Lua.")
    (license license:expat)))

haskell-9.2-tasty-lua

(define-public haskell-9.2-texmath
  (package
    (name "haskell-9.2-texmath")
    (version "0.12.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/texmath/texmath-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dn88s352y641c1vlj5j5mqwhnz6r1algkd7mx83y3fr0wp3nhlq"))))
    (properties `((upstream-name . "texmath") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-f-server")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pandoc-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-xml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jgm/texmath")
    (synopsis "Conversion between math formats.")
    (description
     "The texmath library provides functions to read
and write TeX math, presentation MathML, and OMML (Office
Math Markup Language, used in Microsoft Office).  Support is also
included for converting math formats to Gnu eqn and to pandoc's
native format (allowing conversion, via pandoc, to a variety of
different markup formats).  The TeX reader supports basic LaTeX
and AMS extensions, and it can parse and apply LaTeX macros.
(See <https://johnmacfarlane.net/texmath here> for a live demo of
bidirectional conversion between LaTeX and MathML.)

The package also includes several utility modules which may be
useful for anyone looking to manipulate either TeX math or
MathML.  For example, a copy of the MathML operator dictionary is
included.

Use the @@executable@@ flag to install a standalone
executable, @@texmath@@, that converts formulas from one
format to another. (Use the @@--help@@ flag for a description of all
functionality).

Use the @@server@@ flag to install a web server, @@texmath-server@@,
that exposes a JSON API allowing conversion of individual
formulas and batches of formulas.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-texmath

(define-public haskell-9.2-these-lens
  (package
    (name "haskell-9.2-these-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "Lenses for These")
    (description "This package provides Prism and Traversals for @@These@@.")
    (license license:bsd-3)))

haskell-9.2-these-lens

(define-public haskell-9.2-timelens
  (package
    (name "haskell-9.2-timelens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.github.com/massysett/timelens")
    (synopsis "Lenses for the time package")
    (description
     "These are lenses for the time package.  Please see the README.md
for more information.")
    (license license:bsd-3)))

haskell-9.2-timelens

(define-public haskell-9.2-trifecta
  (package
    (name "haskell-9.2-trifecta")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-charset)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-reducers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/trifecta/")
    (synopsis "A modern parser combinator library with convenient diagnostics")
    (description
     "A modern parser combinator library with slicing and Clang-style colored diagnostics

For example:

<<https://i.imgur.com/ZyzUSSn.png>>

<images/example.png (Local Copy)>")
    (license license:bsd-3)))

haskell-9.2-trifecta

(define-public haskell-9.2-tuples
  (package
    (name "haskell-9.2-tuples")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tuples/tuples-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kq12l0q7d9mdkmcp2sm7pjgfh00vqkhi0id32sny1lqcnavp415"))))
    (properties `((upstream-name . "tuples") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "06ns2npjh487pbzq6f5iwqvl0n9a6d5fywlm032nj3mxdmaynj2j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/tuples")
    (synopsis "Small monomorphic tuples")
    (description "This library provides small tuples where all the elements
are the same type. The elements always unpack into the
data constructor. This can be helpful when the tuple type
is itself nested inside of another data constructor.")
    (license license:bsd-3)))

haskell-9.2-tuples

(define-public haskell-9.2-twitter-types-lens
  (package
    (name "haskell-9.2-twitter-types-lens")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-twitter-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/himura/twitter-types")
    (synopsis "Twitter JSON types (lens powered)")
    (description
     "Please see the README on Github at <https://github.com/himura/twitter-types#readme>")
    (license license:bsd-3)))

haskell-9.2-twitter-types-lens

(define-public haskell-9.2-type-natural
  (package
    (name "haskell-9.2-type-natural")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-constraints)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/konn/type-natural")
    (synopsis "Type-level natural and proofs of their properties.")
    (description "Type-level natural numbers and proofs of their properties.

Version 0.6+ supports __GHC 8+ only__.

__Use 0.5.* with ~ GHC 7.10.3__.")
    (license license:bsd-3)))

haskell-9.2-type-natural

(define-public haskell-9.2-typed-uuid
  (package
    (name "haskell-9.2-typed-uuid")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typed-uuid/typed-uuid-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f97q4vxr30sinbcilhyizhri4gkq68yzw6pnv2dh2bdy1nd2yqk"))))
    (properties `((upstream-name . "typed-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-validity-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/typed-uuid#readme")
    (synopsis "Phantom-Typed version of UUID")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>")
    (license license:expat)))

haskell-9.2-typed-uuid

(define-public haskell-9.2-tz
  (package
    (name "haskell-9.2-tz")
    (version "0.1.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tz/tz-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1vqnfk656i6j3j1bf9lc36adziv52x1b2ccq6afp8cka1nay2mcd"))))
    (properties `((upstream-name . "tz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")
       #:cabal-revision
       ("1" "0mwal38qsf32fppza1ivx0vdvpma9z5gn4ni08mc080ns0s7kvgy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-tzdata)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ysangkok/haskell-tz")
    (synopsis "Efficient time zone handling")
    (description
     "The goal of this package is to provide a library that can read time
zone info files (aka. Olson files), and does time zone conversions
in a /pure/ and /efficient/ way.

We also provide platform-independent and/or compiled-in access to
the standard Time Zone Dabase by the means of the companion @@tzdata@@
package <http://hackage.haskell.org/package/tzdata>.

The package is currently in an alpha phase, I'm still experimenting
with different ideas wrt. scope\\/API\\/implementation\\/etc. All
comments are welcome!")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-tz

(define-public haskell-9.2-unliftio-path
  (package
    (name "haskell-9.2-unliftio-path")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-path/unliftio-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ila58yyk2vfshaz6d5kp4vdcgjrlnwnqnrjm949qlcv36srvzg9"))))
    (properties `((upstream-name . "unliftio-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/unliftio-path")
    (synopsis "UnliftIO using well-typed Paths.")
    (description "UnliftIO using well-typed Paths.")
    (license license:expat)))

haskell-9.2-unliftio-path

(define-public haskell-9.2-users-postgresql-simple
  (package
    (name "haskell-9.2-users-postgresql-simple")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/users-postgresql-simple/users-postgresql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0061dvlj706rqrfq4wyqx0ylghac13j0x9bicb5smpkckhn5s6q5"))))
    (properties `((upstream-name . "users-postgresql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-users)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "A PostgreSQL backend for the users package")
    (description
     "This library is a backend driver using <http://hackage.haskell.org/package/postgresql-simple postgresql-simple> for
<http://hackage.haskell.org/package/users the \"users\" library>.

It supports all postgres versions starting from 8.3 and requires the included extensions uuid-ossp.

The package itself does not expose any bindings but provides an instance for 'UserStorageBackend'.

Usage:

> module Foo where
> import Web.Users.Types
> import Web.Users.Postgresql ()
> -- code goes here")
    (license license:expat)))

haskell-9.2-users-postgresql-simple

(define-public haskell-9.2-users-test
  (package
    (name "haskell-9.2-users-test")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/users-test/users-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gmcbimbp8sj282c915m9bka4fj238xsf8szqmnv20n01kx4k1gn"))))
    (properties `((upstream-name . "users-test") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-users)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "Library to test backends for the users library")
    (description
     "Provides HSpec helpers for backends of <http://hackage.haskell.org/package/users users package>.

All backend packages should conform to this specification.")
    (license license:expat)))

haskell-9.2-users-test

(define-public haskell-9.2-validation
  (package
    (name "haskell-9.2-validation")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-assoc)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)))
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

haskell-9.2-validation

(define-public haskell-9.2-validationt
  (package
    (name "haskell-9.2-validationt")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validationt/validationt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14kvkiawsychqq55nm0afpfwxjvxh9izbr35zgp3wg2j0zqzkhnz"))))
    (properties `((upstream-name . "validationt") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeable/validationt")
    (synopsis "Straightforward validation monad")
    (description
     "A simple data validation library. The main idea is to provide an easy way to validate web form data by aggregating errors for each field.")
    (license license:bsd-3)))

haskell-9.2-validationt

(define-public haskell-9.2-validity-path
  (package
    (name "haskell-9.2-validity-path")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-path/validity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00p02jgqp5x34yjshylbalsbi44ksdywwjf5c8fwbqjkykwx98px"))))
    (properties `((upstream-name . "validity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for Path")
    (description "")
    (license license:expat)))

haskell-9.2-validity-path

(define-public haskell-9.2-vector-instances
  (package
    (name "haskell-9.2-vector-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-keys)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pointed)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/vector-instances")
    (synopsis "Orphan Instances for 'Data.Vector'")
    (description "")
    (license license:bsd-3)))

haskell-9.2-vector-instances

(define-public haskell-9.2-wai-middleware-caching-lru
  (package
    (name "haskell-9.2-wai-middleware-caching-lru")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching-lru/wai-middleware-caching-lru-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lr8vaail00g72dgdfcgjzdd1kqwi4n0jzl1ia7bjxxdym1chz9p"))))
    (properties `((upstream-name . "wai-middleware-caching-lru")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-lrucache)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-wai-middleware-caching)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching-lru#readme")
    (synopsis "Initial project template from stack")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-wai-middleware-caching-lru

(define-public haskell-9.2-wai-middleware-caching-redis
  (package
    (name "haskell-9.2-wai-middleware-caching-redis")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching-redis/wai-middleware-caching-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k3wpw9prhcac8iavzr0xdcwl8khkxks4kji03zz1n10vf1kgxbg"))))
    (properties `((upstream-name . "wai-middleware-caching-redis")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hedis)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-wai-middleware-caching)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching-redis#readme")
    (synopsis "Cache Wai Middleware using Redis backend")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-wai-middleware-caching-redis

(define-public haskell-9.2-wai-rate-limit-redis
  (package
    (name "haskell-9.2-wai-rate-limit-redis")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-rate-limit-redis/wai-rate-limit-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gizywhdrpngs5l6qh5ggnnfkcgplwsigcjj3z8l7vwif74j6qsd"))))
    (properties `((upstream-name . "wai-rate-limit-redis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hedis)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-wai-rate-limit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/wai-rate-limit#readme")
    (synopsis "Redis backend for rate limiting as WAI middleware")
    (description
     "A Haskell library which implements rate limiting as WAI middleware")
    (license license:expat)))

haskell-9.2-wai-rate-limit-redis

(define-public haskell-9.2-wai-session-postgresql
  (package
    (name "haskell-9.2-wai-session-postgresql")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-session-postgresql/wai-session-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l3ws8bkflrk5gnvw0dd98fw83kfhf78mn9z6l2v6yv3gvdfzj6l"))))
    (properties `((upstream-name . "wai-session-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-wai-session)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/hce/postgresql-session#readme")
    (synopsis "PostgreSQL backed Wai session store")
    (description
     "Provides a PostgreSQL backed session store for the Network.Wai.Session interface.")
    (license license:bsd-3)))

haskell-9.2-wai-session-postgresql

(define-public haskell-9.2-xml-conduit
  (package
    (name "haskell-9.2-xml-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/xml")
    (synopsis
     "Pure-Haskell utilities for dealing with XML with the conduit package.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.")
    (license license:expat)))

haskell-9.2-xml-conduit

(define-public haskell-9.2-xmlbf-xeno
  (package
    (name "haskell-9.2-xmlbf-xeno")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmlbf-xeno/xmlbf-xeno-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vdvmny9f5nxwgdpzn0qa5wghr21i69pnkhw2d1zncsgvq3kkw28"))))
    (properties `((upstream-name . "xmlbf-xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-html-entities)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-xeno)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-xmlbf)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis "xeno backend support for the xmlbf library.")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-xmlbf-xeno

(define-public haskell-9.2-xmonad
  (package
    (name "haskell-9.2-xmonad")
    (version "0.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmonad/xmonad-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1apqwyqmc51gamfgsvlanzqqig9qvjss89ibcamhnha1gs1k4jl8"))))
    (properties `((upstream-name . "xmonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-pedantic" "-fquickcheck-classes")
       #:cabal-revision
       ("2" "1rgwrnyb7kijzl2mqm8ks2nydh37q5vkbg4400rg9n6x13w2r9b3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001) haskell-9.2-X11)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-setlocale)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://xmonad.org")
    (synopsis "A tiling window manager")
    (description
     "xmonad is a tiling window manager for X. Windows are arranged
automatically to tile the screen without gaps or overlap, maximising
screen use. All features of the window manager are accessible from the
keyboard: a mouse is strictly optional. xmonad is written and
extensible in Haskell. Custom layout algorithms, and other extensions,
may be written by the user in config files. Layouts are applied
dynamically, and different layouts may be used on each workspace.
Xinerama is fully supported, allowing windows to be tiled on several
screens.")
    (license license:bsd-3)))

haskell-9.2-xmonad

(define-public haskell-9.2-yaml
  (package
    (name "haskell-9.2-yaml")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-libyaml)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-mockery)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Support for parsing and rendering YAML documents.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/yaml>")
    (license license:bsd-3)))

haskell-9.2-yaml

(define-public haskell-9.2-yarn-lock
  (package
    (name "haskell-9.2-yarn-lock")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yarn-lock/yarn-lock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x4zhczp6qgzm3sgmc2j5mjffg1ibfpvkxfwh2dv5bcx9nzv7bxy"))))
    (properties `((upstream-name . "yarn-lock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Profpatsch/yarn2nix#readme")
    (synopsis "Represent and parse yarn.lock files")
    (description
     "Types and parser for the lock file format of the npm successor yarn. All modules should be imported qualified.")
    (license license:expat)))

haskell-9.2-yarn-lock

(define-public haskell-9.2-zim-parser
  (package
    (name "haskell-9.2-zim-parser")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-binary-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-lzma)))
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

haskell-9.2-zim-parser

(define-public haskell-9.2-zip-stream
  (package
    (name "haskell-9.2-zip-stream")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-stream/zip-stream-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1z9q6j5zh4crvgk4v2p9s6qww74ifmcj7ngxxkpnkv8h81xjcdjk"))))
    (properties `((upstream-name . "zip-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-binary-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-digest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/zip-stream")
    (synopsis "ZIP archive streaming using conduits")
    (description
     "Process (extract and create) zip files as streams (e.g., over the network), accessing contained files without having to write the zip file to disk (unlike zip-conduit).")
    (license license:bsd-3)))

haskell-9.2-zip-stream

(define-public haskell-9.2-zippers
  (package
    (name "haskell-9.2-zippers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/zippers/")
    (synopsis "Traversal based zippers")
    (description "Traversal based zippers.")
    (license license:bsd-3)))

haskell-9.2-zippers

