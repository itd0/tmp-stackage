;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage017)
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
(define-public haskell-8.4-algebra
  (package
    (name "haskell-8.4-algebra")
    (version "4.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/algebra/algebra-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "090jaipyx5pcav2wqcqzds51fwx49l4c9cpp9nnk16bgkf92z615"))))
    (properties `((upstream-name . "algebra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1yrqg6p9p7vfzv8gjbcvln5gd221kslg6zvn5d1722wfa06g4g1j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-nats)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "http://github.com/ekmett/algebra/")
    (synopsis "Constructive abstract algebra")
    (description "Constructive abstract algebra")
    (license license:bsd-3)))

haskell-8.4-algebra

(define-public haskell-8.4-apply-refact
  (package
    (name "haskell-8.4-apply-refact")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apply-refact/apply-refact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bvlbchpma3vlxfvjbyd01rmzqc9h5q3my9n7v3wal2p7ysvjpqz"))))
    (properties `((upstream-name . "apply-refact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-filemanip)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-ghc-exactprint)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-refact)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-silently)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-tasty-golden)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)))
    (home-page "https://hackage.haskell.org/package/apply-refact")
    (synopsis "Perform refactorings specified by the refact library.")
    (description
     "Perform refactorings specified by the refact library. It is primarily used with HLint's --refactor flag.")
    (license license:bsd-3)))

haskell-8.4-apply-refact

(define-public haskell-8.4-bench
  (package
    (name "haskell-8.4-bench")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-criterion)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-silently)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-turtle)))
    (home-page "https://github.com/Gabriella439/bench")
    (synopsis "Command-line benchmark tool")
    (description "Think of this as a more powerful alternative to the @@time@@
command.  Use this command-line tool to benchmark a command
using Haskell's @@criterion@@ library.")
    (license license:bsd-3)))

haskell-8.4-bench

