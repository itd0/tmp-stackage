;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage003)
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
(define-public haskell-8.4-ChasingBottoms
  (package
    (name "haskell-8.4-ChasingBottoms")
    (version "1.3.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ChasingBottoms/ChasingBottoms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hfk2cb9da5fvr96x8lzij93yl3rvax2id9a8gihd5j5aq4kxx30"))))
    (properties `((upstream-name . "ChasingBottoms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://hackage.haskell.org/package/ChasingBottoms")
    (synopsis "For testing partial and infinite values.")
    (description
     "Do you ever feel the need to test code involving bottoms (e.g. calls to
the @@error@@ function), or code involving infinite values? Then this
library could be useful for you.

It is usually easy to get a grip on bottoms by showing a value and
waiting to see how much gets printed before the first exception is
encountered. However, that quickly gets tiresome and is hard to automate
using e.g. QuickCheck
(<http://www.cse.chalmers.se/~rjmh/QuickCheck/>). With this library you
can do the tests as simply as the following examples show.

Testing explicitly for bottoms:

> > isBottom (head [])
> True

> > isBottom bottom
> True

> > isBottom (\\_ -> bottom)
> False

> > isBottom (bottom, bottom)
> False

Comparing finite, partial values:

> > ((bottom, 3) :: (Bool, Int)) ==! (bottom, 2+5-4)
> True

> > ((bottom, bottom) :: (Bool, Int)) <! (bottom, 8)
> True

Showing partial and infinite values (@@\\\\\\/!@@ is join and @@\\/\\\\!@@ is meet):

> > approxShow 4 $ (True, bottom) \\/! (bottom, 'b')
> \"Just (True, 'b')\"

> > approxShow 4 $ (True, bottom) /\\! (bottom, 'b')
> \"(_|_, _|_)\"

> > approxShow 4 $ ([1..] :: [Int])
> \"[1, 2, 3, _\"

> > approxShow 4 $ (cycle [bottom] :: [Bool])
> \"[_|_, _|_, _|_, _\"

Approximately comparing infinite, partial values:

> > approx 100 [2,4..] ==! approx 100 (filter even [1..] :: [Int])
> True

> > approx 100 [2,4..] /=! approx 100 (filter even [bottom..] :: [Int])
> True

The code above relies on the fact that @@bottom@@, just as @@error
\\\"...\\\"@@, @@undefined@@ and pattern match failures, yield
exceptions. Sometimes we are dealing with properly non-terminating
computations, such as the following example, and then it can be nice to
be able to apply a time-out:

> > timeOut' 1 (reverse [1..5])
> Value [5,4,3,2,1]

> > timeOut' 1 (reverse [1..])
> NonTermination

The time-out functionality can be used to treat \\\"slow\\\" computations as
bottoms:

@@
\\> let tweak = Tweak &#x7b; approxDepth = Just 5, timeOutLimit = Just 2 &#x7d;
\\> semanticEq tweak (reverse [1..], [1..]) (bottom :: [Int], [1..] :: [Int])
True
@@

@@
\\> let tweak = noTweak &#x7b; timeOutLimit = Just 2 &#x7d;
\\> semanticJoin tweak (reverse [1..], True) ([] :: [Int], bottom)
Just ([],True)
@@

This can of course be dangerous:

@@
\\> let tweak = noTweak &#x7b; timeOutLimit = Just 0 &#x7d;
\\> semanticEq tweak (reverse [1..100000000]) (bottom :: [Integer])
True
@@

Timeouts can also be applied to @@IO@@ computations:

> > let primes () = unfoldr (\\(x:xs) -> Just (x, filter ((/= 0) . (`mod` x)) xs)) [2..]
> > timeOutMicro 100 (print $ primes ())
> [2,NonTermination
> > timeOutMicro 10000 (print $ take 10 $ primes ())
> [2,3,5,7,11,13,17,19,23,29]
> Value ()

For the underlying theory and a larger example involving use of
QuickCheck, see the article \\\"Chasing Bottoms, A Case Study in Program
Verification in the Presence of Partial and Infinite Values\\\"
(<http://www.cse.chalmers.se/~nad/publications/danielsson-jansson-mpc2004.html>).

The code has been tested using GHC. Most parts can probably be
ported to other Haskell compilers, but this would require some work.
The @@TimeOut@@ functions require preemptive scheduling, and most of
the rest requires @@Data.Generics@@; @@isBottom@@ only requires
exceptions, though.")
    (license license:expat)))

haskell-8.4-ChasingBottoms

(define-public haskell-8.4-EdisonCore
  (package
    (name "haskell-8.4-EdisonCore")
    (version "1.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/EdisonCore/EdisonCore-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fgj5iwiv3v2gdgx7kjcr15dcs4x1kvmjspp3p99wyhh0x6h3ikk"))))
    (properties `((upstream-name . "EdisonCore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "10yjhpwpyq4brpjymhr1vzlhamh9l7hir3a8d3fix7jx0azwjjkp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-EdisonAPI)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "http://rwd.rdockins.name/edison/home/")
    (synopsis
     "A library of efficient, purely-functional data structures (Core Implementations)")
    (description
     "This package provides the core Edison data structure implementations,
including multiple sequence, set, bag, and finite map concrete
implementations with various performance characteristics. The
implementations in this package have no dependencies other than those
commonly bundled with Haskell compilers.")
    (license license:expat)))

haskell-8.4-EdisonCore

