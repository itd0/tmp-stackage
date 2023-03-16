;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage003)
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
(define-public haskell-8.6-FenwickTree
  (package
    (name "haskell-8.6-FenwickTree")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://github.com/mgajda/FenwickTree")
    (synopsis "Data structure for fast query and update of cumulative sums")
    (description
     "Fenwick trees are a O(log N) data structure for updating cumulative sums.
This implementation comes with an operation to find a least element for
which real-valued cumulative sum reaches certain value, and allows for
storage of arbitrary information in the nodes.")
    (license license:bsd-3)))

haskell-8.6-FenwickTree

(define-public haskell-8.6-HCodecs
  (package
    (name "haskell-8.6-HCodecs")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
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

haskell-8.6-HCodecs

(define-public haskell-8.6-HDBC
  (package
    (name "haskell-8.6-HDBC")
    (version "2.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HDBC/HDBC-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vv2l99wpm2azm1wmbiqvra5aw708rsldd8y4fdf660q7lgvqqqy"))))
    (properties `((upstream-name . "HDBC") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildtests" "-fmintime15")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-convertible)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "https://github.com/hdbc/hdbc")
    (synopsis "Haskell Database Connectivity")
    (description
     "HDBC provides an abstraction layer between Haskell programs and SQL
relational databases. This lets you write database code once, in
Haskell, and have it work with any number of backend SQL databases
(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)")
    (license license:bsd-3)))

haskell-8.6-HDBC

(define-public haskell-8.6-Ranged-sets
  (package
    (name "haskell-8.6-Ranged-sets")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Ranged-sets/Ranged-sets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1skd2a6yw7dd5vq8x81kwh28gi8sgyzg9qqqyadxmgpvy11sh9ab"))))
    (properties `((upstream-name . "Ranged-sets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1dl69wa509yn2jvl0d4c5c036swq22i6nd73kqn0bp7vhbj4rfq4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://github.com/PaulJohnson/Ranged-sets")
    (synopsis "Ranged sets for Haskell")
    (description
     "A ranged set is an ordered list of ranges.  This allows sets such as all reals x such that:

> (0.25 < x <= 0.75 or 1.4 <= x < 2.3 or 4.5 < x)

Alternatively you can have all strings s such that:

>    (\"F\" <= s < \"G\")")
    (license license:bsd-3)))

haskell-8.6-Ranged-sets

(define-public haskell-8.6-Strafunski-StrategyLib
  (package
    (name "haskell-8.6-Strafunski-StrategyLib")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "https://hackage.haskell.org/package/Strafunski-StrategyLib")
    (synopsis "Library for strategic programming")
    (description
     "This is a version of the StrategyLib library originally shipped with Strafunski, Cabalized and updated to newer versions of GHC. A description of much of StrategyLib can be found in the paper \"Design Patterns for Functional Strategic Programming.\"")
    (license license:bsd-3)))

haskell-8.6-Strafunski-StrategyLib

(define-public haskell-8.6-assert-failure
  (package
    (name "haskell-8.6-assert-failure")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/assert-failure/assert-failure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17aapnal893awjwfjw8lfk1n688sfkpckpvfb0rnjkvvabyid57n"))))
    (properties `((upstream-name . "assert-failure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)))
    (home-page "https://github.com/Mikolaj/assert-failure")
    (synopsis "Syntactic sugar improving 'assert' and 'error'")
    (description "This library contains syntactic sugar that makes it easier
to write simple contracts with 'assert' and 'error'
and report the values that violate contracts.")
    (license license:bsd-3)))

haskell-8.6-assert-failure

(define-public haskell-8.6-bytestring-to-vector
  (package
    (name "haskell-8.6-bytestring-to-vector")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-to-vector/bytestring-to-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ji836sl72wlhy6yay11kl86w0nrcdc1lafbi94bx9c8rpf5pyyc"))))
    (properties `((upstream-name . "bytestring-to-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteorder)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/sheyll/bytestring-to-vector")
    (synopsis "Convert between ByteString and Vector.Storable without copying")
    (description
     "This library allows conversion between the types from @@Data.ByteString@@
(package @@bytestring@@) and @@Data.Vector.Storable@@ (package @@vector@@) without
copying the underlying data.  This is useful, for example, when @@ByteString@@
IO produces or consumes vectors of numbers in native byte order.

The conversion relies on the fact that @@ByteString@@ and @@Vector@@ use their
respective @@ForeignPtr@@s in compatible ways.

This library is a fork of the @@spool@@ package written by Keegan McAllister.")
    (license license:bsd-3)))

haskell-8.6-bytestring-to-vector

(define-public haskell-8.6-carray
  (package
    (name "haskell-8.6-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ix-shapable)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "https://hackage.haskell.org/package/carray")
    (synopsis "A C-compatible array library.")
    (description
     "A C-compatible array library.

Provides both an immutable and mutable (in the IO monad) interface.
Includes utilities for multi-dimensional arrays, slicing and norms.
Memory is 16-byte aligned by default to enable use of vector instructions.")
    (license license:bsd-3)))

haskell-8.6-carray

(define-public haskell-8.6-constraint
  (package
    (name "haskell-8.6-constraint")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/constraint/constraint-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cdncdzpgyr9a0v213g9f6fqfd4311j5rg84gh85xynp8hhh0rr4"))))
    (properties `((upstream-name . "constraint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ivca43m1lqi75462z4hacvzs27whqzjnby7y7jjji8kqaw8wlda")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-category)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unconstrained)))
    (home-page "https://hackage.haskell.org/package/constraint")
    (synopsis "Reified constraints")
    (description "")
    (license license:bsd-3)))

haskell-8.6-constraint

(define-public haskell-8.6-data-clist
  (package
    (name "haskell-8.6-data-clist")
    (version "0.1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-clist/data-clist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mwfhnmvi3vicyjzl33m6pcipi2v887zazyqxygq258ndd010s9m"))))
    (properties `((upstream-name . "data-clist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13hg7a3d4ky8b765dl03ryxg28lq8iaqj5ky3j51r0i1i4f2a9hy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://github.com/sw17ch/data-clist")
    (synopsis "Simple functional ring type.")
    (description "Simple functional bidirectional ring type.
Given that the ring terminiology clashes with certain
mathematical branches, we're using the term CList or
CircularList instead.")
    (license license:bsd-3)))

haskell-8.6-data-clist

(define-public haskell-8.6-data-tree-print
  (package
    (name "haskell-8.6-data-tree-print")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
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

haskell-8.6-data-tree-print

(define-public haskell-8.6-digits
  (package
    (name "haskell-8.6-digits")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/digits")
    (synopsis "Converts integers to lists of digits and back.")
    (description "Converts integers to lists of digits and back.")
    (license license:bsd-3)))

haskell-8.6-digits

(define-public haskell-8.6-dsp
  (package
    (name "haskell-8.6-dsp")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dsp/dsp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1lka6l0xf3p7cb9ikzvszwgr7pl3gjm0s5v312p6k4w1fqqsycl5"))))
    (properties `((upstream-name . "dsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "http://www.haskell.org/haskellwiki/DSP")
    (synopsis "Haskell Digital Signal Processing")
    (description
     "Digital Signal Processing, Fourier Transform, Linear Algebra, Interpolation")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-dsp

(define-public haskell-8.6-extra
  (package
    (name "haskell-8.6-extra")
    (version "1.6.19")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/extra/extra-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "009k43i24aa9zs3hvzs6lr0knkgqv19fil4r15mwxyaca8kg52xv"))))
    (properties `((upstream-name . "extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11b1s9564s4dqpxa2lb4l5wl2wd8jpfxvklqsajq1jfl1rikvyjb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "https://github.com/ndmitchell/extra#readme")
    (synopsis "Extra functions I use.")
    (description
     "A library of extra functions for the standard Haskell libraries. Most functions are simple additions, filling out missing functionality. A few functions are available in later versions of GHC, but this package makes them available back to GHC 7.2.

The module \"Extra\" documents all functions provided by this library. Modules such as \"Data.List.Extra\" provide extra functions over \"Data.List\" and also reexport \"Data.List\". Users are recommended to replace \"Data.List\" imports with \"Data.List.Extra\" if they need the extra functionality.")
    (license license:bsd-3)))

haskell-8.6-extra

(define-public haskell-8.6-fast-builder
  (package
    (name "haskell-8.6-fast-builder")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-builder/fast-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1aa3v14nlcq4ql3f07lan9kg21dqp009yzgb96bxznyigxwf67rp"))))
    (properties `((upstream-name . "fast-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "http://github.com/takano-akio/fast-builder")
    (synopsis "Fast ByteString Builder")
    (description
     "An efficient implementation of ByteString builder. It should be faster than
the standard implementation in most cases.

In many benchmarks, the performance improvement is 2x-10x.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-fast-builder

(define-public haskell-8.6-generic-arbitrary
  (package
    (name "haskell-8.6-generic-arbitrary")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/generic-arbitrary")
    (synopsis "Generic implementation for QuickCheck's Arbitrary")
    (description
     "Generic implementations of methods of the 'Arbitrary' class from the
QuickCheck library. The approach taken here can lead to diverging instances
for recursive types but is safe for non-recursive ones and guarantees
flat distribution for constructors of sum-types.")
    (license license:expat)))

haskell-8.6-generic-arbitrary

(define-public haskell-8.6-generic-random
  (package
    (name "haskell-8.6-generic-random")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "http://github.com/lysxia/generic-random")
    (synopsis "Generic random generators")
    (description
     "For more information

- \"Generic.Random.Tutorial\"

- http://blog.poisson.chat/posts/2018-01-05-generic-random-tour.html

- https://byorgey.wordpress.com/2016/09/20/the-generic-random-library-part-1-simple-generic-arbitrary-instances/")
    (license license:expat)))

haskell-8.6-generic-random

(define-public haskell-8.6-ghc-core
  (package
    (name "haskell-8.6-ghc-core")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-colorize-haskell)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pcre-light)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-8.6-ghc-core

(define-public haskell-8.6-ghc-lib
  (package
    (name "haskell-8.6-ghc-lib")
    (version "8.8.0.20190424")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ghc-lib/ghc-lib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03f1racabmixc4jk3mn6k6cnhapaplswa8fbb9yajrzj56ag16wm"))))
    (properties `((upstream-name . "ghc-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-alex)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)))
    (home-page "https://github.com/digital-asset/ghc-lib")
    (synopsis "The GHC API, decoupled from GHC versions")
    (description
     "A package equivalent to the @@ghc@@ package, but which can be loaded on many compiler versions.")
    (license license:bsd-3)))

haskell-8.6-ghc-lib

(define-public haskell-8.6-ghc-parser
  (package
    (name "haskell-8.6-ghc-parser")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-parser/ghc-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z6gr3zs89agyc2iw2lv8rddw78yn6wxzyzkip7gfca1n9f7xwd9"))))
    (properties `((upstream-name . "ghc-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-cpphs)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)))
    (home-page "https://github.com/gibiansky/IHaskell")
    (synopsis "Haskell source parser from GHC.")
    (description "")
    (license license:expat)))

haskell-8.6-ghc-parser

(define-public haskell-8.6-haskell-src
  (package
    (name "haskell-8.6-haskell-src")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "https://hackage.haskell.org/package/haskell-src")
    (synopsis "Support for manipulating Haskell source code")
    (description
     "The @@haskell-src@@ package provides support for manipulating Haskell
source code. The package provides a lexer, parser and
pretty-printer, and a definition of a Haskell abstract syntax tree
(AST). Common uses of this package are to parse or generate
<http://www.haskell.org/onlinereport/ Haskell 98> code")
    (license license:bsd-3)))

haskell-8.6-haskell-src

(define-public haskell-8.6-hs-bibutils
  (package
    (name "haskell-8.6-hs-bibutils")
    (version "6.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hs-bibutils/hs-bibutils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qfyssl76lm4g09yxr3y10kmf8cnzls46g5h0ijk0wpk9wlhbln5"))))
    (properties `((upstream-name . "hs-bibutils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
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

haskell-8.6-hs-bibutils

(define-public haskell-8.6-hspec-expectations-lifted
  (package
    (name "haskell-8.6-hspec-expectations-lifted")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)))
    (home-page "https://hackage.haskell.org/package/hspec-expectations-lifted")
    (synopsis "A version of hspec-expectations generalized to MonadIO")
    (description "A version of hspec-expectations generalized to MonadIO")
    (license license:expat)))

haskell-8.6-hspec-expectations-lifted

(define-public haskell-8.6-language-c
  (package
    (name "haskell-8.6-language-c")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c/language-c-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bi02jdirkys8v7flf39vrpla2a74z1z0sdhy9lb9v7cmcc6rmpk"))))
    (properties `((upstream-name . "language-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusebytestrings" "-fseparatesyb" "-f-allwarnings" "-fiecfpextension")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-alex)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "http://visq.github.io/language-c/")
    (synopsis "Analysis and generation of C code")
    (description
     "Language C is a haskell library for the analysis and generation of C code.
It features a complete, well tested parser and pretty printer for all of C99 and a large
set of C11 and clang/GNU extensions.")
    (license license:bsd-3)))

haskell-8.6-language-c

(define-public haskell-8.6-language-haskell-extract
  (package
    (name "haskell-8.6-language-haskell-extract")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-haskell-extract/language-haskell-extract-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nxcs7g8a1sp91bzpy4cj6s31k5pvc3gvig04cbrggv5cvjidnhl"))))
    (properties `((upstream-name . "language-haskell-extract") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1chx4g8ngb1hpyh3r9rbl8rkjkm67klms4wmw3p1g2llg47vvqip")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)))
    (home-page "http://github.com/finnsson/template-helper")
    (synopsis "Module to automatically extract functions from the local code.")
    (description
     "@@language-haskell-extract@@ contains some useful helper functions on top of Template Haskell.

@@functionExtractor@@ extracts all functions after a regexp-pattern.

> foo = \"test\"
> boo = \"testing\"
> bar = $(functionExtractor \"oo$\")

will automagically extract the functions ending with @@oo@@ such as

> bar = [(\"foo\",foo), (\"boo\",boo)]

This can be useful if you wish to extract all functions beginning with test (for a test-framework)
or all functions beginning with wc (for a web service).

@@functionExtractorMap@@ works like @@functionsExtractor@@ but applies a function over all function-pairs.

This functions is useful if the common return type of the functions is a type class.

Example:

> secondTypeclassTest =
>   do let expected = [\"45\", \"88.8\", \"\\\"hej\\\"\"]
>          actual = $(functionExtractorMap \"^tc\" [|\\n f -> show f|] )
>      expected @@=? actual
>
> tcInt :: Integer
> tcInt = 45
>
> tcDouble :: Double
> tcDouble = 88.8
>
> tcString :: String
> tcString = \"hej\"")
    (license license:bsd-3)))

haskell-8.6-language-haskell-extract

(define-public haskell-8.6-leapseconds-announced
  (package
    (name "haskell-8.6-leapseconds-announced")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://github.com/bjornbm/leapseconds-announced")
    (synopsis "Leap seconds announced at library release time.")
    (description
     "Provides an easy to use static 'Data.Time.Clock.TAI.LeapSecondTable'
with the leap seconds announced at library release time.")
    (license license:bsd-3)))

haskell-8.6-leapseconds-announced

(define-public haskell-8.6-median-stream
  (package
    (name "haskell-8.6-median-stream")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-heap)))
    (home-page "https://github.com/caneroj1/median-stream#readme")
    (synopsis "Constant-time queries for the median of a stream of numeric
data.")
    (description "Uses the two-heap approach to support O(lg n) insertions
and O(1) queries for the median.")
    (license license:bsd-3)))

haskell-8.6-median-stream

(define-public haskell-8.6-microspec
  (package
    (name "haskell-8.6-microspec")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microspec/microspec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0615gdbsk7i3w71adjp69zabw4mli965wffm2h846hp6pjj31xcb"))))
    (properties `((upstream-name . "microspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/microspec")
    (synopsis "Tiny QuickCheck test library with minimal dependencies")
    (description
     "A tiny (1 module, <500 lines) property-based (and unit) testing library with minimal dependencies.

Instead of reinventing the wheel (<https://xkcd.com/927>), we use a
RSpec/HSpec-like DSL and run tests with QuickCheck.

For many use-cases, microspec is a drop-in replacement for hspec.

> import Test.Microspec
>
> main :: IO ()
> main = microspec $ do
>    describe \"replicate\" $ do
>       it \"doubles with 2\" $
>          replicate 2 'x' === \"xx\"
>       it \"creates a list of the right size\" $
>          \\(Positive n) -> length (replicate n 'x') === n
>
>    describe \"reverse\" $ do
>       it \"reverse . reverse === id\" $ \\l ->
>          reverse (reverse l) === (l :: [Int])
>
>    describe \"tail\" $
>       it \"length is -1\" $ \\(NonEmpty l) ->
>          length (tail l :: [Int]) === length l - 1
>
>    describe \"solve the halting problem\" $
>       pending")
    (license license:bsd-3)))

haskell-8.6-microspec

(define-public haskell-8.6-optparse-applicative
  (package
    (name "haskell-8.6-optparse-applicative")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
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

haskell-8.6-optparse-applicative

(define-public haskell-8.6-pcf-font-embed
  (package
    (name "haskell-8.6-pcf-font-embed")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pcf-font)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/michael-swan/pcf-font-embed")
    (synopsis "Template Haskell for embedding text rendered using PCF fonts.")
    (description
     "pcf-font-embed is a library for rendering X11 PCF fonts at compile-time and statically embedding those images into user programs.")
    (license license:bsd-3)))

haskell-8.6-pcf-font-embed

(define-public haskell-8.6-pqueue
  (package
    (name "haskell-8.6-pqueue")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/pqueue")
    (synopsis "Reliable, persistent, fast priority queues.")
    (description
     "A fast, reliable priority queue implementation based on a binomial heap.")
    (license license:bsd-3)))

haskell-8.6-pqueue

(define-public haskell-8.6-quickcheck-io
  (package
    (name "haskell-8.6-quickcheck-io")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://github.com/hspec/quickcheck-io#readme")
    (synopsis "Use HUnit assertions as QuickCheck properties")
    (description "This package provides an orphan instance that allows you to
use HUnit assertions as QuickCheck properties.")
    (license license:expat)))

haskell-8.6-quickcheck-io

(define-public haskell-8.6-quickcheck-simple
  (package
    (name "haskell-8.6-quickcheck-simple")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-simple/quickcheck-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ah32y1p39p3d0696zp4mlf4bj67ggh73sb8nvf21snkwll86dai"))))
    (properties `((upstream-name . "quickcheck-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/quickcheck-simple")
    (synopsis "Test properties and default-mains for QuickCheck")
    (description
     "This package contains definitions of test properties and default-mains
using QuickCheck library.")
    (license license:bsd-3)))

haskell-8.6-quickcheck-simple

(define-public haskell-8.6-quickcheck-text
  (package
    (name "haskell-8.6-quickcheck-text")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
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

haskell-8.6-quickcheck-text

(define-public haskell-8.6-quickcheck-transformer
  (package
    (name "haskell-8.6-quickcheck-transformer")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-transformer/quickcheck-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jbn17gp2f5ppm83vs2gd3fcbkv3km45qfjgr6qz532ks1a8k0fl"))))
    (properties `((upstream-name . "quickcheck-transformer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "http://hub.darcs.net/thielema/quickcheck-transformer/")
    (synopsis "A GenT monad transformer for QuickCheck library.")
    (description "A fork of QuickCheck-GenT that works for older GHC versions
and uses the Test module folder like QuickCheck.")
    (license license:expat)))

haskell-8.6-quickcheck-transformer

(define-public haskell-8.6-quickcheck-unicode
  (package
    (name "haskell-8.6-quickcheck-unicode")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
    (home-page "https://github.com/bos/quickcheck-unicode")
    (synopsis "Generator and shrink functions for testing
Unicode-related software.")
    (description "Generator and shrink functions for testing
Unicode-related software.")
    (license license:bsd-2)))

haskell-8.6-quickcheck-unicode

(define-public haskell-8.6-regex-compat
  (package
    (name "haskell-8.6-regex-compat")
    (version "0.95.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-compat/regex-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fwmima3f04p9y4h3c23493n1xj629ia2dxaisqm6rynljjv2z6m"))))
    (properties `((upstream-name . "regex-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("1" "0yg34p0rkql07y6rs6l70zlk8x51lra9vabkin921l581k6br498")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)))
    (home-page "http://sourceforge.net/projects/lazy-regex")
    (synopsis "Replaces/Enhances Text.Regex")
    (description
     "One module layer over <//hackage.haskell.org/package/regex-posix regex-posix> to replace \"Text.Regex\"")
    (license license:bsd-3)))

haskell-8.6-regex-compat

(define-public haskell-8.6-repa
  (package
    (name "haskell-8.6-repa")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://repa.ouroborus.net")
    (synopsis "High performance, regular, shape polymorphic parallel arrays.")
    (description
     "Repa provides high performance, regular, multi-dimensional, shape polymorphic
parallel arrays. All numeric data is stored unboxed. Functions written with
the Repa combinators are automatically parallel provided you supply
+RTS -Nwhatever on the command line when running the program.")
    (license license:bsd-3)))

haskell-8.6-repa

(define-public haskell-8.6-safe
  (package
    (name "haskell-8.6-safe")
    (version "0.3.18")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/safe/safe-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1v8gxjlq5wz5adyrd8i3dax5hcxrqq0i54m85zpfwfzqibi5nxyp"))))
    (properties `((upstream-name . "safe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zr1di94nbvs6848g1ng6azl7nwm7454kjig2c7gcf9sp4q7z8ba")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
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

haskell-8.6-safe

(define-public haskell-8.6-securemem
  (package
    (name "haskell-8.6-securemem")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)))
    (home-page "https://github.com/vincenthz/hs-securemem")
    (synopsis
     "abstraction to an auto scrubbing and const time eq, memory chunk.")
    (description
     "SecureMem is similar to ByteString, except that it provides a memory chunk that
will be auto-scrubbed after it run out of scope.")
    (license license:bsd-3)))

haskell-8.6-securemem

(define-public haskell-8.6-simple-vec3
  (package
    (name "haskell-8.6-simple-vec3")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-vec3/simple-vec3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vw03xlnf8hj6rlcgpblg3swcbvqj4qp04zdv3a9j2a47j780qhh"))))
    (properties `((upstream-name . "simple-vec3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/dzhus/simple-vec3#readme")
    (synopsis "Three-dimensional vectors of doubles with basic operations")
    (description
     "Simple three-dimensional vectors of doubles with basic vector and matrix operations, supporting \"Data.Vector.Unboxed\" and \"Data.Vector.Storable\".")
    (license license:bsd-3)))

haskell-8.6-simple-vec3

(define-public haskell-8.6-split
  (package
    (name "haskell-8.6-split")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
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

haskell-8.6-split

(define-public haskell-8.6-tagsoup
  (package
    (name "haskell-8.6-tagsoup")
    (version "0.14.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tagsoup/tagsoup-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1m9sx6gr9y9yxvkmcap8xsks8cnhznvma1mrfl39zljkv005azms"))))
    (properties `((upstream-name . "tagsoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
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

haskell-8.6-tagsoup

(define-public haskell-8.6-test-framework
  (package
    (name "haskell-8.6-test-framework")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hostname)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-posix)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (home-page "http://haskell.github.io/test-framework/")
    (synopsis
     "Framework for running and organising tests, with HUnit and QuickCheck support")
    (description
     "Allows tests such as QuickCheck properties and HUnit test cases to be assembled into test groups, run in
parallel (but reported in deterministic order, to aid diff interpretation) and filtered and controlled by
command line options. All of this comes with colored test output, progress reporting and test statistics output.")
    (license license:bsd-3)))

haskell-8.6-test-framework

(define-public haskell-8.6-testing-feat
  (package
    (name "haskell-8.6-testing-feat")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-size-based)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-testing-type-modifiers)))
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

haskell-8.6-testing-feat

(define-public haskell-8.6-th-expand-syns
  (package
    (name "haskell-8.6-th-expand-syns")
    (version "0.4.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-expand-syns/th-expand-syns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p4wfyycan8zsp9wi7npx36qwbfsbcgdyxi3ii51scf69dkrx42y"))))
    (properties `((upstream-name . "th-expand-syns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "https://github.com/DanielSchuessler/th-expand-syns")
    (synopsis "Expands type synonyms in Template Haskell ASTs")
    (description "Expands type synonyms in Template Haskell ASTs.")
    (license license:bsd-3)))

haskell-8.6-th-expand-syns

(define-public haskell-8.6-th-extras
  (package
    (name "haskell-8.6-th-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)))
    (home-page "https://github.com/mokus0/th-extras")
    (synopsis "A grab bag of functions for use with Template Haskell")
    (description
     "A grab bag of functions for use with Template Haskell.

This is basically the place I put all my ugly CPP hacks to support
the ever-changing interface of the template haskell system by
providing high-level operations and making sure they work on as many
versions of Template Haskell as I can.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-th-extras

(define-public haskell-8.6-th-lift-instances
  (package
    (name "haskell-8.6-th-lift-instances")
    (version "0.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-lift-instances/th-lift-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r1b4jnvcj64wp4hfccwkl4a70n1p1q7qzyx6ax7cmd8k961jz78"))))
    (properties `((upstream-name . "th-lift-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0ac5mkpa502lrvbp3x1vh1gmq5wzdpfsi36qad12ap5h2szmnsad")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-th-lift)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/bennofs/th-lift-instances/")
    (synopsis "Lift instances for template-haskell for common data types.")
    (description
     "Most data types in haskell platform do not have Lift instances.
This package provides orphan instances for containers, text, bytestring and vector.
It also acts as a compat instances, definining instances not existing
in @@template-haskell@@

Note that <https://hackage.haskell.org/package/th-lift th-lift> package provides
Template Haskell based derivation of @@Lift@@ instances (when you cannot use @@DeriveLift@@ extension),
and <https://hackage.haskell.org/package/th-orphans th-orphans> package provides instances for TH datatypes.")
    (license license:bsd-3)))

haskell-8.6-th-lift-instances

(define-public haskell-8.6-universe-base
  (package
    (name "haskell-8.6-universe-base")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-base/universe-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a6yyvrzkz7jnjz4lyp8aw0r5hci1nx8c06v3dicgfqs3frk1v8x"))))
    (properties `((upstream-name . "universe-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0601hqv5h2274i11j1ai2yqb7zk2fkqkiqlpwnq5awbgdkwb10i8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "A class for finite and recursively enumerable types.")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them.

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This is slim package definiting only the type-classes and instances
for types in GHC boot libraries.
For more instances check @@universe-instances-*@@ packages.")
    (license license:bsd-3)))

haskell-8.6-universe-base

(define-public haskell-8.6-utility-ht
  (package
    (name "haskell-8.6-utility-ht")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)))
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

haskell-8.6-utility-ht