(define-public haskell-8.4-boltzmann-samplers
  (package
    (name "haskell-8.4-boltzmann-samplers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage016) haskell-8.4-ad)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-boltzmann-samplers

(define-public haskell-8.4-bv-little
  (package
    (name "haskell-8.4-bv-little")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bv-little/bv-little-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xscq4qjwisqiykdhiirxc58gsrmabvxmxwxw80f2m6ia103k3cc"))))
    (properties `((upstream-name . "bv-little") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/recursion-ninja/bv-little")
    (synopsis "Efficient little-endian bit vector library")
    (description
     "
This package contains a time- and space- efficient implementation of /little-endian/ bit vectors. Provides implementations of applicable typeclasses and numeric conversions.

The declared cost of each operation is either worst-case or amortized.

For an implementation of /big-endian/ bit vectors, use the <https://hackage.haskell.org/package/bv bv> package.")
    (license license:bsd-3)))

haskell-8.4-bv-little

(define-public haskell-8.4-c2hs
  (package
    (name "haskell-8.4-c2hs")
    (version "0.28.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/c2hs/c2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nplgxfin139x12sb656f5870rpdclrhzi8mq8pry035qld15pci"))))
    (properties `((upstream-name . "c2hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase3" "-f-regression")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-language-c)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-shelly)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (home-page "https://github.com/haskell/c2hs")
    (synopsis "C->Haskell FFI tool that gives some cross-language type safety")
    (description
     "C->Haskell assists in the development of Haskell bindings to C
libraries. It extracts interface information from C header
files and generates Haskell code with foreign imports and
marshaling. Unlike writing foreign imports by hand (or using
hsc2hs), this ensures that C functions are imported with the
correct Haskell types.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-c2hs

(define-public haskell-8.4-conduit
  (package
    (name "haskell-8.4-conduit")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/conduit/conduit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mi0ad2ha51lyx1sw15zkzbh2bvv1q7jcfrxd4xc91d7mmk9n4mf"))))
    (properties `((upstream-name . "conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "12xc9yqz282n61cbxk7jaz9a3slppzr4jymsa1f4k3w9kkkrap66")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-silently)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-conduit

(define-public haskell-8.4-fay-dom
  (package
    (name "haskell-8.4-fay-dom")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fay-dom/fay-dom-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zm6w6nccswaksr283alhnsss6xw4k7s61yp8ff4lg5127ff9wp0"))))
    (properties `((upstream-name . "fay-dom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lhmkf2n7prv6w51bl3szz4g9cn2dkhb873m7f568nnwysqibv8b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-fay-base)))
    (home-page "https://github.com/faylang/fay-dom")
    (synopsis "DOM FFI wrapper library for Fay")
    (description "DOM FFI wrapper library for Fay")
    (license license:bsd-3)))

haskell-8.4-fay-dom

(define-public haskell-8.4-find-clumpiness
  (package
    (name "haskell-8.4-find-clumpiness")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/find-clumpiness/find-clumpiness-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aicxjh58cz25kxigz013j07a0vc5jyirs75daqjmlgd3rj5b7h8"))))
    (properties `((upstream-name . "find-clumpiness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-BiobaseNewick)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-clumpiness)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hierarchical-clustering)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-listsafe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-text-show)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-tree-fun)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/GregorySchwartz/find-clumpiness#readme")
    (synopsis "Find the clumpiness of labels in a tree")
    (description
     "Use a clumpiness measure to find the aggregation relationship between labels inside of a tree.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-find-clumpiness

(define-public haskell-8.4-fsnotify
  (package
    (name "haskell-8.4-fsnotify")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fsnotify/fsnotify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19bdbz9wb9jvln6yg6qm0hz0w84bypvkxf0wjhgrgd52f9gidlny"))))
    (properties `((upstream-name . "fsnotify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "12m0y5583plk9pikvwqy1rc0yyvicxf8j5nz0nwxb4grsgfqrv7v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-hinotify)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-shelly)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)))
    (home-page "https://github.com/haskell-fswatch/hfsnotify")
    (synopsis "Cross platform library for file change notification.")
    (description "Cross platform library for file creation, modification,
and deletion notification. This library builds upon
existing libraries for platform-specific Windows, Mac,
and Linux filesystem event notification.")
    (license license:bsd-3)))

haskell-8.4-fsnotify

(define-public haskell-8.4-gloss-raster
  (package
    (name "haskell-8.4-gloss-raster")
    (version "1.12.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-raster/gloss-raster-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14a1qcajm4fp4hr4y55mw1jl5id747d455yn1818y5kz75m4k7y8"))))
    (properties `((upstream-name . "gloss-raster") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-llvm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-gloss)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-gloss-rendering)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-repa)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Parallel rendering of raster images.")
    (description "Parallel rendering of raster images.")
    (license license:expat)))

haskell-8.4-gloss-raster

(define-public haskell-8.4-haskintex
  (package
    (name "haskell-8.4-haskintex")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-HaTeX)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage012) haskell-8.4-hint)))
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

haskell-8.4-haskintex

(define-public haskell-8.4-hasql-optparse-applicative
  (package
    (name "haskell-8.4-hasql-optparse-applicative")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-optparse-applicative/hasql-optparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d33y3bzy3q5yj4vizi9i2xwwnw1lzyxq72jk2daqjs347dc7d33"))))
    (properties `((upstream-name . "hasql-optparse-applicative")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-hasql)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hasql-pool)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/sannsyn/hasql-optparse-applicative ")
    (synopsis "\"optparse-applicative\" parsers for \"hasql\"")
    (description "")
    (license license:expat)))

haskell-8.4-hasql-optparse-applicative

(define-public haskell-8.4-hw-hedgehog
  (package
    (name "haskell-8.4-hw-hedgehog")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-hedgehog/hw-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fk5qgn011j7cb75xi434vk0vq4bl8w9lrs6hpf45c8mv4c48vby"))))
    (properties `((upstream-name . "hw-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/haskell-works/hw-hedgehog#readme")
    (synopsis "Extra hedgehog functionality")
    (description "Extra hedgehog functionality.")
    (license license:bsd-3)))

haskell-8.4-hw-hedgehog

(define-public haskell-8.4-hw-hspec-hedgehog
  (package
    (name "haskell-8.4-hw-hspec-hedgehog")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-hspec-hedgehog/hw-hspec-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kznqpliqnahyayi1q08mfz4qwhqvz54hb8cv6r2ps3lyjnpmlfk"))))
    (properties `((upstream-name . "hw-hspec-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1sr5cf1s86mp6nlw1vgj565zsrxmwa134g5003p1834vynyh98zq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/haskell-works/hw-hspec-hedgehog#readme")
    (synopsis "Interoperability between hspec and hedgehog")
    (description "Interoperability between hspec and hedgehog.")
    (license license:bsd-3)))

haskell-8.4-hw-hspec-hedgehog

(define-public haskell-8.4-hw-parser
  (package
    (name "haskell-8.4-hw-parser")
    (version "0.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-parser/hw-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wn68s00smwnivi813jcb71mx095v1kjgd2253gqknpmdv3ig16x"))))
    (properties `((upstream-name . "hw-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hw-prim)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)))
    (home-page "http://github.com/haskell-works/hw-parser#readme")
    (synopsis "Simple parser support")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-hw-parser

(define-public haskell-8.4-hyraxAbif
  (package
    (name "haskell-8.4-hyraxAbif")
    (version "0.2.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyraxAbif/hyraxAbif-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x800gx7l3wj0xphip8fhzh9pbhc374p2pgjdvhw5qq5wbxc7r3b"))))
    (properties `((upstream-name . "hyraxAbif") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1dwkqlkjg5hbjlwl7cjxmhg1camhlqpaqjrpmkwknscj76hfckvi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hscolour)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)))
    (home-page "https://github.com/hyraxbio/hyraxAbif/#readme")
    (synopsis "Modules for parsing, generating and manipulating AB1 files.")
    (description
     "This library provides functionality for parsing, modifying, writing and generating ABIF files
<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAABuCAMAAAC6LQUkAAAALVBMVEXA5+7/////53c9q1oVFhbCPzifzLVrv4RGguPX39ZFTluGhX6Ks/DSg1zdvnNa6pLqAAADlklEQVRo3u3XjZKjIAwAYD3+BIH3f9wjBCSJtnUd2725qeO6rtWvMSToTn9uXKYvdhXLSmXxSTLG8GPlQD2e8NN+eNVah0QwpZT7I68044LOb6SpJIShcUkMU+zCDGGltD+WTdu2qIuz5hz0iMwp5/h9JhFVizbVu0/j44wx0ZwplTMPDQJIeYcZAHG7JUwMQIXULrTtChpuX9vJATDI29oxB9nfDcF+ODOElVpwNDKKqbbsc5T3Q4xp61jLWdiwrFQdAXqfuVyUd1iqSqYJCFUbmMMbZPeZDuoMGQxw+5ZeZx1rIfHxTPv8b7XK62bt1ncKuoI9WuYLyxf7Yl/si/0+Bk9NiS1lkafDefIYPE/+ScwD5s9gInUenv1eYoFjFt4OLMemJR5g7ggLZ7B4BrO3Y/YCZu/FbFn5sVWvZX2BRcDiBczBSe6t2DS9FcPz+LGgrb2IeX+IhU9iy2nMe4ZBl4tOL1gpteU1pk9is8Rg/pFzUMX0bRj+/D+YP8A8Yn7D7AE2ITaJ6ayOqJhoa3kQzNVa41ipsfhhzCJmfxeziFkxA8HmORYPMds2O2zdMPcYixcw28J7GwbvEBxz92K+DSmbG9uQfgpbFnhSn8F8a4OGYVsKLAAWlquYEti6ao6pA0wjpi9gY0uns779GAbPw5swfOq8wnzHfMNaUfDm7NgkZiAxB7VxDE8xqFn4wleY7Zj9Tay1OOv01uL4a5vO9lidjmk/ncQsCbBhAbFwE1bnKYq5jjkxafTUPcKWQ8yTcXgL5ke50dKnLbD0SW8Rk4bAdMf0M6xPLYvsJt5P7f3nVmx+heE5HDPGmFswyFXDvJg0Wu7oKJIWwAaoLTARzJuUjHcUC2RUH2HhEMsml5VgdmD2GdbaJEzkHaiEVYIj70E/xSJpTcRIc/b/53CHGqQF4mgTipXsz8b8GBuVzbA0z+kK1oc8jtbMiOXRT/1ffUzeA2w5xIozz0V8gqlDbBulhWLQYhzzpOBY4Y+9cIApBfmHERj9pAemn2BbYgPB0h6je+cxr1bEklmVF62JMbJMbUMRaWKnjtX8Y9KsaAAcClb3rruR5iL2/BuDtWeMsqLMcJdhW5ALDX8ZGO4VzInKwCD5LNb3j7CeMkyazH/d58+kVnIx0PAxaR6rrCfNi5TVKDnWbjlqPZFvjNiZZmAtaSRl9Q/+htHkQGaxudWvM/0u4T6NEynDcTfnF70tD074C7p1S5o4ju7XAAAAAElFTkSuQmCC>>

Any AB1 file conforming to the standard at <http://www6.appliedbiosystems.com/support/software_community/ABIF_File_Format.pdf> should be supported.

This library also support generating a minimal ABIF file from a FASTA input sequence.

A basic terminal application that can dump and generate AB1s is included. See <https://github.com/hyraxbio/hyraxAbif/blob/master/app/Main.hs>

See

* \"Hyrax.Abif.Generate\" for generate ABIF files from FASTA inputs
* \"Hyrax.Abif.Read\" for parsing ABIF files
* \"Hyrax.Abif.Write\" for creating/updating ABIF files
* \"Hyrax.Abif\" for the core types
* \"Examples\" for examples")
    (license license:bsd-3)))

haskell-8.4-hyraxAbif

(define-public haskell-8.4-jmacro-rpc-snap
  (package
    (name "haskell-8.4-jmacro-rpc-snap")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jmacro-rpc-snap/jmacro-rpc-snap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1syzx2lw4r8knsqhsvilp04wb8a718379cmn0nhjqlwhpaja9bj8"))))
    (properties `((upstream-name . "jmacro-rpc-snap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-jmacro)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-jmacro-rpc)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-snap-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://hub.darcs.net/gershomb/jmacro-rpc")
    (synopsis "Snap backend for jmacro-rpc")
    (description
     "Provides functions for serving jmacro-rpc json rpcs and panels from Snap.")
    (license license:bsd-3)))

haskell-8.4-jmacro-rpc-snap

(define-public haskell-8.4-jvm-streaming
  (package
    (name "haskell-8.4-jvm-streaming")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jvm-streaming/jvm-streaming-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kgr2l1gcxy2z30xr89fx1f51h5yycphhh3mpf00wahlkdz7q6wd"))))
    (properties `((upstream-name . "jvm-streaming") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributed-closure)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-inline-java)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-jni)
                  (@ (gnu packages stackage ghc-8.4 stage014) haskell-8.4-jvm)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-jvm-batching)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages java) openjdk19)))
    (home-page
     "http://github.com/tweag/inline-java/tree/master/jvm-streaming#readme")
    (synopsis "Expose Java iterators as streams from the streaming package.")
    (description "Please see README.md.")
    (license license:bsd-3)))