(define-public haskell-8.4-FenwickTree
  (package
    (name "haskell-8.4-FenwickTree")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/FenwickTree/FenwickTree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g7hhkim16wsjf8l79hqkiv1lain6jm8wpiml1iycra3n9i2s5ww"))))
    (properties `((upstream-name . "FenwickTree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://github.com/mgajda/FenwickTree")
    (synopsis "Data structure for fast query and update of cumulative sums")
    (description
     "Fenwick trees are a O(log N) data structure for updating cumulative sums.
This implementation comes with an operation to find a least element for
which real-valued cumulative sum reaches certain value, and allows for
storage of arbitrary information in the nodes.")
    (license license:bsd-3)))

haskell-8.4-FenwickTree

(define-public haskell-8.4-HCodecs
  (package
    (name "haskell-8.4-HCodecs")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HCodecs/HCodecs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hrib81nw4g7qgka3brypb8k1mg7l37m8gywc7bc44mcg5mn2957"))))
    (properties `((upstream-name . "HCodecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0h83j33dnl1jsxma9ja7mzph96ms4mcgpr3wsr5hq88avspmhdf1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "http://www-db.informatik.uni-tuebingen.de/team/giorgidze")
    (synopsis
     "A library to read, write and manipulate MIDI, WAVE, and SoundFont2 files.")
    (description
     "The library provides functions to read, write and manipulate MIDI, WAVE and
SoundFont2 multimedia files. It is written entirely in Haskell (without any
FFI). It uses efficient  parsing and building combinators for binary data
stored in ByteStrings (based on the one in 'binary' package).

Correctness of significant parts of the library has been validated with
QuickCheck and Haskell Program Coverage (HPC) tool-kits.")
    (license license:bsd-3)))

haskell-8.4-HCodecs

(define-public haskell-8.4-HDBC
  (package
    (name "haskell-8.4-HDBC")
    (version "2.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HDBC/HDBC-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nnvfyivmw5pykbna953yb6z4al1ak5vsd308lpsyv2bczymf1v7"))))
    (properties `((upstream-name . "HDBC") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildtests" "-fmintime15")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-convertible)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/hdbc/hdbc")
    (synopsis "Haskell Database Connectivity")
    (description
     "HDBC provides an abstraction layer between Haskell programs and SQL
relational databases. This lets you write database code once, in
Haskell, and have it work with any number of backend SQL databases
(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)")
    (license license:bsd-3)))

haskell-8.4-HDBC

(define-public haskell-8.4-IntervalMap
  (package
    (name "haskell-8.4-IntervalMap")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/IntervalMap/IntervalMap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g47mf4m0vwbibk8hi9k78xwbgdaa4zvypgbpzcvj20hw2wpcdhk"))))
    (properties `((upstream-name . "IntervalMap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "http://www.chr-breitkopf.de/comp/IntervalMap")
    (synopsis "Containers for intervals, with efficient search.")
    (description
     "Ordered containers of intervals, with efficient search
for all keys containing a point or overlapping an interval.
See the example code on the home page for a quick introduction.")
    (license license:bsd-3)))

haskell-8.4-IntervalMap

(define-public haskell-8.4-MissingH
  (package
    (name "haskell-8.4-MissingH")
    (version "1.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MissingH/MissingH-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jp0vk6w9a7fzrbxfhx773105jp2s1n50klq9ak6spfl7bgx5v29"))))
    (properties `((upstream-name . "MissingH") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1k7d8cgvpmln4imcrfpj4c02n3c5l1gkd5hs4hnar9ln0qh61cfx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hslogger)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-compat)))
    (home-page "http://software.complete.org/missingh")
    (synopsis "Large utility library")
    (description
     "MissingH is a library of all sorts of utility functions for
Haskell programmers.  It is written in pure Haskell and thus should
be extremely portable and easy to use.")
    (license license:bsd-3)))

haskell-8.4-MissingH

(define-public haskell-8.4-Strafunski-StrategyLib
  (package
    (name "haskell-8.4-Strafunski-StrategyLib")
    (version "5.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Strafunski-StrategyLib/Strafunski-StrategyLib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15d2m7ahb3jwriariaff0yz93mmrhpv579wink9838w9091cf650"))))
    (properties `((upstream-name . "Strafunski-StrategyLib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1g9ksfgcz8fjasn78zq7w1yw9wk87i4gd5i0pf31gnf4l3963yz8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://hackage.haskell.org/package/Strafunski-StrategyLib")
    (synopsis "Library for strategic programming")
    (description
     "This is a version of the StrategyLib library originally shipped with Strafunski, Cabalized and updated to newer versions of GHC. A description of much of StrategyLib can be found in the paper \"Design Patterns for Functional Strategic Programming.\"")
    (license license:bsd-3)))

haskell-8.4-Strafunski-StrategyLib

(define-public haskell-8.4-carray
  (package
    (name "haskell-8.4-carray")
    (version "0.1.6.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/carray/carray-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04qny61gcjblqjrz761wp4bdkxk6zbm31xn6h426iybw9kanf6cg"))))
    (properties `((upstream-name . "carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04c4xizl2hjrk5fqwxpv1f0rdrrdl4z5vw6kl7cgc22pywkc2hgj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ix-shapable)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://hackage.haskell.org/package/carray")
    (synopsis "A C-compatible array library.")
    (description
     "A C-compatible array library.

Provides both an immutable and mutable (in the IO monad) interface.
Includes utilities for multi-dimensional arrays, slicing and norms.
Memory is 16-byte aligned by default to enable use of vector instructions.")
    (license license:bsd-3)))

haskell-8.4-carray

(define-public haskell-8.4-constraint
  (package
    (name "haskell-8.4-constraint")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/constraint/constraint-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0iyz3n8qplp892cw2k2z5pp4pv54p5qaqrcjgpiwfm9jkri0v012"))))
    (properties `((upstream-name . "constraint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-category)))
    (home-page "https://hackage.haskell.org/package/constraint")
    (synopsis "Reified constraints")
    (description "")
    (license license:bsd-3)))

haskell-8.4-constraint

(define-public haskell-8.4-data-clist
  (package
    (name "haskell-8.4-data-clist")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-clist/data-clist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1aibiml1vs983lbxq18zcn9h11k3zjrxpsx4rxssqdjwni1kg9yi"))))
    (properties `((upstream-name . "data-clist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://github.com/sw17ch/data-clist")
    (synopsis "Simple functional ring type.")
    (description "Simple functional bidirectional ring type.
Given that the ring terminiology clashes with certain
mathematical branches, we're using the term CList or
CircularList instead.")
    (license license:bsd-3)))

haskell-8.4-data-clist

(define-public haskell-8.4-data-tree-print
  (package
    (name "haskell-8.4-data-tree-print")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-tree-print/data-tree-print-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00jh37anim8qsn553467gmfhajcz1c61zrgh1ypkqsll0gc29vy3"))))
    (properties `((upstream-name . "data-tree-print") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0j24bzw0gs9zz22jp2iabpqyvyc4cg4c0y12cxiiskpndvspah2y")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://github.com/lspitzner/data-tree-print")
    (synopsis "Print Data instances as a nested tree")
    (description
     "Provides functionality similar to that of the `Show` class: Taking some
arbitrary value and returning a String.

* Output is not intended to be valid haskell.

* Requires a `Data.Data.Data` instance instead of a `Text.Show` one.

* Output, if large, is often easier to parse than `show` output
due to the formatting as a nested tree.

* The user can adapt the behaviour at runtime using custom layouting
expressed via syb-style extension.")
    (license license:bsd-3)))

haskell-8.4-data-tree-print

(define-public haskell-8.4-digits
  (package
    (name "haskell-8.4-digits")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/digits/digits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b3arnnwqw53cb2xqmy4j66nw9y6wrazb545qkka9y6w8nbrqjd8"))))
    (properties `((upstream-name . "digits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/digits")
    (synopsis "Converts integers to lists of digits and back.")
    (description "Converts integers to lists of digits and back.")
    (license license:bsd-3)))

haskell-8.4-digits

(define-public haskell-8.4-dlist
  (package
    (name "haskell-8.4-dlist")
    (version "0.8.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dlist/dlist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hqvjld86vna9m0za4g37nv2gml2s8q01208igp4l3dl76l8ma4q"))))
    (properties `((upstream-name . "dlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1jh8zw1vpx0ld4gmc4l0pqpgbl9frpgbyw9kvsr56bnz0v2rgqpx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://github.com/spl/dlist")
    (synopsis "Difference lists")
    (description
     "Difference lists are a list-like type supporting O(1) append. This is
particularly useful for efficient logging and pretty printing (e.g. with the
Writer monad), where list append quickly becomes too expensive.")
    (license license:bsd-3)))

haskell-8.4-dlist

(define-public haskell-8.4-doctest
  (package
    (name "haskell-8.4-doctest")
    (version "0.16.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/doctest/doctest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "106pc4rs4cfym7754gzdgy36dm9aidwmnqpjm9k7yq1hfd4pallv"))))
    (properties `((upstream-name . "doctest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-code-page)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://github.com/sol/doctest#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "The doctest program checks examples in source code comments.  It is modeled
after doctest for Python (<http://docs.python.org/library/doctest.html>).

Documentation is at <https://github.com/sol/doctest#readme>.")
    (license license:expat)))

haskell-8.4-doctest

(define-public haskell-8.4-dsp
  (package
    (name "haskell-8.4-dsp")
    (version "0.2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dsp/dsp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0b748v9v9i7kw2djnb9a89yjw0nhwhb5sfml3x6ajydjhx79a8ik"))))
    (properties `((upstream-name . "dsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "http://www.haskell.org/haskellwiki/DSP")
    (synopsis "Haskell Digital Signal Processing")
    (description
     "Digital Signal Processing, Fourier Transform, Linear Algebra, Interpolation")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-dsp

(define-public haskell-8.4-extra
  (package
    (name "haskell-8.4-extra")
    (version "1.6.14")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/extra/extra-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "170jmwx2wnpa6bs92pcijm4ib4hq0vs4582s6v63wrcn1m9l21m6"))))
    (properties `((upstream-name . "extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "00jk2n5hda7148rg5idd70dr3asm8qrc0h644x1yjsw2dqn1l3ax")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)))
    (home-page "https://github.com/ndmitchell/extra#readme")
    (synopsis "Extra functions I use.")
    (description
     "A library of extra functions for the standard Haskell libraries. Most functions are simple additions, filling out missing functionality. A few functions are available in later versions of GHC, but this package makes them available back to GHC 7.2.

The module \"Extra\" documents all functions provided by this library. Modules such as \"Data.List.Extra\" provide extra functions over \"Data.List\" and also reexport \"Data.List\". Users are recommended to replace \"Data.List\" imports with \"Data.List.Extra\" if they need the extra functionality.")
    (license license:bsd-3)))

haskell-8.4-extra

(define-public haskell-8.4-generic-arbitrary
  (package
    (name "haskell-8.4-generic-arbitrary")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-arbitrary/generic-arbitrary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1imw36k5kxfl7ik0mzjxa8xzqg6hs3k253kpi19a9l53wxa0mwv9"))))
    (properties `((upstream-name . "generic-arbitrary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1nn3wz738yxbnjb29spbiqm8lsx79wrlk7bi4mr7v4pnsnn2x0fa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/generic-arbitrary")
    (synopsis "Generic implementation for QuickCheck's Arbitrary")
    (description
     "Generic implementations of methods of the 'Arbitrary' class from the
QuickCheck library. The approach taken here can lead to diverging instances
for recursive types but is safe for non-recursive ones and guarantees
flat distribution for constructors of sum-types.")
    (license license:expat)))

haskell-8.4-generic-arbitrary

(define-public haskell-8.4-generic-random
  (package
    (name "haskell-8.4-generic-random")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-random/generic-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "130lmblycxnpqbsl7vf6a90zccibnvcb5zaclfajcn3by39007lv"))))
    (properties `((upstream-name . "generic-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ij270in4zy3iz53asiq149csggygi549ykw8dx8mk625w1fczk3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "http://github.com/lysxia/generic-random")
    (synopsis "Generic random generators")
    (description
     "For more information

- \"Generic.Random.Tutorial\"

- http://blog.poisson.chat/posts/2018-01-05-generic-random-tour.html

- https://byorgey.wordpress.com/2016/09/20/the-generic-random-library-part-1-simple-generic-arbitrary-instances/")
    (license license:expat)))

haskell-8.4-generic-random

(define-public haskell-8.4-ghc-core
  (package
    (name "haskell-8.4-ghc-core")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-core/ghc-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11byidxq2mcqams9a7df0hwwlzir639mr1s556sw5rrbi7jz6d7c"))))
    (properties `((upstream-name . "ghc-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-colorize-haskell)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-pcre-light)))
    (home-page "https://github.com/shachaf/ghc-core")
    (synopsis "Display GHC's core and assembly output in a pager")
    (description "A convenient command line wrapper for GHC that displays
GHC's optimised core and assembly output in a human
readable, colourised manner, in a pager. Unix systems
only, currently.

Usage:

> ghc-core A.hs

> ghc-core -fvia-C -optc-O3 A.hs
")
    (license license:bsd-3)))

haskell-8.4-ghc-core

(define-public haskell-8.4-ghc-parser
  (package
    (name "haskell-8.4-ghc-parser")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-parser/ghc-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1130fpddf3jx84k558gsc83j3166qy15jp878w2d3lwgzxjcqx5v"))))
    (properties `((upstream-name . "ghc-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-cpphs)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)))
    (home-page "https://github.com/gibiansky/IHaskell")
    (synopsis "Haskell source parser from GHC.")
    (description "")
    (license license:expat)))

haskell-8.4-ghc-parser

(define-public haskell-8.4-haskell-src
  (package
    (name "haskell-8.4-haskell-src")
    (version "1.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src/haskell-src-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g4dj1f0j68bhn4ixfac63wjzy6gsp6kwgxryb1k5nl3i0g99d5l"))))
    (properties `((upstream-name . "haskell-src") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0v1nwaff9kgzlmqw7jh8rhwzc67zc800gra1g8sdzbsdqdrxp2pb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://hackage.haskell.org/package/haskell-src")
    (synopsis "Support for manipulating Haskell source code")
    (description
     "The @@haskell-src@@ package provides support for manipulating Haskell
source code. The package provides a lexer, parser and
pretty-printer, and a definition of a Haskell abstract syntax tree
(AST). Common uses of this package are to parse or generate
<http://www.haskell.org/onlinereport/ Haskell 98> code")
    (license license:bsd-3)))

haskell-8.4-haskell-src

(define-public haskell-8.4-hgmp
  (package
    (name "haskell-8.4-hgmp")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hgmp/hgmp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hisbcpz47x2lbqf8vzwis7qw7xhvx22lv7dcyhm9vsmsh5741dr"))))
    (properties `((upstream-name . "hgmp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "0yj3xi9pqnx64j8jy3scpzcpg79q851s0fpwya9bjlmadnh7a68s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "https://code.mathr.co.uk/hgmp")
    (synopsis "Haskell interface to GMP")
    (description "Types and instances, and marshalling between Integer and
Rational and the corresponding GMP types, along with raw
foreign imports of GMP functions.  Allows FFI to GMP code
(whether in GMP itself or in third-party code that uses
GMP).

Supports only GHC with integer-gmp, this might change if
there's any demand.")
    (license license:bsd-3)))

haskell-8.4-hgmp

(define-public haskell-8.4-hs-bibutils
  (package
    (name "haskell-8.4-hs-bibutils")
    (version "6.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hs-bibutils/hs-bibutils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n2sz2zl4naspryd49ii858qkjp2lapns5a2gr8zm6vvn5sh1f0l"))))
    (properties `((upstream-name . "hs-bibutils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://github.com/wilx/hs-bibutils")
    (synopsis "Haskell bindings to bibutils, the bibliography
conversion utilities.")
    (description "Haskell bindings to Chris Putnam's bibutils, a
library that interconverts between various
bibliography formats using a common MODS-format
XML intermediate.

hs-bibutils is available under the GNU GPL license. See
the LICENSE file for details.

For more details about bibutils, please check:
<http://sourceforge.net/p/bibutils/home/Bibutils/>.

The package release number refers to the release number of
the included bibutils library.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-hs-bibutils

(define-public haskell-8.4-hspec-expectations-lifted
  (package
    (name "haskell-8.4-hspec-expectations-lifted")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations-lifted/hspec-expectations-lifted-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a1qwz0n80lph8m9cq6cb06m8bsmqgg8ifx0acpylvrrkd8g3k92"))))
    (properties `((upstream-name . "hspec-expectations-lifted")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)))
    (home-page "https://hackage.haskell.org/package/hspec-expectations-lifted")
    (synopsis "A version of hspec-expectations generalized to MonadIO")
    (description "A version of hspec-expectations generalized to MonadIO")
    (license license:expat)))

haskell-8.4-hspec-expectations-lifted

(define-public haskell-8.4-json
  (package
    (name "haskell-8.4-json")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/json/json-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1z8s3mfg76p2flqqd2wqsi96l5bg8k8w8m58zlv81pw3k7h1vbwb"))))
    (properties `((upstream-name . "json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplit-base" "-fparsec" "-fpretty" "-fgeneric" "-f-mapdict")
       #:cabal-revision
       ("2" "0iqmwfq6s1fc8jj16yx2d7jpzf94scd1hc4yvz281zxj7kds2ms5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://hackage.haskell.org/package/json")
    (synopsis "Support for serialising Haskell to and from JSON")
    (description
     "JSON (JavaScript Object Notation) is a lightweight data-interchange
format. It is easy for humans to read and write. It is easy for
machines to parse and generate.  It is based on a subset of the
JavaScript Programming Language, Standard ECMA-262 3rd Edition -
December 1999.

This library provides a parser and pretty printer for converting
between Haskell values and JSON.")
    (license license:bsd-3)))

haskell-8.4-json

(define-public haskell-8.4-language-c
  (package
    (name "haskell-8.4-language-c")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c/language-c-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05ff3ywh2lpxgd00nv6y3jnqpdl6bg0f2yn3csd043rv4srd6adp"))))
    (properties `((upstream-name . "language-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusebytestrings" "-fseparatesyb" "-f-allwarnings" "-fiecfpextension")
       #:cabal-revision
       ("2" "074mypdymg7543waq68c72viw912w94v94y1287sp67lzwpyiixd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "http://visq.github.io/language-c/")
    (synopsis "Analysis and generation of C code")
    (description
     "Language C is a haskell library for the analysis and generation of C code.
It features a complete, well tested parser and pretty printer for all of C99 and a large
set of C11 and clang/GNU extensions.")
    (license license:bsd-3)))

haskell-8.4-language-c

(define-public haskell-8.4-leapseconds-announced
  (package
    (name "haskell-8.4-leapseconds-announced")
    (version "2017.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leapseconds-announced/leapseconds-announced-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mm8j994106gyx9p3widkydczn8wcj79m2kiymg9fjkhmxyb4fyd"))))
    (properties `((upstream-name . "leapseconds-announced") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://github.com/bjornbm/leapseconds-announced")
    (synopsis "Leap seconds announced at library release time.")
    (description
     "Provides an easy to use static 'Data.Time.Clock.TAI.LeapSecondTable'
with the leap seconds announced at library release time.")
    (license license:bsd-3)))

haskell-8.4-leapseconds-announced

(define-public haskell-8.4-median-stream
  (package
    (name "haskell-8.4-median-stream")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/median-stream/median-stream-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g8zqyv9scj2ccvj667yn782c3vqc9a25b8a37lsz78qx15w8bz9"))))
    (properties `((upstream-name . "median-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-heap)))
    (home-page "https://github.com/caneroj1/median-stream#readme")
    (synopsis "Constant-time queries for the median of a stream of numeric
data.")
    (description "Uses the two-heap approach to support O(lg n) insertions
and O(1) queries for the median.")
    (license license:bsd-3)))

haskell-8.4-median-stream

(define-public haskell-8.4-microspec
  (package
    (name "haskell-8.4-microspec")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microspec/microspec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hykarba8ccwkslh8cfsxbriw043f8pa4jyhr3hqc5yqfijibr71"))))
    (properties `((upstream-name . "microspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0cnfj3v6fzck57bgrsnmgz8a9azvz04pm3hv17fg12xzchmp07cq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/microspec")
    (synopsis "Tiny QuickCheck test library with minimal dependencies")
    (description
     "A tiny (1 module, <500 lines) property-based (and unit) testing library with minimal dependencies.

Don't add a bunch of transitive dependencies just to test your code!

Instead of reinventing the wheel (<https://xkcd.com/927>), we use a
RSpec/HSpec-like API and run tests with QuickCheck.

> import Test.Microspec
>
> main :: IO ()
> main = microspec $ do
>    describe \"replicate\" $ do
>       it \"doubles with 2\" $
>          replicate 2 'x' == \"xx\"
>       it \"creates a list of the right size\" $
>          \\(Positive n) -> length (replicate n 'x') == n
>
>    describe \"reverse\" $ do
>       it \"reverse . reverse == id\" $ \\l ->
>          reverse (reverse l) == (l :: [Int])
>
>    describe \"tail\" $
>       it \"length is -1\" $ \\(NonEmpty l) ->
>          length (tail l :: [Int]) == length l - 1
>
>    describe \"solve the halting problem\" $
>       pending")
    (license license:bsd-3)))

haskell-8.4-microspec

(define-public haskell-8.4-optparse-applicative
  (package
    (name "haskell-8.4-optparse-applicative")
    (version "0.14.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-applicative/optparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qvn1s7jwrabbpmqmh6d6iafln3v3h9ddmxj2y4m0njmzq166ivj"))))
    (properties `((upstream-name . "optparse-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1a08dqjly1xy730f6jf45frr8g8gap0n1vg9b0mpzpydv0kgzmrp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://github.com/pcapriotti/optparse-applicative")
    (synopsis "Utilities and combinators for parsing command line options")
    (description
     "optparse-applicative is a haskell library for parsing options
on the command line, providing a powerful applicative interface
for composing these options.

optparse-applicative takes care of reading and validating the
arguments passed to the command line, handling and reporting
errors, generating a usage line, a comprehensive help screen,
and enabling context-sensitive bash completions.

See the included README for detailed instructions and examples,
which is also available on github
<https://github.com/pcapriotti/optparse-applicative>.")
    (license license:bsd-3)))

haskell-8.4-optparse-applicative

(define-public haskell-8.4-pcf-font-embed
  (package
    (name "haskell-8.4-pcf-font-embed")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcf-font-embed/pcf-font-embed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lgx62ig2rvxcv9sgk53pfr8gkfimb1xm6lxpc2rr74mdzp52pf5"))))
    (properties `((upstream-name . "pcf-font-embed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-pcf-font)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/michael-swan/pcf-font-embed")
    (synopsis "Template Haskell for embedding text rendered using PCF fonts.")
    (description
     "pcf-font-embed is a library for rendering X11 PCF fonts at compile-time and statically embedding those images into user programs.")
    (license license:bsd-3)))

haskell-8.4-pcf-font-embed

(define-public haskell-8.4-pqueue
  (package
    (name "haskell-8.4-pqueue")
    (version "1.4.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pqueue/pqueue-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1v4zhv2sc1zsw91hvnarkjhayx2dnf7ccxz6rrhsqpcs0szaranj"))))
    (properties `((upstream-name . "pqueue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1la186z2np3nv06p0485xwg342gyjp7a2ikg73qs7mbg086352zs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/pqueue")
    (synopsis "Reliable, persistent, fast priority queues.")
    (description
     "A fast, reliable priority queue implementation based on a binomial heap.")
    (license license:bsd-3)))

haskell-8.4-pqueue

(define-public haskell-8.4-protocol-buffers
  (package
    (name "haskell-8.4-protocol-buffers")
    (version "2.4.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-buffers/protocol-buffers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s41iprw4w6g56phrgali2b59isn2s67nzfwr38yfgib3lm4kjs7"))))
    (properties `((upstream-name . "protocol-buffers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/k-bx/protocol-buffers")
    (synopsis "Parse Google Protocol Buffer specifications")
    (description "Parse proto files and generate Haskell code.")
    (license license:bsd-3)))

haskell-8.4-protocol-buffers

(define-public haskell-8.4-quickcheck-io
  (package
    (name "haskell-8.4-quickcheck-io")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-io/quickcheck-io-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08k4v7pkgjf30pv5j2dfv1gqv6hclxlniyq2sps8zq4zswcr2xzv"))))
    (properties `((upstream-name . "quickcheck-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://github.com/hspec/quickcheck-io#readme")
    (synopsis "Use HUnit assertions as QuickCheck properties")
    (description "This package provides an orphan instance that allows you to
use HUnit assertions as QuickCheck properties.")
    (license license:expat)))

haskell-8.4-quickcheck-io

(define-public haskell-8.4-quickcheck-simple
  (package
    (name "haskell-8.4-quickcheck-simple")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-simple/quickcheck-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0524xkhx2qa6wfl7wf9qdjscr2djl0l08a1bk6ikigcpdabbb3l0"))))
    (properties `((upstream-name . "quickcheck-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/quickcheck-simple")
    (synopsis "Test properties and default-mains for QuickCheck")
    (description
     "This package contains definitions of test properties and default-mains
using QuickCheck library.")
    (license license:bsd-3)))

haskell-8.4-quickcheck-simple

(define-public haskell-8.4-quickcheck-text
  (package
    (name "haskell-8.4-quickcheck-text")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-text/quickcheck-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02dbs0k6igmsa1hcw8yfvp09v7038vp4zlsp9706km3cmswgshj4"))))
    (properties `((upstream-name . "quickcheck-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://github.com/olorin/quickcheck-text")
    (synopsis "Alternative arbitrary instance for Text")
    (description
     "The usual Arbitrary instance for Text
(in
<https://hackage.haskell.org/package/quickcheck-instances quickcheck-instances>)
only has single-byte
instances and so isn't an ideal representation of a valid UTF-8
character. This package has generators for one-, two- and three-byte
UTF-8 characters (all that are currently in use).")
    (license license:expat)))

haskell-8.4-quickcheck-text

(define-public haskell-8.4-quickcheck-unicode
  (package
    (name "haskell-8.4-quickcheck-unicode")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-unicode/quickcheck-unicode-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s43s1bzbg3gwsjgm7fpyksd1339f0m26dlw2famxwyzgvm0a80k"))))
    (properties `((upstream-name . "quickcheck-unicode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://github.com/bos/quickcheck-unicode")
    (synopsis "Generator and shrink functions for testing
Unicode-related software.")
    (description "Generator and shrink functions for testing
Unicode-related software.")
    (license license:bsd-2)))

haskell-8.4-quickcheck-unicode

(define-public haskell-8.4-regex-pcre-text
  (package
    (name "haskell-8.4-regex-pcre-text")
    (version "0.94.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-pcre-text/regex-pcre-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gg9v3q05j2wdp93iragg7y5414ydz0zmkm0xyrcz98dn3bix68p"))))
    (properties `((upstream-name . "regex-pcre-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-tdfa-text)))
    (home-page "https://github.com/cdornan/regex-pcre-text")
    (synopsis "Text-based PCRE API for regex-base")
    (description "The PCRE/Text backend to accompany regex-base;
needs regex-pcre and regex-tdfa-text")
    (license license:bsd-3)))

haskell-8.4-regex-pcre-text

(define-public haskell-8.4-repa
  (package
    (name "haskell-8.4-repa")
    (version "3.4.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/repa/repa-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17m3wl4hvf04fxwm4fflhnv41yl9bm263hnbpxc8x6xqwifplq23"))))
    (properties `((upstream-name . "repa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("9" "0n287hg4lmn139dwji5xbry369a4ci0qh1birxkzzrsvyv0aq0nz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://repa.ouroborus.net")
    (synopsis "High performance, regular, shape polymorphic parallel arrays.")
    (description
     "Repa provides high performance, regular, multi-dimensional, shape polymorphic
parallel arrays. All numeric data is stored unboxed. Functions written with
the Repa combinators are automatically parallel provided you supply
+RTS -Nwhatever on the command line when running the program.")
    (license license:bsd-3)))

haskell-8.4-repa

(define-public haskell-8.4-safe
  (package
    (name "haskell-8.4-safe")
    (version "0.3.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/safe/safe-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0p3yaf5slvyz1cyy51jq64c5rlp8yzwim8iy2dlnk42if4gc9ibr"))))
    (properties `((upstream-name . "safe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://github.com/ndmitchell/safe#readme")
    (synopsis "Library of safe (exception free) functions")
    (description
     "A library wrapping @@Prelude@@/@@Data.List@@ functions that can throw exceptions, such as @@head@@ and @@!!@@.
Each unsafe function has up to four variants, e.g. with @@tail@@:

* @@tail :: [a] -> [a]@@, raises an error on @@tail []@@.

* @@tailMay :: [a] -> /Maybe/ [a]@@, turns errors into @@Nothing@@.

* @@tailDef :: /[a]/ -> [a] -> [a]@@, takes a default to return on errors.

* @@tailNote :: /String/ -> [a] -> [a]@@, takes an extra argument which supplements the error message.

* @@tailSafe :: [a] -> [a]@@, returns some sensible default if possible, @@[]@@ in the case of @@tail@@.

This package is divided into three modules:

* \"Safe\" contains safe variants of @@Prelude@@ and @@Data.List@@ functions.

* \"Safe.Foldable\" contains safe variants of @@Foldable@@ functions.

* \"Safe.Exact\" creates crashing versions of functions like @@zip@@ (errors if the lists are not equal) and @@take@@ (errors if there are not enough elements), then wraps them to provide safe variants.")
    (license license:bsd-3)))

haskell-8.4-safe

(define-public haskell-8.4-securemem
  (package
    (name "haskell-8.4-securemem")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/securemem/securemem-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19hnw2cfbsfjynxq1bq9f6djbxhsc1k751ml0y1ab3ah913mm29j"))))
    (properties `((upstream-name . "securemem") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)))
    (home-page "https://github.com/vincenthz/hs-securemem")
    (synopsis
     "abstraction to an auto scrubbing and const time eq, memory chunk.")
    (description
     "SecureMem is similar to ByteString, except that it provides a memory chunk that
will be auto-scrubbed after it run out of scope.")
    (license license:bsd-3)))

haskell-8.4-securemem

(define-public haskell-8.4-simple-vec3
  (package
    (name "haskell-8.4-simple-vec3")
    (version "0.4.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-vec3/simple-vec3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rx4nifv75lpxrdgq6x3a61d56qp0ln9rhf2d10l2ds049dlq0pz"))))
    (properties `((upstream-name . "simple-vec3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/dzhus/simple-vec3#readme")
    (synopsis "Three-dimensional vectors of doubles with basic operations")
    (description
     "Simple three-dimensional vectors of doubles with basic vector and matrix operations, supporting \"Data.Vector.Unboxed\" and \"Data.Vector.Storable\".")
    (license license:bsd-3)))

haskell-8.4-simple-vec3

(define-public haskell-8.4-split
  (package
    (name "haskell-8.4-split")
    (version "0.2.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/split/split-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04qlmkcyklznl03gsjg95b4nzb6i96gdapqg60rny9szgi7ngk8x"))))
    (properties `((upstream-name . "split") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1c8bcssxq5rkxkixgms6w6x6lzf4n7cxk6cx6av1dp3lixdy9j34")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/split")
    (synopsis "Combinator library for splitting lists.")
    (description "A collection of various methods for splitting
lists into parts, akin to the \\\"split\\\" function
found in several mainstream languages. Here is
its tale:

Once upon a time the standard \"Data.List\" module
held no function for splitting a list into parts
according to a delimiter.  Many a brave
lambda-knight strove to add such a function, but
their striving was in vain, for Lo, the Supreme
Council fell to bickering amongst themselves what
was to be the essential nature of the One True
Function which could cleave a list in twain (or
thrain, or any required number of parts).

And thus came to pass the split package,
comprising divers functions for splitting a list
asunder, each according to its nature.  And the
Supreme Council had no longer any grounds for
argument, for the favored method of each was
contained therein.

To get started, see the \"Data.List.Split\" module.")
    (license license:bsd-3)))

haskell-8.4-split

(define-public haskell-8.4-tagsoup
  (package
    (name "haskell-8.4-tagsoup")
    (version "0.14.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tagsoup/tagsoup-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09gcy5fd5nsk1b7zdrf7yb329fyr8hq5apd6w3cyh3nxd60z504r"))))
    (properties `((upstream-name . "tagsoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://github.com/ndmitchell/tagsoup#readme")
    (synopsis
     "Parsing and extracting information from (possibly malformed) HTML/XML documents")
    (description
     "TagSoup is a library for parsing HTML/XML. It supports the HTML 5 specification,
and can be used to parse either well-formed XML, or unstructured and malformed HTML
from the web. The library also provides useful functions to extract information
from an HTML document, making it ideal for screen-scraping.

Users should start from the \"Text.HTML.TagSoup\" module.")
    (license license:bsd-3)))

haskell-8.4-tagsoup

(define-public haskell-8.4-test-framework
  (package
    (name "haskell-8.4-test-framework")
    (version "0.8.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework/test-framework-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hhacrzam6b8f10hyldmjw8pb7frdxh04rfg3farxcxwbnhwgbpm"))))
    (properties `((upstream-name . "test-framework") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1sal1qqvc8c1rvsqz292bniy1kr5rx6ll7z9chwsz6j2ncw5sgmg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hostname)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-xml)))
    (home-page "http://haskell.github.io/test-framework/")
    (synopsis
     "Framework for running and organising tests, with HUnit and QuickCheck support")
    (description
     "Allows tests such as QuickCheck properties and HUnit test cases to be assembled into test groups, run in
parallel (but reported in deterministic order, to aid diff interpretation) and filtered and controlled by
command line options. All of this comes with colored test output, progress reporting and test statistics output.")
    (license license:bsd-3)))

haskell-8.4-test-framework

(define-public haskell-8.4-testing-feat
  (package
    (name "haskell-8.4-testing-feat")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/testing-feat/testing-feat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v2qzzpf1s008g7q6q67glf7vbm1pkpq4rc3ii74f4g6vhfx610r"))))
    (properties `((upstream-name . "testing-feat") (hidden? . #f)))
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
                     haskell-8.4-size-based)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-testing-type-modifiers)))
    (home-page "https://github.com/JonasDuregard/testing-feat")
    (synopsis "Functional Enumeration of Algebraic Types")
    (description
     "Feat (Functional Enumeration of Algebraic Types) provides
enumerations as functions from natural numbers to values
(similar to @@toEnum@@ but for any algebraic data type). This
can be used for SmallCheck-style systematic testing,
QuickCheck style random testing, and hybrids of the two.

The enumerators are defined in a very boilerplate manner
and there is a Template Haskell script for deriving the
class instance for most types.
\"Test.Feat\" contain a subset of the other modules that
should be sufficient for most test usage. There
are some small and large example in the tar
ball.

The generators are provided by the size-based package. This means other libraries that implement the Sized class can use the same generator definitions. One such is the
<https://hackage.haskell.org/package/lazy-search lazy-search package>, that uses laziness to search for values and test properties. This is typically a lot faster than Feat for properties that have preconditions (logical implication), but can not be used for random selection of values.")
    (license license:bsd-3)))

haskell-8.4-testing-feat

(define-public haskell-8.4-th-expand-syns
  (package
    (name "haskell-8.4-th-expand-syns")
    (version "0.4.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-expand-syns/th-expand-syns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01prlvh3py5hq5ccjidfyp9ixq2zd88dkbsidyjrpkja6v8m43yc"))))
    (properties `((upstream-name . "th-expand-syns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1zbdg3hrqv7rzlsrw4a2vjr3g4nzny32wvjcpxamlvx77b1jvsw9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://github.com/DanielSchuessler/th-expand-syns")
    (synopsis "Expands type synonyms in Template Haskell ASTs")
    (description "Expands type synonyms in Template Haskell ASTs.")
    (license license:bsd-3)))

haskell-8.4-th-expand-syns

(define-public haskell-8.4-th-extras
  (package
    (name "haskell-8.4-th-extras")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-extras/th-extras-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vgvqgfm2lvx6v5r2mglwyl63647c9n6b9a5ikqc93pjm98g9vwg"))))
    (properties `((upstream-name . "th-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4")
       #:cabal-revision
       ("1" "1irp6kcl4h0wwh32nzqjzjvahj0lii2fj15mrh6yr0sk1h2fkjky")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)))
    (home-page "https://github.com/mokus0/th-extras")
    (synopsis "A grab bag of functions for use with Template Haskell")
    (description
     "A grab bag of functions for use with Template Haskell.

This is basically the place I put all my ugly CPP hacks to support
the ever-changing interface of the template haskell system by
providing high-level operations and making sure they work on as many
versions of Template Haskell as I can.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-th-extras

(define-public haskell-8.4-th-lift-instances
  (package
    (name "haskell-8.4-th-lift-instances")
    (version "0.1.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-lift-instances/th-lift-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f56cp6ckcalld5jchv0kxpjkwcsixd7smd0g7r8cg67ppx6m90x"))))
    (properties `((upstream-name . "th-lift-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "14kc165arc6fv09r1g8asrpdqind8pjmignxq26fqcpnllsypda2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/bennofs/th-lift-instances/")
    (synopsis "Lift instances for template-haskell for common data types.")
    (description
     "Most data types in haskell platform do not have Lift instances. This package provides orphan instances
for containers, text, bytestring and vector.")
    (license license:bsd-3)))

haskell-8.4-th-lift-instances

(define-public haskell-8.4-typography-geometry
  (package
    (name "haskell-8.4-typography-geometry")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typography-geometry/typography-geometry-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mrack0n940idy5rv7mm0gfif8xri6z59npxwkq1kgi606vazbpd"))))
    (properties `((upstream-name . "typography-geometry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-polynomials-bernstein)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/typography-geometry")
    (synopsis "Drawings for printed text documents")
    (description "Drawings for printed text documents")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-typography-geometry

(define-public haskell-8.4-utility-ht
  (package
    (name "haskell-8.4-utility-ht")
    (version "0.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/utility-ht/utility-ht-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a7bgk7wv7sqbxbiv7kankiimr3wij7zdm7s83zwsf886ghyxhk9"))))
    (properties `((upstream-name . "utility-ht") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/utility-ht")
    (synopsis
     "Various small helper functions for Lists, Maybes, Tuples, Functions")
    (description
     "Various small helper functions for Lists, Maybes, Tuples, Functions.
Some of these functions are improved implementations of standard functions.
They have the same name as their standard counterparts.
Others are equivalent to functions from the @@base@@ package,
but if you import them from this utility package
then you can write code that runs on older GHC versions
or other compilers like Hugs and JHC.

All modules are plain Haskell 98.
The package depends exclusively on the @@base@@ package
and only that portions of @@base@@ that are simple to port.
Thus you do not risk a dependency avalanche by importing it.
However, further splitting the base package might invalidate this statement.

Alternative packages: @@Useful@@, @@MissingH@@")
    (license license:bsd-3)))

haskell-8.4-utility-ht

(define-public haskell-8.4-yeshql-core
  (package
    (name "haskell-8.4-yeshql-core")
    (version "4.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yeshql-core/yeshql-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zhpccdqy8y5ynyn2ax7p9l2lvz573f559iqkip26ijq84pjmny0"))))
    (properties `((upstream-name . "yeshql-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-convertible)))
    (home-page "https://github.com/tdammers/yeshql")
    (synopsis "YesQL-style SQL database abstraction (core)")
    (description
     "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while
adding type annotations to turn SQL into well-typed Haskell
functions.")
    (license license:expat)))

haskell-8.4-yeshql-core

