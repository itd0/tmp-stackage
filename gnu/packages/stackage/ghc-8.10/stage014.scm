;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage014)
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
(define-public haskell-8.10-Agda
  (package
    (name "haskell-8.10-Agda")
    (version "2.6.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Agda/Agda-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03dw7jfqr3ffik6avigm525djqh2gn5c3qwnb2h6298zkr9lch9w"))))
    (properties `((upstream-name . "Agda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cpphs" "-f-debug" "-f-enable-cluster-counting" "-f-optimise-heavily")
       #:cabal-revision
       ("4" "0spsj8nk28lfvsv6063d1nif5hag8yal47iwicm7yln0626xsxcd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-boxes)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-hash)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-edit-distance)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-equivalence)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-gitrev)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hashtables)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-murmur-hash)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-strict)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-uri-encode)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://wiki.portal.chalmers.se/agda/")
    (synopsis
     "A dependently typed functional programming language and proof assistant")
    (description
     "Agda is a dependently typed functional programming language: It has
inductive families, which are similar to Haskell's GADTs, but they
can be indexed by values and not just types. It also has
parameterised modules, mixfix operators, Unicode characters, and an
interactive Emacs interface (the type checker can assist in the
development of your code).

Agda is also a proof assistant: It is an interactive system for
writing and checking proofs. Agda is based on intuitionistic type
theory, a foundational system for constructive mathematics developed
by the Swedish logician Per Martin-L&#xf6;f. It has many
similarities with other proof assistants based on dependent types,
such as Coq, Epigram and NuPRL.

This package includes both a command-line program (agda) and an
Emacs mode. If you want to use the Emacs mode you can set it up by
running @@agda-mode setup@@ (see the README).

Note that the Agda package does not follow the package versioning
policy, because it is not intended to be used by third-party
packages.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-Agda

(define-public haskell-8.10-HTF
  (package
    (name "haskell-8.10-HTF")
    (version "0.14.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTF/HTF-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0wrgvszygj65hff5mrj1f9akr0y3jrch194fyjkhp6b002d2nygd"))))
    (properties `((upstream-name . "HTF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1w7i1lwaiqhdx5amdm4z2cjjqspd82x30nf2l0pkgqn82ym8yk7p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-cpphs)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-haskell-src)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-regex-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-xmlgen)))
    (home-page "https://github.com/skogsbaer/HTF/")
    (synopsis "The Haskell Test Framework")
    (description
     "The Haskell Test Framework (/HTF/ for short) lets you define unit
tests (<http://hunit.sourceforge.net>), QuickCheck properties
(<http://www.cs.chalmers.se/~rjmh/QuickCheck/>), and black box
tests in an easy and convenient way. HTF uses a custom
preprocessor that collects test definitions automatically.
Furthermore, the preprocessor allows HTF to report failing
test cases with exact file name and line number information.
Additionally, HTF tries to produce highly readable output
for failing tests: for example, it colors and pretty prints expected and
actual results and provides a diff between the two values.

The documentation of the \"Test.Framework.Tutorial\" module
provides a tutorial for HTF. There is also a slightly out-dated
blog article (<http://factisresearch.blogspot.de/2011/10/new-version-of-htf-with-diffs-colors.html>)
demonstrating HTF's coloring, pretty-printing and diff functionality.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-HTF

(define-public haskell-8.10-HsYAML-aeson
  (package
    (name "haskell-8.10-HsYAML-aeson")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsYAML-aeson/HsYAML-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "139hqd07hkr8ykvrgmcshh9f3vp9dnrj6ks5nl8hgrpi990jsy5r"))))
    (properties `((upstream-name . "HsYAML-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-exe")
       #:cabal-revision
       ("6" "1c7v808i9wafx0z74skim7h96z7hdl4v7clawg9s1idzzwhihjcr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-HsYAML)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/HsYAML-aeson")
    (synopsis "JSON to YAML Adapter")
    (description
     "The [YAML 1.2](https://yaml.org/spec/1.2/spec.html) format provides
a much richer data-model and feature-set
than the [JavaScript Object Notation (JSON)](https://tools.ietf.org/html/rfc7159) format.
However, sometimes it's desirable to ignore the extra capabilities
and treat YAML as if it was merely a more convenient markup format
for humans to write JSON data. To this end this module provides a
compatibility layer atop [HsYAML](https://hackage.haskell.org/package/HsYAML)
which allows decoding YAML documents in the more limited JSON data-model while also providing
convenience by reusing [aeson](https://hackage.haskell.org/package/aeson)'s
'FromJSON' instances for decoding the YAML data into native Haskell data types.")
    (license license:gpl2+)))

haskell-8.10-HsYAML-aeson

(define-public haskell-8.10-IPv6Addr
  (package
    (name "haskell-8.10-IPv6Addr")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/IPv6Addr/IPv6Addr-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d20cfnxvahcnr8iq71ymyykfl6cgxzl5i6vmdl7ill2bj07xy08"))))
    (properties `((upstream-name . "IPv6Addr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-iproute)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-network-info)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)))
    (home-page "https://github.com/MichelBoucey/IPv6Addr")
    (synopsis "Library to deal with IPv6 address text representations.")
    (description
     "Library to deal with IPv6 address text representations, canonization and manipulations.")
    (license license:bsd-3)))

haskell-8.10-IPv6Addr

(define-public haskell-8.10-JuicyPixels-blurhash
  (package
    (name "haskell-8.10-JuicyPixels-blurhash")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels-blurhash/JuicyPixels-blurhash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kgl2j7990p8q5yrkn0wgaszc9fzva1pc3277j11k1lbjsymz360"))))
    (properties `((upstream-name . "JuicyPixels-blurhash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "09mlq9874j1lc33mk9f7qx6nwyz58hywnb8r4l1nkmnnbnc56alj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/SamProtas/JuicyPixels-blurhash#readme")
    (synopsis
     "Blurhash is a very compact represenation of a placeholder for an image")
    (description
     "Please see the README on GitHub at <https://github.com/SamProtas/JuicyPixels-blurhash#readme>")
    (license license:bsd-3)))

haskell-8.10-JuicyPixels-blurhash

(define-public haskell-8.10-ShellCheck
  (package
    (name "haskell-8.10-ShellCheck")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ShellCheck/ShellCheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wl43njaq95l35y5mvipwp1db9vr551nz9wl0xy83j1x1kc38xgz"))))
    (properties `((upstream-name . "ShellCheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1w65zcr97mghraif6bgcdabzy2dp72gasaad57a9b5yp9i27p2rl")))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)))
    (home-page "https://www.shellcheck.net/")
    (synopsis "Shell script analysis tool")
    (description
     "The goals of ShellCheck are:

* To point out and clarify typical beginner's syntax issues,
that causes a shell to give cryptic error messages.

* To point out and clarify typical intermediate level semantic problems,
that causes a shell to behave strangely and counter-intuitively.

* To point out subtle caveats, corner cases and pitfalls, that may cause an
advanced user's otherwise working script to fail under future circumstances.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-ShellCheck

(define-public haskell-8.10-Taxonomy
  (package
    (name "haskell-8.10-Taxonomy")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Taxonomy/Taxonomy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rwm3p510k5nmzbdy8bxdviv37mba0bvygxq92f24wqb5gry8w9w"))))
    (properties `((upstream-name . "Taxonomy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-either-unwrap)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fgl)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-graphviz)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/Taxonomy")
    (synopsis
     "Libary for parsing, processing and vizualization of taxonomy data")
    (description
     "Haskell cabal Taxonomy libary contains tools, parsers, datastructures and visualisation
for the NCBI (National Center for Biotechnology Information) Taxonomy datasources.

It can utilize information from the <http://www.ncbi.nlm.nih.gov/taxonomy Entrez> REST interface via <https://github.com/eggzilla/EntrezHTTP EntrezHTTP>,
as well as from the files of the Taxonomy database <ftp://ftp.ncbi.nih.gov/pub/taxonomy/ dump>.

Input data is parsed into a FGL based datastructure, which enables a wealth of processing
steps like node distances, retrieval of parent nodes or extraction of
subtrees.

Trees can be visualised via dot-format (<http://graphviz.org/ graphviz>)

<<http://www.tbi.univie.ac.at/~egg/taxonomy.svg dot>>

or via json-format (<http://d3js.org/d3js>).

The <https://hackage.haskell.org/package/TaxonomyTools TaxonomyTools> package contains tools based on this package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-Taxonomy

(define-public haskell-8.10-aern2-mp
  (package
    (name "haskell-8.10-aern2-mp")
    (version "0.2.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aern2-mp/aern2-mp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nfd2r05jm93idsgijccxzqkkpjkpkn8jz3kqwanlma0x3wj02cj"))))
    (properties `((upstream-name . "aern2-mp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cdar-mBound)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-collect-errors)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-mixed-types-num)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/michalkonecny/aern2#readme")
    (synopsis "Multi-precision ball (interval) arithmetic")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/aern2/#readme>")
    (license license:bsd-3)))

haskell-8.10-aern2-mp

(define-public haskell-8.10-aeson-attoparsec
  (package
    (name "haskell-8.10-aeson-attoparsec")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-attoparsec/aeson-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0111qzp381jjhv1iymjg8mr3jslx5x1ll3w2dq4b6f3r8y8871m5"))))
    (properties `((upstream-name . "aeson-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)))
    (home-page "https://github.com/athanclark/aeson-attoparsec#readme")
    (synopsis "Embed an Attoparsec text parser into an Aeson parser")
    (description "")
    (license license:bsd-3)))

haskell-8.10-aeson-attoparsec

(define-public haskell-8.10-aeson-better-errors
  (package
    (name "haskell-8.10-aeson-better-errors")
    (version "0.9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-better-errors/aeson-better-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05yibq9kqbjb8rh84n12sbax05amvd8jccpja0hyadz58pjy4jnk"))))
    (properties `((upstream-name . "aeson-better-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wzvrmhn5q2x1mcv43cyxhlck815ldkhx7c7gz5ijjyva1iicgn2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "https://github.com/hdgarrood/aeson-better-errors")
    (synopsis "Better error messages when decoding JSON values.")
    (description
     "A small package which gives you the tools to build parsers to decode JSON
values, and gives good error messages when parsing fails.
See also <http://harry.garrood.me/blog/aeson-better-errors/>.")
    (license license:expat)))

haskell-8.10-aeson-better-errors

(define-public haskell-8.10-aeson-casing
  (package
    (name "haskell-8.10-aeson-casing")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)))
    (home-page "https://hackage.haskell.org/package/aeson-casing")
    (synopsis "Tools to change the formatting of field names in Aeson
instances.")
    (description "Tools to change the formatting of field names in Aeson
instances. This includes CamelCasing, Pascal Casing and
Snake Casing.")
    (license license:expat)))

haskell-8.10-aeson-casing

(define-public haskell-8.10-aeson-combinators
  (package
    (name "haskell-8.10-aeson-combinators")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-combinators/aeson-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z5fbvpffx2lv3d2wk9g74hmkx1n1yjkwd3vy57f3pp5npja7f3a"))))
    (properties `((upstream-name . "aeson-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-doctest")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "https://github.com/turboMaCk/aeson-combinators")
    (synopsis "Aeson combinators for dead simple JSON decoding")
    (description "Low overhead value space `Decoder`
on top of Aeson's Parser for combinator style decoding.")
    (license license:bsd-3)))

haskell-8.10-aeson-combinators

(define-public haskell-8.10-aeson-compat
  (package
    (name "haskell-8.10-aeson-compat")
    (version "0.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-compat/aeson-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ia3qfdpbrzhwwg4ywpdwca0z1m85k081pcz6jh1sx8qjsvcr71w"))))
    (properties `((upstream-name . "aeson-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0h9ycmx7ad8m3iby8zgv33ql76zggnkiw8c8hnyrh98lm45jj1y0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-attoparsec-iso8601)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/phadej/aeson-compat#readme")
    (synopsis "Compatibility layer for aeson")
    (description "Compatibility layer for @@aeson@@")
    (license license:bsd-3)))

haskell-8.10-aeson-compat

(define-public haskell-8.10-aeson-default
  (package
    (name "haskell-8.10-aeson-default")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-default/aeson-default-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fmjxanahqdkrrgy56i2xbm3547c512k4p4if6c6lvrxcfvb8zjy"))))
    (properties `((upstream-name . "aeson-default") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)))
    (home-page "https://github.com/versioncloud/aeson-default#readme")
    (synopsis "Apply default value to FromJSON instacnes' Maybe fields")
    (description "Please see http://hackage.haskell.org/package/aeson-default")
    (license license:bsd-3)))

haskell-8.10-aeson-default

(define-public haskell-8.10-aeson-generic-compat
  (package
    (name "haskell-8.10-aeson-generic-compat")
    (version "0.0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-generic-compat/aeson-generic-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kr3waa46k3619yvif0zh4lx7s0zhyghlr1c5kkrvg432i8wmdm6"))))
    (properties `((upstream-name . "aeson-generic-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)))
    (home-page "https://hackage.haskell.org/package/aeson-generic-compat")
    (synopsis "Compatible generic class names of Aeson")
    (description
     "This package includes compatible generic class names of Aeson package.")
    (license license:bsd-3)))

haskell-8.10-aeson-generic-compat

(define-public haskell-8.10-aeson-optics
  (package
    (name "haskell-8.10-aeson-optics")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-optics/aeson-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1na5nsbp4sds8q289knzj4rgiwabbinxm0ihh66jfz0sjiia4wp7"))))
    (properties `((upstream-name . "aeson-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wyn0l2qhlrlrf5xy1grk9mshlxsfy566ayabg9f92w7m89n0kff")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-optics-extra)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/phadej/aeson-optics")
    (synopsis "Law-abiding optics for aeson")
    (description "Law-abiding optics for aeson.")
    (license license:expat)))

haskell-8.10-aeson-optics

(define-public haskell-8.10-aeson-pretty
  (package
    (name "haskell-8.10-aeson-pretty")
    (version "0.8.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-pretty/aeson-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "021az9az6xik9c9s3rnar5fr1lgy2h3igibf5ixnc7ps3m2lzg2x"))))
    (properties `((upstream-name . "aeson-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-only")
       #:cabal-revision
       ("2" "1895w56jl4c06wfhv5zf8ayqpzkxgva2rz5xxz8fvfdiza781cgp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/informatikr/aeson-pretty")
    (synopsis "JSON pretty-printing library and command-line tool.")
    (description
     "A JSON pretty-printing library compatible with aeson as well as
a command-line tool to improve readabilty of streams of JSON data.

The /library/ provides the function \"encodePretty\". It is a drop-in
replacement for aeson's \"encode\" function, producing JSON-ByteStrings for
human readers.

The /command-line tool/ reads JSON from stdin and writes prettified JSON
to stdout. It also offers a complementary \"compact\"-mode, essentially the
opposite of pretty-printing. If you specify @@-flib-only@@ like this

> cabal install -flib-only aeson-pretty

the command-line tool will NOT be installed.")
    (license license:bsd-3)))

haskell-8.10-aeson-pretty

(define-public haskell-8.10-aeson-yak
  (package
    (name "haskell-8.10-aeson-yak")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-yak/aeson-yak-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0x5a5z0bmiljl9rfapyq6srffp6v3g25qvy0x692a5as66y5ahxg"))))
    (properties `((upstream-name . "aeson-yak") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)))
    (home-page "https://github.com/tejon/aeson-yak")
    (synopsis "Handle JSON that may or may not be a list, or exist")
    (description
     "According to the standard promoted by Schema.org, the same JSON object
field may legally contain an array or a single element, be null, or be
absent entirely. This library provides an intermediary data type and
supporting functions to help aeson parse and output JSON conforming to this
frustrating behavior.")
    (license license:expat)))

haskell-8.10-aeson-yak

(define-public haskell-8.10-asn1-parse
  (package
    (name "haskell-8.10-asn1-parse")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-parse/asn1-parse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17pk8y3nwv9b9i5j15qlmwi7fmq9ab2z4kfpjk2rvcrh9lsf27wg"))))
    (properties `((upstream-name . "asn1-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-asn1-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "Simple monadic parser for ASN1 stream types.")
    (description
     "Simple monadic parser for ASN1 stream types, when ASN1 pattern matching is not convenient.")
    (license license:bsd-3)))

haskell-8.10-asn1-parse

(define-public haskell-8.10-base32
  (package
    (name "haskell-8.10-base32")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base32/base32-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1c1qzbri6m8b2m1cr68vrjbny6wlvfyrbfyzd61s83a3y3w39plp"))))
    (properties `((upstream-name . "base32") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0apyphnlsnr16s5xb9b9g7d5aw3ny4qx8nz8y71zpglk63sy0cq0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-byteorder)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-random-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base32")
    (synopsis "Fast RFC 4648-compliant Base32 encoding")
    (description
     "RFC 4648-compliant Base32 encodings and decodings.
This library provides performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-8.10-base32

(define-public haskell-8.10-base32string
  (package
    (name "haskell-8.10-base32string")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base32string/base32string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cpa6bvam4zd2l2hb3sdngj0dx482c9rkz4jj87n6pxsmq9id4wy"))))
    (properties `((upstream-name . "base32string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-32 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-32 Text representation.")
    (license license:expat)))

haskell-8.10-base32string

(define-public haskell-8.10-base58-bytestring
  (package
    (name "haskell-8.10-base58-bytestring")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base58-bytestring/base58-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ls05nzswjr6aw0wwk3q7cpv1hf0lw7vk16a5khm6l21yfcgbny2"))))
    (properties `((upstream-name . "base58-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://bitbucket.org/s9gf4ult/base58-bytestring")
    (synopsis "Implementation of BASE58 transcoding for ByteStrings")
    (description "Implementation of BASE58 transcoding copy-pasted from
haskoin package")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-base58-bytestring

(define-public haskell-8.10-base58string
  (package
    (name "haskell-8.10-base58string")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base58string/base58string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1260x4bkrizvnmylm237gpi92wazh31md9nf982sac3fsxyn0wiv"))))
    (properties `((upstream-name . "base58string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Fast and safe representation of a Base-58 string")
    (description
     "Provides an interface for converting any object that has a 'Binary' instance
to and from a base-58 Text representation.")
    (license license:expat)))

haskell-8.10-base58string

(define-public haskell-8.10-bimaps
  (package
    (name "haskell-8.10-bimaps")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-cereal-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-storable-tuple)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-th)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/bimaps")
    (synopsis "bijections with multiple implementations.")
    (description "Bijections between sets of values.")
    (license license:bsd-3)))

haskell-8.10-bimaps

(define-public haskell-8.10-binary-instances
  (package
    (name "haskell-8.10-binary-instances")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-instances/binary-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10z29k35clq74ma2f0yrkbyf14wdax1zzgb6mn26ja4vp9f5wc14"))))
    (properties `((upstream-name . "binary-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "157519fj5900sylbx8m38w5gy9la1795529wpsfj21ak1qfv74gn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-binary-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-text-binary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-binary-instances)))
    (home-page "https://github.com/haskellari/binary-instances#readme")
    (synopsis "Orphan instances for binary")
    (description
     "`binary-instances` defines orphan instances for types in some popular packages.")
    (license license:bsd-3)))

haskell-8.10-binary-instances

(define-public haskell-8.10-binary-parsers
  (package
    (name "haskell-8.10-binary-parsers")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-parsers/binary-parsers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jmr9djkp9ndysly8g1najzy38xhjpflri5jkwlyfnd2vk9x74yi"))))
    (properties `((upstream-name . "binary-parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/winterland1989/binary-parsers")
    (synopsis
     "Extends binary with parsec/attoparsec style parsing combinators.")
    (description
     "Extends binary with parsec/attoparsec style parsing combinators.")
    (license license:bsd-3)))

haskell-8.10-binary-parsers

(define-public haskell-8.10-bits
  (package
    (name "haskell-8.10-bits")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bits/bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0avcm2635nvgghr7nbci66s4l5q4k6ag81hla1xai58b159anyq0"))))
    (properties `((upstream-name . "bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bytes)))
    (home-page "http://github.com/ekmett/bits")
    (synopsis "Various bit twiddling and bitwise serialization primitives")
    (description "Various bit twiddling and bitwise serialization primitives.")
    (license license:bsd-3)))

haskell-8.10-bits

(define-public haskell-8.10-bound
  (package
    (name "haskell-8.10-bound")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bound/bound-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06wyjiswi5fnnw7ndjdln3fkfgab5c8qh9v1d1s0f0s6rzlb85xs"))))
    (properties `((upstream-name . "bound") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")
       #:cabal-revision
       ("1" "008i9lm53p0vwahrl61lfpv33yjchi6jyby7j37rlw9shr4h06qg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bytes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-deriving-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "http://github.com/ekmett/bound/")
    (synopsis "Making de Bruijn Succ Less")
    (description
     "We represent the target language itself as an ideal monad supplied by the
user, and provide a 'Scope' monad transformer for introducing bound variables
in user supplied terms. Users supply a 'Monad' and 'Traversable' instance,
and we traverse to find free variables, and use the Monad to perform
substitution that avoids bound variables.

Slides describing and motivating this approach to name binding are available
online at:

<http://www.slideshare.net/ekmett/bound-making-de-bruijn-succ-less>

The goal of this package is to make it as easy as possible to deal with name
binding without forcing an awkward monadic style on the user.

With generalized de Bruijn term you can 'lift' whole trees instead of just
applying 'succ' to individual variables, weakening the all variables bound
by a scope and greatly speeding up instantiation. By giving binders more
structure we permit easy simultaneous substitution and further speed up
instantiation.")
    (license license:bsd-3)))

haskell-8.10-bound

(define-public haskell-8.10-brick
  (package
    (name "haskell-8.10-brick")
    (version "0.62")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/brick/brick-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f74m9yxwqv3xs1jhhpww2higfz3w0v1niff257wshhrvrkigh36"))))
    (properties `((upstream-name . "brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fdemos")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-config-ini)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-data-clist)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-zipper)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vty)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word-wrap)))
    (home-page "https://github.com/jtdaugherty/brick/")
    (synopsis "A declarative terminal user interface library")
    (description
     "Write terminal user interfaces (TUIs) painlessly with 'brick'! You
write an event handler and a drawing function and the library does the
rest.


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

haskell-8.10-brick

(define-public haskell-8.10-bsb-http-chunked
  (package
    (name "haskell-8.10-bsb-http-chunked")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bsb-http-chunked/bsb-http-chunked-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z0f18yc6zlwh29c6175ivfcin325lvi4irpvv0n3cmq7vi0k0ql"))))
    (properties `((upstream-name . "bsb-http-chunked") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "15hg352id2f4x0dnvv47bdiz6gv5hp5a2mki9yzmhc7ajpk31mdd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "http://github.com/sjakobi/bsb-http-chunked")
    (synopsis "Chunked HTTP transfer encoding for bytestring builders")
    (description
     "This library contains functions for encoding [bytestring
builders](http://hackage.haskell.org/package/bytestring/docs/Data-ByteString-Builder.html#t:Builder)
for [chunked HTTP\\/1.1 transfer](https://en.wikipedia.org/wiki/Chunked_transfer_encoding).

This functionality was extracted from
the [blaze-builder](http://hackage.haskell.org/package/blaze-builder)
package.")
    (license license:bsd-3)))

haskell-8.10-bsb-http-chunked

(define-public haskell-8.10-ca-province-codes
  (package
    (name "haskell-8.10-ca-province-codes")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ca-province-codes/ca-province-codes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lhmmqn83v9bflm4x2nqbxx6pjh393id29syglinaqal4dvl5qq3"))))
    (properties `((upstream-name . "ca-province-codes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0502zw8bbx6761s8dfnmbnw475y9x2ikk8s281j1fd1db3wdv17l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/prikhi/ca-province-codes#readme")
    (synopsis "ISO 3166-2:CA Province Codes and Names")
    (description
     "This package contains a @@Code@@ data type containing each Canadian Province and Territory, as well as functions for converting from and to the English subdivision names.")
    (license license:bsd-3)))

haskell-8.10-ca-province-codes

(define-public haskell-8.10-cassava-megaparsec
  (package
    (name "haskell-8.10-cassava-megaparsec")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cassava-megaparsec/cassava-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pg9z38jmrylbj683b6pf7psipp7lrdq6mn1hbj8v2gj5lh8yf8n"))))
    (properties `((upstream-name . "cassava-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1nknyqs8bb3qiysq5a2n1f7lzgkr8b0pvshg5jx5z5wgfmpjmyjf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/stackbuilders/cassava-megaparsec")
    (synopsis "Megaparsec parser of CSV files that plays nicely with Cassava")
    (description
     "Megaparsec parser of CSV files that plays nicely with Cassava.")
    (license license:expat)))

haskell-8.10-cassava-megaparsec

(define-public haskell-8.10-cfenv
  (package
    (name "haskell-8.10-cfenv")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cfenv/cfenv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zklgqkm33n8a2pq8h313xij4nvrv0brh7v4q024bglyam1ndscc"))))
    (properties `((upstream-name . "cfenv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)))
    (home-page "https://github.com/tomphp/haskell-cfenv#readme")
    (synopsis
     "A library getting the environment when running on Cloud Foundry")
    (description
     "This is a port of go-cfenv for Golang. The purpose of this library is to assist you in writing Haskell apps that run on Cloud Foundry. It provides convenience functions and structures that map to Cloud Foundry environment variable primitives.")
    (license license:bsd-3)))

haskell-8.10-cfenv

(define-public haskell-8.10-cheapskate
  (package
    (name "haskell-8.10-cheapskate")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate/cheapskate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17n6laihqrjn62l8qw4565nf77zkvrl68bjmc3vzr4ckqfblhdzd"))))
    (properties `((upstream-name . "cheapskate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dingus")
       #:cabal-revision
       ("1" "15hdlp062gv8x7giwcfbj1kfmhpj1bg7y2w4wr2yl436haxkrbmq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jgm/cheapskate")
    (synopsis "Experimental markdown processor.")
    (description "This is an experimental Markdown processor in pure
Haskell.  It aims to process Markdown efficiently and in
the most forgiving possible way.  It is designed to deal
with any input, including garbage, with linear
performance.  Output is sanitized by default for
protection against XSS attacks.

Several markdown extensions are implemented, including
fenced code blocks, significant list start numbers, and
autolinked URLs.  See README.markdown for details.")
    (license license:bsd-3)))

haskell-8.10-cheapskate

(define-public haskell-8.10-checkers
  (package
    (name "haskell-8.10-checkers")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/checkers/checkers-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1yqrwbwylqbyagbilak7491ai5jwd92lrs2y144yrksq4215f9az"))))
    (properties `((upstream-name . "checkers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "https://github.com/haskell-checkers/checkers")
    (synopsis "Check properties on standard classes and data structures.")
    (description
     "''Checkers'' wraps up the expected properties associated with various
standard type classes as QuickCheck properties.  Also some morphism
properties.  It also provides arbitrary instances and generator combinators
for common data types.

&#169; 2008-2013 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-8.10-checkers

(define-public haskell-8.10-chronologique
  (package
    (name "haskell-8.10-chronologique")
    (version "0.3.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chronologique/chronologique-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bb75dijnjnhvgik4qf0zqj9q2wfdqyx70gs18cbxkrqg9956fwh"))))
    (properties `((upstream-name . "chronologique") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/chronologique/")
    (synopsis "Time to manipulate time")
    (description
     "A simple type useful for representing timestamps as generated by system
events, along with conveniences for converting between time types from common
Haskell time libraries.

Our original use was wanting to conveniently measure things happening on
distributed computer systems. Since machine clock cycles are in units of
nanoseconds, this has the nice property that, assuming the system clock is not
corrupted, two subsequent events from the same source process are likely to
have monotonically increasing timestamps. And even if the system clock has
skew, they're still decently likely to be unique per device. These TimeStamps
thus make good keys when building Maps.

The core type is in \"Chrono.TimeStamp\", see there for full documentation.")
    (license license:expat)))

haskell-8.10-chronologique

(define-public haskell-8.10-chronos
  (package
    (name "haskell-8.10-chronos")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/chronos/chronos-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10nxhnj5y984c3mf2wkc2zl6afbph0b0vj7f722g0yp7cq4908yj"))))
    (properties `((upstream-name . "chronos") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0yspjcgnzl8kvfw6lgndkd2m4cp1s5gvga0kfm5fbrf0g8kwhns8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-torsor)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/andrewthad/chronos")
    (synopsis "A performant time library")
    (description
     "Chronos is a performance-oriented time library for Haskell, with a
straightforward API. The main differences between this
and the <http://hackage.haskell.org/package/time time> library
are:
* Chronos uses machine integers where possible. This means
that time-related arithmetic should be faster, with the
drawback that the types are incapable of representing times
that are very far in the future or the past (because Chronos
provides nanosecond, rather than picosecond, resolution).
For most users, this is not a hindrance.
* Chronos provides 'ToJSON'/'FromJSON' instances for serialisation.
* Chronos provides 'Unbox' instances for working with unboxed vectors.
* Chronos provides 'Prim' instances for working with byte arrays/primitive arrays.
* Chronos uses normal non-overloaded haskell functions for
encoding and decoding time. It provides <http://hackage.haskell.org/package/attoparsec attoparsec> parsers for both 'Text' and
'ByteString'. Additionally, Chronos provides functions for
encoding time to 'Text' or 'ByteString'. The http://hackage.haskell.org/package/time time> library accomplishes these with the
<http://hackage.haskell.org/package/time-1.9.3/docs/Data-Time-Format.html Data.Time.Format> module, which uses UNIX-style datetime
format strings. The approach taken by Chronos is faster and
catches more mistakes at compile time, at the cost of being
less expressive.")
    (license license:bsd-3)))

haskell-8.10-chronos

(define-public haskell-8.10-circular
  (package
    (name "haskell-8.10-circular")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/circular/circular-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wmm649rpjyy1w7k8zd4b8k52cb26i2jq4n6hszbspxp2bcvrnfs"))))
    (properties `((upstream-name . "circular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/dschrempf/circular#readme")
    (synopsis "Circular fixed-sized mutable vectors")
    (description
     "Please see the README at <https://github.com/dschrempf/circular#readme>")
    (license license:bsd-3)))

haskell-8.10-circular

(define-public haskell-8.10-cmark-lucid
  (package
    (name "haskell-8.10-cmark-lucid")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cmark-lucid/cmark-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00rwiax7dd01259vrdkv574zi58agr17p7jkzixgwchfxngpp4nj"))))
    (properties `((upstream-name . "cmark-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mizbv18bl8qrgz27wlz7sb6cfhblmp7p7gh7dqq8g0r4djrvqg5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-cmark)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-lucid)))
    (home-page "http://github.com/aelve/cmark-lucid")
    (synopsis "Use cmark with Lucid")
    (description
     "A package for rendering Markdown (parsed via cmark) to Lucid's HTML.")
    (license license:bsd-3)))

haskell-8.10-cmark-lucid

(define-public haskell-8.10-comonad-extras
  (package
    (name "haskell-8.10-comonad-extras")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comonad-extras/comonad-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vsxxgqsiizprm2xxjks1n77mlx5rb9ybx36ag49fkzyb01rbb34"))))
    (properties `((upstream-name . "comonad-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "http://github.com/ekmett/comonad-extras/")
    (synopsis "Exotic comonad transformers")
    (description "Exotic comonad transformers")
    (license license:bsd-3)))

haskell-8.10-comonad-extras

(define-public haskell-8.10-configurator-export
  (package
    (name "haskell-8.10-configurator-export")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator-export/configurator-export-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k42kdzrmci19w2wb6lswkf2g9fzmrwkn6yvvz694xy957pn5gcx"))))
    (properties `((upstream-name . "configurator-export") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-configurator)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/mstksg/configurator-export")
    (synopsis "Pretty printer and exporter for configurations from
the \"configurator\" library.")
    (description
     "Pretty printers and exporters for 'Config's from the
<http://hackage.haskell.org/package/configurator-0.3.0.0 configurator>
library, in \"Data.Configurator\".

All results are intended to be valid parsing files in the
configuration file syntax of the library.

For a full round trip:

> main = do
>   cfg <- load [Required \"config.cfg\"]
>   writeConf \"config.cfg\" cfg

This should load the config file, parse it, and then
re-export it, rewriting the original config file.  The
result should be an identical configuration file (with
keys potentially re-arranged and re-sorted, comments
removed, etc.)

See the \"Data.Configurator.Export\" module for more
details and ways to modify the output style.")
    (license license:bsd-3)))

haskell-8.10-configurator-export

(define-public haskell-8.10-constraints-extras
  (package
    (name "haskell-8.10-constraints-extras")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/constraints-extras/constraints-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w2wwqsgxqkn8byivrgcsi6fh1kxbivqarmdnpxyh1a1cg373xfp"))))
    (properties `((upstream-name . "constraints-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbuild-readme")
       #:cabal-revision
       ("1" "1smha6ljia9bfgdy1h0lkgi9464rwa9lnw7rqfi1c23pzyiw13lh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)))
    (home-page "https://github.com/obsidiansystems/constraints-extras")
    (synopsis "Utility package for constraints")
    (description
     "Convenience functions and TH for working with constraints. See <https://github.com/obsidiansystems/constraints-extras/blob/develop/README.md README.md> for example usage.")
    (license license:bsd-3)))

haskell-8.10-constraints-extras

(define-public haskell-8.10-criterion-measurement
  (package
    (name "haskell-8.10-criterion-measurement")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion-measurement/criterion-measurement-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ffmjcpmdx2sx0sr3g5n2s8dhrbmh7606zfnymv2v9h1rf36xf3x"))))
    (properties `((upstream-name . "criterion-measurement") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-fast")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/haskell/criterion")
    (synopsis "Criterion measurement functionality and associated types")
    (description
     "Measurement-related functionality extracted from Criterion, with minimal dependencies. The rationale for this is to enable alternative analysis front-ends.")
    (license license:bsd-3)))

haskell-8.10-criterion-measurement

(define-public haskell-8.10-crypto-pubkey-types
  (package
    (name "haskell-8.10-crypto-pubkey-types")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-pubkey-types/crypto-pubkey-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q0wlzjmpx536h1zcdzrpxjkvqw8abj8z0ci38138kpch4igbnby"))))
    (properties `((upstream-name . "crypto-pubkey-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-asn1-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-crypto-pubkey-types")
    (synopsis "Generic cryptography Public keys algorithm types")
    (description "Generic cryptography public keys algorithm types")
    (license license:bsd-3)))

haskell-8.10-crypto-pubkey-types

(define-public haskell-8.10-data-default-extra
  (package
    (name "haskell-8.10-data-default-extra")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-extra/data-default-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yg5vvapyj91b0iqi374rali3gbfn9y5g8fr6rbn3bkgwxxarskz"))))
    (properties `((upstream-name . "data-default-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith-bytestring" "-fwith-case-insensitive" "-fwith-containers" "-f-with-dlist" "-fwith-text" "-fwith-old-locale" "-fwith-unordered-containers" "-fwith-vector")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-default-instances-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-data-default-instances-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-default-instances-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-default-instances-new-base)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-default-instances-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-default-instances-text)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-data-default-instances-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-data-default-instances-vector)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "A class for types with a default value.")
    (description
     "An alternative to
<https://hackage.haskell.org/package/data-default data-default> package, that
provides a lot of additional instances for @@Default@@ type class.

@@Default@@ type class provides a default value (@@def@@) of a type. In case when
a particluar type has an instance for @@Monoid@@, then the default value should
be @@mempty@@, otherwise it can cause a great deal of confusion.

One must understand, that @@Default@@ type class, has no axioms associated with
it. Its purpose is to minimize:

* Number of imports.

* Number of introduced definitions that are part of an API.

* Complexity of building more complicated \\\"default values\\\" out of
simpler \\\"default values\\\".

* Cognitive overhead. (Reduction of cognitive overhead is partially a
consequence of reducing above issues.)

As one may notice, most of the listed problems, that @@Default@@ type class
tries to solve, to various degrees of success, are for human benefit, and not
theoretically founded. Because of this, please always try hard to define
sensible instances of @@Default@@. Most importantly, document what @@def@@ means
for particular type, and always check that @@def@@ is sensible, by testing it
on a real world sample of human beings, one is not a big enough sample.

That said, using @@Default@@ may not always be a good idea. If it breaks
people's mental model, or theoretical models with real axioms, then just
don't use it.")
    (license license:bsd-3)))

haskell-8.10-data-default-extra

(define-public haskell-8.10-data-msgpack
  (package
    (name "haskell-8.10-data-msgpack")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-data-msgpack-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-groom)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-8.10-data-msgpack

(define-public haskell-8.10-deriveJsonNoPrefix
  (package
    (name "haskell-8.10-deriveJsonNoPrefix")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriveJsonNoPrefix/deriveJsonNoPrefix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zwk181c8fv0cv6w3daz3gyb0rwp2cm56piv19iz2vfv3jk9rqqs"))))
    (properties `((upstream-name . "deriveJsonNoPrefix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://gitlab.com/igrep/deriveJsonNoPrefix")
    (synopsis
     "Derive ToJSON/FromJSON instances in a more prefix-friendly manner.")
    (description
     "Please see the README on GitLab at <https://gitlab.com/igrep/deriveJsonNoPrefix#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-deriveJsonNoPrefix

(define-public haskell-8.10-deriving-aeson
  (package
    (name "haskell-8.10-deriving-aeson")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriving-aeson/deriving-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f59ar4cax7g0h6wrk8ckni7i4gw5wls5ybzbrji2a0qpd7q5lrd"))))
    (properties `((upstream-name . "deriving-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0pwx7lmdhpipg9ksqkz6xpjzh1aw2hip8y3jsk20ndl4wdzvxak5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)))
    (home-page "https://hackage.haskell.org/package/deriving-aeson")
    (synopsis "Type driven generic aeson instance customisation")
    (description
     "This package provides a newtype wrapper with
FromJSON/ToJSON instances customisable via a phantom type parameter.
The instances can be rendered to the original type using DerivingVia.")
    (license license:bsd-3)))

haskell-8.10-deriving-aeson

(define-public haskell-8.10-dlist-nonempty
  (package
    (name "haskell-8.10-dlist-nonempty")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dlist-nonempty/dlist-nonempty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0csbspdy43pzvasb5mhs5pz2f49ws78pi253cx7pp84wjx6ads20"))))
    (properties `((upstream-name . "dlist-nonempty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("13" "1hbd0j8yw81y4rnxqxxnvhy33ccgl5c7qcr9shzqy97fwi2vkikm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "https://github.com/phadej/dlist-nonempty")
    (synopsis "Non-empty difference lists")
    (description
     "Difference lists are a list-like type supporting O(1) append. This is
particularly useful for efficient logging and pretty printing (e.g. with the
Writer monad), where list append quickly becomes too expensive.

> DList a         ≅ [a] -> [a]
> NonEmptyDList a ≅ [a] -> NonEmpty a

For empty variant, @@DList@@, see <http://hackage.haskell.org/package/dlist dlist package>.")
    (license license:bsd-3)))

haskell-8.10-dlist-nonempty

(define-public haskell-8.10-doctemplates
  (package
    (name "haskell-8.10-doctemplates")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctemplates/doctemplates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "048h8ka849h1f0xxwkasjbrrwq03rfz2m7aqg5xc5286kp02w9ns"))))
    (properties `((upstream-name . "doctemplates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-HsYAML)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-doclayout)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/doctemplates#readme")
    (synopsis "Pandoc-style document templates")
    (description "This is the text templating system used by pandoc.
It supports variable interpolation, iteration,
tests for non-blank values, pipes, and partials.
Templates are rendered to doclayout Docs,
and variable values may come from a variety of
different sources, including aeson Values.")
    (license license:bsd-3)))

haskell-8.10-doctemplates

(define-public haskell-8.10-doctest-discover
  (package
    (name "haskell-8.10-doctest-discover")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-discover/doctest-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j4yqkb5jvvm9g2xpnm6gy4brb725cn3hzm7cv3yylkyhd8allx9"))))
    (properties `((upstream-name . "doctest-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)))
    (home-page "http://github.com/karun012/doctest-discover")
    (synopsis "Easy way to run doctests via cabal")
    (description
     "doctest-discover provides an easy way to run doctests via cabal")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-doctest-discover

(define-public haskell-8.10-edit-distance-vector
  (package
    (name "haskell-8.10-edit-distance-vector")
    (version "1.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/edit-distance-vector/edit-distance-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07qgc8dyi9kkzkd3xcd78wdlljy0xwhz65b4r2qg2piidpcdvpxp"))))
    (properties `((upstream-name . "edit-distance-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/thsutton/edit-distance-vector")
    (synopsis "Calculate edit distances and edit scripts between vectors.")
    (description
     "An implementation of the Wagner–Fischer dynamic programming algorithm to
find the optimal edit script and cost between two sequences.

The implementation in this package is specialised to sequences represented
with \"Data.Vector\" but is otherwise agnostic to:

* The type of values in the vectors;

* The type representing edit operations; and

* The type representing the cost of operations.
")
    (license license:bsd-3)))

haskell-8.10-edit-distance-vector

(define-public haskell-8.10-either
  (package
    (name "haskell-8.10-either")
    (version "5.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/either/either-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09yzki8ss56xhy9vggdw1rls86b2kf55hjl5wi0vbv02d8fxahq2"))))
    (properties `((upstream-name . "either") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03bgnq55lc6f1nx4p662gidfsyyfm3xm4fi84h77wnsppxrpa5j1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
    (home-page "http://github.com/ekmett/either/")
    (synopsis "Combinators for working with sums")
    (description "Combinators for working with sums.")
    (license license:bsd-3)))

haskell-8.10-either

(define-public haskell-8.10-ekg-json
  (package
    (name "haskell-8.10-ekg-json")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ekg-json/ekg-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0iyx0ix4dcyhh9xg4ia1lm7x2q0iffswnr33khfg9fr81am80shy"))))
    (properties `((upstream-name . "ekg-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "1f53dh7h48j07xw4jdxzwipndap8wdg36d857zdkaxmf14dzqvp1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-ekg-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-json")
    (synopsis "JSON encoding of ekg metrics")
    (description
     "Encodes ekg metrics as JSON, using the same encoding as used by the
ekg package, thus allowing ekg metrics to be served by other HTTP
servers than the one used by the ekg package.")
    (license license:bsd-3)))

haskell-8.10-ekg-json

(define-public haskell-8.10-ekg-statsd
  (package
    (name "haskell-8.10-ekg-statsd")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ekg-statsd/ekg-statsd-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02sgssxk8q9clz0pw7k7dbgxryvkhq46b9mf0nqkvw8r81j4gy92"))))
    (properties `((upstream-name . "ekg-statsd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-ekg-core)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-statsd")
    (synopsis "Push metrics to statsd")
    (description
     "This library lets you push system metrics to a statsd server.")
    (license license:bsd-3)))

haskell-8.10-ekg-statsd

(define-public haskell-8.10-elm-bridge
  (package
    (name "haskell-8.10-elm-bridge")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elm-bridge/elm-bridge-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q71zj7vzkwxkn022bn4bqnblwygdrkjypqy65xxadfbqjl9y8gx"))))
    (properties `((upstream-name . "elm-bridge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/agrafix/elm-bridge")
    (synopsis
     "Derive Elm types and Json code from Haskell types, using aeson's options")
    (description
     "Building the bridge from Haskell to Elm and back. Define types once,
and derive the aeson and elm functions at the same time, using any aeson
option you like. Cheers!")
    (license license:bsd-3)))

haskell-8.10-elm-bridge

(define-public haskell-8.10-elm-export
  (package
    (name "haskell-8.10-elm-export")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elm-export/elm-export-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mgrcd1hrg6rjb5x18zh9vcxqsc9hnfwvvr1nia2piqqb40n565z"))))
    (properties `((upstream-name . "elm-export") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-formatting)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "http://github.com/krisajenkins/elm-export")
    (synopsis "A library to generate Elm types from Haskell source.")
    (description
     "Generate Elm source code automatically from Haskell types. Using GHC.Generics, we can automatically derive Elm type declarations, and Aeson-compatible JSON decoders & encoders.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-elm-export

(define-public haskell-8.10-envy
  (package
    (name "haskell-8.10-envy")
    (version "2.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/envy/envy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s6jp2npnp0x5hndnhkjwc9bhdghzlpl0n38804afiwxai9bawy8"))))
    (properties `((upstream-name . "envy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1girkgynrr5md1fa892cpg2cyy21hs5g463p5rb0fkhsnvci52xm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)))
    (home-page "https://hackage.haskell.org/package/envy")
    (synopsis
     "An environmentally friendly way to deal with environment variables")
    (description
     "For package use information see the <https://github.com/dmjio/envy/blob/master/README.md README.md>")
    (license license:bsd-3)))

haskell-8.10-envy

(define-public haskell-8.10-eq
  (package
    (name "haskell-8.10-eq")
    (version "4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/eq/eq-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1bcvjpbdis79dd09i07l7rjkh7j79qbpwb731rgr9k9215268wfa"))))
    (properties `((upstream-name . "eq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "http://github.com/ekmett/eq/")
    (synopsis "Leibnizian equality")
    (description "Leibnizian equality.")
    (license license:bsd-3)))

haskell-8.10-eq

(define-public haskell-8.10-etc
  (package
    (name "haskell-8.10-etc")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/etc/etc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1j17g8jij4y782vwpx7b52fv9nwv4v4mygk2hbq6vihzkbrdbd31"))))
    (properties `((upstream-name . "etc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-extra" "-f-cli" "-f-yaml")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (home-page "https://github.com/roman/Haskell-etc")
    (synopsis "Declarative configuration spec for Haskell projects")
    (description
     "`etc` gathers configuration values from multiple sources (cli options, OS
environment variables, files) using a declarative spec file that defines where
these values are to be found and located in a configuration map.")
    (license license:expat)))

haskell-8.10-etc

(define-public haskell-8.10-foldl
  (package
    (name "haskell-8.10-foldl")
    (version "1.4.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/foldl/foldl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zf4yljh3s2ddxa7dhzdglmylj14kfldhkclc44g37zvjq6kcnag"))))
    (properties `((upstream-name . "foldl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1rli018i812pq294hffpd4x517fszp28hvrlh2x8vm69yh10clfa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/foldl")
    (synopsis "Composable, streaming, and efficient left folds")
    (description
     "This library provides strict left folds that stream in constant
memory, and you can combine folds using @@Applicative@@ style to derive new
folds.  Derived folds still traverse the container just once and are often as
efficient as hand-written folds.")
    (license license:bsd-3)))

haskell-8.10-foldl

(define-public haskell-8.10-forma
  (package
    (name "haskell-8.10-forma")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/forma/forma-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pd2qzibffbkw2c4mk687yg109pl0nfjq0kpwi2cl0l8d0qlyv0c"))))
    (properties `((upstream-name . "forma") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0p8cxv068d2fhpym28p49wxsiz6qdm1gb8mgw86lgs8yykqzwsy8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/mrkkrp/forma")
    (synopsis "Parse and validate forms in JSON format")
    (description "Parse and validate forms in JSON format.")
    (license license:bsd-3)))

haskell-8.10-forma

(define-public haskell-8.10-free
  (package
    (name "haskell-8.10-free")
    (version "5.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/free/free-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "121b81wxjk30nc27ivwzxjxi1dcwc30y0gy8l6wac3dxwvkx2c5j"))))
    (properties `((upstream-name . "free") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0x3d7jp17m65f25838ic26kvnpjfb99iw3d60ga57n8505shxywb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "http://github.com/ekmett/free/")
    (synopsis "Monads for free")
    (description
     "Free monads are useful for many tree-like structures and domain specific languages.

If @@f@@ is a 'Functor' then the free 'Monad' on @@f@@ is the type
of trees whose nodes are labeled with the constructors of @@f@@. The word
\\\"free\\\" is used in the sense of \\\"unrestricted\\\" rather than \\\"zero-cost\\\":
@@Free f@@ makes no constraining assumptions beyond those given by @@f@@ and the
definition of 'Monad'. As used here it is a standard term from the
mathematical theory of adjoint functors.

Cofree comonads are dual to free monads. They provide convenient ways to talk
about branching streams and rose-trees, and can be used to annotate syntax
trees. The cofree comonad can be seen as a stream parameterized by a 'Functor'
that controls its branching factor.

More information on free monads, including examples, can be found in the
following blog posts:
<http://comonad.com/reader/2008/monads-for-free/>
<http://comonad.com/reader/2011/free-monads-for-less/>")
    (license license:bsd-3)))

haskell-8.10-free

(define-public haskell-8.10-generic-aeson
  (package
    (name "haskell-8.10-generic-aeson")
    (version "0.2.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-aeson/generic-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w5xp1rfg3r90ja1f0s48i4x7yyynfv52p6b9ncsdqyrq3y9qvl0"))))
    (properties `((upstream-name . "generic-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07kg0bc2jvfww9a9n5rzffsi23k2i3py7h7dq7qcj7817kkh0ig0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/generic-aeson")
    (synopsis "Derivation of Aeson instances using GHC generics.")
    (description "Derivation of Aeson instances using GHC generics.")
    (license license:bsd-3)))

haskell-8.10-generic-aeson

(define-public haskell-8.10-generic-data-surgery
  (package
    (name "haskell-8.10-generic-data-surgery")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-data-surgery/generic-data-surgery-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dg9mg10g0abs21wksplnaqgig42jb6zvk7xqwj2mkl5yln3h9is"))))
    (properties `((upstream-name . "generic-data-surgery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-first-class-families)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-generic-data)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-show-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://github.com/Lysxia/generic-data-surgery#readme")
    (synopsis "Surgery for generic data types")
    (description
     "Transform data types before passing them to generic functions.")
    (license license:expat)))

haskell-8.10-generic-data-surgery

(define-public haskell-8.10-genvalidity-bytestring
  (package
    (name "haskell-8.10-genvalidity-bytestring")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-bytestring/genvalidity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d15cjp4pxi7hb9nilbf88mia8sv3wzwxgy3kn46bvhz4w726z5d"))))
    (properties `((upstream-name . "genvalidity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-bytestring)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for ByteString")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-bytestring

(define-public haskell-8.10-genvalidity-containers
  (package
    (name "haskell-8.10-genvalidity-containers")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-containers/genvalidity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g9drk60pf78j7qqh01a1yjqz93rv5irwhgi27qjda6siii5r3bk"))))
    (properties `((upstream-name . "genvalidity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for containers")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-containers

(define-public haskell-8.10-genvalidity-hspec-binary
  (package
    (name "haskell-8.10-genvalidity-hspec-binary")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-binary/genvalidity-hspec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "144gcr9hm89aqwr0fglnazc5biksdd7sv7qh0ivh56x7v80wd3r9"))))
    (properties `((upstream-name . "genvalidity-hspec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for binary-related Instances")
    (description
     "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.")
    (license license:expat)))

haskell-8.10-genvalidity-hspec-binary

(define-public haskell-8.10-genvalidity-hspec-cereal
  (package
    (name "haskell-8.10-genvalidity-hspec-cereal")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-cereal/genvalidity-hspec-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dyfx56cjila3l1nv199p12pi90hi9x27a97h5kqrkaxx5ca3czb"))))
    (properties `((upstream-name . "genvalidity-hspec-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for cereal-related instances")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-hspec-cereal

(define-public haskell-8.10-genvalidity-hspec-hashable
  (package
    (name "haskell-8.10-genvalidity-hspec-hashable")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-hashable/genvalidity-hspec-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ia1kvr4by2yfzdrk89da028aqpqx4sp3lllra147q7bpjys0kry"))))
    (properties `((upstream-name . "genvalidity-hspec-hashable")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances")
    (description "Standard spec's for Hashable instances")
    (license license:expat)))

haskell-8.10-genvalidity-hspec-hashable

(define-public haskell-8.10-genvalidity-hspec-optics
  (package
    (name "haskell-8.10-genvalidity-hspec-optics")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-optics/genvalidity-hspec-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mh9s6q3zii6dpkli4zbmz89wly6bjfalvgs7jh5fvg36wv0c0a8"))))
    (properties `((upstream-name . "genvalidity-hspec-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for lens")
    (description "Standard spec's for lens (van Laarhoven encoding)")
    (license license:expat)))

haskell-8.10-genvalidity-hspec-optics

(define-public haskell-8.10-genvalidity-scientific
  (package
    (name "haskell-8.10-genvalidity-scientific")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-scientific/genvalidity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1slcalgm79y7m5albya4n8bwv4721crr19iwvqkdy806rwr67dx9"))))
    (properties `((upstream-name . "genvalidity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-scientific)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Scientific")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-scientific

(define-public haskell-8.10-genvalidity-text
  (package
    (name "haskell-8.10-genvalidity-text")
    (version "0.7.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-text/genvalidity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p2g8qffg3ajzvjs5vxz558ch94aqqxjvqddwgy1apcxaa933j9c"))))
    (properties `((upstream-name . "genvalidity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-text)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Text")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-text

(define-public haskell-8.10-genvalidity-time
  (package
    (name "haskell-8.10-genvalidity-time")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-time/genvalidity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1za9sgwjm1vlp1q12dj0fmrvph6xcgnalvvjsxqvg9p7p6s9avnw"))))
    (properties `((upstream-name . "genvalidity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-time)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for time")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.10-genvalidity-time

(define-public haskell-8.10-genvalidity-unordered-containers
  (package
    (name "haskell-8.10-genvalidity-unordered-containers")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-unordered-containers/genvalidity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11f8j256944c96h1p5av9c2y4czmh7wkdmi70m3y2gd6cz24jgn2"))))
    (properties `((upstream-name . "genvalidity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-validity-unordered-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for unordered-containers")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-unordered-containers

(define-public haskell-8.10-genvalidity-uuid
  (package
    (name "haskell-8.10-genvalidity-uuid")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-uuid/genvalidity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02iln9qvcqmsjljflfrq8jckch8pvsarjb6lx0bkk7j3cw2cgn2r"))))
    (properties `((upstream-name . "genvalidity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-uuid)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for UUID")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-uuid

(define-public haskell-8.10-genvalidity-vector
  (package
    (name "haskell-8.10-genvalidity-vector")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-vector/genvalidity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y3msx28w15zy35x7w4p88xp5s1jy6p4gm3msviciy2swnm79vr0"))))
    (properties `((upstream-name . "genvalidity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-vector)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for vector")
    (description "")
    (license license:expat)))

haskell-8.10-genvalidity-vector

(define-public haskell-8.10-ghc-lib-parser-ex
  (package
    (name "haskell-8.10-ghc-lib-parser-ex")
    (version "8.10.0.24")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-lib-parser-ex/ghc-lib-parser-ex-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0miy1rrpg93r7xgpsmgfgx9djsg8fds2w7c6js4mvbjh3bsjdcpl"))))
    (properties `((upstream-name . "ghc-lib-parser-ex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fauto" "-f-no-ghc-lib")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)))
    (home-page "https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme")
    (synopsis "Algorithms on GHC parse trees")
    (description
     "Please see the README on GitHub at <https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme>")
    (license license:bsd-3)))

haskell-8.10-ghc-lib-parser-ex

(define-public haskell-8.10-ghcid
  (package
    (name "haskell-8.10-ghcid")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-fsnotify)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-terminal-size)))
    (home-page "https://github.com/ndmitchell/ghcid#readme")
    (synopsis "GHCi based bare bones IDE")
    (description
     "Either \\\"GHCi as a daemon\\\" or \\\"GHC + a bit of an IDE\\\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @@ghcid --topmost --command=ghci@@, where @@--topmost@@ makes the window on top of all others (Windows only) and @@--command@@ is the command to start GHCi on your project (defaults to @@ghci@@ if you have a @@.ghci@@ file, or else to @@cabal repl@@).")
    (license license:bsd-3)))

haskell-8.10-ghcid

(define-public haskell-8.10-github-types
  (package
    (name "haskell-8.10-github-types")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-types/github-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rvqmzbbc8k7xs0akry7xh5c2abzzr6290812cnwk9ry3d3fmr6c"))))
    (properties `((upstream-name . "github-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)))
    (home-page "https://hackage.haskell.org/package/github-types")
    (synopsis "Type definitions for objects used by the GitHub v3 API")
    (description "This package includes (some) type definitions for objects
which are consumed or produced by the GitHub v3 API.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-github-types

(define-public haskell-8.10-github-webhooks
  (package
    (name "haskell-8.10-github-webhooks")
    (version "0.15.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-webhooks/github-webhooks-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cmavbh7c59pimspjj42mwlac5jmlgagjsw4239hcsrna5yi4wdz"))))
    (properties `((upstream-name . "github-webhooks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-ci")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-deepseq-generics)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/onrock-eng/github-webhooks#readme")
    (synopsis "Aeson instances for GitHub Webhook payloads.")
    (description
     "Complete instances for decoding GitHub Webhook payloads (using @@aeson@@). See the README at <https://github.com/onrock-eng/github-webhooks#readme> for examples.")
    (license license:expat)))

haskell-8.10-github-webhooks

(define-public haskell-8.10-graphite
  (package
    (name "haskell-8.10-graphite")
    (version "0.10.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphite/graphite-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1aqadpg3jm9f1z43ylpmh512gi320kqnnfl6qksp2l1w26lnd0vs"))))
    (properties `((upstream-name . "graphite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-graphviz)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/alx741/graphite#readme")
    (synopsis "Graphs and networks library")
    (description "Represent, analyze and visualize graphs")
    (license license:bsd-3)))

haskell-8.10-graphite

(define-public haskell-8.10-hackage-db
  (package
    (name "haskell-8.10-hackage-db")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-db/hackage-db-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1aj82n2ay16zman829gq7s9dkg3qyyavca8hhjfibx8hzg6pmnap"))))
    (properties `((upstream-name . "hackage-db") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")
       #:cabal-revision
       ("1" "12k9vm584l6glfkj92j1b2498g2sijdb8ypjmbb01yfn2xgbhkiv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tar)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page
     "https://github.com/NixOS/cabal2nix/tree/master/hackage-db#readme")
    (synopsis "Access cabal-install's Hackage database via Data.Map")
    (description
     "This library provides convenient access to the local copy of the Hackage
database that \\\"cabal update\\\" creates. Check out
<https://github.com/NixOS/hackage-db/tree/master/example/> for a collection
of simple example programs that demonstrate how to use this code.")
    (license license:bsd-3)))

haskell-8.10-hackage-db

(define-public haskell-8.10-haskell-names
  (package
    (name "haskell-8.10-haskell-names")
    (version "0.9.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-names/haskell-names-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gqh7whzzcg46c262yf610g781ach3p8458kwf3mmf1pyhjrj7hm"))))
    (properties `((upstream-name . "haskell-names") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-lens-light)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-traverse-with-class)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)))
    (home-page "http://documentup.com/haskell-suite/haskell-names")
    (synopsis "Name resolution library for Haskell")
    (description
     "This package takes modules parsed with `haskell-src-exts`, resolves used names and annotates the parsed module with scoping information.")
    (license license:bsd-3)))

haskell-8.10-haskell-names

(define-public haskell-8.10-haskell-src-exts-util
  (package
    (name "haskell-8.10-haskell-src-exts-util")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)))
    (home-page "https://github.com/pepeiborra/haskell-src-exts-util")
    (synopsis "Helper functions for working with haskell-src-exts trees")
    (description "Helper functions for working with haskell-src-exts trees.")
    (license license:bsd-3)))

haskell-8.10-haskell-src-exts-util

(define-public haskell-8.10-haskell-src-meta
  (package
    (name "haskell-8.10-haskell-src-meta")
    (version "0.8.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-meta/haskell-src-meta-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y3hnqg33pqzc66nl58va8lvwvmb0mx5q0p9r55i6cc3xwjahiyx"))))
    (properties `((upstream-name . "haskell-src-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)))
    (home-page "https://hackage.haskell.org/package/haskell-src-meta")
    (synopsis "Parse source to template-haskell abstract syntax.")
    (description "The translation from haskell-src-exts abstract syntax
to template-haskell abstract syntax isn't 100% complete yet.")
    (license license:bsd-3)))

haskell-8.10-haskell-src-meta

(define-public haskell-8.10-hasktags
  (package
    (name "haskell-8.10-hasktags")
    (version "0.72.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasktags/hasktags-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09p79w16fgpqi6bwq162769xdrnyb7wnmz56k00nz6dj1a0bbbdd"))))
    (properties `((upstream-name . "hasktags") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("2" "0f3v6k3bvsczz0z5i09286c0i74wz782vayzyp5lndqvrx3b4g0x")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-json)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-microlens-platform)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "http://github.com/MarcWeber/hasktags")
    (synopsis
     "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs")
    (description
     "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs.")
    (license license:bsd-3)))

haskell-8.10-hasktags

(define-public haskell-8.10-hgrev
  (package
    (name "haskell-8.10-hgrev")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hgrev/hgrev-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1v1niqvqj6w8nkr3pmjwj7va2f2nv8miwsfqsp3lj3b2i9x6asb2"))))
    (properties `((upstream-name . "hgrev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)))
    (home-page "https://github.com/bitnomial/hgrev")
    (synopsis "Compile Mercurial (hg) version info into Haskell code")
    (description
     "[Overview]

`hgrev` provides two modules:

* `Development.HgRev` - <https://mercurial.selenic.com Mercurial (hg)> Haskell API

* `Development.HgRev.TH` - Template Haskell splice to compile version info into Haskell code

Use @@$(hgRevStateTH defFormat)@@ with Template Haskell enabled to insert the
formatted version string.

[Requirements]

`hgrev` requires the `hg` binary version 3.2 or greater is installed and available on the system.
`Development.HgRev.HgRev` and `Development.HgRev.HgState` are obtained via two
separate calls to `hg` because working directory state isn't available programmatically.

[Usage Example]

> module Example where
>
> import           Data.Monoid          ((<>))
> import           Data.Text            (Text, pack)
> import           Development.HgRev.TH (defFormat, hgRevStateTH, jsonFormat)
> import           Options.Applicative  (Parser, ParserInfo, execParser, fullDesc,
>                                        help, helper, info, infoOption, long,
>                                        progDesc, short)
>
> main :: IO ()
> main = execParser parserInfo >> return ()
>
> verSwitch :: Parser (a -> a)
> verSwitch =
>     infoOption (\"HG rev: \" <> $(hgRevStateTH defFormat))
>     $  long \"version\"
>     <> short 'v'
>     <> help \"Display version information\"
>
> jsonSwitch :: Parser (a -> a)
> jsonSwitch =
>     infoOption $(hgRevStateTH jsonFormat)
>     $  long \"json\"
>     <> short 'J'
>     <> help \"Display JSON version information\"
>
> parserInfo :: ParserInfo (a -> a)
> parserInfo = info (helper <*> verSwitch <* jsonSwitch) fullDesc
>

Check out the <https://hackage.haskell.org/package/gitrev gitrev> package for similar git functionality.")
    (license license:bsd-3)))

haskell-8.10-hgrev

(define-public haskell-8.10-hi-file-parser
  (package
    (name "haskell-8.10-hi-file-parser")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hi-file-parser/hi-file-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jm3gbibafkw3ninvsz7f1x89xdyk6wml45mq9zb85p6m9xqlpv9"))))
    (properties `((upstream-name . "hi-file-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1q53g0h4xnq0fsjbwg1fclnw0kxpzz58p8jrczhmgb4z5wn8g292")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/commercialhaskell/hi-file-parser#readme")
    (synopsis "Parser for GHC's hi files")
    (description
     "Please see the README on Github at <https://github.com/commercialhaskell/hi-file-parser/blob/master/README.md>")
    (license license:bsd-3)))

haskell-8.10-hi-file-parser

(define-public haskell-8.10-hkd-default
  (package
    (name "haskell-8.10-hkd-default")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hkd-default/hkd-default-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ff8sfd68a06s7kfc85ww6w5wm7m0f70vd2bi0lbkj0r14rsn7vg"))))
    (properties `((upstream-name . "hkd-default") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)))
    (home-page "https://github.com/versioncloud/hkd-default#readme")
    (synopsis "Apply default value for optional field of HKD")
    (description "Please see http://hackage.haskell.org/package/hkd-default")
    (license license:bsd-3)))

haskell-8.10-hkd-default

(define-public haskell-8.10-hourglass-orphans
  (package
    (name "haskell-8.10-hourglass-orphans")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hourglass-orphans/hourglass-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r1x6w5zpszr783gzsl3v2fizas4mh5wwgdgdnr93lydngrsj2wz"))))
    (properties `((upstream-name . "hourglass-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/psibi/hourglass-orphans#readme")
    (synopsis "Orphan Aeson instances to hourglass")
    (description "Orphan Aeson instances to hourglass")
    (license license:bsd-3)))

haskell-8.10-hourglass-orphans

(define-public haskell-8.10-hruby
  (package
    (name "haskell-8.10-hruby")
    (version "0.3.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hruby/hruby-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00lp02wy7yxhh17dyq1acc6gfrwh145900ib42vz52lzsj5ivlcj"))))
    (properties `((upstream-name . "hruby") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages ruby) ruby-3.2)))
    (home-page "https://hackage.haskell.org/package/hruby")
    (synopsis "Embed a Ruby intepreter in your Haskell program !")
    (description
     "This doesn't work with Ruby 1.9. Everything you need should be in Foreign.Ruby.Safe.")
    (license license:bsd-3)))

haskell-8.10-hruby

(define-public haskell-8.10-hslua
  (package
    (name "haskell-8.10-hslua")
    (version "1.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hslua/hslua-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0p39xm0mmxzs5x6aim11qkb7npn0d9h7li2kwfhry0dijd1vm18i"))))
    (properties `((upstream-name . "hslua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-system-lua" "-f-apicheck" "-f-lua_32bits" "-fallow-unsafe-gc" "-fexport-dynamic" "-f-pkg-config" "-f-hardcode-reg-keys")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.github.io/")
    (synopsis "Bindings to Lua, an embeddable scripting language")
    (description "HsLua provides bindings, wrappers, types, and helper
functions to bridge Haskell and <https://www.lua.org/ Lua>.

This package contains a full Lua interpreter version 5.3.6.
If you want to link it with a system-wide Lua installation,
use the @@system-lua@@ flag.

<https://github.com/hslua/hslua-examples Example programs>
are available in a separate repository.")
    (license license:expat)))

haskell-8.10-hslua

(define-public haskell-8.10-htoml
  (package
    (name "haskell-8.10-htoml")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cies/htoml")
    (synopsis "Parser for TOML files")
    (description "TOML is an obvious and minimal format for config files.

This package provides a TOML parser,
build with the Parsec library. It exposes a JSON
interface using the Aeson library.")
    (license license:bsd-3)))

haskell-8.10-htoml

(define-public haskell-8.10-http-streams
  (package
    (name "haskell-8.10-http-streams")
    (version "0.8.9.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-streams/http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h8nnp1y4ngv6mwr3fxv428kcvrd3ming179sza8fkn49pcwdlxs"))))
    (properties `((upstream-name . "http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-http-common)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-openssl-streams)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/aesiniath/http-streams/")
    (synopsis "An HTTP client using io-streams")
    (description
     "An HTTP client, using the Snap Framework's 'io-streams' library to
handle the streaming IO. The API is optimized for ease of use for the
rather common case of code needing to query web services and deal with
the result.

The library is exported in a single module; see \"Network.Http.Client\"
for full documentation.")
    (license license:bsd-3)))

haskell-8.10-http-streams

(define-public haskell-8.10-http-types
  (package
    (name "haskell-8.10-http-types")
    (version "0.12.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-types/http-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05j00b9nqmwh9zaq9y9x50k81v2pd3j7a71kd91zlnbl8xk4m2jf"))))
    (properties `((upstream-name . "http-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)))
    (home-page "https://github.com/aristidb/http-types")
    (synopsis
     "Generic HTTP types for Haskell (for both client and server code).")
    (description
     "Generic HTTP types for Haskell (for both client and server code).")
    (license license:bsd-3)))

haskell-8.10-http-types

(define-public haskell-8.10-indexed-traversable-instances
  (package
    (name "haskell-8.10-indexed-traversable-instances")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-traversable-instances/indexed-traversable-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p38mssyajhwgc7ljnr31q6g18dxbv8r88z1r188xd82g6049v7s"))))
    (properties `((upstream-name . "indexed-traversable-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/indexed-traversable-instances")
    (synopsis
     "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex")
    (description
     "This package provides extra instances for type-classes in the [indexed-traversable](https://hackage.haskell.org/package/indexed-traversable) package.

The intention is to keep this package minimal;
it provides instances that formely existed in @@lens@@ or @@optics-extra@@.
We recommend putting other instances directly into their defining packages.
The @@indexed-traversable@@ package is light, having only GHC boot libraries
as its dependencies.")
    (license license:bsd-2)))

haskell-8.10-indexed-traversable-instances

(define-public haskell-8.10-ipython-kernel
  (package
    (name "haskell-8.10-ipython-kernel")
    (version "0.10.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ipython-kernel/ipython-kernel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zvpabfqnkga2smp4p0p46i9llkvxdcdvf0ysafh5xia4ls2icyq"))))
    (properties `((upstream-name . "ipython-kernel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-zeromq4-haskell)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A library for creating kernels for IPython frontends")
    (description
     "ipython-kernel is a library for communicating with frontends for the interactive IPython framework. It is used extensively in IHaskell, the interactive Haskell environment.")
    (license license:expat)))

haskell-8.10-ipython-kernel

(define-public haskell-8.10-jose-jwt
  (package
    (name "haskell-8.10-jose-jwt")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jose-jwt/jose-jwt-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sdcf55mynij8bcwj65j3izay65q2h8dl7lqlhkm3670h3v3f91h"))))
    (properties `((upstream-name . "jose-jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-doctest")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/tekul/jose-jwt")
    (synopsis "JSON Object Signing and Encryption Library")
    (description
     "
An implementation of the JOSE suite of IETF standards
and the closely related JWT (JSON web token) spec
(<https://tools.ietf.org/html/rfc7519/>).

Both signed and encrypted JWTs are supported, as well as simple
JWK keys.")
    (license license:bsd-3)))

haskell-8.10-jose-jwt

(define-public haskell-8.10-json-feed
  (package
    (name "haskell-8.10-json-feed")
    (version "1.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-feed/json-feed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hnppgsp9s26yxjq5ha4znfgw2g1ibjrhp55qw3wh58ljlcz8qpp"))))
    (properties `((upstream-name . "json-feed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mime-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-tagsoup)))
    (home-page "https://hackage.haskell.org/package/json-feed")
    (synopsis "JSON Feed")
    (description
     "This is an implementation of the JSON Feed spec in Haskell. The spec is
available at <https://jsonfeed.org>. JSON Feed is similar to the Atom and RSS
feed formats, but it is serialized as JSON rather than XML.")
    (license license:expat)))

haskell-8.10-json-feed

(define-public haskell-8.10-kubernetes-webhook-haskell
  (package
    (name "haskell-8.10-kubernetes-webhook-haskell")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kubernetes-webhook-haskell/kubernetes-webhook-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xvc35jibs2nizzp6xgdzzyx6fhgzgqb55a48vl1djbi84s8b4q1"))))
    (properties `((upstream-name . "kubernetes-webhook-haskell")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page
     "https://github.com/EarnestResearch/kubernetes-webhook-haskell#readme")
    (synopsis "Create Kubernetes Admission Webhooks in Haskell")
    (description
     "This library lets you create [Kubernetes Admission Webhooks](https://kubernetes.io/docs/reference/access-authn-authz/extensible-admission-controllers/) in Haskell.")
    (license license:expat)))

haskell-8.10-kubernetes-webhook-haskell

(define-public haskell-8.10-lapack
  (package
    (name "haskell-8.10-lapack")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lapack/lapack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12h9k8hx3qpfa3ma24glngpk1x9m8h17qzv86sfq54br19ikz5y0"))))
    (properties `((upstream-name . "lapack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("2" "13hjcwcpwsgmyj95ddys5ivd7xs7fzlbggx0cyffp79wvm0l81q8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-blas-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-boxes)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-comfort-array)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-fixed-length)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-guarded-allocation)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-hyper)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lapack-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-lazyio)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-non-empty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tfp)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/lapack/")
    (synopsis "Numerical Linear Algebra using LAPACK")
    (description
     "This is a high-level interface to LAPACK.
It provides solvers for simultaneous linear equations,
linear least-squares problems, eigenvalue and singular value problems
for matrices with certain kinds of structures.

Features:

* Based on @@comfort-array@@:
Allows to precisely express one-column or one-row matrices,
as well as dense, square, triangular, banded, symmetric, Hermitian,
banded Hermitian, blocked and LU or QR decomposed matrices.

* Support all data types that are supported by LAPACK,
i.e. Float, Double, Complex Float, Complex Double

* No need for c2hs, hsc, Template Haskell or C helper functions

* Dependency only on BLAS and LAPACK, no GSL

* Works with matrices and vectors with zero dimensions.

* No automatic (and dangerous) implicit expansion
of singleton vectors or matrices.
Instead there are special operators for scaling of vectors and matrices.

* Separate formatting operator @@(##)@@:
Works better for tuples of matrices and vectors than 'show'.
'Show' is used for code one-liners
that can be copied back into Haskell modules.
Support for nice formatting in HyperHaskell.

See also: @@hmatrix@@.")
    (license license:bsd-3)))

haskell-8.10-lapack

(define-public haskell-8.10-lapack-ffi-tools
  (package
    (name "haskell-8.10-lapack-ffi-tools")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-ffi-tools/lapack-ffi-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qk5a43w8xn8pp9bhmjmjyvriiin2dyf4nvk13w858hsxyx6xqkx"))))
    (properties `((upstream-name . "lapack-ffi-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "15w2ml6iqwk7776dl9m7lg0jp7akw9f8s95flrsjfxr479qig48i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-non-empty)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-pathtype)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hub.darcs.net/thielema/lapack-ffi-tools/")
    (synopsis "Generator for Haskell interface to Fortran LAPACK")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.

The program in this package generates the modules
for the packages @@blas-ffi@@, @@blas-comfort-array@@, @@blas-carray@@,
@@lapack-ffi@@, @@lapack-comfort-array@@, @@lapack-carray@@
from the FORTRAN source files.")
    (license license:bsd-3)))

haskell-8.10-lapack-ffi-tools

(define-public haskell-8.10-lattices
  (package
    (name "haskell-8.10-lattices")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lattices/lattices-" version
                    ".tar.gz"))
              (sha256
               (base32
                "108rhpax72j6xdl0yqdmg7n32l1j805861f3q9wd3jh8nc67avix"))))
    (properties `((upstream-name . "lattices") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1kqxhrbj0kd9l4fn7qryg9a2k7ad4f7mj4nsaz6lxa90lvi3ynj7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-universe-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/phadej/lattices/")
    (synopsis
     "Fine-grained library for constructing and manipulating lattices")
    (description
     "In mathematics, a lattice is a partially ordered set in which every two
elements @@x@@ and @@y@@ have a unique supremum (also called a least upper bound, join, or @@x /\\\\ y@@)
and a unique infimum (also called a greatest lower bound, meet, or @@x \\\\/ y@@).

This package provide type-classes for different lattice types, as well
as a class for the partial order.")
    (license license:bsd-3)))

haskell-8.10-lattices

(define-public haskell-8.10-liquid-fixpoint
  (package
    (name "haskell-8.10-liquid-fixpoint")
    (version "0.8.10.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/liquid-fixpoint/liquid-fixpoint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdd88p5mz9xfqk9pbn138ixxdrq089iy5imskvhx66dwwrmrr8l"))))
    (properties `((upstream-name . "liquid-fixpoint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-devel")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-ascii-progress)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-boxes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fgl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-intern)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-format)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/ucsd-progsys/liquid-fixpoint")
    (synopsis
     "Predicate Abstraction-based Horn-Clause/Implication Constraint Solver")
    (description
     "This package implements an SMTLIB based Horn-Clause\\/Logical Implication constraint
solver used for Liquid Types.

The package includes:

1. Types for Expressions, Predicates, Constraints, Solutions
2. Code for solving constraints

Requirements

In addition to the .cabal dependencies you require

* A Z3 (<http://z3.codeplex.com>) or CVC4 (<http://cvc4.cs.nyu.edu>) binary.")
    (license license:bsd-3)))

haskell-8.10-liquid-fixpoint

(define-public haskell-8.10-llvm-hs
  (package
    (name "haskell-8.10-llvm-hs")
    (version "9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/llvm-hs/llvm-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0723xgh45h9cyxmmjsvxnsp8bpn1ljy4qgh7a7vqq3sj9d6wzq00"))))
    (properties `((upstream-name . "llvm-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fshared-llvm" "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-llvm-hs-pure)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages llvm) llvm-9)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/llvm-hs/llvm-hs/")
    (synopsis "General purpose LLVM bindings")
    (description
     "llvm-hs is a set of Haskell bindings for LLVM <http://llvm.org/>. Unlike other current Haskell bindings,
it uses an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>), and so offers two advantages: it
handles almost all of the stateful complexities of using the LLVM API to build IR; and it supports moving IR not
only from Haskell into LLVM C++ objects, but the other direction - from LLVM C++ into Haskell.")
    (license license:bsd-3)))

haskell-8.10-llvm-hs

(define-public haskell-8.10-log-domain
  (package
    (name "haskell-8.10-log-domain")
    (version "0.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/log-domain/log-domain-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i4fx9k8cwjvmj0pgfnbici1b68zmif1jmmqxplpjqy32ksnyifa"))))
    (properties `((upstream-name . "log-domain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1hddf1q0gvpx7ic0qynjl9nk9g37kjh352yfk5axi36k49zfpw8d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bytes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/ekmett/log-domain/")
    (synopsis "Log-domain arithmetic")
    (description
     "This package provides log-domain floats, doubles and complex numbers.")
    (license license:bsd-3)))

haskell-8.10-log-domain

(define-public haskell-8.10-lucid-cdn
  (package
    (name "haskell-8.10-lucid-cdn")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lucid-cdn/lucid-cdn-" version
                    ".tar.gz"))
              (sha256
               (base32
                "119d92xc047r98pw0phxplm57nc2jdjz6smkas9hr95mck0d16db"))))
    (properties `((upstream-name . "lucid-cdn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-lucid)))
    (home-page "https://hackage.haskell.org/package/lucid-cdn")
    (synopsis "Curated list of CDN imports for lucid.")
    (description
     "Repository of common CDN imports for lucid. Please open a pull request to add new libraries.")
    (license license:expat)))

haskell-8.10-lucid-cdn

(define-public haskell-8.10-lucid-extras
  (package
    (name "haskell-8.10-lucid-extras")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lucid-extras/lucid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zi48ly2729rs3rsbnwj3z5zk9zgzmva0d3dvp448726r62ryfc3"))))
    (properties `((upstream-name . "lucid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-lucid)))
    (home-page "https://github.com/diffusionkinetics/open/lucid-extras")
    (synopsis
     "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Leaflet JS, Email.")
    (description
     "Generate more HTML with Lucid - Bootstrap, Rdash, Vega-Lite, Leaflet JS, Email. Provides functions to generate rich web page elements for infographics, geographical maps, and more.")
    (license license:expat)))

haskell-8.10-lucid-extras

(define-public haskell-8.10-matplotlib
  (package
    (name "haskell-8.10-matplotlib")
    (version "0.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matplotlib/matplotlib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08qwqnsdch7hzyy0jiz6yvirf0gqm9xx24i3ikm5q993prsdpi2h"))))
    (properties `((upstream-name . "matplotlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://github.com/abarbu/matplotlib-haskell")
    (synopsis "Bindings to Matplotlib; a Python plotting library")
    (description
     "Matplotlib is probably the most full featured plotting library out there.
These bindings provide a quick, easy, and extensible way to use it in
Haskell.

<<https://github.com/abarbu/matplotlib-haskell/raw/master/imgs/contour.png>>

> onscreen $ contourF (\\a b -> sin (a*pi/180.0) + cos (b*pi/180.0)) (-100) 100 (-200) 200 10")
    (license license:bsd-3)))

haskell-8.10-matplotlib

(define-public haskell-8.10-mcmc-types
  (package
    (name "haskell-8.10-mcmc-types")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mcmc-types/mcmc-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vpwrszhpl0ygs1qjk9v8gakl4rjia0cl4y3vna7cmh51c1jajrw"))))
    (properties `((upstream-name . "mcmc-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-mwc-probability)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jtobin/mcmc-types")
    (synopsis "Common types for sampling.")
    (description
     "Common types for implementing Markov Chain Monte Carlo (MCMC) algorithms.

An instance of an MCMC problem can be characterized by the following:

* A /target distribution/ over some parameter space

* A /parameter space/ for a Markov chain to wander over

* A /transition operator/ to drive the Markov chain

/mcmc-types/ provides the suitably-general 'Target', 'Chain', and
'Transition' types for representing these things respectively.")
    (license license:expat)))

haskell-8.10-mcmc-types

(define-public haskell-8.10-mergeful
  (package
    (name "haskell-8.10-mergeful")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeful/mergeful-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cvx0qs4j7jbamz5dz23dii7car8dq5wz0qvkbckb3ymbrf16ywa"))))
    (properties `((upstream-name . "mergeful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-containers)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-time)))
    (home-page "https://github.com/NorfairKing/mergeful#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>")
    (license license:expat)))

haskell-8.10-mergeful

(define-public haskell-8.10-mergeless
  (package
    (name "haskell-8.10-mergeless")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mergeless/mergeless-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14kgfh672fywvrjzb9kzhrnw10lxq44216rwniavn68abkg6yx94"))))
    (properties `((upstream-name . "mergeless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-containers)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>")
    (license license:expat)))

haskell-8.10-mergeless

(define-public haskell-8.10-microlens-aeson
  (package
    (name "haskell-8.10-microlens-aeson")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-aeson/microlens-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "074mzpk7av6i0xf7xy42jpzgljlmyw805md1vz4sqy85m99f0ikr"))))
    (properties `((upstream-name . "microlens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/fosskers/microlens-aeson/")
    (synopsis "Law-abiding lenses for Aeson, using microlens.")
    (description "Law-abiding lenses for Aeson, using microlens.")
    (license license:expat)))

haskell-8.10-microlens-aeson

(define-public haskell-8.10-microstache
  (package
    (name "haskell-8.10-microstache")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microstache/microstache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pirywb9304j2ylasskwq20k6d2srk616sh41l4s37yajsjggx5i"))))
    (properties `((upstream-name . "microstache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1h0xq53xvvq96sz9934bim6rnb3hzrfp6lk394355p2ri2wn3h41")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/haskellari/microstache")
    (synopsis "Mustache templates for Haskell")
    (description
     "Mustache templates for Haskell.

Based on @@stache@@ library, which uses @@megaparsec@@.
This library uses @@parsec@@, thus the name: @@microstache@@.")
    (license license:bsd-3)))

haskell-8.10-microstache

(define-public haskell-8.10-monad-chronicle
  (package
    (name "haskell-8.10-monad-chronicle")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-chronicle/monad-chronicle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p9w9f5sw4adxxrgfba0vxs5kdhl82ibnwfqal7nrrhp3v86imbg"))))
    (properties `((upstream-name . "monad-chronicle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsemigroupoids")
       #:cabal-revision
       ("2" "1h3dk50wpbpi5qdxfwk8d5c22ad0ll1j647b4dbcjm4318l4ahkm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "These as a transformer, ChronicleT")
    (description
     "This packages provides @@ChronicleT@@, a monad transformer based on
the @@Monad@@ instance for @@These a@@, along with the usual monad
transformer bells and whistles.")
    (license license:bsd-3)))

haskell-8.10-monad-chronicle

(define-public haskell-8.10-monad-metrics
  (package
    (name "haskell-8.10-monad-metrics")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-metrics/monad-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13wsz9c02jsh5sh2kka1v7kna1aij51794n7g52ib27qmxgg9qvq"))))
    (properties `((upstream-name . "monad-metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y5733zs49jyi2qyx8nk2p2ddzkkih1nw33qjrc9ppk05m3030hi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-ekg-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/parsonsmatt/monad-metrics#readme")
    (synopsis "A convenient wrapper around EKG metrics")
    (description
     "A convenient wrapper for collecting application metrics. Please see the README.md for more information.")
    (license license:expat)))

haskell-8.10-monad-metrics

(define-public haskell-8.10-monad-products
  (package
    (name "haskell-8.10-monad-products")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-products/monad-products-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1skcjjkn14fh92l4rx3akxjg1c85jqhnlwvkkzqwz9g15bdy3gq2"))))
    (properties `((upstream-name . "monad-products") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "http://github.com/ekmett/monad-products")
    (synopsis "Monad products")
    (description "Monad products")
    (license license:bsd-3)))

haskell-8.10-monad-products

(define-public haskell-8.10-monoid-subclasses
  (package
    (name "haskell-8.10-monoid-subclasses")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-subclasses/monoid-subclasses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nglki10rlpi872p55pa8g809q5sna7yzh3zw4rqfhq89kb15wcv"))))
    (properties `((upstream-name . "monoid-subclasses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y8sw3zsmz5ssn2gl2fsqg44n7xf3xsf6vhrzwnkbaa97hj76nh2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primes)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/blamario/monoid-subclasses/")
    (synopsis "Subclasses of Monoid")
    (description
     "A hierarchy of subclasses of 'Monoid' together with their instances for all data structures from base, containers, and
text packages.")
    (license license:bsd-3)))

haskell-8.10-monoid-subclasses

(define-public haskell-8.10-morpheus-graphql-core
  (package
    (name "haskell-8.10-morpheus-graphql-core")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-core/morpheus-graphql-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rj4g05365hp5c9b5y0v0v7s73jw3gkq3g0z3m6xrpxi3j2gp0p8"))))
    (properties `((upstream-name . "morpheus-graphql-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-relude)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL Core")
    (description "Build GraphQL APIs with your favorite functional language!")
    (license license:expat)))

haskell-8.10-morpheus-graphql-core

(define-public haskell-8.10-mx-state-codes
  (package
    (name "haskell-8.10-mx-state-codes")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mx-state-codes/mx-state-codes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jxw7hh24rqs1c5y4b7bmllvcwq3gsrrn0rixq9lzhn2915ykaq6"))))
    (properties `((upstream-name . "mx-state-codes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1fl0953329z4an76287q1ic4hygzg3xzv2w0zv7dqgkpdz3qbjx7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/prikhi/mx-state-codes#readme")
    (synopsis "ISO 3166-2:MX State Codes and Names")
    (description
     "This package contains a @@Code@@ data type containing each Mexican State, as well as functions for converting from and to the English subdivision names.")
    (license license:bsd-3)))

haskell-8.10-mx-state-codes

(define-public haskell-8.10-natural-transformation
  (package
    (name "haskell-8.10-natural-transformation")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/natural-transformation/natural-transformation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1by8xwjc23l6pa9l4iv7zp82dykpll3vc3hgxk0pgva724n8xhma"))))
    (properties `((upstream-name . "natural-transformation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("10" "18d14fasp1l5xdfgp8swgcyyjd3irqj19cn298ksx9wiw43j818p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ku-fpg/natural-transformation")
    (synopsis "A natural transformation package.")
    (description
     "A natural transformation transforms a container @@f a@@ into another
container @@g a@@. Natural transformations act as functor morphisms
in category theory.

The naming of '~>', ':~>' and '$$' were taken,
with permission, from Edward Kmett's @@indexed@@ package.")
    (license license:bsd-3)))

haskell-8.10-natural-transformation

(define-public haskell-8.10-nonempty-containers
  (package
    (name "haskell-8.10-nonempty-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-hedgehog-fn)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-invariant)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-nonempty-vector)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-nonempty-containers

(define-public haskell-8.10-nonemptymap
  (package
    (name "haskell-8.10-nonemptymap")
    (version "0.0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonemptymap/nonemptymap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pzs51kmsyarv62qqbskhw2xlkjp74bwcgs9a8ri1jk96m64rg94"))))
    (properties `((upstream-name . "nonemptymap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "https://github.com/ChristopherDavenport/nonemptymap#readme")
    (synopsis "A NonEmptyMap Implementation")
    (description
     "This package intends to allow general use of a NonEmptyMap
which is very beneficial as sometimes you want the functionality
this provides.")
    (license license:bsd-3)))

haskell-8.10-nonemptymap

(define-public haskell-8.10-nsis
  (package
    (name "haskell-8.10-nsis")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nsis/nsis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12vp44g56x6lkagh9qm5rf0hfrn7kqk4jxsswlml60iji7r8x9mx"))))
    (properties `((upstream-name . "nsis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)))
    (home-page "https://github.com/ndmitchell/nsis#readme")
    (synopsis "DSL for producing Windows Installer using NSIS.")
    (description
     "NSIS (Nullsoft Scriptable Install System, <http://nsis.sourceforge.net/>) is a tool that allows programmers
to create installers for Windows.
This library provides an alternative syntax for NSIS scripts, as an embedded Haskell language, removing much
of the hard work in developing an install script. Simple NSIS installers should look mostly the same, complex ones should
be significantly more maintainable.")
    (license license:bsd-3)))

haskell-8.10-nsis

(define-public haskell-8.10-o-clock
  (package
    (name "haskell-8.10-o-clock")
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
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-hunit-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-type-spec)))
    (home-page "https://github.com/serokell/o-clock")
    (synopsis "Type-safe time library.")
    (description "See README.md for details.")
    (license license:mpl2.0)))

haskell-8.10-o-clock

(define-public haskell-8.10-optics
  (package
    (name "haskell-8.10-optics")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/optics/optics-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v0kgj9ihb655a6n9j5w55s2lrkfd31pf9z17ida4xcrimzv6q02"))))
    (properties `((upstream-name . "optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-inspection-testing)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-optics-extra)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-optics-th)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/optics")
    (synopsis "Optics as an abstract interface")
    (description
     "This package makes it possible to define and use Lenses, Traversals, Prisms
and other optics, using an abstract interface. See the main module \"Optics\"
for the documentation.

This is the \"batteries-included\" variant with many dependencies; see the
@@<https://hackage.haskell.org/package/optics-core optics-core>@@ package and
other @@optics-*@@ dependencies if you need a more limited dependency footprint.

Note: Hackage does not yet display documentation for reexported-modules,
but you can start from the \"Optics\" module documentation or see the module
list in @@<https://hackage.haskell.org/package/optics-core optics-core>@@.")
    (license license:bsd-3)))

haskell-8.10-optics

(define-public haskell-8.10-pandoc-types
  (package
    (name "haskell-8.10-pandoc-types")
    (version "1.22.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-types/pandoc-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z2j306jsiriwhib0201hsllwyck7qcvqci5c25frwsmknr3mls2"))))
    (properties `((upstream-name . "pandoc-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-string-qq)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
    (home-page "https://pandoc.org/")
    (synopsis "Types for representing a structured document")
    (description "@@Text.Pandoc.Definition@@ defines the 'Pandoc' data
structure, which is used by pandoc to represent
structured documents.  This module used to live
in the pandoc package, but starting with pandoc 1.7, it
has been split off, so that other packages can use it
without drawing in all of pandoc's dependencies, and
pandoc itself can depend on packages (like citeproc-hs)
that use them.

@@Text.Pandoc.Builder@@ provides functions for building
up @@Pandoc@@ structures programmatically.

@@Text.Pandoc.Generic@@ provides generic functions for
manipulating Pandoc documents.

@@Text.Pandoc.Walk@@ provides faster, nongeneric functions
for manipulating Pandoc documents.

@@Text.Pandoc.JSON@@ provides functions for serializing
and deserializing a @@Pandoc@@ structure to and from JSON.")
    (license license:bsd-3)))

haskell-8.10-pandoc-types

(define-public haskell-8.10-parsers
  (package
    (name "haskell-8.10-parsers")
    (version "0.12.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/parsers/parsers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v0smxbzk1qpdfkfqqmrzd2dngv3vxba10mkjn9nfm6a309izf8p"))))
    (properties `((upstream-name . "parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbinary" "-fparsec" "-fattoparsec")
       #:cabal-revision
       ("2" "0m6nnr3hif3iwvl7d0ikh04l6varkqzwkd6vqgycvvvsjgdl1gcs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-charset)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/ekmett/parsers/")
    (synopsis "Parsing combinators")
    (description
     "This library provides convenient combinators for working with and building parsing combinator libraries.

Given a few simple instances, e.g. for the class 'Text.Parser.Combinators.Parsing' in \"Text.Parser.Combinators.Parsing\" you
get access to a large number of canned definitions. Instances exist for the parsers provided by @@parsec@@,
@@attoparsec@@ and base’s \"Text.Read\".")
    (license license:bsd-3)))

haskell-8.10-parsers

(define-public haskell-8.10-password-types
  (package
    (name "haskell-8.10-password-types")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/password-types/password-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "090aqq2xs6m5djvr9zfdj7rxafbmj8d05vij5rchj1f9c46dclb5"))))
    (properties `((upstream-name . "password-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0i6djm9zsb95qdan0vr9shilhmzjxqsqrjy9v16hcaph49wnw7pr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/cdepillabout/password/tree/master/password-types#readme")
    (synopsis "Types for handling passwords")
    (description
     "A library providing types for working with plain-text and hashed passwords.")
    (license license:bsd-3)))

haskell-8.10-password-types

(define-public haskell-8.10-path
  (package
    (name "haskell-8.10-path")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path/path-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vzsa41q5sxs1ni72yv1vfpnc6r5mjdwnmdb6jrs6cszb2xlkjr4"))))
    (properties `((upstream-name . "path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "02vhx94mqapyigvayb6cj7p7snn354pb542n3qyvsm0gih52wlja")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://hackage.haskell.org/package/path")
    (synopsis "Support for well-typed paths")
    (description "Support for well-typed paths.")
    (license license:bsd-3)))

haskell-8.10-path

(define-public haskell-8.10-pcre2
  (package
    (name "haskell-8.10-pcre2")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pcre2/pcre2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kwlcv2rh8hyx93i3q3xv8ijxccl02n5nbkv4g74dr12d41ggc1h"))))
    (properties `((upstream-name . "pcre2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-microlens-platform)))
    (home-page "https://github.com/sjshuck/hs-pcre2#readme")
    (synopsis "Regular expressions via the PCRE2 C library (included)")
    (description
     "Please see the README on GitHub at <https://github.com/sjshuck/hs-pcre2>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-pcre2

(define-public haskell-8.10-perfect-vector-shuffle
  (package
    (name "haskell-8.10-perfect-vector-shuffle")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/perfect-vector-shuffle/perfect-vector-shuffle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z4iv4sv9ld0gvdfa46ll5bsbxi9lckh69paip1c5ijcg78vy5y0"))))
    (properties `((upstream-name . "perfect-vector-shuffle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0lppvhpfpfzcpdm4fxmsps8s272gz3wd2h5xc1w1908b7qqln0rw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-MonadRandom)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Boarders/perfect-vector-shuffle")
    (synopsis "Library for performing vector shuffles")
    (description
     "
This package contains functions for performing in-place Fisher--Yates
shuffles on mutable and immutable vectors along with some related
functionality. The shuffles are uniform at random amongst all
permuations.

For an example of how to use it:

@@
module Main where

import Data.Vector
import Immutable.Shuffle

main :: IO ()
main = do @{
shuffleMyVector >>= print;
cycleMyVector   >>= print;
derangeMyVector >>= print;
@}

myVector :: Vector Int
myVector = fromList [1..10]

shuffleMyVector :: IO (Vector Int)
shuffleMyVector = shuffleM myVector

cycleMyVector :: IO (Vector Int)
cycleMyVector = maximalCycleM myVector

derangeMyVector :: IO (Vector Int)
derangeMyVector = derangementM myVector
@@

This gives the following:

@@
>>> main
[2,8,1,5,10,9,7,3,6,4]
[6,8,4,10,9,2,5,7,3,1]
[8,5,4,1,10,9,3,6,2,7]

>>> main
[7,9,3,5,10,6,8,1,2,4]
[2,4,10,7,8,1,5,9,3,6]
[4,8,5,2,7,3,9,6,10,1]
@@")
    (license license:bsd-3)))

haskell-8.10-perfect-vector-shuffle

(define-public haskell-8.10-pipes-csv
  (package
    (name "haskell-8.10-pipes-csv")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-csv/pipes-csv-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cv8vb5jm95h3jqm4xhndgijcivmcxdjppvcs88bpjbfspfzb1cl"))))
    (properties `((upstream-name . "pipes-csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-hunit")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/pipes-csv")
    (synopsis "Fast, streaming csv parser")
    (description
     "`pipes-csv` is a streaming csv parser built on top of `cassava` and `pipes`")
    (license license:expat)))

haskell-8.10-pipes-csv

(define-public haskell-8.10-plotlyhs
  (package
    (name "haskell-8.10-plotlyhs")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/plotlyhs/plotlyhs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d7cqy22myp6r0x0b00amn64fra0lklb9jy2hd8ic9lxg0nd8pn9"))))
    (properties `((upstream-name . "plotlyhs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-lucid)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/diffusionkinetics/open/plotlyhs")
    (synopsis "Haskell bindings to Plotly.js")
    (description "Generate web-based plots with the Plotly.js library.
For examples, see <https://glutamate.github.io/plotlyhs/>")
    (license license:expat)))

haskell-8.10-plotlyhs

(define-public haskell-8.10-polysemy-plugin
  (package
    (name "haskell-8.10-polysemy-plugin")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-plugin/polysemy-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pcy476nndcvszkl57d5sd2m64zvjzvvxz4ldg2bdg6mdi4apl23"))))
    (properties `((upstream-name . "polysemy-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-corelint")
       #:cabal-revision
       ("1" "16db3syamiknwg3yqh50ak37cfnzkrrwg8qg7157nykx0mkiv8b5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-polysemy)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (home-page "https://github.com/polysemy-research/polysemy#readme")
    (synopsis "Disambiguate obvious uses of effects.")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/polysemy/tree/master/polysemy-plugin#readme>")
    (license license:bsd-3)))

haskell-8.10-polysemy-plugin

(define-public haskell-8.10-postgresql-simple
  (package
    (name "haskell-8.10-postgresql-simple")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple/postgresql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rz2bklxp4pvbxb2w49h5p6pbwabn6d5d4j4mrya4fpa0d13k43d"))))
    (properties `((upstream-name . "postgresql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1qavb3qs1g307pc19k9y3yvqp0c1srwsplijvayn9ldp0bxdy6q8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Only)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://hackage.haskell.org/package/postgresql-simple")
    (synopsis "Mid-Level PostgreSQL client library")
    (description
     "Mid-Level PostgreSQL client library, forked from mysql-simple.")
    (license license:bsd-3)))

haskell-8.10-postgresql-simple

(define-public haskell-8.10-prettyprinter
  (package
    (name "haskell-8.10-prettyprinter")
    (version "1.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter/prettyprinter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i8b3wjjpdvp5b857j065jwyrpgcnzgk75imrj7i3yhl668acvjy"))))
    (properties `((upstream-name . "prettyprinter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildreadme" "-ftext")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-pgp-wordlist)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "A modern, easy to use, well-documented, extensible pretty-printer.")
    (description
     "A modern, easy to use, well-documented, extensible pretty-printer. For more see README.md")
    (license license:bsd-2)))

haskell-8.10-prettyprinter

(define-public haskell-8.10-protobuf-simple
  (package
    (name "haskell-8.10-protobuf-simple")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protobuf-simple/protobuf-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j4grl8dvzhrj88q2ig6slsdj60lcw29r1ls123zk66fgj19f8l6"))))
    (properties `((upstream-name . "protobuf-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "https://github.com/sru-systems/protobuf-simple")
    (synopsis "Simple Protocol Buffers library (proto2)")
    (description
     "
An Haskell implementation of Google's Protocol Buffers version 2 with an
emphasis on simplicity. The implementation consists of a library for
encoding and decoding of data and the `protobuf-simple-protoc` executable
for generating Haskell types from proto files. In fact, the types that are
used in the tests are generated with the following command:

> $ protobuf-simple-protoc data/Types.proto

In the example below, the `CustomType` is a Haskell type that was generated
with the `protobuf-simple-protoc` executable. The `encCustomType` function
encodes a CustomType into a ByteString. The `decCustomType` function
decodes a ByteString into either a CustomType or an error.

> module Codec where
>
> import Data.ByteString.Lazy (ByteString)
> import Data.ProtoBuf (decode, encode)
> import Types.CustomType (CustomType(..))
>
> encCustomType :: CustomType -> ByteString
> encCustomType = encode
>
> decCustomType :: ByteString -> Either String CustomType
> decCustomType = decode

The library exposes two modules, \"Data.ProtoBuf\", which is used for
encoding and decoding and \"Data.ProtoBufInt\", which is an internal module
that is used by the generated types.")
    (license license:expat)))

haskell-8.10-protobuf-simple

(define-public haskell-8.10-protocol-buffers
  (package
    (name "haskell-8.10-protocol-buffers")
    (version "2.4.17")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-buffers/protocol-buffers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "027y1xfk93119d6xfzj0a9n77bdqzkxfp05hz9bn0hyf33lb4jzb"))))
    (properties `((upstream-name . "protocol-buffers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/k-bx/protocol-buffers")
    (synopsis "Parse Google Protocol Buffer specifications")
    (description "Parse proto files and generate Haskell code.")
    (license license:bsd-3)))

haskell-8.10-protocol-buffers

(define-public haskell-8.10-protocol-radius-test
  (package
    (name "haskell-8.10-protocol-radius-test")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-radius-test/protocol-radius-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14npn49vj7a66pzvrdw0gj88h97vz11axq5i4k4nq0r156yb07pm"))))
    (properties `((upstream-name . "protocol-radius-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-protocol-radius)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/protocol-radius-test")
    (synopsis "testsuit of protocol-radius haskell package")
    (description "This package provides
testsuit of protocol-radius haskell package.")
    (license license:bsd-3)))

haskell-8.10-protocol-radius-test

(define-public haskell-8.10-quickcheck-classes
  (package
    (name "haskell-8.10-quickcheck-classes")
    (version "0.6.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-classes/quickcheck-classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19iw15mvb7gws3ljdxqwsbb4pmfc0sfflf8szgmrhiqr3k82mqv2"))))
    (properties `((upstream-name . "quickcheck-classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-faeson" "-fsemigroupoids" "-fsemirings" "-fvector" "-funary-laws" "-fbinary-laws")
       #:cabal-revision
       ("1" "1p52n2padxppj4wy3s4v8shs7zsd9hy9r4rdk21wg7l9dwbqss5a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-primitive-addr)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-classes-base)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semirings)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/quickcheck-classes#readme")
    (synopsis "QuickCheck common typeclasses")
    (description
     "This library provides QuickCheck properties to ensure
that typeclass instances adhere to the set of laws that
they are supposed to. There are other libraries that do
similar things, such as `genvalidity-hspec` and `checkers`.
This library differs from other solutions by not introducing
any new typeclasses that the user needs to learn.

/Note:/ on GHC < 8.5, this library uses the higher-kinded typeclasses
('Data.Functor.Classes.Show1', 'Data.Functor.Classes.Eq1', 'Data.Functor.Classes.Ord1', etc.),
but on GHC >= 8.5, it uses `-XQuantifiedConstraints` to express these
constraints more cleanly.")
    (license license:bsd-3)))

haskell-8.10-quickcheck-classes

(define-public haskell-8.10-rattle
  (package
    (name "haskell-8.10-rattle")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rattle/rattle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nd3knid238fa85rm2d0kavhyry6d6lilpk2p4ki9njgq2003bbk"))))
    (properties `((upstream-name . "rattle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-filepattern)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-heaps)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-js-dgtable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-js-flot)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-js-jquery)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-shake)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-terminal-size)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://github.com/ndmitchell/rattle#readme")
    (synopsis "Forward build system, with caching and speculation")
    (description
     "A forward build system like Fabrciate but with speculation and remote caching.")
    (license license:bsd-3)))

haskell-8.10-rattle

(define-public haskell-8.10-record-dot-preprocessor
  (package
    (name "haskell-8.10-record-dot-preprocessor")
    (version "0.2.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/record-dot-preprocessor/record-dot-preprocessor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07hq90pk30p14jqk016wchmqrc1qhwa9qajaj90i363g3arcb24p"))))
    (properties `((upstream-name . "record-dot-preprocessor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03sp3wkvl1x68pcjdrkxf4ys73x4ka4sz7x75icy4xd285zrzqb0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-record-hasfield)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)))
    (home-page "https://github.com/ndmitchell/record-dot-preprocessor#readme")
    (synopsis "Preprocessor to allow record.field syntax")
    (description
     "In almost every programming language @@a.b@@ will get the @@b@@ field from the @@a@@ data type, and many different data types can have a @@b@@ field.
The reason this feature is ubiquitous is because it's /useful/.
The @@record-dot-preprocessor@@ brings this feature to Haskell - see the README for full details.")
    (license license:bsd-3)))

haskell-8.10-record-dot-preprocessor

(define-public haskell-8.10-reducers
  (package
    (name "haskell-8.10-reducers")
    (version "3.12.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reducers/reducers-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hsycdir52jdijnnvc77jj971fjrrc722v952wr62ivrvx2zarn0"))))
    (properties `((upstream-name . "reducers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "00xd4pyg0p4z0alyg1zy193jc3smq50y73dkafiphd73rzszxy9g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fingertree)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/ekmett/reducers/")
    (synopsis
     "Semigroups, specialized containers and a general map/reduce framework")
    (description
     "Semigroups, specialized containers and a general map/reduce framework.")
    (license license:bsd-3)))

haskell-8.10-reducers

(define-public haskell-8.10-refined
  (package
    (name "haskell-8.10-refined")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/refined/refined-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fpbwzr3q9fmkdghpap0zm56bi9wj6n6k0ys5b8ci5xhz25mrd4g"))))
    (properties `((upstream-name . "refined") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-faeson" "-fquickcheck")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-these-skinny)))
    (home-page "https://github.com/nikita-volkov/refined")
    (synopsis "Refinement types with static and runtime checking")
    (description
     "For an extensive introduction to the library please follow to
<http://nikita-volkov.github.io/refined this blog-post>.")
    (license license:expat)))

haskell-8.10-refined

(define-public haskell-8.10-reform-happstack
  (package
    (name "haskell-8.10-reform-happstack")
    (version "0.2.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-happstack/reform-happstack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xknj906vr0q6vrxrvna1777v7hsdg1l3r0wwnga7k1yn5hcfc76"))))
    (properties `((upstream-name . "reform-happstack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-happstack-server)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-reform)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.happstack.com/")
    (synopsis "Happstack support for reform.")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Happstack.")
    (license license:bsd-3)))

haskell-8.10-reform-happstack

(define-public haskell-8.10-regex-applicative-text
  (package
    (name "haskell-8.10-regex-applicative-text")
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
       ("7" "0v4k5hvqcabgiiycn4xayg9kahwifqg4nc0m1wkm3ixcywwg8i88")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-regex-applicative)))
    (home-page "https://github.com/phadej/regex-applicative-text#readme")
    (synopsis "regex-applicative on text")
    (description "Wrapped regex-applicative primitives to work with Text")
    (license license:bsd-3)))

haskell-8.10-regex-applicative-text

(define-public haskell-8.10-regex-with-pcre
  (package
    (name "haskell-8.10-regex-with-pcre")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-with-pcre/regex-with-pcre-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dypklwhjcsq1y7nfpn6z6gj9c4j1wg3x55yvfczlnk97jl6dk1m"))))
    (properties `((upstream-name . "regex-with-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-regex)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-regex-base)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://regex.uk")
    (synopsis "Toolkit for regex-base")
    (description "A regular expression toolkit for regex-base with
compile-time checking of RE syntax, data types for
matches and captures, a text replacement toolkit,
portable options, high-level AWK-like tools
for building text processing apps, regular expression
macros with parsers and test bench, comprehensive
documentation, tutorials and copious examples.")
    (license license:bsd-3)))

haskell-8.10-regex-with-pcre

(define-public haskell-8.10-registry
  (package
    (name "haskell-8.10-registry")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/registry/registry-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qsw33fysnq5lxb48ckcwja7ws99fji5w2hkq7y3nly8yj6mdna3"))))
    (properties `((upstream-name . "registry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-protolude)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://hackage.haskell.org/package/registry")
    (synopsis "data structure for assembling components")
    (description
     "This library provides a \"Registry\" which is a data structure containing a list of functions and values representing dependencies in a directed acyclic graph. A `make` function can then be used to create a value of a specific type out of the registry.
You can start with the [README](https://github.com/etorreborre/registry/blob/master/README.md) for a full description of the library.")
    (license license:expat)))

haskell-8.10-registry

(define-public haskell-8.10-rethinkdb-client-driver
  (package
    (name "haskell-8.10-rethinkdb-client-driver")
    (version "0.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rethinkdb-client-driver/rethinkdb-client-driver-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15l9z7ki81cv97lajxcbddavbd254c5adcdi8yw6df31rmbc378g"))))
    (properties `((upstream-name . "rethinkdb-client-driver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "051fgkx8zdlbpnsgvqm4jqk9a21xszz9sdhcmchx6h4ilyn7byjy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/wereHamster/rethinkdb-client-driver")
    (synopsis "Client driver for RethinkDB")
    (description
     "This is an alternative client driver for RethinkDB. It is not complete
yet, but the basic structure is in place and the driver can make
simple queries.

Its main focus is on type safety, which it achieves quite well. It also
uses the new JSON protocol which should give it a speed boost (and make
the driver compatible with GHC 7.8).

Note that the driver is neither thread-safe nor reentrant. If you have
a multi-threaded application, I recommend using 'resource-pool'.")
    (license license:expat)))

haskell-8.10-rethinkdb-client-driver

(define-public haskell-8.10-retry
  (package
    (name "haskell-8.10-retry")
    (version "0.8.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/retry/retry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nwyis42xpmxfw8nz8qn59r3v7q0dkfzkzkhllgn30cdjbbmwhf5"))))
    (properties `((upstream-name . "retry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
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

haskell-8.10-retry

(define-public haskell-8.10-rigel-viz
  (package
    (name "haskell-8.10-rigel-viz")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rigel-viz/rigel-viz-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z6c6hynisf5165c4izh31bfr4zcdik13ww5c4ylpqzxsig2z5xs"))))
    (properties `((upstream-name . "rigel-viz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (home-page "https://github.com/ocramz/rigel-viz")
    (synopsis "A mid-level wrapper for vega-lite")
    (description
     "A mid-level wrapper for vega-lite. Please see the README for details")
    (license license:bsd-3)))

haskell-8.10-rigel-viz

(define-public haskell-8.10-rvar
  (package
    (name "haskell-8.10-rvar")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rvar/rvar-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lwcmv3x3v7sjxkil7754sh085y5r5h9zkca39czjhyyzxsqiq81"))))
    (properties `((upstream-name . "rvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fmtl2")
       #:cabal-revision
       ("1" "1jn9ivlj3k65n8d9sfsp882m5lvni1ah79mk0cvkz91pgywvkiyq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-MonadPrompt)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-random-source)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mokus0/random-fu")
    (synopsis "Random Variables")
    (description "Random number generation based on modeling random
variables by an abstract type ('RVar') which can be
composed and manipulated monadically and sampled in
either monadic or \\\"pure\\\" styles.

The primary purpose of this library is to support
defining and sampling a wide variety of high quality
random variables.  Quality is prioritized over speed,
but performance is an important goal too.

In my testing, I have found it capable of speed
comparable to other Haskell libraries, but still
a fair bit slower than straight C implementations of
the same algorithms.

Changes in 0.2.0.1:  Version bump for transformers
dependency.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-rvar

(define-public haskell-8.10-safe-json
  (package
    (name "haskell-8.10-safe-json")
    (version "1.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-json/safe-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08crkag67ba7d1wczg4953jh4gxs6g0pbvb3idi11q98g2gzpjhm"))))
    (properties `((upstream-name . "safe-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Vlix/safe-json#readme")
    (synopsis "Automatic JSON format versioning")
    (description
     "This library aims to make the updating of JSON formats or contents, while keeping backward compatibility, as painless as possible. The way this is achieved is through versioning and defined migration functions to migrate older (or newer) versions to the one used.

The library mainly consists of two classes:

* @@SafeJSON a@@: Defines the version of @@a@@ and if (and how) it is migratable.

* @@Migrate a@@: Defines the data type (@@MigrateFrom a@@) that can be migrated to @@a@@ and how to migrate from that type.

Using these two classes, JSON serialized data types will stay parsable, even after format changes.

For a more in-depth explanation and examples, please see the README at <https://github.com/Vlix/safe-json#readme>")
    (license license:expat)))

haskell-8.10-safe-json

(define-public haskell-8.10-sbv
  (package
    (name "haskell-8.10-sbv")
    (version "8.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sbv/sbv-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "11qzh2gfq9v8cxz6jjbipnfiwjs0hw34ghg5gdpr0h7bj77in30p"))))
    (properties `((upstream-name . "sbv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16bbwp94hzwgj0im1rd106hbz3hx2wymq43r8pcqpcxd439wwmv3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-libBF)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)))
    (home-page "http://leventerkok.github.io/sbv/")
    (synopsis
     "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.")
    (description
     "Express properties about Haskell programs and automatically prove them using SMT
(Satisfiability Modulo Theories) solvers.

For details, please see: <http://leventerkok.github.io/sbv/>")
    (license license:bsd-3)))

haskell-8.10-sbv

(define-public haskell-8.10-scheduler
  (package
    (name "haskell-8.10-scheduler")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scheduler/scheduler-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19sgc3ydbjjlgd6jh9pqfxv3gq1mbgaicshf7kbj5yf5cnimq5vp"))))
    (properties `((upstream-name . "scheduler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-pvar)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/haskell-scheduler")
    (synopsis "Work stealing scheduler.")
    (description
     "A work stealing scheduler that is designed for parallelization of heavy work loads. It was primarily developed for [massiv](https://github.com/lehins/massiv) array library, but it is general enough to be useful for any computation that fits the model of few workers and many jobs.")
    (license license:bsd-3)))

haskell-8.10-scheduler

(define-public haskell-8.10-selda-json
  (package
    (name "haskell-8.10-selda-json")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-json/selda-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ai24qmz5nkpqx0zd24ix0ci5aqiccfy57fkf8f87swrv28101l8"))))
    (properties `((upstream-name . "selda-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1gajzv8zhj8i3bxzjh81vjn8j2igh3nrawfpddvxg1ayb5l2d2y0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-selda)))
    (home-page "https://selda.link")
    (synopsis "JSON support for the Selda database library.")
    (description "Types and classes to support storing and querying
JSON values using Selda via Aeson.")
    (license license:expat)))

haskell-8.10-selda-json

(define-public haskell-8.10-semialign
  (package
    (name "haskell-8.10-semialign")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign/semialign-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11qs4imy3cq4cx9mm6g30r6qk3rngqrmz7lkl5379gs1yvgvs44q"))))
    (properties `((upstream-name . "semialign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsemigroupoids")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/isomorphism/these")
    (synopsis "Align and Zip type-classes from the common Semialign ancestor.")
    (description
     "The major use of @@These@@ of this is provided by the @@align@@ member of
@@Semialign@@ class, representing a generalized notion of \"zipping with padding\"
that combines structures without truncating to the size of the smaller input.

It turns out that @@zip@@ operation fits well the @@Semialign@@ class,
forming lattice-like structure.")
    (license license:bsd-3)))

haskell-8.10-semialign

(define-public haskell-8.10-semigroupoid-extras
  (package
    (name "haskell-8.10-semigroupoid-extras")
    (version "5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroupoid-extras/semigroupoid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ciq1jnc0d9d8jph9103v04vphiz7xqa69a8f4dmmcf3bjsk6bhh"))))
    (properties `((upstream-name . "semigroupoid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fprofunctors")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "http://github.com/ekmett/semigroupoid-extras")
    (synopsis "Semigroupoids that depend on PolyKinds")
    (description "Semigroupoids that depend on PolyKinds")
    (license license:bsd-3)))

haskell-8.10-semigroupoid-extras

(define-public haskell-8.10-shake-language-c
  (package
    (name "haskell-8.10-shake-language-c")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-language-c/shake-language-c-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c0smbshksjw114m09n5i1ynkhibvd9kix9n7h696p75g40ka7k6"))))
    (properties `((upstream-name . "shake-language-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-fclabels)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-shake)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/samplecount/shake-language-c")
    (synopsis "Utilities for cross-compiling with Shake")
    (description
     "This library provides <http://hackage.haskell.org/package/shake Shake> utilities for cross-compiling @@C@@, @@C++@@ and @@ObjC@@ code for various target platforms. Currently supported target platforms are Android, iOS, Linux, MacOS X, Windows\\/MinGW and Google Portable Native Client (PNaCl). Supported host platforms are MacOS X, Linux and Windows.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-shake-language-c

(define-public haskell-8.10-shakespeare
  (package
    (name "haskell-8.10-shakespeare")
    (version "2.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shakespeare/shakespeare-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pagjwgbp1z07gxy9k3rr0hl7fzjk2d4ihwqddrk9c5bnkq9maim"))))
    (properties `((upstream-name . "shakespeare") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-test_export" "-f-test_coffee" "-f-test_roy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.yesodweb.com/book/shakespearean-templates")
    (synopsis "A toolkit for making compile-time interpolated templates")
    (description
     "Shakespeare is a family of type-safe, efficient template languages. Shakespeare templates are expanded at compile-time, ensuring that all interpolated variables are in scope. Variables are interpolated according to their type through a typeclass.

Shakespeare templates can be used inline with a quasi-quoter or in an external file.

Note there is no dependency on haskell-src-extras. Instead Shakespeare believes logic should stay out of templates and has its own minimal Haskell parser.

Packages that use this: xml-hamlet

Please see the documentation at <http://www.yesodweb.com/book/shakespearean-templates> for more details.")
    (license license:expat)))

haskell-8.10-shakespeare

(define-public haskell-8.10-shikensu
  (package
    (name "haskell-8.10-shikensu")
    (version "0.3.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shikensu/shikensu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "041hqvlfi28ynfcln80dwm1i5g4pjl7ydx0bys35lw92fl39zxb9"))))
    (properties `((upstream-name . "shikensu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-flow)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/icidasset/shikensu#readme")
    (synopsis
     "Run a sequence of functions on in-memory representations of files")
    (description
     "See README at <https://github.com/icidasset/shikensu#readme>")
    (license license:expat)))

haskell-8.10-shikensu

(define-public haskell-8.10-simple-log
  (package
    (name "haskell-8.10-simple-log")
    (version "0.9.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-log/simple-log-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1038asbw9yi1wz3di0ggx62nazljh9m07dvf3lmjrvj1k8i7842w"))))
    (properties `((upstream-name . "simple-log") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-SafeSemaphore)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hformat)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-microlens-platform)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)))
    (home-page "http://github.com/mvoidex/simple-log")
    (synopsis "Simple log for Haskell")
    (description "Log library for Haskell")
    (license license:bsd-3)))

haskell-8.10-simple-log

(define-public haskell-8.10-simple-templates
  (package
    (name "haskell-8.10-simple-templates")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-templates/simple-templates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vm30fdjm5fydv4ns3z2cvmqadyxb47kvj8nzwkk5jff35jaglrf"))))
    (properties `((upstream-name . "simple-templates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://simple.cx")
    (synopsis "A basic template language for the Simple web framework")
    (description
     "A basic template language for the Simple web framework. The language supports
variable substitution, function invokation, loops and conditionals.

\"Web.Simple.Templates\" documents how to integrate into an app, while
\"Web.Simple.Templates.Language\" documents the templating language syntax
and semantics.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-simple-templates

(define-public haskell-8.10-slist
  (package
    (name "haskell-8.10-slist")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/slist/slist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1aiswwh33rxp49adhjygyjrhivsflafz5z0kyv3wfnb0wk15jv96"))))
    (properties `((upstream-name . "slist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-hspec-hedgehog)))
    (home-page "https://github.com/kowainik/slist")
    (synopsis "Sized list")
    (description
     "This package implements @@Slist@@ data structure that stores the size
of the list along with the list itself.")
    (license license:mpl2.0)))

haskell-8.10-slist

(define-public haskell-8.10-smash-aeson
  (package
    (name "haskell-8.10-smash-aeson")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smash-aeson/smash-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vmazs3ypqxaw4zdywimxfzrsvidnyk5damx6fpy549ny9319rqs"))))
    (properties `((upstream-name . "smash-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y0k6gz9qlr98f543607zkx6a97fnzh3zrbi2b59rlljp0rjvdw8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-smash)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Aeson support for the smash library")
    (description "Aeson support for the `smash` library")
    (license license:bsd-3)))

haskell-8.10-smash-aeson

(define-public haskell-8.10-snap-blaze
  (package
    (name "haskell-8.10-snap-blaze")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-blaze/snap-blaze-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hc8k0cviq7ayjymsfr435bnfw35pa4f80i7x4ypn2539fykavmk"))))
    (properties `((upstream-name . "snap-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-snap-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jaspervdj/snap-blaze")
    (synopsis "blaze-html integration for Snap")
    (description "blaze-html integration for Snap")
    (license license:bsd-3)))

haskell-8.10-snap-blaze

(define-public haskell-8.10-sourcemap
  (package
    (name "haskell-8.10-sourcemap")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sourcemap/sourcemap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09i340mhzlfi5ayy9cb0378glnygdmpdhhsgikm3zrvwf2wmwr2h"))))
    (properties `((upstream-name . "sourcemap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://hackage.haskell.org/package/sourcemap")
    (synopsis
     "Implementation of source maps as proposed by Google and Mozilla.")
    (description
     "Implementation of source maps, revision 3, proposed by Google and Mozilla here
<https://wiki.mozilla.org/DevTools/Features/SourceMap> and here
<https://docs.google.com/document/d/1U1RGAehQwRypUTovF1KRlpiOFze0b-_2gc6fAH0KY0k/edit>")
    (license license:bsd-3)))

haskell-8.10-sourcemap

(define-public haskell-8.10-statistics
  (package
    (name "haskell-8.10-statistics")
    (version "0.15.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/statistics/statistics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0j9awbg47fzb58k5z2wgkp6a0042j7hqrl1g6lyflrbsfswdp5n4"))))
    (properties `((upstream-name . "statistics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-dense-linear-algebra)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-monad-par)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bos/statistics")
    (synopsis "A library of statistical types, data, and functions")
    (description
     "This library provides a number of common functions and types useful
in statistics.  We focus on high performance, numerical robustness,
and use of good algorithms.  Where possible, we provide
references to the statistical literature.

The library's facilities can be divided into four broad categories:

* Working with widely used discrete and continuous probability
distributions.  (There are dozens of exotic distributions in use;
we focus on the most common.)

* Computing with sample data: quantile estimation, kernel density
estimation, histograms, bootstrap methods, significance testing,
and regression and autocorrelation analysis.

* Random variate generation under several different distributions.

* Common statistical tests for significant differences between
samples.")
    (license license:bsd-2)))

haskell-8.10-statistics

(define-public haskell-8.10-streaming-attoparsec
  (package
    (name "haskell-8.10-streaming-attoparsec")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-streaming-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://github.com/haskell-streaming/streaming-attoparsec")
    (synopsis "Attoparsec integration for the streaming ecosystem")
    (description "Attoparsec integration for the streaming ecosystem.")
    (license license:bsd-3)))

haskell-8.10-streaming-attoparsec

(define-public haskell-8.10-string-conversions
  (package
    (name "haskell-8.10-string-conversions")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-conversions/string-conversions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "150rdank90h7v08x0wq4dffjbxv2daf5v9sqfs5mab76kinwxg26"))))
    (properties `((upstream-name . "string-conversions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1g3wxx579mhs2icxngi78pvjfybbk606a6vgns88pg6ws5hrvx4s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://github.com/soenkehahn/string-conversions#readme")
    (synopsis "Simplifies dealing with different types for strings")
    (description
     "Provides a simple type class for converting values of different string types into values of other string types.")
    (license license:bsd-3)))

haskell-8.10-string-conversions

(define-public haskell-8.10-stripe-core
  (package
    (name "haskell-8.10-stripe-core")
    (version "2.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-core/stripe-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00bjr71lawn1ar18vm3p849ffr6r6fmgwn2ksg4vas5rmmy2vwib"))))
    (properties `((upstream-name . "stripe-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/dmjio/stripe-haskell")
    (synopsis "Stripe API for Haskell - Pure Core")
    (description
     "
<<https://stripe.com/img/navigation/logo@@2x.png>>

[Pure API Wrapper]
`stripe-core` provides a complete binding to the Stripe API. `stripe-core` provides pure wrappers around all the Stripe API objects and methods. `stripe-core` is pure and is not tied to any particular HTTP client library. End users will typically install the `stripe-haskell` package which pulls in the `stripe-http-client` library to obtain a complete set of functionality.")
    (license license:expat)))

haskell-8.10-stripe-core

(define-public haskell-8.10-structured
  (package
    (name "haskell-8.10-structured")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/structured/structured-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mz02ys85z79nj24ylsmgh8v2m7zv2rixf7w0iqnwc49lax52w4q"))))
    (properties `((upstream-name . "structured") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1saljgwlag0ajhwqblvb459hw2m0n2dc9w3j50b069grbm6v8dr6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/structured")
    (synopsis "Structure (hash) of your data types")
    (description
     "Calculate the hash of a data structure.
It can be used as a magic number for the serialization formats.
See <https://hackage.haskell.org/package/binary-tagged binary-tagged>
for a @@binary@@ bindings.")
    (license license:bsd-3)))

haskell-8.10-structured

(define-public haskell-8.10-swagger
  (package
    (name "haskell-8.10-swagger")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/swagger/swagger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l2liyiycbix23yayf8zq1fndavfjc06529s8sr3w8hd5ar4y567"))))
    (properties `((upstream-name . "swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/swagger")
    (synopsis "Implementation of swagger data model")
    (description
     "Implementation of Swagger specification version 1.2 as defined in
<https://github.com/wordnik/swagger-spec/blob/master/versions/1.2.md>")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-swagger

(define-public haskell-8.10-swish
  (package
    (name "haskell-8.10-swish")
    (version "0.10.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/swish/swish-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xy12fmmiydaqm0cng24qd7c1py1sbb4ww66w0n5w26kwgh622cc"))))
    (properties `((upstream-name . "swish") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-w3ctests" "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-intern)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-polyparse)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)))
    (home-page "https://gitlab.com/dburke/swish")
    (synopsis "A semantic web toolkit. ")
    (description
     "Swish is a framework, written in the purely functional
programming language Haskell, for performing deductions in
RDF data using a variety of techniques. Swish is conceived
as a toolkit for experimenting with RDF inference, and for
implementing stand-alone RDF file processors (usable in
similar style to CWM, but with a view to being extensible
in declarative style through added Haskell function and data
value declarations). It explores Haskell as \\\"a scripting
language for the Semantic Web\\\".

Swish is a work-in-progress, and currently incorporates:

* Turtle, Notation3 and NTriples input and output. The N3 support is
incomplete (no handling of @@\\@@forAll@@).

* RDF graph isomorphism testing and merging.

* Display of differences between RDF graphs.

* Inference operations in forward chaining, backward chaining and proof-checking modes.

* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.

* Class restriction rule implementation, primarily for datatype inferences.

* RDF formal semantics entailment rule implementation.

* Complete, ready-to-run, command-line and script-driven programs.

Changes are given in the <https://gitlab.com/dburke/swish/raw/master/CHANGELOG> file.

References:

- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>

- <http://www.ninebynine.org/Software/swish-0.2.1.html>

- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>
")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-swish

(define-public haskell-8.10-tagged-transformer
  (package
    (name "haskell-8.10-tagged-transformer")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagged-transformer/tagged-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ffwxr312vi3fqhgnad5b6gqkgz3j27c30z551j8zisjx0hn3zx0"))))
    (properties `((upstream-name . "tagged-transformer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "http://github.com/ekmett/tagged-transformer")
    (synopsis "Monad transformer carrying an extra phantom type tag")
    (description
     "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments")
    (license license:bsd-3)))

haskell-8.10-tagged-transformer

(define-public haskell-8.10-text-show
  (package
    (name "haskell-8.10-text-show")
    (version "3.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-show/text-show-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0srm3qj7z0c1zxpzp7n0frjdh0hxb76mz43d1ry30nrg0k4lj8lh"))))
    (properties `((upstream-name . "text-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-deriving-compat)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://github.com/RyanGlScott/text-show")
    (synopsis "Efficient conversion of values into Text")
    (description
     "@@text-show@@ offers a replacement for the @@Show@@ typeclass intended
for use with @@Text@@ instead of @@String@@s. This package was created
in the spirit of
@@<http://hackage.haskell.org/package/bytestring-show bytestring-show>@@.

At the moment, @@text-show@@ provides instances for most data
types in the @@<http://hackage.haskell.org/package/array array>@@,
@@<http://hackage.haskell.org/package/base base>@@,
@@<http://hackage.haskell.org/package/bytestring bytestring>@@, and
@@<http://hackage.haskell.org/package/text text>@@ packages.
Therefore, much of the source code for @@text-show@@ consists of
borrowed code from those packages in order to ensure that the
behaviors of @@Show@@ and @@TextShow@@ coincide.

For most uses, simply importing \"TextShow\"
will suffice:

@@
module Main where

import TextShow

main :: IO ()
main = printT (Just \\\"Hello, World!\\\")
@@

See also the
<https://github.com/RyanGlScott/text-show/wiki/Naming-conventions naming conventions>
page.

Support for automatically deriving @@TextShow@@ instances can be found
in the \"TextShow.TH\" and \"TextShow.Generic\" modules.")
    (license license:bsd-3)))

haskell-8.10-text-show

(define-public haskell-8.10-th-desugar
  (package
    (name "haskell-8.10-th-desugar")
    (version "1.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-desugar/th-desugar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ap8dk1a1wl62ggqkg9rb7vna131drrjcd2hn5dw7mwnbc1rxqhl"))))
    (properties `((upstream-name . "th-desugar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1gjg6vhlbxg7y2gx0frqh5arwqw0n3j777q6gk2p8f2k60gphifi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://github.com/goldfirere/th-desugar")
    (synopsis "Functions to desugar Template Haskell")
    (description
     "This package provides the Language.Haskell.TH.Desugar module, which desugars
Template Haskell's rich encoding of Haskell syntax into a simpler encoding.
This desugaring discards surface syntax information (such as the use of infix
operators) but retains the original meaning of the TH code. The intended use
of this package is as a preprocessor for more advanced code manipulation
tools. Note that the input to any of the ds... functions should be produced
from a TH quote, using the syntax [| ... |]. If the input to these functions
is a hand-coded TH syntax tree, the results may be unpredictable. In
particular, it is likely that promoted datatypes will not work as expected.")
    (license license:bsd-3)))

haskell-8.10-th-desugar

(define-public haskell-8.10-th-printf
  (package
    (name "haskell-8.10-th-printf")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-printf/th-printf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f9lw0scm2bpnhmhgvywzphxn85ln3xcn8cjyvy8h4cn2ymw4aza"))))
    (properties `((upstream-name . "th-printf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")
       #:cabal-revision
       ("1" "0q9b8xv6qf8yg5c6rn1jgmgwr4ckf4yzd9qv9ysr3c363cgnccyv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-charset)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-microlens-platform)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)))
    (home-page "https://github.com/pikajude/th-printf#readme")
    (synopsis "Quasiquoters for printf")
    (description "Quasiquoters for string and text printf")
    (license license:expat)))

haskell-8.10-th-printf

(define-public haskell-8.10-th-test-utils
  (package
    (name "haskell-8.10-th-test-utils")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-test-utils/th-test-utils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03qpszfhb58nmm673zhbkvsmw1ynjr2h19qpggyay2fk5zgq7n3q"))))
    (properties `((upstream-name . "th-test-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)))
    (home-page "https://github.com/LeapYear/th-test-utils#readme")
    (synopsis "Utility functions for testing Template Haskell code")
    (description
     "Utility functions for testing Template Haskell code, including
functions for testing failures in the Q monad.")
    (license license:bsd-3)))

haskell-8.10-th-test-utils

(define-public haskell-8.10-th-utilities
  (package
    (name "haskell-8.10-th-utilities")
    (version "0.2.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-utilities/th-utilities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1krvn3xp7zicp6wqcgmgbgl2a894n677vxi6vhcna16cx03smic9"))))
    (properties `((upstream-name . "th-utilities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/fpco/th-utilities#readme")
    (synopsis "Collection of useful functions for use with Template Haskell")
    (description "")
    (license license:expat)))

haskell-8.10-th-utilities

(define-public haskell-8.10-thyme
  (package
    (name "haskell-8.10-thyme")
    (version "0.3.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/thyme/thyme-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v3rbjl92bqggsdra72zdq6rxzb2qf1268424p94225lnwgp1il4"))))
    (properties `((upstream-name . "thyme") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbug-for-bug" "-f-hlint" "-f-lens" "-f-show-internal" "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-vector-space)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-vector-th-unbox)))
    (home-page "https://github.com/liyang/thyme")
    (synopsis "A faster time library")
    (description
     "Thyme is a rewrite of the fine @@time@@ library, with a particular focus
on performance for applications that make heavy use of timestamps.

See <http://hackage.haskell.org/package/thyme/docs/Data-Thyme.html Data.Thyme> for a full description.")
    (license license:bsd-3)))

haskell-8.10-thyme

(define-public haskell-8.10-tmapmvar
  (package
    (name "haskell-8.10-tmapmvar")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmapmvar/tmapmvar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qxl48wcbqvg6fymb8kpr4wz25ixkfvnvli2c7ncjxzdigyqrrd6"))))
    (properties `((upstream-name . "tmapmvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tmapmvar")
    (synopsis "A single-entity stateful Map in STM, similar to tmapchan")
    (description
     "Please see the README on Github at <https://git.localcooking.com/tooling/tmapmvar#readme>")
    (license license:bsd-3)))

haskell-8.10-tmapmvar

(define-public haskell-8.10-tonalude
  (package
    (name "haskell-8.10-tonalude")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonalude/tonalude-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19pl0l0nz3nywhf31190qld7crbzry241h5dw0234w5qyiwf5h0h"))))
    (properties `((upstream-name . "tonalude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "A standard library for Tonatona framework.")
    (description
     "Tonaparser provides a way to pass runtime configurations. This library is supposed to be used with @@tonatona@@. The Tonalude module works as a prelude replacement for Tonatona framework, providing more functionality and types out of the box than the standard prelude (such as common data types like ByteString and Text), as well as removing common \"gotchas\", like partial functions and lazy I/O.")
    (license license:expat)))

haskell-8.10-tonalude

(define-public haskell-8.10-universum
  (package
    (name "haskell-8.10-universum")
    (version "1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universum/universum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ka7q5vr9xkf8z5mzpkp648mpf8az7b14lnhbvfakg3v5xy3f7gb"))))
    (properties `((upstream-name . "universum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "17w3zpbv5ap9as506fn43xlnh6sqxni8mmczlp5l86hvn7zd8y6z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/serokell/universum")
    (synopsis "Custom prelude used in Serokell")
    (description "See README.md file for more details.")
    (license license:expat)))

haskell-8.10-universum

(define-public haskell-8.10-uri-bytestring
  (package
    (name "haskell-8.10-uri-bytestring")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)))
    (home-page "https://github.com/Soostone/uri-bytestring")
    (synopsis "Haskell URI parsing as ByteStrings")
    (description
     "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.")
    (license license:bsd-3)))

haskell-8.10-uri-bytestring

(define-public haskell-8.10-users
  (package
    (name "haskell-8.10-users")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/users/users-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m2k3vq938whv9577k3jrgx99hwr272s0fc22p2i6k0dgf9sqqb7"))))
    (properties `((upstream-name . "users") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1x26g7k6kmq2vng9y5qkz82z06rs322s2y8bs9y6r4vayvg07q9v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-bcrypt)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-path-pieces)))
    (home-page "https://github.com/agrafix/users")
    (synopsis "A library simplifying user management for web applications")
    (description
     "Scrap the boilerplate for managing user accounts in web applications

Features:

* Easy to understand API

* CRUD for Users

* Session Management

* Password reset functionality

* Activation functionality

Current Backends:

* <http://hackage.haskell.org/package/users-postgresql-simple PostgreSQL-Simple Backend>

* <http://hackage.haskell.org/package/users-persistent Persistent Backend>
")
    (license license:expat)))

haskell-8.10-users

(define-public haskell-8.10-validation-selective
  (package
    (name "haskell-8.10-validation-selective")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validation-selective/validation-selective-"
                    version ".tar.gz"))
              (sha256
               (base32
                "005j45rm0bqjlyh3w67zi62hjv3fp0np7szz80s9nm203i8p6wzb"))))
    (properties `((upstream-name . "validation-selective") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-selective)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kowainik/validation-selective")
    (synopsis
     "Lighweight pure data validation based on Applicative and Selective functors")
    (description
     "Lighweight pure data validation based on Applicative and Selective
functors. The library builds validation interface around the
following data type:

@@
__data__ Validation e a
\\    = Failure e
\\    | Success a
@@
")
    (license license:mpl2.0)))

haskell-8.10-validation-selective

(define-public haskell-8.10-validity-aeson
  (package
    (name "haskell-8.10-validity-aeson")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-aeson/validity-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k0x6va9mmz0z9hgd1is71ks4fgbziw53rm7r6jsidp4ksszdzm0"))))
    (properties `((upstream-name . "validity-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zhqg6hac0js33yn0xw10pcp11hbygr95vmcmgpp3sdxdhgpbnmy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-text)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-validity-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for aeson")
    (description "")
    (license license:expat)))

haskell-8.10-validity-aeson

(define-public haskell-8.10-vector-bytes-instances
  (package
    (name "haskell-8.10-vector-bytes-instances")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-bytes-instances/vector-bytes-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i4cxgm984qs5ldp1x7m9blxh8wd5y8acy2ic8kpgaak8pzycrkn"))))
    (properties `((upstream-name . "vector-bytes-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bytes)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/vector-bytes-instances")
    (synopsis
     "Serial (from the bytes package) for Vector (from the vector package)")
    (description
     "Serial (from the bytes package) for Vector (from the vector package)

Based on the original BSD3-licensed work by Don Stewart in the
vector-binary-instances library.")
    (license license:bsd-3)))

haskell-8.10-vector-bytes-instances

(define-public haskell-8.10-vector-circular
  (package
    (name "haskell-8.10-vector-circular")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-nonempty-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/vector-circular")
    (synopsis "circular vectors")
    (description
     "nonempty circular vector data structure library. indexing is always total")
    (license license:expat)))

haskell-8.10-vector-circular

(define-public haskell-8.10-vformat-aeson
  (package
    (name "haskell-8.10-vformat-aeson")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vformat-aeson/vformat-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cj3zp5n1j86jds906r9yrhanl8xq08gk97x6i64d651pry4h11v"))))
    (properties `((upstream-name . "vformat-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1p85qlv9w11mqybcf81xix0lhbgc2bzy9gw83ywci5kmd1s7a2a5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-vformat)))
    (home-page "https://github.com/versioncloud/vformat-aeson#readme")
    (synopsis "Extend vformat to Aeson datatypes")
    (description "Please see http://hackage.haskell.org/package/vformat-aeson")
    (license license:bsd-3)))

haskell-8.10-vformat-aeson

(define-public haskell-8.10-wakame
  (package
    (name "haskell-8.10-wakame")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wakame/wakame-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wm87z7ag1xzvf4lxqg3xz62ac8i5b9ljzlg85vphcfadsj9khh7"))))
    (properties `((upstream-name . "wakame") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-sop-core)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kayhide/wakame#readme")
    (synopsis "Functions to manipulate records")
    (description
     "Please see the README on GitHub at <https://github.com/kayhide/wakame>")
    (license license:bsd-3)))

haskell-8.10-wakame

(define-public haskell-8.10-with-utf8
  (package
    (name "haskell-8.10-with-utf8")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-env)))
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

haskell-8.10-with-utf8

(define-public haskell-8.10-world-peace
  (package
    (name "haskell-8.10-world-peace")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/world-peace/world-peace-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05r4ils0imcv31sx6h82mwcwcrasrfs6kkip3frdsbf0aizgzcdb"))))
    (properties `((upstream-name . "world-peace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-should-not-typecheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://github.com/cdepillabout/world-peace")
    (synopsis "Open Union and Open Product Types")
    (description
     "Please see <https://github.com/cdepillabout/world-peace#readme README.md>.")
    (license license:bsd-3)))

haskell-8.10-world-peace

(define-public haskell-8.10-xml-to-json
  (package
    (name "haskell-8.10-xml-to-json")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-to-json/xml-to-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0brfdlarr4yyfsfawkfjdbk4z3lvi9ihkhvqh5ws2ll0h80ja6md"))))
    (properties `((upstream-name . "xml-to-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-curl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-hxt)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-hxt-curl)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-hxt-expat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-hxt-tagsoup)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-posix)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-tagsoup)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages xml) expat)))
    (home-page "https://github.com/sinelaw/xml-to-json")
    (synopsis "Library and command line tool for converting XML files to json")
    (description
     "The xml-to-json executable (and library) converts XMLs to json format, gaining readability while losing information such as comments, attribute ordering, and such.

For files that are slow to process, please use 'xml-to-json-fast' which (starting with version 2.0.0) resides in its own package.

The original purpose was to convert legacy XML-based data into a format that can be imported into JSON databases such as CouchDB and MongoDB.

The package also includes an executable to directly invoke the library on files (or urls on non-windows platforms).

See <https://github.com/sinelaw/xml-to-json#readme> for details and usage.")
    (license license:expat)))

haskell-8.10-xml-to-json

(define-public haskell-8.10-yi-rope
  (package
    (name "haskell-8.10-yi-rope")
    (version "0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yi-rope/yi-rope-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "020hnyhl2g313ch6dng9lq3xdjy3ssnb069wiwzbpg816mlii4ws"))))
    (properties `((upstream-name . "yi-rope") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fingertree)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)))
    (home-page "https://hackage.haskell.org/package/yi-rope")
    (synopsis "A rope data structure used by Yi")
    (description "A rope data structure used by Yi")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-yi-rope