haskell-8.4-jvm-streaming

(define-public haskell-8.4-kan-extensions
  (package
    (name "haskell-8.4-kan-extensions")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-invariant)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/ekmett/kan-extensions/")
    (synopsis
     "Kan extensions, Kan lifts, the Yoneda lemma, and (co)density (co)monads")
    (description
     "Kan extensions, Kan lifts, various forms of the Yoneda lemma, and (co)density (co)monads.")
    (license license:bsd-3)))

haskell-8.4-kan-extensions

(define-public haskell-8.4-mutable-containers
  (package
    (name "haskell-8.4-mutable-containers")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Abstactions and concrete implementations of mutable containers")
    (description
     "See docs and README at <http://www.stackage.org/package/mutable-containers>")
    (license license:expat)))

haskell-8.4-mutable-containers

(define-public haskell-8.4-mwc-probability-transition
  (package
    (name "haskell-8.4-mwc-probability-transition")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-logging-effect)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-mwc-probability)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/ocramz/mwc-probability-transition")
    (synopsis "A Markov stochastic transition operator with logging")
    (description
     "
This package provides a 'Transition' type that is useful for modelling (and debugging) stochastic transition kernels (used in e.g. the integration of SDEs, Markov chain Monte Carlo algorithms etc.).

It wraps the compositional random sampling functionality of `mwc-probability` and offers structured logging via `logging-effect`.")
    (license license:bsd-3)))

