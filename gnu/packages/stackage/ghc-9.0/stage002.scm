;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage002)
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
(define-public haskell-9.0-Ebnf2ps
  (package
    (name "haskell-9.0-Ebnf2ps")
    (version "1.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Ebnf2ps/Ebnf2ps-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jrbxanhp81n3nabdw5s1gh8a78hy4bgnv5slqzrkj6n47bygk0f"))))
    (properties `((upstream-name . "Ebnf2ps") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-old-time)))
    (home-page "https://github.com/FranklinChen/Ebnf2ps")
    (synopsis "Peter's Syntax Diagram Drawing Tool")
    (description "Ebnf2ps generates nice looking syntax diagrams in EPS
and FIG format from EBNF specifications and from yacc,
bison, and Happy input grammars. The diagrams can be
immediatedly included in TeX/LaTeX documents and in
texts created with other popular document preparation
systems.")
    (license license:bsd-3)))

haskell-9.0-Ebnf2ps

(define-public haskell-9.0-FontyFruity
  (package
    (name "haskell-9.0-FontyFruity")
    (version "0.5.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/FontyFruity/FontyFruity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16hafvgfmxjv6bl67f3691n2ci3k89pbh0296vfwf9jk7ah5psrd"))))
    (properties `((upstream-name . "FontyFruity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-xml)))
    (home-page "https://hackage.haskell.org/package/FontyFruity")
    (synopsis "A true type file format loader")
    (description "A haskell Truetype file parser.

You can load a font file and extract some curves to be
drawed with a library like Rasterific .")
    (license license:bsd-3)))

haskell-9.0-FontyFruity

(define-public haskell-9.0-HUnit-approx
  (package
    (name "haskell-9.0-HUnit-approx")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HUnit-approx/HUnit-approx-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1brblqpz002jzql9wgzxk5zlfglmkv91s8gcfd6992xv539jfhsa"))))
    (properties `((upstream-name . "HUnit-approx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)))
    (home-page "https://github.com/goldfirere/HUnit-approx")
    (synopsis "Approximate equality for floating point numbers with HUnit")
    (description
     "This package exports combinators useful in comparing floating-point numbers
in HUnit tests, by using approximate equality.")
    (license license:bsd-3)))

haskell-9.0-HUnit-approx

(define-public haskell-9.0-HaXml
  (package
    (name "haskell-9.0-HaXml")
    (version "1.25.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HaXml/HaXml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xaqp519dw948v00q309msx07yhzxbd0k8ds5q434l6g6cmsqqgc"))))
    (properties `((upstream-name . "HaXml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-polyparse)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://github.com/HaXml/HaXml")
    (synopsis "Utilities for manipulating XML documents")
    (description "Haskell utilities for parsing, filtering, transforming and
generating XML documents.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-HaXml

(define-public haskell-9.0-Imlib
  (package
    (name "haskell-9.0-Imlib")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Imlib/Imlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "075x1vcrxdwknzbad05l08i5c79svf714yvv6990ffvsfykiilry"))))
    (properties `((upstream-name . "Imlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-X11)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages image) imlib2)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://hackage.haskell.org/package/Imlib")
    (synopsis "")
    (description "Haskell binding for Imlib 2")
    (license license:bsd-3)))

haskell-9.0-Imlib

(define-public haskell-9.0-MonadRandom
  (package
    (name "haskell-9.0-MonadRandom")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MonadRandom/MonadRandom-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17qaw1gg42p9v6f87dj5vih7l88lddbyd8880ananj8avanls617"))))
    (properties `((upstream-name . "MonadRandom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1diy29if7w1c9ckc465mrrb52fm0zmd8zzym1h5ryh5a58qafwhr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/MonadRandom")
    (synopsis "Random-number generation monad.")
    (description "Support for computations which consume random values.")
    (license license:bsd-3)))

haskell-9.0-MonadRandom

(define-public haskell-9.0-QuickCheck
  (package
    (name "haskell-9.0-QuickCheck")
    (version "2.14.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/QuickCheck/QuickCheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wrnrm9sq4s0bly0q58y80g4153q45iglqa34xsi2q3bd62nqyyq"))))
    (properties `((upstream-name . "QuickCheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftemplatehaskell" "-f-old-random")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)))
    (home-page "https://github.com/nick8325/quickcheck")
    (synopsis "Automatic testing of Haskell programs")
    (description
     "QuickCheck is a library for random testing of program properties.
The programmer provides a specification of the program, in the form of
properties which functions should satisfy, and QuickCheck then tests that the
properties hold in a large number of randomly generated cases.
Specifications are expressed in Haskell, using combinators provided by
QuickCheck. QuickCheck provides combinators to define properties, observe the
distribution of test data, and define test data generators.

Most of QuickCheck's functionality is exported by the main \"Test.QuickCheck\"
module. The main exception is the monadic property testing library in
\"Test.QuickCheck.Monadic\".

If you are new to QuickCheck, you can try looking at the following resources:

* The <http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html official QuickCheck manual>.
It's a bit out-of-date in some details and doesn't cover newer QuickCheck features,
but is still full of good advice.
* <https://begriffs.com/posts/2017-01-14-design-use-quickcheck.html>,
a detailed tutorial written by a user of QuickCheck.

The <https://hackage.haskell.org/package/quickcheck-instances quickcheck-instances>
companion package provides instances for types in Haskell Platform packages
at the cost of additional dependencies.")
    (license license:bsd-3)))

haskell-9.0-QuickCheck

(define-public haskell-9.0-SafeSemaphore
  (package
    (name "haskell-9.0-SafeSemaphore")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/SafeSemaphore/SafeSemaphore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rpg9j6fy70i0b9dkrip9d6wim0nac0snp7qzbhykjkqlcvvgr91"))))
    (properties `((upstream-name . "SafeSemaphore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k61gqgfh6n3sj8ni8sfvpcm39nqc2msjfxk2pgmhfabvv48w5hv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://github.com/ChrisKuklewicz/SafeSemaphore")
    (synopsis "Much safer replacement for QSemN, QSem, and SampleVar")
    (description
     "This provides a much safer semaphore than the QSem, QSemN, SampleVar in base.
Those base modules are not exception safe and can be broken by killThread.
See <https://github.com/ChrisKuklewicz/SafeSemaphore> for more details.")
    (license license:bsd-3)))

haskell-9.0-SafeSemaphore

(define-public haskell-9.0-abstract-deque
  (package
    (name "haskell-9.0-abstract-deque")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/abstract-deque/abstract-deque-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18jwswjxwzc9bjiy4ds6hw2a74ki797jmfcifxd2ga4kh7ri1ah9"))))
    (properties `((upstream-name . "abstract-deque") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-usecas")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis "Abstract, parameterized interface to mutable Deques.")
    (description
     "An abstract interface to highly-parameterizable queues/deques.

Background: There exists a feature space for queues that extends between:

* simple, single-ended, non-concurrent, bounded queues

* double-ended, threadsafe, growable queues

... with important points inbetween (such as
the queues used for work-stealing).

This package includes an interface for Deques that allows the
programmer to use a single API for all of the above, while using the
type-system to select an efficient implementation given the
requirements (using type families).

This package also includes a simple reference implementation based
on 'IORef' and \"Data.Sequence\".")
    (license license:bsd-3)))

haskell-9.0-abstract-deque

(define-public haskell-9.0-alternative-vector
  (package
    (name "haskell-9.0-alternative-vector")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alternative-vector/alternative-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cf7akvr9nac1483chh7rd3xp5i5zk78f245lw9ixj6v133lnis2"))))
    (properties `((upstream-name . "alternative-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/athanclark/alternative-vector#readme")
    (synopsis "Use vectors instead of lists for many and some")
    (description "")
    (license license:bsd-3)))

haskell-9.0-alternative-vector

(define-public haskell-9.0-ansi-wl-pprint
  (package
    (name "haskell-9.0-ansi-wl-pprint")
    (version "0.6.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-wl-pprint/ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b2fg8px98dzbaqyns10kvs8kn6cl1hdq5wb9saz40izrpkyicm7"))))
    (properties `((upstream-name . "ansi-wl-pprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("3" "1km10sx7ldyv1vfyljik1gqnrwl7bnq2s5m40w41gc930vm48891")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)))
    (home-page "http://github.com/ekmett/ansi-wl-pprint")
    (synopsis
     "The Wadler/Leijen Pretty Printer for colored ANSI terminal output")
    (description
     "This is a pretty printing library based on Wadler's paper [\"A Prettier Printer\"](https://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf).
It has been enhanced with support for ANSI terminal colored output using the [ansi-terminal](https://hackage.haskell.org/package/ansi-terminal) package.")
    (license license:bsd-3)))

haskell-9.0-ansi-wl-pprint

(define-public haskell-9.0-assert-failure
  (package
    (name "haskell-9.0-assert-failure")
    (version "0.1.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/assert-failure/assert-failure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "198bvr7wgshwmbl8gcgq91hz7d87ar6gkqhhp1xgsg1mqikqi02z"))))
    (properties `((upstream-name . "assert-failure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-pretty-show)))
    (home-page "https://github.com/Mikolaj/assert-failure")
    (synopsis "Syntactic sugar improving 'assert' and 'error'")
    (description "This library contains syntactic sugar that makes it easier
to write simple contracts with 'assert' and 'error'
and report the values that violate contracts.")
    (license license:bsd-3)))

haskell-9.0-assert-failure

(define-public haskell-9.0-bits-extra
  (package
    (name "haskell-9.0-bits-extra")
    (version "0.0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bits-extra/bits-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lyrr5jg8yg9cb97pn1pd4qgc7qn3irv8k5ra5j48fyn1rb6z4r7"))))
    (properties `((upstream-name . "bits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("2" "1szy6g9a0sqz6cb1pcrxwypr8xf6nvgwvchxr7j5ax5jnh6xrk8h")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/haskell-works/bits-extra#readme")
    (synopsis "Useful bitwise operations")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/bits-extra#readme>")
    (license license:bsd-3)))

haskell-9.0-bits-extra

(define-public haskell-9.0-blas-hs
  (package
    (name "haskell-9.0-blas-hs")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/blas-hs/blas-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11mhjvqjnap4lj70f6lxjrjrdlkw8gnmd1lz4cfkjawq4w4npq40"))))
    (properties `((upstream-name . "blas-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-netlib" "-f-no-accelerate" "-f-openblas" "-f-mkl" "-f-cblas")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/Rufflewind/blas-hs")
    (synopsis "Low-level Haskell bindings to Blas.")
    (description
     "This package provides a complete low-level binding to Blas via the foreign
function interface, allowing Haskell programs to take advantage of optimized
routines for vector and matrix operations in Haskell.

More information can be found at the
<https://github.com/Rufflewind/blas-hs repository>.")
    (license license:expat)))

haskell-9.0-blas-hs

(define-public haskell-9.0-both
  (package
    (name "haskell-9.0-both")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/both/both-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bf9fvc2ajbwwx31lmmyc1rzp3xzypwb3yjcmbhn6si5xnlbvqhl"))))
    (properties `((upstream-name . "both") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-zero)))
    (home-page "https://github.com/barrucadu/both")
    (synopsis "Like Maybe, but with a different Monoid instance.")
    (description
     "The Monoid instance for Maybe behaves like so:

> instance Monoid a => Monoid (Maybe a) where
>   mappend (Just x) (Just y) = Just $ x <> y
>   mappend (Just x) Nothing  = Just x
>   mappend Nothing  (Just y) = Just y
>   mappend Nothing  Nothing  = Nothing
>
>   mempty = Nothing

Both is a newtype wrapper around Maybe providing this instance:

> instance Monoid a => Monoid (Both a) where
>   mappend (Just x) (Just y) = Just $ x <> y
>   mappend _ _ = Nothing
>
>   mempty = Just mempty")
    (license license:expat)))

haskell-9.0-both

(define-public haskell-9.0-chunked-data
  (package
    (name "haskell-9.0-chunked-data")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chunked-data/chunked-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16m7y7fwrirbjbqqcsfmr4yxa9qvfax6r7pw0zl9ky71ms0wa47p"))))
    (properties `((upstream-name . "chunked-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Typeclasses for dealing with various chunked data representations")
    (description
     "See docs and README at <http://www.stackage.org/package/chunked-data>")
    (license license:expat)))

haskell-9.0-chunked-data

(define-public haskell-9.0-climb
  (package
    (name "haskell-9.0-climb")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/climb/climb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d6jscwbjlm21jcdl29c3ix6vd5ly9mjr0ljchzkr6yk7gqk4z24"))))
    (properties `((upstream-name . "climb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-linenoise)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)))
    (home-page "https://github.com/ejconlon/climb#readme")
    (synopsis "Building blocks for a GHCi-like REPL with colon-commands")
    (description
     "Please see the README on GitHub at <https://github.com/ejconlon/climb#readme>")
    (license license:bsd-3)))

haskell-9.0-climb

(define-public haskell-9.0-cmark
  (package
    (name "haskell-9.0-cmark")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cmark/cmark-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p41z6z8dqxk62287lvhhg4ayy9laai9ljh4azsnzb029v6mbv0d"))))
    (properties `((upstream-name . "cmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pkgconfig")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://github.com/jgm/cmark-hs")
    (synopsis "Fast, accurate CommonMark (Markdown) parser and renderer")
    (description
     "This package provides Haskell bindings for
<https://github.com/jgm/cmark libcmark>, the reference
parser for <http://commonmark.org CommonMark>, a fully
specified variant of Markdown. It includes sources for
libcmark (0.29.0) and does not require prior installation of the
C library.")
    (license license:bsd-3)))

haskell-9.0-cmark

(define-public haskell-9.0-cmark-gfm
  (package
    (name "haskell-9.0-cmark-gfm")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cmark-gfm/cmark-gfm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0la4sd0cmv3zmn0kygbd77dknyh55h0b0qx5jg883hqnvnhaq721"))))
    (properties `((upstream-name . "cmark-gfm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pkgconfig")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://github.com/kivikakk/cmark-gfm-hs")
    (synopsis "Fast, accurate GitHub Flavored Markdown parser and renderer")
    (description
     "This package provides Haskell bindings for
<https://github.com/github/cmark-gfm libcmark-gfm>, the reference
parser for <https://github.github.com/gfm/ GitHub Flavored Markdown>, a fully
specified variant of Markdown. It includes sources for
libcmark-gfm (0.29.0.gfm.6) and does not require prior installation of the
C library.")
    (license license:bsd-3)))

haskell-9.0-cmark-gfm

(define-public haskell-9.0-colorize-haskell
  (package
    (name "haskell-9.0-colorize-haskell")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/colorize-haskell/colorize-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v4spa6vw9igjpd1dr595z5raz5fr8f485q5w9imrv8spms46xh3"))))
    (properties `((upstream-name . "colorize-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-haskell-lexer)))
    (home-page "http://github.com/yav/colorize-haskell")
    (synopsis "Highligt Haskell source")
    (description "Highligt Haskell source")
    (license license:bsd-3)))

haskell-9.0-colorize-haskell

(define-public haskell-9.0-comonad
  (package
    (name "haskell-9.0-comonad")
    (version "5.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/comonad/comonad-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04rxycp2pbkrvhjgpgx08jmsipjz4cdmhv59dbp47k4jq8ndyv7g"))))
    (properties `((upstream-name . "comonad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcontainers" "-fdistributive" "-findexed-traversable")
       #:cabal-revision
       ("1" "0zlgkcd61cwsdbgjz03pfbjxhj6dc25792h7rwh0zy677vbsn6hz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "http://github.com/ekmett/comonad/")
    (synopsis "Comonads")
    (description "Comonads.")
    (license license:bsd-3)))

haskell-9.0-comonad

(define-public haskell-9.0-composition-extra
  (package
    (name "haskell-9.0-composition-extra")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composition-extra/composition-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0abipab6bx138rynpkh4daj53bv5yqbw94zfswysyq6iix529669"))))
    (properties `((upstream-name . "composition-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-composition)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)))
    (home-page "https://hackage.haskell.org/package/composition-extra")
    (synopsis "Combinators for unorthodox structure composition")
    (description "")
    (license license:bsd-3)))

haskell-9.0-composition-extra

(define-public haskell-9.0-contravariant-extras
  (package
    (name "haskell-9.0-contravariant-extras")
    (version "0.3.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contravariant-extras/contravariant-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r4bnl4gi6zd46h6fjkr33hw37rjxwwr00m08vgbzgkdp853g1ba"))))
    (properties `((upstream-name . "contravariant-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-template-haskell-compat-v0208)))
    (home-page "https://github.com/nikita-volkov/contravariant-extras")
    (synopsis "Extras for the \"contravariant\" package")
    (description "")
    (license license:expat)))

haskell-9.0-contravariant-extras

(define-public haskell-9.0-data-default-instances-vector
  (package
    (name "haskell-9.0-data-default-instances-vector")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-vector/data-default-instances-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rj6g6fky806h91cw5sy5lxqrhd06i5gi9ayg5g0r2xgldrl9j4s"))))
    (properties `((upstream-name . "data-default-instances-vector")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0piq9b9ywzyk12glndy9w6dka6d5zrc1mywq5j032li3j6sbwy4a")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instances for types defined in vector package")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> instance Default (Vector a) where
>     def = empty
>
> -- Storable Vector:
> instance Storable a => Default (Vector a) where
>     def = empty
>
> -- Unboxed Vector:
> instance Unbox a => Default (Vector a) where
>     def = empty")
    (license license:bsd-3)))

haskell-9.0-data-default-instances-vector

(define-public haskell-9.0-dec
  (package
    (name "haskell-9.0-dec")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dec/dec-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "126z70ij9hhy8pajw0d5fl0hrppy5sh22j8nkx46i0g6qz3l7071"))))
    (properties `((upstream-name . "dec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-boring)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Decidable propositions.")
    (description "This package provides a @@Dec@@ type.

@@
type Neg a = a -> Void

data Dec a
\\    = Yes a
\\    | No (Neg a)
@@")
    (license license:bsd-3)))

haskell-9.0-dec

(define-public haskell-9.0-derulo
  (package
    (name "haskell-9.0-derulo")
    (version "2.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/derulo/derulo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bs0bl66256i7ib82i70slf8s2pm091vbqk50pna2vrxs0a3mlkb"))))
    (properties `((upstream-name . "derulo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://hackage.haskell.org/package/derulo")
    (synopsis "Parse and render JSON simply.")
    (description "Warning: This package is not maintained anymore.

Derulo parses and renders JSON simply.")
    (license license:expat)))

haskell-9.0-derulo

(define-public haskell-9.0-edit-distance
  (package
    (name "haskell-9.0-edit-distance")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/edit-distance/edit-distance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jkca97zyv23yyilp3jydcrzxqhyk27swhzh82llvban5zp8b21y"))))
    (properties `((upstream-name . "edit-distance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vjn4ryzdilz7l1ad7czh11nw48h5mj8if7ij3q0mmc3sffa8csd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://github.com/phadej/edit-distance")
    (synopsis "Levenshtein and restricted Damerau-Levenshtein edit distances")
    (description
     "Optimized edit distances for fuzzy matching, including Levenshtein and restricted Damerau-Levenshtein algorithms.")
    (license license:bsd-3)))

haskell-9.0-edit-distance

(define-public haskell-9.0-elerea
  (package
    (name "haskell-9.0-elerea")
    (version "2.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elerea/elerea-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10b68j3mr85sy2riyrq49l30zxpins5ygqhgn81phn9j1dk224lh"))))
    (properties `((upstream-name . "elerea") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)))
    (home-page "https://hackage.haskell.org/package/elerea")
    (synopsis "A minimalistic FRP library")
    (description
     "Elerea (Eventless reactivity) is a tiny discrete time FRP
implementation without the notion of event-based switching and
sampling, with first-class signals (time-varying values).  Reactivity
is provided through various higher-order constructs that also allow
the user to work with arbitrary time-varying structures containing
live signals.  Signals have precise and simple denotational
semantics.

Stateful signals can be safely generated at any time through a
monadic interface, while stateless combinators can be used in a
purely applicative style.  Elerea signals can be defined recursively,
and external input is trivial to attach.  The library comes in two
major variants:

* Simple: signals are plain discrete streams isomorphic to functions
over natural numbers;

* Param: adds a globally accessible input signal for convenience;

This is a minimal library that defines only some basic primitives,
and you are advised to install @@elerea-examples@@ as well to get an
idea how to build non-trivial systems with it.  The examples are
separated in order to minimise the dependencies of the core library.
The @@dow@@ package contains a full game built on top of the simple
variant.

The basic idea of the implementation is described in the WFLP 2010
paper /Efficient and Compositional Higher-Order Streams/
(<http://sgate.emt.bme.hu/documents/patai/publications/PataiWFLP2010.pdf>).

Additional contributions: Takano Akio, Mitsutoshi Aoe")
    (license license:bsd-3)))

haskell-9.0-elerea

(define-public haskell-9.0-emojis
  (package
    (name "haskell-9.0-emojis")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/emojis/emojis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09x2xrppwypi369y7rzf3ln2g7c3g9qfckn2gydxpfzglcp9rziw"))))
    (properties `((upstream-name . "emojis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://github.com/jgm/emojis#readme")
    (synopsis "Conversion between emoji characters and their names.")
    (description "This package provides functions for converting
emoji names to emoji characters and vice versa.

How does it differ from the @@emoji@@ package?

-   It supports a fuller range of emojis, including all those
supported by GitHub
-   It supports lookup of emoji aliases from emoji
-   It uses Text rather than String
-   It has a lighter dependency footprint: in particular, it
does not require aeson
-   It does not require TemplateHaskell")
    (license license:bsd-3)))

haskell-9.0-emojis

(define-public haskell-9.0-fclabels
  (package
    (name "haskell-9.0-fclabels")
    (version "2.0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fclabels/fclabels-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0g4ca5pm2bafsnpari7wqhy79i5qs8njb3kdknk0xsrazdsl174k"))))
    (properties `((upstream-name . "fclabels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03df1mvfsnm4zbppvig7y49y935qxvkz4b5y24b17hsdj4l1nnyk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)))
    (home-page "https://github.com/sebastiaanvisser/fclabels")
    (synopsis "First class accessor labels implemented as lenses.")
    (description
     "This package provides first class labels that can act as
bidirectional record fields. The labels can be derived
automatically using Template Haskell which means you don't have
to write any boilerplate yourself. The labels are implemented as
/lenses/ and are fully composable. Lenses can be used to /get/,
/set/ and /modify/ parts of a data type in a consistent way.

See \"Data.Label\" for an introductory explanation or see the
introductory blog post at
<http://fvisser.nl/post/2013/okt/1/fclabels-2.0.html>

* /Total and partial lenses/

Internally lenses do not used Haskell functions directly, but
are implemented as categories. Categories allow the lenses to be
run in custom computational contexts. This approach allows us to
make partial lenses that point to fields of multi-constructor
datatypes in an elegant way.

See \"Data.Label.Partial\" for the use of partial labels.

* /Monomorphic and polymorphic lenses/

We have both polymorphic and monomorphic lenses. Polymorphic
lenses allow updates that change the type. The types of
polymorphic lenses are slightly more verbose than their
monomorphic counterparts, but their usage is similar. Because
monomorphic lenses are built by restricting the types of
polymorphic lenses they are essentially the same and can be
freely composed with eachother.

See \"Data.Label.Mono\" and \"Data.Label.Poly\" for the difference
between polymorphic and monomorphic lenses.

* /Using fclabels/

To simplify working with labels we supply both a set of labels
for Haskell's base types, like lists, tuples, Maybe and Either,
and we supply a set of combinators for working with labels for
values in the Reader and State monad.

See \"Data.Label.Base\" and \"Data.Label.Monadic\" for more
information.

* /Changelog from 2.0.4 to 2.0.5/

>   - Support for GHC 8.10. Thanks to Potato Hatsue.")
    (license license:bsd-3)))

haskell-9.0-fclabels

(define-public haskell-9.0-flow
  (package
    (name "haskell-9.0-flow")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flow/flow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1drbw1lbglx30i48mq9a77f34jff6wxvgq1d4rk8axlfis6pnj4h"))))
    (properties `((upstream-name . "flow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://hackage.haskell.org/package/flow")
    (synopsis "Write more understandable Haskell.")
    (description
     "Flow provides operators for writing more understandable Haskell.")
    (license license:expat)))

haskell-9.0-flow

(define-public haskell-9.0-freenect
  (package
    (name "haskell-9.0-freenect")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/freenect/freenect-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0n87sxf12kkpdlhdaw4pcb3dfl1qc3w7j5hh9crrchy0isasm9zw"))))
    (properties `((upstream-name . "freenect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages openkinect) libfreenect)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages openkinect) libfreenect)))
    (home-page "https://github.com/chrisdone/freenect")
    (synopsis "Interface to the Kinect device.")
    (description "Interface to the Kinect device. Currently supports
depth perception. (No video or audio.)")
    (license license:bsd-3)))

haskell-9.0-freenect

(define-public haskell-9.0-gauge
  (package
    (name "haskell-9.0-gauge")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gauge/gauge-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19zmnyyx7x6gf95dphqi1118avcp7w01scq12qmvzhchg1kzs86m"))))
    (properties `((upstream-name . "gauge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fanalysis")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-basement)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-foundation)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/vincenthz/hs-gauge")
    (synopsis "small framework for performance measurement and analysis")
    (description
     "This library provides a powerful but simple way to measure software
performance.  It provides both a framework for executing and
analysing benchmarks and a set of driver functions that makes it
easy to build and run benchmarks, and to analyse their results.")
    (license license:bsd-3)))

haskell-9.0-gauge

(define-public haskell-9.0-generic-constraints
  (package
    (name "haskell-9.0-generic-constraints")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-constraints/generic-constraints-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1id341ih876qzq89cj6y3g87w4l3mfhv412l6czcs51r69s1770r"))))
    (properties `((upstream-name . "generic-constraints") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (home-page "https://github.com/yairchu/generic-constraints")
    (synopsis "Constraints via Generic")
    (description "Standalone deriving without boiler-plate")
    (license license:bsd-3)))

haskell-9.0-generic-constraints

(define-public haskell-9.0-generic-functor
  (package
    (name "haskell-9.0-generic-functor")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-functor/generic-functor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zrjsn78ip9kigqgw5cxzm9d7pqf1svdzrc3rm041889ca0szwjv"))))
    (properties `((upstream-name . "generic-functor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1b14y3qhwzp2gkby5zflwad1v8v26wnclb7wnjagy67pvhnnn93d")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ap-normalize)))
    (home-page "https://gitlab.com/lysxia/generic-functor")
    (synopsis "Deriving generalized functors with GHC.Generics")
    (description "Derive @@fmap@@, and other @@fmap@@-like functions where the
parameter of the functor could occur anywhere.

See the README for details.")
    (license license:expat)))

haskell-9.0-generic-functor

(define-public haskell-9.0-generic-optics
  (package
    (name "haskell-9.0-generic-optics")
    (version "2.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-optics/generic-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bw7bbkrd1sfshzx7v1nbdnkxc82krw96x7vnl7myz9748m4472z"))))
    (properties `((upstream-name . "generic-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13wkbs8x0clkqzi4xqin89qywpky8jkpz9cxgwsglbpcyw11jvgq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-generic-lens-core)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)))
    (home-page "https://github.com/kcsongor/generic-lens")
    (synopsis "Generically derive traversals, lenses and prisms.")
    (description
     "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.

The library exposes an @@<https://hackage.haskell.org/package/optics optics>@@ interface. For a van Laarhoven interface, see
@@<https://hackage.haskell.org/package/generic-lens generic-lens>@@.")
    (license license:bsd-3)))

haskell-9.0-generic-optics

(define-public haskell-9.0-ghc-events
  (package
    (name "haskell-9.0-ghc-events")
    (version "0.17.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-events/ghc-events-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0m50x2ycv43d7yzwksbs1zc11wlyiszjz662fj47v9r7hacx335v"))))
    (properties `((upstream-name . "ghc-events") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/ghc-events")
    (synopsis "Library and tool for parsing .eventlog files from GHC")
    (description "Parses .eventlog files emitted by GHC 6.12.1 and later.
Includes the ghc-events tool permitting, in particular,
to dump an event log file as text.")
    (license license:bsd-3)))

haskell-9.0-ghc-events

(define-public haskell-9.0-ghc-lib
  (package
    (name "haskell-9.0-ghc-lib")
    (version "9.0.2.20211226")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ghc-lib/ghc-lib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0988500fwl24nh1i2pv22332sx8hgi6b2229ff3drd9jgpp886x1"))))
    (properties `((upstream-name . "ghc-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)))
    (home-page "https://github.com/digital-asset/ghc-lib")
    (synopsis "The GHC API, decoupled from GHC versions")
    (description
     "A package equivalent to the @@ghc@@ package, but which can be loaded on many compiler versions.")
    (license license:bsd-3)))

haskell-9.0-ghc-lib

(define-public haskell-9.0-glasso
  (package
    (name "haskell-9.0-glasso")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/glasso/glasso-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ibkvgfighkfn3v27cqy7wwhvlhmnbi1dvyycwbfba6rfy9w6gb8"))))
    (properties `((upstream-name . "glasso") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "15zppqxc064yqc0wrmlnhaji2lg95fg598ikz03c3j4w1g5v1wdb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/glasso")
    (synopsis "Graphical Lasso algorithm")
    (description "Graphical Lasso algorithm")
    (license license:bsd-3)))

haskell-9.0-glasso

(define-public haskell-9.0-groom
  (package
    (name "haskell-9.0-groom")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-haskell-src-exts)))
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

haskell-9.0-groom

(define-public haskell-9.0-histogram-fill
  (package
    (name "haskell-9.0-histogram-fill")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/histogram-fill/histogram-fill-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qcil8lgkzklgbzb9a81kdzsyzrsgzwdgz424mlvp8sbrfmbnz3m"))))
    (properties `((upstream-name . "histogram-fill") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/Shimuuar/histogram-fill/")
    (synopsis "Library for histograms creation.")
    (description
     "This is library for histograms filling. Its aim to provide
convenient way to create and fill histograms.

To get started, refer to the usage examples in 'Data.Histogram.Tutorial'.")
    (license license:bsd-3)))

haskell-9.0-histogram-fill

(define-public haskell-9.0-hmatrix
  (package
    (name "haskell-9.0-hmatrix")
    (version "0.20.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hmatrix/hmatrix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05462prqkbqpxfbzsgsp8waf0sirg2qz6lzsk7r1ll752n7gqkbg"))))
    (properties `((upstream-name . "hmatrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-openblas" "-f-disable-default-paths" "-f-no-random_r")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/haskell-numerics/hmatrix")
    (synopsis "Numeric Linear Algebra")
    (description
     "Linear systems, matrix decompositions, and other numerical computations based on BLAS and LAPACK.

Standard interface: \"Numeric.LinearAlgebra\".

Safer interface with statically checked dimensions: \"Numeric.LinearAlgebra.Static\".

Code examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>")
    (license license:bsd-3)))

haskell-9.0-hmatrix

(define-public haskell-9.0-hset
  (package
    (name "haskell-9.0-hset")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hset/hset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0c7i1c2gdj1j3igfmyl3mhv2z875km7k6yjfh75a5b5f4q47lx5q"))))
    (properties `((upstream-name . "hset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-type-fun)))
    (home-page "https://bitbucket.org/s9gf4ult/hset")
    (synopsis "Primitive list with elements of unique types.")
    (description "")
    (license license:bsd-3)))

haskell-9.0-hset

(define-public haskell-9.0-hspec-expectations
  (package
    (name "haskell-9.0-hspec-expectations")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations/hspec-expectations-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vxl9zazbaapijr6zmcj72j9wf7ka1pirrjbwddwwddg3zm0g5l1"))))
    (properties `((upstream-name . "hspec-expectations") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-nanospec)))
    (home-page "https://github.com/hspec/hspec-expectations#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/hspec/hspec-expectations#readme>")
    (license license:expat)))

haskell-9.0-hspec-expectations

(define-public haskell-9.0-hw-prim
  (package
    (name "haskell-9.0-hw-prim")
    (version "0.6.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-prim/hw-prim-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07a442g1fjzrfnz3y9mx3d2hv0ffjnbfdkmbiard8bn78vf5z80z"))))
    (properties `((upstream-name . "hw-prim") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-mmap)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unliftio-core)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "http://github.com/haskell-works/hw-prim#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-9.0-hw-prim

(define-public haskell-9.0-hxt-regex-xmlschema
  (package
    (name "haskell-9.0-hxt-regex-xmlschema")
    (version "9.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-regex-xmlschema/hxt-regex-xmlschema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ynrf65m7abq2fjnarlwq6i1r99pl89npibxx05rlplcgpybrdmr"))))
    (properties `((upstream-name . "hxt-regex-xmlschema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-profile")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hxt-charproperties)))
    (home-page
     "http://www.haskell.org/haskellwiki/Regular_expressions_for_XML_Schema")
    (synopsis
     "A regular expression library for W3C XML Schema regular expressions")
    (description
     "This library supports full W3C XML Schema regular expressions
inclusive all Unicode character sets and blocks.
The complete grammar can be found under <http://www.w3.org/TR/xmlschema11-2/#regexs>.
It is implemented by the technique of derivations of regular expressions.

The W3C syntax is extended to support not only union of regular sets,
but also intersection, set difference, exor.
Matching of subexpressions is also supported.

The library can be used for constricting lightweight scanners and tokenizers.
It is a standalone library, no external regex libraries are used.

Extensions in 9.2: The library does nor only support String's, but also
ByteString's and Text in strict and lazy variants")
    (license license:expat)))

haskell-9.0-hxt-regex-xmlschema

(define-public haskell-9.0-hybrid-vectors
  (package
    (name "haskell-9.0-hybrid-vectors")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hybrid-vectors/hybrid-vectors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g3z482sd0j930ja3g9cyc4xnjby03d4cq8x56crsl61arr81r1c"))))
    (properties `((upstream-name . "hybrid-vectors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "http://github.com/ekmett/hybrid-vectors")
    (synopsis "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors")
    (description "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors.")
    (license license:bsd-3)))

haskell-9.0-hybrid-vectors

(define-public haskell-9.0-include-file
  (package
    (name "haskell-9.0-include-file")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/include-file/include-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vk6l5gpd4nv2bw47vlwnxb42vgfigx6672aw2xqbvf55d4967sv"))))
    (properties `((upstream-name . "include-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://hackage.haskell.org/package/include-file")
    (synopsis "Inclusion of files in executables at compile-time.")
    (description "Inclusion of files in source code via Template Haskell.

When distributing executables, sometimes it is required
to attach some other resources in files. Using this library
(together with the TemplateHaskell extension) you avoid this
problem by including those files inside the executable at
compile time.")
    (license license:bsd-3)))

haskell-9.0-include-file

(define-public haskell-9.0-iterable
  (package
    (name "haskell-9.0-iterable")
    (version "3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/iterable/iterable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "194718jpjwkv3ynlpgjlpvf0iqnj7dkd3zmci363gsa425i3vlbc"))))
    (properties `((upstream-name . "iterable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0aaxx554mm8xhi8ab9jn5r5a2wxg47hc5kiifjahpdfzq5kjnyvs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/BioHaskell/iterable")
    (synopsis "API for hierarchical multilevel collections.")
    (description
     "Two-argument typeclass that generalizes Foldable, Functor, and Traversable for monomorphic
multi-level collections. Transitive instances allow for folding and mapping over any
subordinate level of the hierarchy.

Main interface for hPDB library.

Contains convenience TemplateHaskell methods for generating Iterable instances that have Vector containers.")
    (license license:bsd-3)))

haskell-9.0-iterable

(define-public haskell-9.0-kind-generics-th
  (package
    (name "haskell-9.0-kind-generics-th")
    (version "0.2.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kind-generics-th/kind-generics-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06zhjaaakml1p3crjx26nmydbnrscxvwgyqy3w4083caysxw1vsj"))))
    (properties `((upstream-name . "kind-generics-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1drkj6b618yzgacbm5b100znm63r7ivzlxhpzhymkc8dqcacr7mq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-kind-generics)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/kind-generics-th")
    (synopsis "Template Haskell support for generating `GenericK` instances")
    (description "This package provides Template Haskell functionality to
automatically derive @@GenericK@@ instances (from the
@@kind-generics@@ library).")
    (license license:bsd-3)))

haskell-9.0-kind-generics-th

(define-public haskell-9.0-list-transformer
  (package
    (name "haskell-9.0-list-transformer")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/list-transformer/list-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lvdyrxflssayq14x36a0ix7q3hfzlq924mjg21b7f6s3j9262xr"))))
    (properties `((upstream-name . "list-transformer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1d41pbd7kg8im5bvzhkndr6lr106rpd7m1pqb39zgnj5cbmgaql3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)))
    (home-page
     "https://github.com/Gabriella439/Haskell-List-Transformer-Library")
    (synopsis "List monad transformer")
    (description "This library provides a list monad transformer that
enriches lists with effects and streams efficiently in
constant space.

This library also has an extensive tutorial in the
\"List.Transformer\" module which explains the motivation
behind this type and how to use the type fluently.")
    (license license:bsd-3)))

haskell-9.0-list-transformer

(define-public haskell-9.0-lrucache
  (package
    (name "haskell-9.0-lrucache")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lrucache/lrucache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11avhnjnb89rvn2s41jhh5r40zgp7r6kb5c0hcfiibpabqvv46pw"))))
    (properties `((upstream-name . "lrucache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)))
    (home-page "http://github.com/chowells79/lrucache")
    (synopsis "a simple, pure LRU cache")
    (description
     "This package contains a simple, pure LRU cache, implemented in
terms of \"Data.Map\".

It also contains a mutable IO wrapper providing atomic updates to
an LRU cache.")
    (license license:bsd-3)))

haskell-9.0-lrucache

(define-public haskell-9.0-markov-chain
  (package
    (name "haskell-9.0-markov-chain")
    (version "0.0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markov-chain/markov-chain-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kcjgfdwca4arngbj7w2g8bpmk5p44dyzrwcw8xmja0s200bhlbf"))))
    (properties `((upstream-name . "markov-chain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://code.haskell.org/~thielema/markov-chain/")
    (synopsis
     "Markov Chains for generating random sequences with a user definable behaviour.")
    (description
     "This library can be used to generate random sequences of anything
with a behaviour that is adapted to some training data.
Input a marketing text or a speech and
recompose it to another arbitrary text of this sort.
Input a dictionary of person names and create new names.
Input a sequence of notes and get out a new melody.
Input a set of Haskell modules and generate ...
nice idea but the result will certainly have neither correct syntax nor types.
I think, it's a good thing about Haskell, that you cannot fool it so easily.
The idea is very simple:
The algorithm analyses your input\\/training data
with respect to how likely an @@a@@ or @@e@@ follows the letters @@r@@ and @@e@@.
Then on recomposition it chooses subsequent letters randomly
according to the frequencies found in the training data.
This library is well suited for /bull-shit generators/.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-markov-chain

(define-public haskell-9.0-math-functions
  (package
    (name "haskell-9.0-math-functions")
    (version "0.3.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/math-functions/math-functions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18y1hlc8p6yyxa14zdbm84aaq58kksbrlfp3rj2bd4ilsb00mrf1"))))
    (properties `((upstream-name . "math-functions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsystem-expm1" "-fsystem-erf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/bos/math-functions")
    (synopsis "Collection of tools for numeric computations")
    (description
     "This library contain collection of various utilities for numerical
computing. So far there're special mathematical functions,
compensated summation algorithm, summation of series, root finding
for real functions, polynomial summation and Chebyshev
polynomials.")
    (license license:bsd-2)))

haskell-9.0-math-functions

(define-public haskell-9.0-maximal-cliques
  (package
    (name "haskell-9.0-maximal-cliques")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/maximal-cliques/maximal-cliques-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sbmykgb5lrd32rih09d8d0r5isz4nh5slfyd93dgln7ag3hb7bh"))))
    (properties `((upstream-name . "maximal-cliques") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/maximal-cliques")
    (synopsis "Enumerate all maximal cliques of a graph.")
    (description
     "Enumerate all maximal cliques of a graph. A clique is a set of nodes such that there is an edge between every node and every other node in the set. A maximal clique is a clique such that no node may be added while preserving the clique property.")
    (license license:bsd-3)))

haskell-9.0-maximal-cliques

(define-public haskell-9.0-memory
  (package
    (name "haskell-9.0-memory")
    (version "0.16.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/memory/memory-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zzxyr2b7gj92h3jzaq1lfqfyfkfj4l636ry35191i9bp3wa0v8l"))))
    (properties `((upstream-name . "memory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsupport_bytestring" "-fsupport_foundation" "-fsupport_basement" "-fsupport_deepseq")
       #:cabal-revision
       ("1" "02ql04drvyk8sdadxs4yi1h4aic0pxgnrph3j5ndcm6r7hfnv8py")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-basement)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-foundation)))
    (home-page "https://github.com/vincenthz/hs-memory")
    (synopsis "memory and related abstraction stuff")
    (description
     "Chunk of memory, polymorphic byte array management and manipulation

* A polymorphic byte array abstraction and function similar to strict ByteString.

* Different type of byte array abstraction.

* Raw memory IO operations (memory set, memory copy, ..)

* Aliasing with endianness support.

* Encoding : Base16, Base32, Base64.

* Hashing : FNV, SipHash")
    (license license:bsd-3)))

haskell-9.0-memory

(define-public haskell-9.0-mersenne-random
  (package
    (name "haskell-9.0-mersenne-random")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mersenne-random/mersenne-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "193qz3wn7lz18aywddr9qyn8v08ifv2yxwr68c67p5mn8vr8mvmw"))))
    (properties `((upstream-name . "mersenne-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-small_base" "-f-use_sse2" "-f-use_altivec" "-f-big_endian64")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-old-time)))
    (home-page "http://code.haskell.org/~dons/code/mersenne-random")
    (synopsis
     "Generate high quality pseudorandom numbers using a SIMD Fast Mersenne Twister")
    (description
     "The Mersenne twister is a pseudorandom number generator developed by
Makoto Matsumoto and Takuji Nishimura that is based on a matrix linear
recurrence over a finite binary field. It provides for fast generation
of very high quality pseudorandom numbers

This library uses SFMT, the SIMD-oriented Fast Mersenne Twister, a
variant of Mersenne Twister that is much faster than the original.
It is designed to be fast when it runs on 128-bit SIMD. It can be
compiled with either SSE2 and PowerPC AltiVec support, to take
advantage of these instructions.

> cabal install -fuse_sse2

On an x86 system, for performance win.

By default the period of the function is 2^19937-1, however, you can
compile in other defaults. Note that this algorithm on its own
is not cryptographically secure.

For more information about the algorithm and implementation, see
the SFMT homepage,

<http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/emt.html>

and, Mutsuo Saito and Makoto Matsumoto,
/SIMD-oriented Fast Mersenne Twister: a 128-bit Pseudorandom Number
Generator/, in the Proceedings of MCQMC2006, here:

<http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/ARTICLES/sfmt.pdf>
")
    (license license:bsd-3)))

haskell-9.0-mersenne-random

(define-public haskell-9.0-mersenne-random-pure64
  (package
    (name "haskell-9.0-mersenne-random-pure64")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mersenne-random-pure64/mersenne-random-pure64-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lbmdnlk21qqbzw1g7jph6d21dg3vf5saca3inwv1byxq7fh057g"))))
    (properties `((upstream-name . "mersenne-random-pure64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-small_base")
       #:cabal-revision
       ("1" "0pxq0xz42x60993rl4pr4pia80jv1xcqh6njvjzfvn75018j4gw5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://code.haskell.org/~dons/code/mersenne-random-pure64/")
    (synopsis
     "Generate high quality pseudorandom numbers purely using a Mersenne Twister")
    (description
     "The Mersenne twister is a pseudorandom number generator developed by
Makoto Matsumoto and Takuji Nishimura that is based on a matrix linear
recurrence over a finite binary field. It provides for fast generation
of very high quality pseudorandom numbers. The source for the C code
can be found here:

<http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/emt64.html>

This library provides a purely functional binding to the 64 bit
classic mersenne twister, along with instances of RandomGen, so the
generator can be used with System.Random. The generator should
typically be a few times faster than the default StdGen (but a tad
slower than the impure 'mersenne-random' library based on SIMD
instructions and destructive state updates.
")
    (license license:bsd-3)))

haskell-9.0-mersenne-random-pure64

(define-public haskell-9.0-monad-control
  (package
    (name "haskell-9.0-monad-control")
    (version "1.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-control/monad-control-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g3if9km8ik80bcy130a826ig9wlk4bnf0qli3vmwdwr9nhaw2xf"))))
    (properties `((upstream-name . "monad-control") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "https://github.com/basvandijk/monad-control")
    (synopsis
     "Lift control operations, like exception catching, through monad transformers")
    (description
     "This package defines the type class @@MonadBaseControl@@, a subset of
@@MonadBase@@ into which generic control operations such as @@catch@@ can be
lifted from @@IO@@ or any other base monad. Instances are based on monad
transformers in @@MonadTransControl@@, which includes all standard monad
transformers in the @@transformers@@ library except @@ContT@@.

See the <http://hackage.haskell.org/package/lifted-base lifted-base>
package which uses @@monad-control@@ to lift @@IO@@
operations from the @@base@@ library (like @@catch@@ or @@bracket@@) into any monad
that is an instance of @@MonadBase@@ or @@MonadBaseControl@@.

Note that this package is a rewrite of Anders Kaseorg's @@monad-peel@@
library. The main difference is that this package provides CPS style operators
and exploits the @@RankNTypes@@ and @@TypeFamilies@@ language extensions to
simplify and speedup most definitions.")
    (license license:bsd-3)))

haskell-9.0-monad-control

(define-public haskell-9.0-monad-control-aligned
  (package
    (name "haskell-9.0-monad-control-aligned")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-control-aligned/monad-control-aligned-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xhiw1g0p8zljhy8yz43ljnwhhqn6dwxqi06mdsfji365p9qzrs4"))))
    (properties `((upstream-name . "monad-control-aligned") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "https://github.com/athanclark/monad-control#readme")
    (synopsis
     "Just like monad-control, except less efficient, and the monadic state terms are all * -> *")
    (description "")
    (license license:bsd-3)))

haskell-9.0-monad-control-aligned

(define-public haskell-9.0-monad-coroutine
  (package
    (name "haskell-9.0-monad-coroutine")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-coroutine/monad-coroutine-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bikrq73r1xc6vrpwll3i8pkg4vflj3sa2ifv913mjkcmnwqijzs"))))
    (properties `((upstream-name . "monad-coroutine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-monad-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "https://hub.darcs.net/blamario/SCC.wiki/")
    (synopsis
     "Coroutine monad transformer for suspending and resuming monadic computations")
    (description
     "This package defines a monad transformer, applicable to any monad, that allows the monadic computation to suspend and
to be later resumed. The transformer is parameterized by an arbitrary functor, used to store the suspended
computation's resumption.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-monad-coroutine

(define-public haskell-9.0-monad-resumption
  (package
    (name "haskell-9.0-monad-resumption")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-resumption/monad-resumption-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hc9dbqhd609lzn79c25zwhm55262i9yip16ag9rysxv6rxbshml"))))
    (properties `((upstream-name . "monad-resumption") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)))
    (home-page "https://github.com/igraves/monad-resumption#readme")
    (synopsis "Resumption and reactive resumption monads for Haskell.")
    (description
     "This package contains the definitions of Resumption and Reactive Resumption Monads.")
    (license license:bsd-3)))

haskell-9.0-monad-resumption

(define-public haskell-9.0-netlib-ffi
  (package
    (name "haskell-9.0-netlib-ffi")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-ffi/netlib-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0irf5gc9kw3pjb339nrzylr1ldz8fhgmpkji26dm3w18vkwic411"))))
    (properties `((upstream-name . "netlib-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-guarded-allocation)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)))
    (home-page "http://hub.darcs.net/thielema/netlib-ffi/")
    (synopsis "Helper modules for FFI to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-ffi@@ and @@lapack-ffi@@.")
    (license license:bsd-3)))

haskell-9.0-netlib-ffi

(define-public haskell-9.0-operational
  (package
    (name "haskell-9.0-operational")
    (version "0.2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/operational/operational-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aa1pxymvkhbs0x03ikfiap2skzyf2z7307kz5adkmb3qmykcqa2"))))
    (properties `((upstream-name . "operational") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbuildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://wiki.haskell.org/Operational")
    (synopsis "Implementation of difficult monads made easy
with operational semantics.")
    (description
     "This library makes it easy to implement monads with tricky control flow.

This is useful for: writing web applications in a sequential style, programming games with a uniform interface for human and AI players and easy replay capababilities, implementing fast parser monads, designing monadic DSLs, etc.

See the project homepage <http://wiki.haskell.org/Operational> for a more detailed introduction and features.

Related packages:

* MonadPrompt — <http://hackage.haskell.org/package/MonadPrompt>

* free — <http://hackage.haskell.org/package/free>

* free-operational — <http://hackage.haskell.org/package/free-operational>")
    (license license:bsd-3)))

haskell-9.0-operational

(define-public haskell-9.0-optics-th
  (package
    (name "haskell-9.0-optics-th")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-th/optics-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05zxljfqmhr5if7l8gld5s864nql6kqjfizsf1z7r3ydknvmff6p"))))
    (properties `((upstream-name . "optics-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1fl217q7s0g8a46p2smanhhdj0jqvc9n3lagcnpphkv3fzfgrcbz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/optics-th")
    (synopsis "Optics construction using TemplateHaskell")
    (description
     "This package is part of the @@<https://hackage.haskell.org/package/optics optics>@@
package family.  It provides machinery to construct optics using @@TemplateHaskell@@.

See the @@template-haskell-optics@@ package for optics to work with @@template-haskell@@ types.")
    (license license:bsd-3)))

haskell-9.0-optics-th

(define-public haskell-9.0-parallel-io
  (package
    (name "haskell-9.0-parallel-io")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parallel-io/parallel-io-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b67rjz80n58grz7hcb1lvk15lmww41967kv7f85vlpacfykng49"))))
    (properties `((upstream-name . "parallel-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark" "-f-fuzz" "-f-tests")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://batterseapower.github.com/parallel-io")
    (synopsis
     "Combinators for executing IO actions in parallel on a thread pool.")
    (description
     "This package provides combinators for sequencing IO actions onto a thread pool. The
thread pool is guaranteed to contain no more unblocked threads than a user-specified upper limit, thus
minimizing contention.

Furthermore, the parallel combinators can be used reentrantly - your parallel
actions can spawn more parallel actions - without violating this property of the thread pool.

The package is inspired by the thread <http://thread.gmane.org/gmane.comp.lang.haskell.cafe/56499/focus=56521>.
Thanks to Neil Mitchell and Bulat Ziganshin for some of the code this package is based on.")
    (license license:bsd-3)))

haskell-9.0-parallel-io

(define-public haskell-9.0-parameterized
  (package
    (name "haskell-9.0-parameterized")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parameterized/parameterized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iik6wx6i52sqgiah9xb70cv4p29yi2fr0q6ri4c9wviqrrw8syp"))))
    (properties `((upstream-name . "parameterized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-diverse)))
    (home-page "https://github.com/louispan/parameterized#readme")
    (synopsis
     "Parameterized/indexed monoids and monads using only a single parameter type variable.")
    (description
     "Parameterized/indexed monoids and monads using only a single parameter type variable.")
    (license license:bsd-3)))

haskell-9.0-parameterized

(define-public haskell-9.0-pcg-random
  (package
    (name "haskell-9.0-pcg-random")
    (version "0.1.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcg-random/pcg-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l6jq5nvmg1ygk7i7g50s47p6qkh74p9avl1wbcxdl5m85lc5j76"))))
    (properties `((upstream-name . "pcg-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-entropy)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://github.com/cchalmers/pcg-random")
    (synopsis "Haskell bindings to the PCG random number generator.")
    (description
     "PCG is a family of simple fast space-efficient statistically good
algorithms for random number generation. Unlike many general-purpose
RNGs, they are also hard to predict.

This library implements bindings to the standard C implementation.
This includes the standard, unique, fast and single variants in the
pcg family. There is a pure implementation that can be used as a
generator with the random package as well as a faster primitive api
that includes functions for generating common types.

The generators in this module are suitable for use in parallel but
make sure threads don't share the same generator or things will go
horribly wrong.")
    (license license:bsd-3)))

haskell-9.0-pcg-random

(define-public haskell-9.0-pcre-light
  (package
    (name "haskell-9.0-pcre-light")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-light/pcre-light-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lqvsmc6bfhdv6igm3fmw8nklyhw3j3jsl0s1k6r3fhb6ambzxhn"))))
    (properties `((upstream-name . "pcre-light") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old_base" "-f-use-pkg-config")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Daniel-Diaz/pcre-light")
    (synopsis
     "Portable regex library for Perl 5 compatible regular expressions")
    (description
     "A small, efficient and portable regex library for Perl 5 compatible regular expressions

The PCRE library is a set of functions that implement regular
expression pattern matching using the same syntax and semantics as Perl 5.

If installation fails reporting that you are missing the prce C library, try installing
the @@libpcre3-dev@@ package (linux) or @@brew install pcre@@ (MacOS).
")
    (license license:bsd-3)))

haskell-9.0-pcre-light

(define-public haskell-9.0-picosat
  (package
    (name "haskell-9.0-picosat")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/picosat/picosat-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12yckbmryk0darmsdv8dfm9hzfz4xhkx6xvf3wn97agjki7gazmg"))))
    (properties `((upstream-name . "picosat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-rdtsc)))
    (home-page "https://github.com/sdiehl/haskell-picosat")
    (synopsis "Bindings to the PicoSAT solver")
    (description
     "`picosat` provides bindings for the fast PicoSAT solver library.")
    (license license:expat)))

haskell-9.0-picosat

(define-public haskell-9.0-place-cursor-at
  (package
    (name "haskell-9.0-place-cursor-at")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/place-cursor-at/place-cursor-at-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mgxyyi8zdhiarp75jshfsq5rrk6b2a7630bwvwyw06richykk9z"))))
    (properties `((upstream-name . "place-cursor-at") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001) haskell-9.0-X11)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-unicode-symbols)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)))
    (home-page "https://github.com/unclechu/place-cursor-at#readme")
    (synopsis
     "A utility for X11 that moves the mouse cursor using the keyboard")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-place-cursor-at

(define-public haskell-9.0-polynomials-bernstein
  (package
    (name "haskell-9.0-polynomials-bernstein")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polynomials-bernstein/polynomials-bernstein-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qkhvid0xgr7223mg2r5crxprwl0yrwqdy8zwkkl0fjkj7kz4l39"))))
    (properties `((upstream-name . "polynomials-bernstein") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/polynomials-bernstein")
    (synopsis "A solver for systems of polynomial equations in bernstein form")
    (description
     "This library defines an optimized type for representing polynomials
in Bernstein form, as well as instances of numeric classes and other
manipulation functions, and a solver of systems of polynomial
equations in this form.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-polynomials-bernstein

(define-public haskell-9.0-prettyprinter-ansi-terminal
  (package
    (name "haskell-9.0-prettyprinter-ansi-terminal")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-ansi-terminal/prettyprinter-ansi-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cqxbcmy9ykk4pssq5hp6h51g2h547zfz549awh0c1fni8q3jdw1"))))
    (properties `((upstream-name . "prettyprinter-ansi-terminal")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis "ANSI terminal backend for the »prettyprinter« package.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-9.0-prettyprinter-ansi-terminal

(define-public haskell-9.0-print-console-colors
  (package
    (name "haskell-9.0-print-console-colors")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/print-console-colors/print-console-colors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12x1lbn8daq996pipnqd8g6mjpg85zj85zygbs547m9r27gf6j88"))))
    (properties `((upstream-name . "print-console-colors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)))
    (home-page "https://github.com/cdepillabout/print-console-colors#readme")
    (synopsis "Print all ANSI console colors")
    (description
     "Print all ANSI console colors.


<<https://raw.githubusercontent.com/cdepillabout/print-console-colors/master/img/example.png>>

This is convenient when you are trying to set your console colors,
for example when configuring <https://github.com/cdepillabout/termonad Termonad>.

For installation and usage instructions, see the
<https://github.com/cdepillabout/print-console-colors README>.")
    (license license:bsd-3)))

haskell-9.0-print-console-colors

(define-public haskell-9.0-raw-strings-qq
  (package
    (name "haskell-9.0-raw-strings-qq")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/raw-strings-qq/raw-strings-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lxy1wy3awf52968iy5y9r5z4qgnn2sxkdrh7js3m9gadb11w09f"))))
    (properties `((upstream-name . "raw-strings-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://github.com/23Skidoo/raw-strings-qq")
    (synopsis "Raw string literals for Haskell.")
    (description
     "A quasiquoter for raw string literals - that is, string literals that don't
recognise the standard escape sequences (such as @@\\'\\\\n\\'@@). Basically, they
make your code more readable by freeing you from the responsibility to
escape backslashes. They are useful when working with regular expressions,
DOS/Windows paths and markup languages (such as XML).

See @@examples/RawRegex.hs@@ for a usage example.")
    (license license:bsd-3)))

haskell-9.0-raw-strings-qq

(define-public haskell-9.0-rcu
  (package
    (name "haskell-9.0-rcu")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rcu/rcu-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "14kg45ycx5wa3k9xn7glp4kdy8xz119m4gs91114qx0rkbix2f5h"))))
    (properties `((upstream-name . "rcu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-unstable" "-f-measure-synchronize")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (home-page "http://github.com/ekmett/rcu/")
    (synopsis "Read-Copy-Update for Haskell")
    (description "Read-Copy-Update for Haskell.")
    (license license:bsd-3)))

haskell-9.0-rcu

(define-public haskell-9.0-re2
  (package
    (name "haskell-9.0-re2")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/re2/re2-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0slrbgpqccnxywy0aqlg65w6kzvfiqsf0n273m8cv3c32wvkw8nb"))))
    (properties `((upstream-name . "re2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages regex) re2)))
    (home-page "https://github.com/rblaze/haskell-re2#readme")
    (synopsis "Bindings to the re2 regular expression library")
    (description
     "re2 is a regular expression library offering predictable run-time and
memory consumption. This package is a binding to re2.

Supported expression syntax is documented at
<https://github.com/google/re2/>

>$ ghci -XOverloadedStrings
>ghci> import Regex.RE2
>
>ghci> find \"\\\\w+\" \"hello world\"
>Just (Match [Just \"hello\"])
>
>ghci> find \"\\\\w+$\" \"hello world\"
>Just (Match [Just \"world\"])
>
>ghci> find \"^\\\\w+$\" \"hello world\"
>Nothing")
    (license license:expat)))

haskell-9.0-re2

(define-public haskell-9.0-records-sop
  (package
    (name "haskell-9.0-records-sop")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/records-sop/records-sop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01h6brqrpk5yhddi0cx2a9cv2dvri81xzx5ny616nfgy4fn9pfdl"))))
    (properties `((upstream-name . "records-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-generics-sop)))
    (home-page "https://hackage.haskell.org/package/records-sop")
    (synopsis "Record subtyping and record utilities with generics-sop")
    (description "This library provides utilities for working with labelled
single-constructor record types via generics-sop.

It also provides functions to safely cast between record
types if the target type has a subset of the fields (with
the same names) of the source type.")
    (license license:bsd-3)))

haskell-9.0-records-sop

(define-public haskell-9.0-regex-compat
  (package
    (name "haskell-9.0-regex-compat")
    (version "0.95.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-compat/regex-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ivrdrcphrz3g6nr5wbsmfiv8i82caw0kf6z5qlmlq7xf9n3hywg"))))
    (properties `((upstream-name . "regex-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ldqpdxikm17ydrkfmichflkdqdrkspv4r0qy3zbdgqf5033pj4n")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-regex-base)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-posix)))
    (home-page "https://wiki.haskell.org/Regular_expressions")
    (synopsis "Replaces/enhances \"Text.Regex\"")
    (description
     "One module compat layer over <//hackage.haskell.org/package/regex-posix regex-posix> to replace \"Text.Regex\".

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-9.0-regex-compat

(define-public haskell-9.0-runmemo
  (package
    (name "haskell-9.0-runmemo")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/runmemo/runmemo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12fn0lsil0rj0pj0ixzppsdw2fmj0cnzci4fh11z9rcggwbz6pms"))))
    (properties `((upstream-name . "runmemo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-memocombinators)))
    (home-page "https://github.com/DanBurton/runmemo")
    (synopsis "A simple memoization helper library")
    (description
     "This library encourages you to do memoization
in three separate steps:

(1) Create a memoizable function

(2) Create or select an appropriate memoizer

(3) Run the memoizer on the memoizable function

Let's start with the first.
When you create a memoizable function,
you should use the @@self@@ convention,
which is that the first input to the function is @@self@@,
and all recursive calls are replaced with @@self@@.
One common convention that goes well with the @@self@@ convention
is using a helper function @@go@@, like so:

@@
fib :: Memoizable (Integer -> Integer)
fib self = go
\\  where go 0 = 1
\\        go 1 = 1
\\        go n = self (n-1) + self (n-2)
@@

Now for the second. For this example,
we need a Memoizer that can handle an @@Integer@@ input,
and an @@Integer@@ output. @@Data.MemoCombinators@@ provides
@@integral@@, which handles any @@Integral@@ input, and
any output. @@Data.MemoUgly@@ provides @@memo@@,
which can memoize any function @@a -> b@@, given an @@Ord@@ instance
for @@a@@.

Third, let's run our memoizers!
Since we have decoupled the definition of the memoized function
from its actual memoization, we can create multiple
memoized versions of the same function if we so desire.

@@
import qualified Data.MemoUgly as Ugly
import qualified Data.MemoCombinators as MC

fibUgly :: Integer -> Integer
fibUgly = runMemo Ugly.memo fib

fibMC :: Integer -> Integer
fibMC = runMemo MC.integral fib
@@

You could easily do the same with @@Data.MemoTrie.memo@@,
@@Data.Function.Memoize.memoize@@, etc.

Using this technique, you can create local memoized functions
whose memo tables are garbage collected as soon as
they are no longer needed.")
    (license license:bsd-3)))

haskell-9.0-runmemo

(define-public haskell-9.0-rvar
  (package
    (name "haskell-9.0-rvar")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rvar/rvar-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wa5nxlsfm1la5s70xv3swrmidxy0h6kv9ilicwkls12gwdc2a95"))))
    (properties `((upstream-name . "rvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fmtl2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-MonadPrompt)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://github.com/haskell-numerics/random-fu")
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
the same algorithms.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-rvar

(define-public haskell-9.0-salve
  (package
    (name "haskell-9.0-salve")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/salve/salve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g2y0ng0s3hp9scp080m933yixhl3zd8bsjvyf2k0pn9b9cg0p79"))))
    (properties `((upstream-name . "salve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://hackage.haskell.org/package/salve")
    (synopsis "Semantic version numbers and constraints.")
    (description
     "Salve provides semantic version (SemVer) numbers and constraints (ranges).")
    (license license:expat)))

haskell-9.0-salve

(define-public haskell-9.0-seqalign
  (package
    (name "haskell-9.0-seqalign")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/seqalign/seqalign-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01a3fhymyp7279hym03zzz6qkh5h47nq5y1xglar0n46imjr98af"))))
    (properties `((upstream-name . "seqalign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/seqalign")
    (synopsis "Sequence Alignment")
    (description
     "FFI wrappers for global and local string alignment functions")
    (license license:bsd-3)))

haskell-9.0-seqalign

(define-public haskell-9.0-shell-escape
  (package
    (name "haskell-9.0-shell-escape")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shell-escape/shell-escape-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jms5hdl8zrpxwypq9998798krspclivprirrcq59r179alrng72"))))
    (properties `((upstream-name . "shell-escape") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "http://github.com/solidsnack/shell-escape")
    (synopsis "Shell escaping library.")
    (description
     "Shell escaping library, offering both Bourne shell and Bash style escaping
of ByteStrings.")
    (license license:bsd-3)))

haskell-9.0-shell-escape

(define-public haskell-9.0-speculate
  (package
    (name "haskell-9.0-speculate")
    (version "0.4.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/speculate/speculate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1v635vvj4c3krbgv0y681l0dd3kq6knb9vfqy1jhnci14dy2nnr2"))))
    (properties `((upstream-name . "speculate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cmdargs)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-express)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-leancheck)))
    (home-page "https://github.com/rudymatela/speculate#readme")
    (synopsis "discovery of properties about Haskell functions")
    (description
     "Speculate automatically discovers laws about Haskell functions.
Give Speculate a bunch of Haskell functions and it will discover laws like:

* equations, such as @@ id x == x @@;

* inequalities, such as @@ 0 <= x * x @@;

* conditional equations, such as @@ x \\<= 0  ==\\>  x + abs x == 0 @@.")
    (license license:bsd-3)))

haskell-9.0-speculate

(define-public haskell-9.0-stb-image-redux
  (package
    (name "haskell-9.0-stb-image-redux")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stb-image-redux/stb-image-redux-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s23f38za0zv9vzj4qn5qq2ajhgr6g9gsd2nck2hmkqfjpw1mx1v"))))
    (properties `((upstream-name . "stb-image-redux") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/typedrat/stb-image-redux#readme")
    (synopsis "Image loading and writing microlibrary")
    (description
     "See <https://github.com/typedrat/stb-image-redux/blob/master/README.md>.")
    (license license:bsd-3)))

haskell-9.0-stb-image-redux

(define-public haskell-9.0-string-qq
  (package
    (name "haskell-9.0-string-qq")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-qq/string-qq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wfxkw4x6j6jq9nd82k83g2k3hskpsvk1dp4cpkshvjr4wg9qny8"))))
    (properties `((upstream-name . "string-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://hackage.haskell.org/package/string-qq")
    (synopsis
     "QuasiQuoter for non-interpolated strings, texts and bytestrings.")
    (description
     "QuasiQuoter for non-interpolated strings, texts and bytestrings, useful for writing multi-line IsString literals.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-string-qq

(define-public haskell-9.0-tardis
  (package
    (name "haskell-9.0-tardis")
    (version "0.4.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tardis/tardis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0frm9kffdsia22rwyr8295n9xwhca1d6w04yz4l4cfjav6bgczfs"))))
    (properties `((upstream-name . "tardis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)))
    (home-page "https://github.com/DanBurton/tardis")
    (synopsis "Bidirectional state monad transformer")
    (description
     "A Tardis is a combination of both a forwards and a backwards
state transformer, providing two state values that \\\"travel\\\"
in opposite directions.

A detailed description of what a Tardis is and how to use it
can be found in the documentation for Control.Monad.Tardis.")
    (license license:bsd-3)))

haskell-9.0-tardis

(define-public haskell-9.0-tce-conf
  (package
    (name "haskell-9.0-tce-conf")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tce-conf/tce-conf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18i6mphwjh61h8p2kzkj2aaq6l61n4lgpz7d89r17va1p4xq8ldh"))))
    (properties `((upstream-name . "tce-conf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "http://hub.darcs.net/dino/tce-conf")
    (synopsis "Very simple config file reading")
    (description
     "This package contains modules for runtime reading of very simple config files of the `key=value` style or as a Haskell data structure to be deserialized with `Read`. The modules support files with blank lines and simple single-line comments, but nothing else.")
    (license license:bsd-3)))

haskell-9.0-tce-conf

(define-public haskell-9.0-tensorflow-test
  (package
    (name "haskell-9.0-tensorflow-test")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tensorflow-test/tensorflow-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z2anh5ikjpsb1sjfn290bcf5rcxsmzb0gwdk9czdnlmx3fig0ip"))))
    (properties `((upstream-name . "tensorflow-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/tensorflow/haskell#readme")
    (synopsis "Some common functions for test suites.")
    (description "This package provides common utility functions for the
TensorFlow test suites.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-tensorflow-test

(define-public haskell-9.0-tf-random
  (package
    (name "haskell-9.0-tf-random")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tf-random/tf-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0445r2nns6009fmq0xbfpyv7jpzwv0snccjdg7hwj4xk4z0cwc1f"))))
    (properties `((upstream-name . "tf-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://hackage.haskell.org/package/tf-random")
    (synopsis "High-quality splittable pseudorandom number generator")
    (description
     "This package contains an implementation of a high-quality splittable pseudorandom number generator. The generator is based on a cryptographic hash function built on top of the ThreeFish block cipher. See the paper /Splittable Pseudorandom Number Generators Using Cryptographic Hashing/ by Claessen, Pałka for details and the rationale of the design.

The package provides the following:

* A splittable PRNG that implements the standard 'System.Random.RandomGen' class.

* The generator also implements an alternative version of the 'System.Random.TF.Gen.RandomGen' class (exported from \"System.Random.TF.Gen\"), which requires the generator to return pseudorandom integers from the full 32-bit range, and contains an n-way split function.

* An alternative version of the @@Random@@ class is provided, which is linked to the new @@RandomGen@@ class, together with @@Random@@ instances for some integral types.

* Two functions for initialising the generator with a non-deterministic seed: one using the system time, and one using the @@\\/dev\\/urandom@@ UNIX special file.

The package uses an adapted version of the reference C implementation of ThreeFish from the reference package of the Skein hash function (<https://www.schneier.com/skein.html>), originally written by Doug Whiting.

Please note that even though the generator provides very high-quality pseudorandom numbers, it has not been designed with cryptographic applications in mind.")
    (license license:bsd-3)))

haskell-9.0-tf-random

(define-public haskell-9.0-thread-local-storage
  (package
    (name "haskell-9.0-thread-local-storage")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/thread-local-storage/thread-local-storage-"
                    version ".tar.gz"))
              (sha256
               (base32
                "152j8r7rfixkjrh1ynv2s0586bl65cpy47frhsikd40q64bf0j6n"))))
    (properties `((upstream-name . "thread-local-storage") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/rrnewton/thread-local-storage")
    (synopsis "Several options for thread-local-storage (TLS) in Haskell.")
    (description
     "
Thread-local storage, or TLS, is an important ingredient in many
algorithms and data structures.

The GHC compiler does not provide a built-in notion of TLS either
at the IO-thread or OS thread level.  This package provides a few
different implementations of a simple TLS API.

All exported public modules provide exactly the same interface with
different implementations.  Run the included criterion benchmark
suite to ascertain which performs the best on your platform.

Example criterion benchmark data can be found here (from an Intel Ivy-Bridge i7-3770 desktop):
<http://www.cs.indiana.edu/~rrnewton/datasets/xmen_tls_report.html>")
    (license license:bsd-3)))

haskell-9.0-thread-local-storage

(define-public haskell-9.0-tile
  (package
    (name "haskell-9.0-tile")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tile/tile-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1w35rhrpjs39xbcg2i635jxdkbp4nhkzrrnl9p3bz85yc1iiiv8m"))))
    (properties `((upstream-name . "tile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://github.com/caneroj1/tile#readme")
    (synopsis "Slippy map tile functionality.")
    (description "Tile/lonlat conversion utilities for slippy maps.")
    (license license:bsd-3)))

haskell-9.0-tile

(define-public haskell-9.0-timezone-olson-th
  (package
    (name "haskell-9.0-timezone-olson-th")
    (version "0.1.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timezone-olson-th/timezone-olson-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lpsmjy99l1yqz23dqb31cx08wg19bd4qzfmsqzz7hfmz0dgjqsj"))))
    (properties `((upstream-name . "timezone-olson-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-timezone-olson)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-timezone-series)))
    (home-page "http://github.com/jonpetterbergman/timezone-olson-th")
    (synopsis "Load TimeZoneSeries from an Olson file at compile time.")
    (description
     "Template Haskell to load a TimeZoneSeries from an Olson file at compile time.
For Example:")
    (license license:bsd-3)))

haskell-9.0-timezone-olson-th

(define-public haskell-9.0-topograph
  (package
    (name "haskell-9.0-topograph")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/topograph/topograph-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08fpwaf6341gaf7niwss08zlfyf8nvfrc4343zlkhscb19l4b7ni"))))
    (properties `((upstream-name . "topograph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/phadej/topograph")
    (synopsis "Directed acyclic graphs.")
    (description
     "Directed acyclic graphs can be sorted topographically.
Existence of topographic ordering allows writing many graph algorithms efficiently.
And many graphs, e.g. most dependency graphs are acyclic!

There are some algorithms built-in: dfs, transpose, transitive closure,
transitive reduction...
Some algorithms even become not-so-hard to implement, like a longest path!")
    (license license:bsd-3)))

haskell-9.0-topograph

(define-public haskell-9.0-transformers-bifunctors
  (package
    (name "haskell-9.0-transformers-bifunctors")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transformers-bifunctors/transformers-bifunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01s8516m9cybx5gqxk8g00fnkbwpfi5vrm1pgi62pxk1cgbx699w"))))
    (properties `((upstream-name . "transformers-bifunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vjyk2ldwfi2pkvk79p37ii5xgg1399kxqhkq3l4wvag4j5p4afs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)))
    (home-page "https://github.com/jacobstanley/transformers-bifunctors")
    (synopsis "Bifunctors over monad transformers.")
    (description "Bifunctors over monad transformers.")
    (license license:bsd-3)))

haskell-9.0-transformers-bifunctors

(define-public haskell-9.0-transient
  (package
    (name "haskell-9.0-transient")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transient/transient-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11hiywgfv73bf128dd7h48790d356hl39fx3s54x3cri3gymwkkd"))))
    (properties `((upstream-name . "transient") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://github.com/transient-haskell/transient")
    (synopsis
     "composing programs with multithreading, events and distributed computing")
    (description
     "See <http://github.com/agocorona/transient>
Distributed primitives are in the transient-universe package. Web primitives are in the axiom package.")
    (license license:expat)))

haskell-9.0-transient

(define-public haskell-9.0-tsv2csv
  (package
    (name "haskell-9.0-tsv2csv")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tsv2csv/tsv2csv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15rkvmisnk521ym9r48f1lp8w1wg1cyljj1165zd99ckmj5jy21c"))))
    (properties `((upstream-name . "tsv2csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (home-page "https://hackage.haskell.org/package/tsv2csv")
    (synopsis "Convert tsv to csv")
    (description "Convert tab-delimited text to Excel-style comma-delimited.")
    (license license:bsd-3)))

haskell-9.0-tsv2csv

(define-public haskell-9.0-tuple-sop
  (package
    (name "haskell-9.0-tuple-sop")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tuple-sop/tuple-sop-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hv0fcz5sw93v1niq2r656wpkiwkg6larld7x9cwk4s98h7qvqgn"))))
    (properties `((upstream-name . "tuple-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-generics-sop)))
    (home-page "https://github.com/Ferdinand-vW/tuple-sop#readme")
    (synopsis "functions on n-ary tuples using generics-sop")
    (description
     "Exports various functions on n-ary tuples. This library uses generics-sop to create a generic representation of n-ary product types. To regain type inference, the exported functions work only on tuples with at most 10 components.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-tuple-sop

(define-public haskell-9.0-tzdata
  (package
    (name "haskell-9.0-tzdata")
    (version "0.2.20221028.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tzdata/tzdata-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cm18g2fv8r11picmq2rf4hz77j2dgx6r6cdamdsq1ap0hv2jdqv"))))
    (properties `((upstream-name . "tzdata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/ysangkok/haskell-tzdata")
    (synopsis "Time zone database (as files and as a module)")
    (description
     "The goal of this package is to distribute the standard Time Zone
Database in a cabal package, so that it can be used in Haskell
programs uniformly on all platforms.

This package currently ships the @@2022f@@ version of the time zone
database.  The version of the time zone database shipped is always
reflected in the version of this package: @@x.y.YYYYMMDD.z@@, then
@@YYYYMMDD@@ is the official release date of time zone database.

This version contains the \"fat\" variant of the time zone files (which is not
the default for the upstream since @@2020b@@) to facilitate the transition. The
next major version (@@0.3@@) will ship the \"slim\" variant.

See: <http://www.iana.org/time-zones> for more info about the time
zone database.

See also the @@tz@@ package <http://hackage.haskell.org/package/tz> or
the @@timezone-olson@@ and @@timezone-series@@ packages that provide
facilities to /use/ the data shipped here. (The @@tz@@ package
automatically installs this package.)")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-tzdata

(define-public haskell-9.0-unagi-chan
  (package
    (name "haskell-9.0-unagi-chan")
    (version "0.4.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unagi-chan/unagi-chan-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d98a6s7rydjlf2p3jv6j7wglq8ahf8kgcibji5fiy6y0ymz9mnr"))))
    (properties `((upstream-name . "unagi-chan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-compare-benchmarks")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (home-page "https://hackage.haskell.org/package/unagi-chan")
    (synopsis "Fast concurrent queues with a Chan-like API, and more")
    (description
     "This library provides implementations of concurrent FIFO queues (for both
general boxed and primitive unboxed values) that are fast, perform well
under contention, and offer a Chan-like interface. The library may be of
limited usefulness outside of x86 architectures where the fetch-and-add
instruction is not available.

We export several variations of our design; some support additional
functionality while others try for lower latency by removing features or
making them more restrictive (e.g. in the @@Unboxed@@ variants).

- @@Unagi@@: a general-purpose near drop-in replacement for @@Chan@@.

- @@Unagi.Unboxed@@: like @@Unagi@@ but specialized for primitive types; this
may perform better if a queue grows very large.

- @@Unagi.Bounded@@: a bounded variant with blocking and non-blocking writes,
and other functionality where a notion of the queue's capacity is
required.

- @@Unagi.NoBlocking@@: lowest latency implementations for when blocking
reads aren't required.

- @@Unagi.NoBlocking.Unboxed@@: like @@Unagi.NoBlocking@@ but for primitive
types.

Some of these may be deprecated in the future if they are found to provide
little performance benefit, or no unique features; you should benchmark and
experiment with them for your use cases, and please submit pull requests
for additions to the benchmark suite that reflect what you find.

Here is an example benchmark measuring the time taken to concurrently write
and read 100,000 messages, with work divided amongst increasing number of
readers and writers, comparing against the top-performing queues in the
standard libraries. The inset graph shows a zoomed-in view on the
implementations here.

<<http://i.imgur.com/J5rLUFn.png>>
")
    (license license:bsd-3)))

haskell-9.0-unagi-chan

(define-public haskell-9.0-universe-reverse-instances
  (package
    (name "haskell-9.0-universe-reverse-instances")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-reverse-instances/universe-reverse-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wzvrnccj9hq1x55vy7a8xzppgf0zmbnlm3yz02qx3dglq97w4n4"))))
    (properties `((upstream-name . "universe-reverse-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1mp9222337rdcc6x5kg6hm14npbmq2igg0h6gmyvn1jd4x5cg9dx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis
     "Instances of standard classes that are made possible by enumerations")
    (description
     "For example this package provides a @@Eq (a -> b)@@ instance:

@@
instance (Finite a, Eq b) => Eq (a -> b) where
f == g = and [f x == g x | x <- universeF]
@@")
    (license license:bsd-3)))

haskell-9.0-universe-reverse-instances

(define-public haskell-9.0-universe-some
  (package
    (name "haskell-9.0-universe-some")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-some/universe-some-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pdvk5qi39d0wg8ac936c1fxs7v7qld2ggpqc9v7xc4pk3xq24bp"))))
    (properties `((upstream-name . "universe-some") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1caqfajnhja7cz3bbz9pg2m9l3yc128hvsp7d3rpjw86g3wx2x0j")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-some)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for Some from some")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them
defined in @@universe-base@@ package:

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This package adds

@@
class UniverseSome f where universeSome :: [Some f]
class UniverseSome f => FiniteSome f where universeFSome :: [Some f]; universeFSome = universe
@@

classes.")
    (license license:bsd-3)))

haskell-9.0-universe-some

(define-public haskell-9.0-utf8-string
  (package
    (name "haskell-9.0-utf8-string")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/utf8-string/utf8-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16mh36ffva9rh6k37bi1046pgpj14h0cnmj1iir700v0lynxwj7f"))))
    (properties `((upstream-name . "utf8-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)))
    (home-page "https://github.com/glguy/utf8-string/")
    (synopsis "Support for reading and writing UTF8 Strings")
    (description "A UTF8 layer for Strings. The utf8-string
package provides operations for encoding UTF8
strings to Word8 lists and back, and for reading and
writing UTF8 without truncation.")
    (license license:bsd-3)))

haskell-9.0-utf8-string

(define-public haskell-9.0-varying
  (package
    (name "haskell-9.0-varying")
    (version "0.8.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/varying/varying-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gprc1awvyb2085sxm5wg3igq99riaga2hwx0ycwndms31nwqx3n"))))
    (properties `((upstream-name . "varying") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)))
    (home-page "https://github.com/schell/varying")
    (synopsis "FRP through value streams and monadic splines.")
    (description
     "Varying is a FRP library aimed at providing a simple way to describe values that change over a domain. It allows monadic, applicative and arrow notation and has convenience functions for tweening. Great for animation.")
    (license license:expat)))

haskell-9.0-varying

(define-public haskell-9.0-vector-algorithms
  (package
    (name "haskell-9.0-vector-algorithms")
    (version "0.8.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-algorithms/vector-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fxg6w0vh5g2vzw4alajj9ywdijfn9nyx28hbckhmwwbfxb6l5vn"))))
    (properties `((upstream-name . "vector-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fboundschecks" "-f-unsafechecks" "-f-internalchecks" "-fbench" "-fproperties" "-f-llvm")
       #:cabal-revision
       ("2" "0i55aqh2kfswmzvkyls1vlzlg3gvh1ydhksx9w7circ8ffj6lrg0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/erikd/vector-algorithms/")
    (synopsis "Efficient algorithms for vector arrays")
    (description
     "Efficient algorithms for sorting vector arrays. At some stage
other vector algorithms may be added.")
    (license license:bsd-3)))

haskell-9.0-vector-algorithms

(define-public haskell-9.0-vector-binary-instances
  (package
    (name "haskell-9.0-vector-binary-instances")
    (version "0.2.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-binary-instances/vector-binary-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kgmlb4rf89b18d348cf2k06xfhdpamhmvq7iz5pab5014hknbmp"))))
    (properties `((upstream-name . "vector-binary-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "149gn5n722r2skj5w46av3944fbw3882qkaydq7asm6zx5kc0nj6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/bos/vector-binary-instances")
    (synopsis "Instances of Data.Binary for vector")
    (description
     "Instances for Binary for the types defined in the vector package,
making it easy to serialize vectors to and from disk. We use the
generic interface to vectors, so all vector types are supported.
Specific instances are provided for unboxed, boxed and storable
vectors.
.
To serialize a vector:
.
> *Data.Vector.Binary> let v = Data.Vector.fromList [1..10]
> *Data.Vector.Binary> v
> fromList [1,2,3,4,5,6,7,8,9,10] :: Data.Vector.Vector
> *Data.Vector.Binary> encode v
> Chunk \"\\NUL\\NUL\\NUL\\NUL\\NUL...\\NUL\\NUL\\NUL\\t\\NUL\\NUL\\NUL\\NUL\\n\" Empty
.
Which you can in turn compress before writing to disk:
.
> compress . encode $ v
> Chunk \"\\US\\139\\b\\NUL\\NUL\\N...\\229\\240,\\254:\\NUL\\NUL\\NUL\" Empty
.
Try the cereal-vector package if you are looking for Data.Serialize
instances.")
    (license license:bsd-3)))

haskell-9.0-vector-binary-instances

(define-public haskell-9.0-vector-buffer
  (package
    (name "haskell-9.0-vector-buffer")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-buffer/vector-buffer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16zxc2d25qd15nankhc974ax7q3y72mg5a77v5jsfrw291brnnlv"))))
    (properties `((upstream-name . "vector-buffer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://hackage.haskell.org/package/vector-buffer")
    (synopsis "A buffer compatible with Data.Vector.*")
    (description
     "A buffer type that can easily be converted to a Data.Vector.Storable vector
from the vector package and compatible with hmatrix.

Elements are pushed into the buffer.  When the buffer is converted to a read-only
vector, the last-pushed element occurs at the end.

Monadic map functions also operate so that the last-pushed element is treated last.")
    (license license:bsd-3)))

haskell-9.0-vector-buffer

(define-public haskell-9.0-witch
  (package
    (name "haskell-9.0-witch")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/witch/witch-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vmn412w11dc1qgw12g0wa6v0miggicgdd7ndml4k4b04sdqbdhq"))))
    (properties `((upstream-name . "witch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (home-page "https://hackage.haskell.org/package/witch")
    (synopsis "Convert values from one type into another.")
    (description "Witch converts values from one type into another.")
    (license license:expat)))

haskell-9.0-witch