haskell-8.4-mwc-probability-transition

(define-public haskell-8.4-netwire-input-glfw
  (package
    (name "haskell-8.4-netwire-input-glfw")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-GLFW-b)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-OpenGL)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-netwire)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-netwire-input)))
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

haskell-8.4-netwire-input-glfw

(define-public haskell-8.4-numhask-range
  (package
    (name "haskell-8.4-numhask-range")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numhask-range/numhask-range-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zfw49cgjwbx6v6ljqbl46d1nkiah0p79pjargjsfpfks9ra2qkc"))))
    (properties `((upstream-name . "numhask-range") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-numhask-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-numhask-test)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/tonyday567/numhask-range#readme")
    (synopsis "Numbers that are range representations")
    (description "Numbers that represent ranges of all sorts.")
    (license license:bsd-3)))

haskell-8.4-numhask-range

(define-public haskell-8.4-online
  (package
    (name "haskell-8.4-online")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/online/online-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "056a9dkrzfgj0wf9f9d9d25f6yc03jx9z0p0z5xm8n8brk6b3bds"))))
    (properties `((upstream-name . "online") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-numhask-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-tdigest)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-vector-algorithms)))
    (home-page "https://github.com/tonyday567/online#readme")
    (synopsis "online statistics")
    (description "transformation of statistics to online algorithms")
    (license license:bsd-3)))

haskell-8.4-online

(define-public haskell-8.4-pipes-bytestring
  (package
    (name "haskell-8.4-pipes-bytestring")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-pipes-group)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-pipes-parse)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stringsearch)))
    (home-page "https://hackage.haskell.org/package/pipes-bytestring")
    (synopsis "ByteString support for pipes")
    (description
     "This library provides @@pipes@@ utilities for @@ByteString@@s")
    (license license:bsd-3)))

haskell-8.4-pipes-bytestring

(define-public haskell-8.4-postgresql-schema
  (package
    (name "haskell-8.4-postgresql-schema")
    (version "0.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-schema/postgresql-schema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wnmhh8pzs9hzsmqkvr89jbdbbd1j87fnly2c80rsd7wr5qcrpkk"))))
    (properties `((upstream-name . "postgresql-schema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-basic-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-shelly)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/mfine/postgresql-schema")
    (synopsis "PostgreSQL Schema Management")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-postgresql-schema

(define-public haskell-8.4-proto-lens-arbitrary
  (package
    (name "haskell-8.4-proto-lens-arbitrary")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-arbitrary/proto-lens-arbitrary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "128r7g82yx4rs38yd9s4bwcpyiqm5yr4lyci3z88bhqsvkn4438i"))))
    (properties `((upstream-name . "proto-lens-arbitrary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-lens-family)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-proto-lens)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Arbitrary instances for proto-lens.")
    (description
     "The proto-lens-arbitrary allows generating arbitrary messages for use with QuickCheck.")
    (license license:bsd-3)))

haskell-8.4-proto-lens-arbitrary

(define-public haskell-8.4-proto-lens-optparse
  (package
    (name "haskell-8.4-proto-lens-optparse")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-optparse/proto-lens-optparse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dn5cjwbagcykh1fv99v6mmj7mlnl46nqlwpz1878fy7vl7i8lzh"))))
    (properties `((upstream-name . "proto-lens-optparse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-proto-lens)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Adapting proto-lens to optparse-applicative ReadMs.")
    (description
     "A package adapting proto-lens to optparse-applicative ReadMs. This gives an easy way to define options and arguments for text-format protobuf types.")
    (license license:bsd-3)))

haskell-8.4-proto-lens-optparse

(define-public haskell-8.4-proto-lens-protoc
  (package
    (name "haskell-8.4-proto-lens-protoc")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-protoc/proto-lens-protoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15qypl2z5mccmxhq2bl86frzdalpcnsjiw6vypvnr6gxlr7mwhm7"))))
    (properties `((upstream-name . "proto-lens-protoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-only-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-lens-family)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-lens-labels)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-proto-lens)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Protocol buffer compiler for the proto-lens library.")
    (description
     "Turn protocol buffer files (.proto) into Haskell files (.hs) which can be used with the proto-lens package.
The library component of this package contains compiler code (namely Data.ProtoLens.Compiler.*) is not guaranteed to have stable APIs.'")
    (license license:bsd-3)))

haskell-8.4-proto-lens-protoc

(define-public haskell-8.4-result
  (package
    (name "haskell-8.4-result")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage016) haskell-8.4-keys)))
    (home-page "https://github.com/srijs/haskell-result")
    (synopsis "Encode success or at least one error")
    (description "")
    (license license:expat)))

haskell-8.4-result

(define-public haskell-8.4-servant-client
  (package
    (name "haskell-8.4-servant-client")
    (version "0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client/servant-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jr2057y7vp6d2jcnisawkajinnqm68h024crh929r9fdka0p1n6"))))
    (properties `((upstream-name . "servant-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1rjjqxyyf51bjq8li8yilng5pjd9a5n3d8zniqmfw3hys6dz8n8g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-servant-client-core)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis
     "automatical derivation of querying functions for servant webservices")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://haskell-servant.readthedocs.org/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.4-servant-client

(define-public haskell-8.4-sexp-grammar
  (package
    (name "haskell-8.4-sexp-grammar")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sexp-grammar/sexp-grammar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0znzxih07yhm0gjbwzm3gdvmrjm2676g7sqjicawc86fwww1rgms"))))
    (properties `((upstream-name . "sexp-grammar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mdp3lyncwprw9jwxjfwjr7gyg247ry4jw1v25q4hx6l971kd541")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-invertible-grammar)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/esmolanka/sexp-grammar")
    (synopsis "Invertible grammar combinators for S-expressions")
    (description
     "Serialisation to and deserialisation from S-expressions derived from
a single grammar definition.")
    (license license:bsd-3)))

haskell-8.4-sexp-grammar

(define-public haskell-8.4-store
  (package
    (name "haskell-8.4-store")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/store/store-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dpm7752p8lhlwq5nlhqxwq1c5nyi97rnj83j2im3i9wvs2qb3i3"))))
    (properties `((upstream-name . "store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-comparison-bench" "-f-small-bench")
       #:cabal-revision
       ("1" "1v3bmq86ann1k9kw1dwcw088v2jk4chl2fd97xlxil1gvl48gi8f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cereal-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-criterion)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-store-core)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-th-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-th-reify-many)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-th-utilities)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-weigh)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Fast binary serialization")
    (description "")
    (license license:expat)))

haskell-8.4-store

(define-public haskell-8.4-streams
  (package
    (name "haskell-8.4-streams")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
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

haskell-8.4-streams

(define-public haskell-8.4-tasty-hedgehog
  (package
    (name "haskell-8.4-tasty-hedgehog")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hedgehog/tasty-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10m1akbiblnjq9ljk469725k30b254d36d267rk51z2f171py42s"))))
    (properties `((upstream-name . "tasty-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0d7s1474pvnyad6ilr5rvpama7s468ya9ns4ksbl0827z9vvga43")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hedgehog)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/qfpl/tasty-hedgehog")
    (synopsis "Integration for tasty and hedgehog.")
    (description
     "Integrates the hedgehog testing library with the tasty testing framework. ")
    (license license:bsd-3)))

haskell-8.4-tasty-hedgehog

(define-public haskell-8.4-threepenny-gui
  (package
    (name "haskell-8.4-threepenny-gui")
    (version "0.8.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/threepenny-gui/threepenny-gui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "173aacscvf2llk6n5nnxvww22673cg2hclkb3s18av3xk03b4qf6"))))
    (properties `((upstream-name . "threepenny-gui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-rebug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-snap-core)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-snap-server)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-websockets-snap)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-threepenny-gui

(define-public haskell-8.4-transaction
  (package
    (name "haskell-8.4-transaction")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)))
    (home-page "https://github.com/arowM/haskell-transaction#readme")
    (synopsis "Monadic representation of transactions.")
    (description
     "Monadic representation of transactions. Alike `List`, but can be declared with `do` notations.")
    (license license:expat)))

haskell-8.4-transaction

(define-public haskell-8.4-uncertain
  (package
    (name "haskell-8.4-uncertain")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016) haskell-8.4-ad)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-free)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-mwc-random-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/mstksg/uncertain")
    (synopsis
     "Manipulating numbers with inherent experimental/measurement uncertainty")
    (description
     "See <https://github.com/mstksg/uncertain/blob/master/README.md README.md>.

Documentation maintained at <https://mstksg.github.io/uncertain>")
    (license license:bsd-3)))

haskell-8.4-uncertain

(define-public haskell-8.4-unfoldable-restricted
  (package
    (name "haskell-8.4-unfoldable-restricted")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unfoldable-restricted/unfoldable-restricted-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vl3qw6sjprsxadbf70md2njm9jvwwmz6qrqi3rifdj535vjh68b"))))
    (properties `((upstream-name . "unfoldable-restricted") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-unfoldable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-unit-constraint)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/unfoldable-restricted")
    (synopsis "An alternative to the Unfoldable typeclass")
    (description "")
    (license license:bsd-3)))

haskell-8.4-unfoldable-restricted

(define-public haskell-8.4-universe-instances-extended
  (package
    (name "haskell-8.4-universe-instances-extended")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-extended/universe-instances-extended-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15y9f0hbxqsksclxrssj4h08y0yb3nm9clqasjw6nsmi04kjfnv6"))))
    (properties `((upstream-name . "universe-instances-extended")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1f7mzwn97kmnm1p1hscz5mzly700q2pw5awwdzzsxfkxv3law7xn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-universe-instances-base)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from select extra packages")
    (description "")
    (license license:bsd-3)))

haskell-8.4-universe-instances-extended

(define-public haskell-8.4-vector-sized
  (package
    (name "haskell-8.4-vector-sized")
    (version "1.0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-sized/vector-sized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rdryc5ykqvdpjgx3a895cx2i14ixg0ryhppn89fjzhann79mgk4"))))
    (properties `((upstream-name . "vector-sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vahkbzg745h8v2qby6q3k7f3ifqi8737pw4dqzps1qacnamwcmy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-adjunctions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-finite-typelits)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-indexed-list-literals)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/expipiplus1/vector-sized#readme")
    (synopsis "Size tagged vectors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-vector-sized

(define-public haskell-8.4-x509-system
  (package
    (name "haskell-8.4-x509-system")
    (version "1.6.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-system/x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06a4m9c7vlr9nhp9gmqbb46arf0yj1dkdm4nip03hzy67spdmp20"))))
    (properties `((upstream-name . "x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-pem)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "Handle per-operating-system X.509 accessors and storage")
    (description "System X.509 handling")
    (license license:bsd-3)))

haskell-8.4-x509-system

(define-public haskell-8.4-x509-validation
  (package
    (name "haskell-8.4-x509-validation")
    (version "1.6.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-validation/x509-validation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16yihzljql3z8w5rgdl95fv3hgk7yd86kbl9b3glllsark5j2hzr"))))
    (properties `((upstream-name . "x509-validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-asn1-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hourglass)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-pem)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 Certificate and CRL validation")
    (description "X.509 Certificate and CRL validation. please see README")
    (license license:bsd-3)))

haskell-8.4-x509-validation

