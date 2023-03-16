;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage003)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.8))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.8-ChasingBottoms
  (package
    (name "haskell-8.8-ChasingBottoms")
    (version "1.3.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ChasingBottoms/ChasingBottoms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1acsmvdwsgry0i0qhmz0img71gq97wikmn9zgbqppl4n8a1d7bvh"))))
    (properties `((upstream-name . "ChasingBottoms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
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

haskell-8.8-ChasingBottoms

(define-public haskell-8.8-FenwickTree
  (package
    (name "haskell-8.8-FenwickTree")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://github.com/mgajda/FenwickTree")
    (synopsis "Data structure for fast query and update of cumulative sums")
    (description
     "Fenwick trees are a O(log N) data structure for updating cumulative sums.
This implementation comes with an operation to find a least element for
which real-valued cumulative sum reaches certain value, and allows for
storage of arbitrary information in the nodes.")
    (license license:bsd-3)))

haskell-8.8-FenwickTree

(define-public haskell-8.8-HCodecs
  (package
    (name "haskell-8.8-HCodecs")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HCodecs/HCodecs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gbspig721viwncsfg9m4qc9jbl9rz93ra74d5b1zw9pw7rhy5ji"))))
    (properties `((upstream-name . "HCodecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
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

haskell-8.8-HCodecs

(define-public haskell-8.8-HDBC
  (package
    (name "haskell-8.8-HDBC")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-convertible)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-old-time)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "https://github.com/hdbc/hdbc")
    (synopsis "Haskell Database Connectivity")
    (description
     "HDBC provides an abstraction layer between Haskell programs and SQL
relational databases. This lets you write database code once, in
Haskell, and have it work with any number of backend SQL databases
(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)")
    (license license:bsd-3)))

haskell-8.8-HDBC

(define-public haskell-8.8-HStringTemplate
  (package
    (name "haskell-8.8-HStringTemplate")
    (version "0.8.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HStringTemplate/HStringTemplate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03kbmyh0713j3qhhrl7jqbmsvyq1q82h2yxq45cc9rs55sma8kjg"))))
    (properties `((upstream-name . "HStringTemplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "082d1lm6q1jb7rrl20jz0y4ca1qf87ihbq3v6mji9ibacl6adjaq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://hackage.haskell.org/package/HStringTemplate")
    (synopsis "StringTemplate implementation in Haskell.")
    (description "A port of the Java library by Terrence Parr.")
    (license license:bsd-3)))

haskell-8.8-HStringTemplate

(define-public haskell-8.8-HsOpenSSL-x509-system
  (package
    (name "haskell-8.8-HsOpenSSL-x509-system")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL-x509-system/HsOpenSSL-x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15mp70bqg1lzp971bzp6wym3bwzvxb76hzbgckygbfa722xyymhr"))))
    (properties `((upstream-name . "HsOpenSSL-x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-HsOpenSSL)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/redneb/HsOpenSSL-x509-system")
    (synopsis "Use the system's native CA certificate store with HsOpenSSL")
    (description
     "A cross-platform library that tries to find a (reasonable) CA certificate
bundle that can be used with @@HsOpenSSL@@ to verify the certificates of
remote peers.

This package is for @@HsOpenSSL@@ what @@x509-system@@ is for the @@tls@@ package.
Additionally, it borrows some ideas from @@x509-system@@.")
    (license license:bsd-3)))

haskell-8.8-HsOpenSSL-x509-system

(define-public haskell-8.8-IntervalMap
  (package
    (name "haskell-8.8-IntervalMap")
    (version "0.6.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/IntervalMap/IntervalMap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03smzhwk1zf5na544b0azp49j4gvafqsih9ggwf6yng38yhixwld"))))
    (properties `((upstream-name . "IntervalMap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "http://www.chr-breitkopf.de/comp/IntervalMap")
    (synopsis "Containers for intervals, with efficient search.")
    (description
     "Ordered containers of intervals, with efficient search
for all keys containing a point or overlapping an interval.
See the example code on the home page for a quick introduction.")
    (license license:bsd-3)))

haskell-8.8-IntervalMap

(define-public haskell-8.8-Ranged-sets
  (package
    (name "haskell-8.8-Ranged-sets")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://github.com/PaulJohnson/Ranged-sets")
    (synopsis "Ranged sets for Haskell")
    (description
     "A ranged set is an ordered list of ranges.  This allows sets such as all reals x such that:

> (0.25 < x <= 0.75 or 1.4 <= x < 2.3 or 4.5 < x)

Alternatively you can have all strings s such that:

>    (\"F\" <= s < \"G\")")
    (license license:bsd-3)))

haskell-8.8-Ranged-sets

(define-public haskell-8.8-ascii-th
  (package
    (name "haskell-8.8-ascii-th")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-th/ascii-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dmr2g4kx14qad62awk4pv3izx5gm8bmzvs03gn3xrbzssjb8pvc"))))
    (properties `((upstream-name . "ascii-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ascii-char)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ascii-superset)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Template Haskell support for ASCII")
    (description
     "This package defines Template Haskell support for ASCII, including quasi-quoters for expressing ASCII strings.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-ascii-th

(define-public haskell-8.8-attoparsec-binary
  (package
    (name "haskell-8.8-attoparsec-binary")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-binary/attoparsec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02vswxsgayw50xli7mbacsjmk1diifzkfgnyfn9ck5mk41dl9rh5"))))
    (properties `((upstream-name . "attoparsec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)))
    (home-page "https://hackage.haskell.org/package/attoparsec-binary")
    (synopsis "Binary processing extensions to Attoparsec.")
    (description
     "This package adds a collection of helper functions to make
the task dealing with binary data of varying endianness from within an
Attoparsec parser easier.")
    (license license:bsd-3)))

haskell-8.8-attoparsec-binary

(define-public haskell-8.8-attoparsec-expr
  (package
    (name "haskell-8.8-attoparsec-expr")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-expr/attoparsec-expr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z25pc3rq98ysk92jclr90n35982a566sxri51yh1s9c24vd8k4d"))))
    (properties `((upstream-name . "attoparsec-expr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cpgzd24fvrpsly113ck8rhrc33pfw8qhfpk4wn85qj95763faqb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)))
    (home-page "https://hackage.haskell.org/package/attoparsec-expr")
    (synopsis "Port of parsec's expression parser to attoparsec.")
    (description "Port of parsec's expression parser to attoparsec.")
    (license license:bsd-3)))

haskell-8.8-attoparsec-expr

(define-public haskell-8.8-blas-ffi
  (package
    (name "haskell-8.8-blas-ffi")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blas-ffi/blas-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zmw1x37ayssplj8w01ivfyh2jjg906c389cjah4hpn5dpb7p9w5"))))
    (properties `((upstream-name . "blas-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-netlib-ffi)
                  (@ (gnu packages maths) openblas)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://hub.darcs.net/thielema/blas-ffi/")
    (synopsis "Auto-generated interface to Fortran BLAS")
    (description
     "BLAS is a package for efficient basic linear algebra operations.
The reference implementation is written in FORTRAN.

This is an automatically generated low-level interface.
We provide bindings to functions of all variants
for @@Float@@, @@Double@@, @@Complex Float@@ and @@Complex Double@@.
We do not use TemplateHaskell nor HSC nor CHS,
but instead Haskell 98 code
generated by the custom @@lapack-ffi-tools@@ package.")
    (license license:bsd-3)))

haskell-8.8-blas-ffi

(define-public haskell-8.8-boolean-like
  (package
    (name "haskell-8.8-boolean-like")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boolean-like/boolean-like-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f2qjqjz13w6gq80qymq57917k5aknhxbx4lzpnn30frlqhpp93c"))))
    (properties `((upstream-name . "boolean-like") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/Shou/boolean-like")
    (synopsis "Logical combinatory operations dealing with datatypes
representing booleans by their constructors.")
    (description
     "Boolean-like logical combinatory operations under typeclasses
Andlike, Orlike, and Xorlike and a typeclass Falsifier for datatypes with
unary false-like values (e.g. Nothing, []).")
    (license license:bsd-3)))

haskell-8.8-boolean-like

(define-public haskell-8.8-bytestring-to-vector
  (package
    (name "haskell-8.8-bytestring-to-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteorder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
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

haskell-8.8-bytestring-to-vector

(define-public haskell-8.8-carray
  (package
    (name "haskell-8.8-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ix-shapable)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "https://hackage.haskell.org/package/carray")
    (synopsis "A C-compatible array library.")
    (description
     "A C-compatible array library.

Provides both an immutable and mutable (in the IO monad) interface.
Includes utilities for multi-dimensional arrays, slicing and norms.
Memory is 16-byte aligned by default to enable use of vector instructions.")
    (license license:bsd-3)))

haskell-8.8-carray

(define-public haskell-8.8-cases
  (package
    (name "haskell-8.8-cases")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cases/cases-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14mn0cjbnx4jlm5gqkprim5jfc39ffzj2xzv4vvzi2yq3pwcycv0"))))
    (properties `((upstream-name . "cases") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-loch-th)))
    (home-page "https://github.com/nikita-volkov/cases ")
    (synopsis "A converter for spinal, snake and camel cases")
    (description
     "A parser-based converter library for spinal, snake and camel cases.")
    (license license:expat)))

haskell-8.8-cases

(define-public haskell-8.8-cassava
  (package
    (name "haskell-8.8-cassava")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cassava/cassava-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01h1zrdqb313cjd4rqm1107azzx4czqi018c2djf66a5i7ajl3dk"))))
    (properties `((upstream-name . "cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring--lt-0_10_4")
       #:cabal-revision
       ("9" "087489f6wx9gcr107xnw7pbmnwh9rkdqqk2sky3g43k87j2aqhbj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Only)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-text-short)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/haskell-hvr/cassava")
    (synopsis "A CSV parsing and encoding library")
    (description
     "@@cassava@@ is a library for parsing and encoding [RFC 4180](https://tools.ietf.org/html/rfc4180)
compliant [comma-separated values (CSV)](https://en.wikipedia.org/wiki/Comma-separated_values) data,
which is a textual line-oriented format commonly used for exchanging tabular data.

@@cassava@@'s API includes support for

- Index-based record-conversion
- Name-based record-conversion
- Typeclass directed conversion of fields and records
- Built-in field-conversion instances for standard types
- Customizable record-conversion instance derivation via GHC generics
- Low-level [bytestring](https://hackage.haskell.org/package/bytestring) builders (see \"Data.Csv.Builder\")
- Incremental decoding and encoding API (see \"Data.Csv.Incremental\")
- Streaming API for constant-space decoding (see \"Data.Csv.Streaming\")

Moreover, this library is designed to be easy to use; for instance, here's a
very simple example of encoding CSV data:

>>> Data.Csv.encode [(\"John\",27),(\"Jane\",28)]
\"John,27\\r\\nJane,28\\r\\n\"

Please refer to the documentation in \"Data.Csv\" and the included [README](#readme) for more usage examples.")
    (license license:bsd-3)))

haskell-8.8-cassava

(define-public haskell-8.8-cereal-vector
  (package
    (name "haskell-8.8-cereal-vector")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-vector/cereal-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0czrb4l1n73cfxxlzbcqfa34qa3gw0m5w5mlz0rawylyqfk8a1pz"))))
    (properties `((upstream-name . "cereal-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/acfoltzer/cereal-vector")
    (synopsis "Serialize instances for Data.Vector types.")
    (description "")
    (license license:bsd-3)))

haskell-8.8-cereal-vector

(define-public haskell-8.8-config-ini
  (package
    (name "haskell-8.8-config-ini")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/config-ini/config-ini-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dfm4xb1sd713rcqzplzdgw68fyhj24i6lj8j3q8kldpmkl98lbf"))))
    (properties `((upstream-name . "config-ini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-enable-doctests")
       #:cabal-revision
       ("2" "0iwraaa0y1b3xdsg760j1wpylkqshky0k2djcg0k4s97lrwqpbcz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/aisamanra/config-ini")
    (synopsis "A library for simple INI-based configuration files.")
    (description
     "The @@config-ini@@ library is a set of small monadic languages
for writing simple configuration languages with convenient,
human-readable error messages.

> parseConfig :: IniParser (Text, Int, Bool)
> parseConfig = section \"NETWORK\" $ do
>   user <- field        \"user\"
>   port <- fieldOf      \"port\" number
>   enc  <- fieldFlagDef \"encryption\" True
>   return (user, port, enc)")
    (license license:bsd-3)))

haskell-8.8-config-ini

(define-public haskell-8.8-configurator
  (package
    (name "haskell-8.8-configurator")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator/configurator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d1iq1knwiq6ia5g64rw5hqm6dakz912qj13r89737rfcxmrkfbf"))))
    (properties `((upstream-name . "configurator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://github.com/bos/configurator")
    (synopsis "Configuration management")
    (description
     "A configuration management library for programs and daemons.

Features include:

* Automatic, dynamic reloading in response to modifications to
configuration files.

* A simple, but flexible, configuration language, supporting several
of the most commonly needed types of data, along with
interpolation of strings from the configuration or the system
environment (e.g. @@$(HOME)@@).

* Subscription-based notification of changes to configuration
properties.

* An @@import@@ directive allows the configuration of a complex
application to be split across several smaller files, or common
configuration data to be shared across several applications.

For details of the configuration file format, see
<http://hackage.haskell.org/packages/archive/configurator/latest/doc/html/Data-Configurator.html>.")
    (license license:bsd-3)))

haskell-8.8-configurator

(define-public haskell-8.8-constraint
  (package
    (name "haskell-8.8-constraint")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-category)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unconstrained)))
    (home-page "https://hackage.haskell.org/package/constraint")
    (synopsis "Reified constraints")
    (description "")
    (license license:bsd-3)))

haskell-8.8-constraint

(define-public haskell-8.8-cpuinfo
  (package
    (name "haskell-8.8-cpuinfo")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cpuinfo/cpuinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mans1i26w3rl1vvf9isn8y6lvmn9dlf2c0znbgjxj605jcy7cyi"))))
    (properties `((upstream-name . "cpuinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)))
    (home-page "https://github.com/TravisWhitaker/cpuinfo")
    (synopsis "Haskell Library for Checking CPU Information")
    (description "Haskell Library for Checking CPU Information")
    (license license:expat)))

haskell-8.8-cpuinfo

(define-public haskell-8.8-cron
  (package
    (name "haskell-8.8-cron")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")
       #:cabal-revision
       ("1" "1xlfpdb7f5ycdn19f3a8c4lzr7w4cv02g6k83rrm4a8xbdda66hg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mtl-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
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

haskell-8.8-cron

(define-public haskell-8.8-css-text
  (package
    (name "haskell-8.8-css-text")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/css-text/css-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ynd9f4hn2sfwqzbsa0y7phmxq8za7jiblpjwx0ry8b372zhgxaz"))))
    (properties `((upstream-name . "css-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)))
    (home-page "https://github.com/yesodweb/css-text.git#readme")
    (synopsis "CSS parser and renderer.")
    (description
     "Please see the README and generated docs at <https://www.stackage.org/package/css-text>")
    (license license:expat)))

haskell-8.8-css-text

(define-public haskell-8.8-data-clist
  (package
    (name "haskell-8.8-data-clist")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://github.com/sw17ch/data-clist")
    (synopsis "Simple functional ring type.")
    (description "Simple functional bidirectional ring type.
Given that the ring terminiology clashes with certain
mathematical branches, we're using the term CList or
CircularList instead.")
    (license license:bsd-3)))

haskell-8.8-data-clist

(define-public haskell-8.8-data-tree-print
  (package
    (name "haskell-8.8-data-tree-print")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
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

haskell-8.8-data-tree-print

(define-public haskell-8.8-dataurl
  (package
    (name "haskell-8.8-dataurl")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)))
    (home-page "http://github.com/agrafix/dataurl#readme")
    (synopsis "Handle data-urls")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.8-dataurl

(define-public haskell-8.8-digits
  (package
    (name "haskell-8.8-digits")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/digits")
    (synopsis "Converts integers to lists of digits and back.")
    (description "Converts integers to lists of digits and back.")
    (license license:bsd-3)))

haskell-8.8-digits

(define-public haskell-8.8-dlist
  (package
    (name "haskell-8.8-dlist")
    (version "0.8.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dlist/dlist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0va9xk8g2iag24x042q3w6z77xdqd91112kh0piq8cwd0qccyabi"))))
    (properties `((upstream-name . "dlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://github.com/spl/dlist")
    (synopsis "Difference lists")
    (description
     "Difference lists are a list-like type supporting O(1) append. This is
particularly useful for efficient logging and pretty printing (e.g. with the
Writer monad), where list append quickly becomes too expensive.")
    (license license:bsd-3)))

haskell-8.8-dlist

(define-public haskell-8.8-doctest
  (package
    (name "haskell-8.8-doctest")
    (version "0.16.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/doctest/doctest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y1l7aa80qkib1z8lsizgg7fpfdmdwhxvi5m255a42jdkjgn5sfg"))))
    (properties `((upstream-name . "doctest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-code-page)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-paths)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "https://github.com/sol/doctest#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "The doctest program checks examples in source code comments.  It is modeled
after doctest for Python (<http://docs.python.org/library/doctest.html>).

Documentation is at <https://github.com/sol/doctest#readme>.")
    (license license:expat)))

haskell-8.8-doctest

(define-public haskell-8.8-dsp
  (package
    (name "haskell-8.8-dsp")
    (version "0.2.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dsp/dsp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "03mhqqnjqjhklmlim6cljq5ik0l4h6lgqffw2i2clqgwj64ky5nf"))))
    (properties `((upstream-name . "dsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "http://www.haskell.org/haskellwiki/DSP")
    (synopsis "Haskell Digital Signal Processing")
    (description
     "Digital Signal Processing, Fourier Transform, Linear Algebra, Interpolation")
    (license license:gpl2)))

haskell-8.8-dsp

(define-public haskell-8.8-ekg-statsd
  (package
    (name "haskell-8.8-ekg-statsd")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ekg-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-statsd")
    (synopsis "Push metrics to statsd")
    (description
     "This library lets you push system metrics to a statsd server.")
    (license license:bsd-3)))

haskell-8.8-ekg-statsd

(define-public haskell-8.8-extensible-effects
  (package
    (name "haskell-8.8-extensible-effects")
    (version "5.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extensible-effects/extensible-effects-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ff0h24ff5m5dnfiazh8sfvmby3sdb2dil7zqxg8qwykjdc1dcy3"))))
    (properties `((upstream-name . "extensible-effects") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-lib-werror" "-f-dump-core")
       #:cabal-revision
       ("1" "1ihcxj58a3ca80zfyxgbzjzgps9izy96vnj7h4sk9wwb9khbxl1f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "https://github.com/suhailshergill/extensible-effects")
    (synopsis "An Alternative to Monad Transformers")
    (description
     "This package introduces datatypes for typeclass-constrained effects,
as an alternative to monad-transformer based (datatype-constrained)
approach of multi-layered effects.
Any help is appreciated!")
    (license license:expat)))

haskell-8.8-extensible-effects

(define-public haskell-8.8-extrapolate
  (package
    (name "haskell-8.8-extrapolate")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extrapolate/extrapolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dhljcsqahpyn3khxjbxc15ih1r6kgqcagr5gbpg1d705ji7y3j0"))))
    (properties `((upstream-name . "extrapolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-express)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-leancheck)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-speculate)))
    (home-page "https://github.com/rudymatela/extrapolate#readme")
    (synopsis "generalize counter-examples of test properties")
    (description
     "Extrapolate is a tool able to provide generalized counter-examples of test
properties where irrelevant sub-expressions are replaces with variables.

For the incorrect property @@\\\\xs -> nub xs == (xs::[Int])@@:

* @@[0,0]@@ is a counter-example;

* @@x:x:_@@ is a generalized counter-example.")
    (license license:bsd-3)))

haskell-8.8-extrapolate

(define-public haskell-8.8-fin
  (package
    (name "haskell-8.8-fin")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fin/fin-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0zwc8x2ilbk1bhsk85brf6g300cx4w2j3602gjh6rv900961gqri"))))
    (properties `((upstream-name . "fin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1x446k44pci81dakzd98vrj6amj10xkb05k7g2qwk0ir1hdj5sfz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-dec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Nat and Fin: peano naturals and finite numbers")
    (description
     "This package provides two simple types, and some tools to work with them.
Also on type level as @@DataKinds@@.

@@
\\-- Peano naturals
data Nat = Z | S Nat

\\-- Finite naturals
data Fin (n :: Nat) where
\\    Z :: Fin ('S n)
\\    S :: Fin n -> Fin ('Nat.S n)
@@

[vec](https://hackage.haskell.org/package/vec) implements length-indexed
(sized) lists using this package for indexes.

The \"Data.Fin.Enum\" module let's work generically with enumerations.

See [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)
by Sam Lindley and Conor McBride for answers to /how/ and /why/.
Read [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)
by Jeremy Gibbons for (not so) different ones.

=== Similar packages

* [finite-typelits](https://hackage.haskell.org/package/finite-typelits)
. Is a great package, but uses @@GHC.TypeLits@@.

* [type-natural](https://hackage.haskell.org/package/type-natural) depends
on @@singletons@@ package. @@fin@@ will try to stay light on the dependencies,
and support as many GHC versions as practical.

* [peano](https://hackage.haskell.org/package/peano) is very incomplete

* [nat](https://hackage.haskell.org/package/nat) as well.

* [PeanoWitnesses](https://hackage.haskell.org/package/PeanoWitnesses)
doesn't use @@DataKinds@@.

* [type-combinators](https://hackage.haskell.org/package/type-combinators)
is big package too.")
    (license license:bsd-3)))

haskell-8.8-fin

(define-public haskell-8.8-fusion-plugin
  (package
    (name "haskell-8.8-fusion-plugin")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fusion-plugin/fusion-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08v43q428s6nw3diqaasdr0c9arrzvzvldcybj8wp2r66aw613ic"))))
    (properties `((upstream-name . "fusion-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fusion-plugin-types)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "https://github.com/composewell/fusion-plugin")
    (synopsis "GHC plugin to make stream fusion more predictable.")
    (description
     "This plugin provides the programmer with a way to annotate certain
types using a 'Fuse' pragma from the
<https://hackage.haskell.org/package/fusion-plugin-types fusion-plugin-types>
package. The programmer would annotate the types that are to be
eliminated by fusion. During the simplifier phase the plugin goes
through the relevant bindings and if one of these types are found
inside a binding then that binding is marked to be inlined
irrespective of the size.

This plugin was primarily motivated by
<https://hackage.haskell.org/package/streamly streamly> but it can
be used in general.")
    (license license:bsd-3)))

haskell-8.8-fusion-plugin

(define-public haskell-8.8-generic-arbitrary
  (package
    (name "haskell-8.8-generic-arbitrary")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/generic-arbitrary")
    (synopsis "Generic implementation for QuickCheck's Arbitrary")
    (description
     "Generic implementations of methods of the 'Arbitrary' class from the
QuickCheck library. The approach taken here can lead to diverging instances
for recursive types but is safe for non-recursive ones and guarantees
flat distribution for constructors of sum-types.")
    (license license:expat)))

haskell-8.8-generic-arbitrary

(define-public haskell-8.8-generic-random
  (package
    (name "haskell-8.8-generic-random")
    (version "1.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-random/generic-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d9w7xcmsb31b95fr9d5jwbsajcl1yi4347dlbw4bybil2vjwd7k"))))
    (properties `((upstream-name . "generic-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0h3nd6kz5brwigbx25gqzry4nr82y0ww3pyh1nx24xrpdpx6s39c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-inspection-testing)))
    (home-page "http://github.com/lysxia/generic-random")
    (synopsis "Generic random generators for QuickCheck")
    (description
     "Derive instances of @@Arbitrary@@ for QuickCheck,
with various options to customize implementations.

For more information

- See the README

- \"Generic.Random.Tutorial\"

- http://blog.poisson.chat/posts/2018-01-05-generic-random-tour.html")
    (license license:expat)))

haskell-8.8-generic-random

(define-public haskell-8.8-ghc-core
  (package
    (name "haskell-8.8-ghc-core")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-colorize-haskell)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-pcre-light)))
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

haskell-8.8-ghc-core

(define-public haskell-8.8-ghc-prof
  (package
    (name "haskell-8.8-ghc-prof")
    (version "1.4.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-prof/ghc-prof-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0js799sf957xlki8f7jgwj803iygi35j4bp4p4hh8gzj4icvcqfz"))))
    (properties `((upstream-name . "ghc-prof") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)))
    (home-page "https://github.com/maoe/ghc-prof")
    (synopsis "Library for parsing GHC time and allocation profiling reports")
    (description
     "ghc-prof is a library for parsing GHC time and allocation profiling reports.")
    (license license:bsd-3)))

haskell-8.8-ghc-prof

(define-public haskell-8.8-haskell-src
  (package
    (name "haskell-8.8-haskell-src")
    (version "1.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src/haskell-src-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cjigvshk4b8wqdk0v0hz9ag1kyjjsmqsy4a1m3n28ac008cg746"))))
    (properties `((upstream-name . "haskell-src") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1qaibp1b1szb3ci5lhsxa3lh7iwyfzr5gjnmb4nypqwjqs05dk2c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "https://hackage.haskell.org/package/haskell-src")
    (synopsis "Support for manipulating Haskell source code")
    (description
     "The @@haskell-src@@ package provides support for manipulating Haskell
source code. The package provides a lexer, parser and
pretty-printer, and a definition of a Haskell abstract syntax tree
(AST). Common uses of this package are to parse or generate
<http://www.haskell.org/onlinereport/ Haskell 98> code")
    (license license:bsd-3)))

haskell-8.8-haskell-src

(define-public haskell-8.8-hostname-validate
  (package
    (name "haskell-8.8-hostname-validate")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hostname-validate/hostname-validate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0my8g4kqf9mz7ii79ff53rwkx3yv9kkn4jbm60q4b7g1rzhb3bvz"))))
    (properties `((upstream-name . "hostname-validate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)))
    (home-page "https://hackage.haskell.org/package/hostname-validate")
    (synopsis "Validate hostnames e.g. localhost or foo.co.uk.")
    (description
     "Validate hostnames e.g. localhost or foo.co.uk. See also RFC 1123, RFC 952, and RFC 1035.")
    (license license:bsd-3)))

haskell-8.8-hostname-validate

(define-public haskell-8.8-hs-bibutils
  (package
    (name "haskell-8.8-hs-bibutils")
    (version "6.10.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hs-bibutils/hs-bibutils-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wnpy1v5rbii2iwlcc9psnww8pkirv9zl21s64cmbi6q7dv15g3n"))))
    (properties `((upstream-name . "hs-bibutils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
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

haskell-8.8-hs-bibutils

(define-public haskell-8.8-hslogger
  (package
    (name "haskell-8.8-hslogger")
    (version "1.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslogger/hslogger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nyar9xcblx5jwks85y8f4jfy9k1h4ss6rvj4mdbiidrq3v688vz"))))
    (properties `((upstream-name . "hslogger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork--gt-3_0_0")
       #:cabal-revision
       ("6" "0xiqjl646kxynsccc2q1q91sch7pfx3274yl2745fsqhpb115df1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-network-bsd)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)))
    (home-page "https://github.com/haskell-hvr/hslogger/wiki")
    (synopsis "Versatile logging framework")
    (description
     "@@hslogger@@ is a logging framework for Haskell, roughly similar
to [Python's logging module](https://docs.python.org/2/library/logging.html).

@@hslogger@@ lets each log message have a priority and source be associated
with it.  The programmer can then define global handlers that route
or filter messages based on the priority and source.  @@hslogger@@ also
has a [Syslog](https://tools.ietf.org/html/rfc5424) handler built in.")
    (license license:bsd-3)))

haskell-8.8-hslogger

(define-public haskell-8.8-hspec-expectations-lifted
  (package
    (name "haskell-8.8-hspec-expectations-lifted")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)))
    (home-page "https://hackage.haskell.org/package/hspec-expectations-lifted")
    (synopsis "A version of hspec-expectations generalized to MonadIO")
    (description "A version of hspec-expectations generalized to MonadIO")
    (license license:expat)))

haskell-8.8-hspec-expectations-lifted

(define-public haskell-8.8-html-entities
  (package
    (name "haskell-8.8-html-entities")
    (version "1.1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entities/html-entities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mjmmnh3mfi0ccl5wi5b65afi66wj5xdvva13qw22naa31ibbsnf"))))
    (properties `((upstream-name . "html-entities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/nikita-volkov/html-entities")
    (synopsis "A codec library for HTML-escaped text and HTML-entities")
    (description
     "This library provides the following APIs for coding and decoding of
HTML-escaped text:

* \\\"attoparsec\\\" parser

* Text decoder

* Encoding text builder")
    (license license:expat)))

haskell-8.8-html-entities

(define-public haskell-8.8-httpd-shed
  (package
    (name "haskell-8.8-httpd-shed")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/httpd-shed/httpd-shed-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19dgdimpzr7pxk7pqvyin6j87gmvnf0rm35gzhmna8qr835wy3sr"))))
    (properties `((upstream-name . "httpd-shed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-fnetwork-uri" "-fnetwork-bsd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-network-bsd)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)))
    (home-page "https://hackage.haskell.org/package/httpd-shed")
    (synopsis "A simple web-server with an interact style API")
    (description
     "This web server promotes a Request to IO Response function
into a local web server. The user can decide how to interpret
the requests, and the library is intended for implementing Ajax APIs.")
    (license license:bsd-3)))

haskell-8.8-httpd-shed

(define-public haskell-8.8-hweblib
  (package
    (name "haskell-8.8-hweblib")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hweblib/hweblib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03dmx5irlsyb3b9zg2r6nz947sslizkn0nlk65ldb5n4m8my33hy"))))
    (properties `((upstream-name . "hweblib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)))
    (home-page "http://github.com/aycanirican/hweblib")
    (synopsis "Haskell Web Library")
    (description
     "The library includes attoparsec based incremental parsers for
rfc2616 (http) and rfc3986 (uri), rfc2045-46 (mime). The package
name will subject to change due to broad range of rfc coverage.")
    (license license:bsd-3)))

haskell-8.8-hweblib

(define-public haskell-8.8-hxt
  (package
    (name "haskell-8.8-hxt")
    (version "9.3.1.18")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hxt/hxt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0836k65px3w9c5h1h2bmzq5a7mp6ajxwvfg3pfr2kbxwkgc0j63j"))))
    (properties `((upstream-name . "hxt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-profile")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hxt-charproperties)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hxt-regex-xmlschema)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-hxt-unicode)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "A collection of tools for processing XML with Haskell.")
    (description
     "The Haskell XML Toolbox bases on the ideas of HaXml and HXML,
but introduces a more general approach for processing XML with Haskell.
The Haskell XML Toolbox uses a generic data model for representing XML documents,
including the DTD subset and the document subset, in Haskell.
It contains a validating XML parser, a HTML parser, namespace support,
an XPath expression evaluator, an XSLT library, a RelaxNG schema validator
and funtions for serialization and deserialization of user defined data.
The library makes extensive use of the arrow approach for processing XML.
Since version 9 the toolbox is partitioned into various (sub-)packages.
This package contains the core functionality,
hxt-curl, hxt-tagsoup, hxt-relaxng, hxt-xpath, hxt-xslt,
hxt-regex-xmlschema contain the extensions.
hxt-unicode contains encoding and decoding functions,
hxt-charproperties char properties for unicode and XML.

Changes from 9.3.1.15: Bug in quoting PI instructions in showXmlTrees fixed

Changes from 9.3.1.14: For ghc-7.10 network-uri is automatically selected

Changes from 9.3.1.13: ghc-7.10 compatibility

Changes from 9.3.1.12: Bug when unpickling an empty attribute value removed

Changes from 9.3.1.11: Bug fix in haddock comments

Changes from 9.3.1.10: Bug in DTD validation, space and time leak in delta removed

Changes from 9.3.1.9: lower bound of mtl dependency lowered to 2.0.1

Changes from 9.3.1.8: Bug in hread removed

Changes from 9.3.1.7: Foldable and Traversable instances for NTree added
Control.Except used instead of deprecated Control.Error

Changes from 9.3.1.6: canonicalize added in hread and hreadDoc

Changes from 9.3.1.4: conditionally (no default)
dependency from networt changed to network-uri with flag \"network-uri\"

Changes from 9.3.1.3: warnings from ghc-7.8.1 removed

Changes from 9.3.1.2: https as protocol added

Changes from 9.3.1.1: new parser xreadDoc

Changes from 9.3.1.0: in readString all input decoding switched off

Changes from 9.3.0.1: lower bound for network set to be >= 2.4

Changes from 9.3.0: upper bound for network set to be < 2.4
(URI signatures changed in 2.4)

Changes from 9.2.2: XMLSchema validation integrated

Changes from 9.2.1: user defined mime type handlers added

Changes from 9.2.0: New warnings from ghc-7.4 removed")
    (license license:expat)))

haskell-8.8-hxt

(define-public haskell-8.8-irc
  (package
    (name "haskell-8.8-irc")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/irc/irc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1q9p2qwfy9rsfyaja4x3gjr8ql2ka2ja5qv56b062bdkvzafl5iq"))))
    (properties `((upstream-name . "irc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)))
    (home-page "https://hackage.haskell.org/package/irc")
    (synopsis "A small library for parsing IRC messages.")
    (description "A set of combinators and types for parsing IRC messages.")
    (license license:bsd-3)))

haskell-8.8-irc

(define-public haskell-8.8-kdt
  (package
    (name "haskell-8.8-kdt")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kdt/kdt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "16lz8zwv964izdbrdm8b2g8p1qdb4yv4f7qpfdi4c0fbq2d8y3xw"))))
    (properties `((upstream-name . "kdt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-deepseq-generics)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-heap)))
    (home-page "https://github.com/giogadi/kdt")
    (synopsis
     "Fast and flexible k-d trees for various types of point queries.")
    (description
     "This package includes static and dynamic versions of k-d trees,
as well as \\\"Map\\\" variants that store data at each point in the
k-d tree structure. Supports nearest neighbor,
k nearest neighbors, points within a given radius, and points
within a given range.
To learn to use this package, start with the documentation for
the \"Data.KdTree.Static\" module.")
    (license license:expat)))

haskell-8.8-kdt

(define-public haskell-8.8-language-c
  (package
    (name "haskell-8.8-language-c")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-alex)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "http://visq.github.io/language-c/")
    (synopsis "Analysis and generation of C code")
    (description
     "Language C is a haskell library for the analysis and generation of C code.
It features a complete, well tested parser and pretty printer for all of C99 and a large
set of C11 and clang/GNU extensions.")
    (license license:bsd-3)))

haskell-8.8-language-c

(define-public haskell-8.8-language-protobuf
  (package
    (name "haskell-8.8-language-protobuf")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-protobuf/language-protobuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wxihyf320xsqi114dbl2cwylkc261d5wgd7migb1lh23gxnhhz2"))))
    (properties `((upstream-name . "language-protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)))
    (home-page "https://hackage.haskell.org/package/language-protobuf")
    (synopsis "Language definition and parser for Protocol Buffers.")
    (description
     "Language definition and parser for Protocol Buffers files, according to <https://developers.google.com/protocol-buffers/docs/reference/proto3-spec>.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-language-protobuf

(define-public haskell-8.8-lapack-ffi
  (package
    (name "haskell-8.8-lapack-ffi")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-ffi/lapack-ffi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11759avf0kzkqy4s24kn556j93l10x28njpg6h14y915pdl35dyl"))))
    (properties `((upstream-name . "lapack-ffi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-netlib-ffi)
                  (@ (gnu packages maths) lapack)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://hub.darcs.net/thielema/lapack-ffi/")
    (synopsis "Auto-generated interface to Fortran LAPACK")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.

This is an automatically generated low-level wrapper.
We provide bindings to functions of all variants
for @@Float@@, @@Double@@, @@Complex Float@@ and @@Complex Double@@.
We do not use TemplateHaskell nor HSC nor CHS,
but instead Haskell 98 code
generated by the custom @@lapack-ffi-tools@@ package.")
    (license license:bsd-3)))

haskell-8.8-lapack-ffi

(define-public haskell-8.8-leapseconds-announced
  (package
    (name "haskell-8.8-leapseconds-announced")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://github.com/bjornbm/leapseconds-announced")
    (synopsis "Leap seconds announced at library release time.")
    (description
     "Provides an easy to use static 'Data.Time.Clock.TAI.LeapSecondTable'
with the leap seconds announced at library release time.")
    (license license:bsd-3)))

haskell-8.8-leapseconds-announced

(define-public haskell-8.8-lifted-base
  (package
    (name "haskell-8.8-lifted-base")
    (version "0.2.3.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lifted-base/lifted-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i8p8d3rkdh21bhgjjh32vd7qqjr7jq7p59qds0aw2kmargsjd61"))))
    (properties `((upstream-name . "lifted-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "https://github.com/basvandijk/lifted-base")
    (synopsis "lifted IO operations from the base library")
    (description
     "@@lifted-base@@ exports IO operations from the base library lifted to
any instance of 'MonadBase' or 'MonadBaseControl'.

Note that not all modules from @@base@@ are converted yet. If
you need a lifted version of a function from @@base@@, just
ask me to add it or send me a patch.

The package includes a copy of the @@monad-peel@@ testsuite written
by Anders Kaseorg The tests can be performed using @@cabal test@@.")
    (license license:bsd-3)))

haskell-8.8-lifted-base

(define-public haskell-8.8-loopbreaker
  (package
    (name "haskell-8.8-loopbreaker")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/loopbreaker/loopbreaker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ixy3l0vw4sn5vyqn05mc68sdfab51vxjwvas8ismmg9j6w1mn0q"))))
    (properties `((upstream-name . "loopbreaker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "https://github.com/polysemy-research/loopbreaker#readme")
    (synopsis "inline self-recursive definitions")
    (description "Please see the README file on Github for more info")
    (license license:bsd-3)))

haskell-8.8-loopbreaker

(define-public haskell-8.8-makefile
  (package
    (name "haskell-8.8-makefile")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/makefile/makefile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01swnw8fp2cx5z5xim9apia3yw48six61mhf6p3g0gp99w4i4ypd"))))
    (properties `((upstream-name . "makefile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)))
    (home-page "http://github.com/nmattia/mask")
    (synopsis "Simple Makefile parser and generator")
    (description
     "This package provides a few @@Attoparser@@ parsers and convenience functions
for parsing and generating Makefiles.
The datatypes used for describing Makefiles are located in 'Data.Makefile'.
The parsers and parsing functions are located in 'Data.Makefile.Parse'.
The generating and encoding functions are located in 'Data.Makefile.Render'.
To parse a Makefile in the current folder, simply run 'parseMakefile'. To
parse a Makefile located at @@path@@, run 'parseAsMakefile' @@path@@. To parse a
Makefile from a Text @@txt@@, run 'parseMakefileContents txt`.
To encode a @@Makefile@@, run 'encodeMakefile'.")
    (license license:expat)))

haskell-8.8-makefile

(define-public haskell-8.8-median-stream
  (package
    (name "haskell-8.8-median-stream")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-heap)))
    (home-page "https://github.com/caneroj1/median-stream#readme")
    (synopsis "Constant-time queries for the median of a stream of numeric
data.")
    (description "Uses the two-heap approach to support O(lg n) insertions
and O(1) queries for the median.")
    (license license:bsd-3)))

haskell-8.8-median-stream

(define-public haskell-8.8-microspec
  (package
    (name "haskell-8.8-microspec")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
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

haskell-8.8-microspec

(define-public haskell-8.8-monad-extras
  (package
    (name "haskell-8.8-monad-extras")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-extras/monad-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b2gr2iy8vqw71blbigmgdxnzjw6jv09n38np0k65lcp3b2xfcyz"))))
    (properties `((upstream-name . "monad-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "http://github.com/jwiegley/monad-extras")
    (synopsis "Extra utility functions for working with monads")
    (description "")
    (license license:bsd-3)))

haskell-8.8-monad-extras

(define-public haskell-8.8-monad-journal
  (package
    (name "haskell-8.8-monad-journal")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-journal/monad-journal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b05l40832ck44m52izj2lxw0ghi0ip4isb4377vb0b010hc42p2"))))
    (properties `((upstream-name . "monad-journal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (home-page "http://github.com/phaazon/monad-journal")
    (synopsis "Pure logger typeclass and monad transformer")
    (description "This package provides a typeclass for logging in
pure code, or more generally, in any kind of
context. You can do whatever you want with
logs, especially get them, clear them or even
sink them through 'IO' if you're logging in
@@(MonadIO m) => m@@.")
    (license license:bsd-3)))

haskell-8.8-monad-journal

(define-public haskell-8.8-mwc-random
  (package
    (name "haskell-8.8-mwc-random")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-random/mwc-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18pg24sw3b79b32cwx8q01q4k0lm34mwr3l6cdkchl8alvd0wdq0"))))
    (properties `((upstream-name . "mwc-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-math-functions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/bos/mwc-random")
    (synopsis "Fast, high quality pseudo random number generation")
    (description
     "This package contains code for generating high quality random
numbers that follow either a uniform or normal distribution.  The
generated numbers are suitable for use in statistical applications.

The uniform PRNG uses Marsaglia's MWC256 (also known as MWC8222)
multiply-with-carry generator, which has a period of 2^8222 and
fares well in tests of randomness.  It is also extremely fast,
between 2 and 3 times faster than the Mersenne Twister.

Compared to the mersenne-random package, this package has a more
convenient API, is faster, and supports more statistical
distributions.")
    (license license:bsd-3)))

haskell-8.8-mwc-random

(define-public haskell-8.8-mysql-simple
  (package
    (name "haskell-8.8-mysql-simple")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mysql-simple/mysql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cbwdsxysz6a4182fgkkd869hm44v834lqv2igwsfbx6v0p44g5h"))))
    (properties `((upstream-name . "mysql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-blaze-textual)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mysql)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-pcre-light)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/paul-rouse/mysql-simple")
    (synopsis "A mid-level MySQL client library.")
    (description
     "A mid-level client library for the MySQL database, intended to be
fast and easy to use.

/Important licensing note/: This library is BSD-licensed under the
terms of the MySQL FOSS License Exception
<http://www.mysql.com/about/legal/licensing/foss-exception/>.

Since this library links against the GPL-licensed @@mysqlclient@@
library, a non-open-source application that uses it /may/ be
subject to the terms of the GPL.")
    (license license:bsd-3)))

haskell-8.8-mysql-simple

(define-public haskell-8.8-neat-interpolation
  (package
    (name "haskell-8.8-neat-interpolation")
    (version "0.3.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/neat-interpolation/neat-interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10k5x47i84nycl54p61l8v1bpvi7mw663vnj8nn1qjpn03anz8z2"))))
    (properties `((upstream-name . "neat-interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)))
    (home-page "https://github.com/nikita-volkov/neat-interpolation")
    (synopsis "A quasiquoter for neat and simple multiline text interpolation")
    (description
     "A quasiquoter for producing Text values with support for
a simple interpolation of input values.
It removes the excessive indentation from the input and
accurately manages the indentation of all lines of the interpolated variables.")
    (license license:expat)))

haskell-8.8-neat-interpolation

(define-public haskell-8.8-optparse-applicative
  (package
    (name "haskell-8.8-optparse-applicative")
    (version "0.15.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-applicative/optparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ws6y3b3f6hsgv0ff0yp6lw4hba1rps4dnvry3yllng0s5gngcsd"))))
    (properties `((upstream-name . "optparse-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0zmhqkd96v2z1ilhqdkd9z4jgsnsxb8yi2479ind8m5zm9363zr9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
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

haskell-8.8-optparse-applicative

(define-public haskell-8.8-pcre-utils
  (package
    (name "haskell-8.8-pcre-utils")
    (version "0.1.8.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-utils/pcre-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x3db1hab0qwpw9m4564x86qibzg8jl6cj2k88jii3ihcg580ahz"))))
    (properties `((upstream-name . "pcre-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/bartavelle/pcre-utils")
    (synopsis "Perl-like substitute and split for PCRE regexps.")
    (description
     "This package introduces split and replace like functions using PCRE regexps.")
    (license license:bsd-3)))

haskell-8.8-pcre-utils

(define-public haskell-8.8-pem
  (package
    (name "haskell-8.8-pem")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pem/pem-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1m7qjsxrd8m88cvkqmr8kscril500j2a9y0iynvksjyjkhdlq33p"))))
    (properties `((upstream-name . "pem") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-basement)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)))
    (home-page "http://github.com/vincenthz/hs-pem")
    (synopsis "Privacy Enhanced Mail (PEM) format reader and writer.")
    (description
     "Privacy Enhanced Mail (PEM) format reader and writer. long description")
    (license license:bsd-3)))

haskell-8.8-pem

(define-public haskell-8.8-pg-harness-client
  (package
    (name "haskell-8.8-pg-harness-client")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-harness-client/pg-harness-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06gqra5q20sc13slh5vz95bi1vq0ai43qfh7npcyv258zwv40qnh"))))
    (properties `((upstream-name . "pg-harness-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-HTTP)))
    (home-page "https://github.com/BardurArantsson/pg-harness")
    (synopsis "Client library for pg-harness-server")
    (description
     "Client library for <https://hackage.haskell.org/package/pg-harness-server pg-harness-server>
for conveniently creating temporary PostgreSQL databases for use in tests.")
    (license license:bsd-2)))

haskell-8.8-pg-harness-client

(define-public haskell-8.8-pqueue
  (package
    (name "haskell-8.8-pqueue")
    (version "1.4.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pqueue/pqueue-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sz7hlnfd86hbwrgqxczmsjsl1ki0ryi9dgzscxlsgjkdgcdia2p"))))
    (properties `((upstream-name . "pqueue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/pqueue")
    (synopsis "Reliable, persistent, fast priority queues.")
    (description
     "A fast, reliable priority queue implementation based on a binomial heap.")
    (license license:bsd-3)))

haskell-8.8-pqueue

(define-public haskell-8.8-quickcheck-io
  (package
    (name "haskell-8.8-quickcheck-io")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://github.com/hspec/quickcheck-io#readme")
    (synopsis "Use HUnit assertions as QuickCheck properties")
    (description "This package provides an orphan instance that allows you to
use HUnit assertions as QuickCheck properties.")
    (license license:expat)))

haskell-8.8-quickcheck-io

(define-public haskell-8.8-quickcheck-simple
  (package
    (name "haskell-8.8-quickcheck-simple")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://hackage.haskell.org/package/quickcheck-simple")
    (synopsis "Test properties and default-mains for QuickCheck")
    (description
     "This package contains definitions of test properties and default-mains
using QuickCheck library.")
    (license license:bsd-3)))

haskell-8.8-quickcheck-simple

(define-public haskell-8.8-quickcheck-special
  (package
    (name "haskell-8.8-quickcheck-special")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-special/quickcheck-special-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dhwgy1jwglp4y3nbysr1i182415aibqlcsrvwxn2c5x162qjwwm"))))
    (properties `((upstream-name . "quickcheck-special") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1whwmij115vw0qwkzlkc4z4yhj7iwwqjhf5aaxn5np0gh2gzihb3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-special-values)))
    (home-page "https://github.com/minad/quickcheck-special#readme")
    (synopsis
     "Edge cases and special values for QuickCheck Arbitrary instances")
    (description
     "The standard Arbitrary instances of QuickCheck don't generate special values. This is fixed by this package which provides the newtype Special with an Arbitrary instance. The special values are given by the SpecialValues typeclass.")
    (license license:expat)))

haskell-8.8-quickcheck-special

(define-public haskell-8.8-quickcheck-text
  (package
    (name "haskell-8.8-quickcheck-text")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
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

haskell-8.8-quickcheck-text

(define-public haskell-8.8-quickcheck-transformer
  (package
    (name "haskell-8.8-quickcheck-transformer")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-transformer/quickcheck-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0al0p44qi9j829zcnv43kqf4pxaxr6fb48vkq1an15hdk6svx11j"))))
    (properties `((upstream-name . "quickcheck-transformer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (home-page "http://hub.darcs.net/thielema/quickcheck-transformer/")
    (synopsis "A GenT monad transformer for QuickCheck library.")
    (description "A fork of QuickCheck-GenT that works for older GHC versions
and uses the Test module folder like QuickCheck.")
    (license license:expat)))

haskell-8.8-quickcheck-transformer

(define-public haskell-8.8-quickcheck-unicode
  (package
    (name "haskell-8.8-quickcheck-unicode")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
    (home-page "https://github.com/bos/quickcheck-unicode")
    (synopsis "Generator and shrink functions for testing
Unicode-related software.")
    (description "Generator and shrink functions for testing
Unicode-related software.")
    (license license:bsd-2)))

haskell-8.8-quickcheck-unicode

(define-public haskell-8.8-regex-with-pcre
  (package
    (name "haskell-8.8-regex-with-pcre")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-with-pcre/regex-with-pcre-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18wq136snwk0i8l1fv878lmwh3rlvz6k68skrda70xr0i132wpax"))))
    (properties `((upstream-name . "regex-with-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-regex)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-regex-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
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

haskell-8.8-regex-with-pcre

(define-public haskell-8.8-replace-megaparsec
  (package
    (name "haskell-8.8-replace-megaparsec")
    (version "1.4.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/replace-megaparsec/replace-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nlbs01ghm6gllkc7chv06hdrwlb94cipcwcx84wzasdqdzvcdl1"))))
    (properties `((upstream-name . "replace-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)))
    (home-page "https://github.com/jamesdbrock/replace-megaparsec")
    (synopsis
     "Find, replace, and split string patterns with Megaparsec parsers (instead of regex)")
    (description
     "Find text patterns, replace the patterns, split on the patterns. Use
Megaparsec monadic parsers instead of regular expressions for pattern matching.")
    (license license:bsd-2)))

haskell-8.8-replace-megaparsec

(define-public haskell-8.8-resource-pool
  (package
    (name "haskell-8.8-resource-pool")
    (version "0.2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/resource-pool/resource-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04mw8b9djb14zp4rdi6h7mc3zizh597ffiinfbr4m0m8psifw9w6"))))
    (properties `((upstream-name . "resource-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/bos/pool")
    (synopsis "A high-performance striped resource pooling implementation")
    (description "A high-performance striped pooling abstraction for managing
flexibly-sized collections of resources such as database
connections.")
    (license license:bsd-3)))

haskell-8.8-resource-pool

(define-public haskell-8.8-safe
  (package
    (name "haskell-8.8-safe")
    (version "0.3.19")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/safe/safe-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18pp6cn9np9jgs01x9mac6wk41k34g86fx5ibfarbapqr1138115"))))
    (properties `((upstream-name . "safe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
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

haskell-8.8-safe

(define-public haskell-8.8-securemem
  (package
    (name "haskell-8.8-securemem")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)))
    (home-page "https://github.com/vincenthz/hs-securemem")
    (synopsis
     "abstraction to an auto scrubbing and const time eq, memory chunk.")
    (description
     "SecureMem is similar to ByteString, except that it provides a memory chunk that
will be auto-scrubbed after it run out of scope.")
    (license license:bsd-3)))

haskell-8.8-securemem

(define-public haskell-8.8-simple-vec3
  (package
    (name "haskell-8.8-simple-vec3")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-vec3/simple-vec3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m1aa480gnw9bxzpx4hg6pa896lmc56cdfg33fvfkngvcfbfb13m"))))
    (properties `((upstream-name . "simple-vec3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/dzhus/simple-vec3#readme")
    (synopsis "Three-dimensional vectors of doubles with basic operations")
    (description
     "Simple three-dimensional vectors of doubles with basic vector and matrix operations, supporting \"Data.Vector.Unboxed\" and \"Data.Vector.Storable\".")
    (license license:bsd-3)))

haskell-8.8-simple-vec3

(define-public haskell-8.8-split
  (package
    (name "haskell-8.8-split")
    (version "0.2.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/split/split-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ahzdjcxw5wywr3w4msspia99k6fkckddam1m5506h4z9h8fa7r7"))))
    (properties `((upstream-name . "split") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0jwaw5plby8bmjmhshrr5813avqmq4zih2lqpi8cprvfh0z9rpx6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
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

haskell-8.8-split

(define-public haskell-8.8-tagged-binary
  (package
    (name "haskell-8.8-tagged-binary")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagged-binary/tagged-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nv41x5ijw5wdb2nyfgxyspbgmk9qisp32fs1izzp3c3jl4smkvj"))))
    (properties `((upstream-name . "tagged-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-pureMD5)))
    (home-page "https://hackage.haskell.org/package/tagged-binary")
    (synopsis "Provides tools for serializing data tagged with type
information.")
    (description "Very minimal library providing tools for serializing and
decoding data into 'ByteString' tagged with information
about its type, inspired by Cloud Haskell and
distributed-process.

Intended for use by libraries and frameworks in
distributed contexts, such as distributed computation
between native servers and communication between native
servers and ghcjs/various front-ends, for behavior
similar to the polymorphic communication channels of
Cloud Haskell and distributed-process; servers can send
tagged data, and clients can choose to selectively
accept, ignore or queue incoming messages depending on
their types.

For basic encoding, decoding and categorization, only
'Data.Binary.Tagged' should be necessary.
'Data.Binary.Tagged.Internal' is exported in case you
need it.

Quick example:

> > let x = encodeTagged (1 :: Int)
> > decodeTagged x :: Maybe Bool
> Nothing
> > decodeTagged x :: Maybe Int
> Just 1")
    (license license:expat)))

haskell-8.8-tagged-binary

(define-public haskell-8.8-tagsoup
  (package
    (name "haskell-8.8-tagsoup")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
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

haskell-8.8-tagsoup

(define-public haskell-8.8-test-framework
  (package
    (name "haskell-8.8-test-framework")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hostname)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-posix)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)))
    (home-page "http://haskell.github.io/test-framework/")
    (synopsis
     "Framework for running and organising tests, with HUnit and QuickCheck support")
    (description
     "Allows tests such as QuickCheck properties and HUnit test cases to be assembled into test groups, run in
parallel (but reported in deterministic order, to aid diff interpretation) and filtered and controlled by
command line options. All of this comes with colored test output, progress reporting and test statistics output.")
    (license license:bsd-3)))

haskell-8.8-test-framework

(define-public haskell-8.8-testing-feat
  (package
    (name "haskell-8.8-testing-feat")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-size-based)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-testing-type-modifiers)))
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

haskell-8.8-testing-feat

(define-public haskell-8.8-text-printer
  (package
    (name "haskell-8.8-text-printer")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-printer/text-printer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "065m64f5l4yyccb04c7bwax09wk6aafm2v9sl3w8w1asqw7ni9sq"))))
    (properties `((upstream-name . "text-printer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-text-latin1)))
    (home-page "https://github.com/mvv/text-printer")
    (synopsis "Abstract interface for text builders/printers.")
    (description
     "This package provides an interface for injecting text into monoids such as
builders and printers.")
    (license license:bsd-3)))

haskell-8.8-text-printer

(define-public haskell-8.8-th-expand-syns
  (package
    (name "haskell-8.8-th-expand-syns")
    (version "0.4.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-expand-syns/th-expand-syns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dz8bl4yb6sis74knmvqxa21y9yws9l8gafzsi0chaqx15b5asxj"))))
    (properties `((upstream-name . "th-expand-syns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "https://github.com/DanielSchuessler/th-expand-syns")
    (synopsis "Expands type synonyms in Template Haskell ASTs")
    (description "Expands type synonyms in Template Haskell ASTs.")
    (license license:bsd-3)))

haskell-8.8-th-expand-syns

(define-public haskell-8.8-th-extras
  (package
    (name "haskell-8.8-th-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)))
    (home-page "https://github.com/mokus0/th-extras")
    (synopsis "A grab bag of functions for use with Template Haskell")
    (description
     "A grab bag of functions for use with Template Haskell.

This is basically the place I put all my ugly CPP hacks to support
the ever-changing interface of the template haskell system by
providing high-level operations and making sure they work on as many
versions of Template Haskell as I can.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-th-extras

(define-public haskell-8.8-th-lift-instances
  (package
    (name "haskell-8.8-th-lift-instances")
    (version "0.1.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-lift-instances/th-lift-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09nv1zsffvv6zfz1fjzcqrla3lc350qr4i4xf7wgvzp049sprrdy"))))
    (properties `((upstream-name . "th-lift-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "070xcm6q6g0zrn7hmvzkblg9q93sjg3jmn103r7alj66lysp0xmd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-th-lift)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/bennofs/th-lift-instances/")
    (synopsis "Lift instances for template-haskell for common data types.")
    (description
     "Most data types in the haskell platform do not have Lift instances.
This package provides orphan instances for containers, text, bytestring and vector.
It also provides compat instances for older versions of @@template-haskell@@

Note that <https://hackage.haskell.org/package/th-lift th-lift> package provides
Template Haskell based derivation of @@Lift@@ instances (when you cannot use @@DeriveLift@@ extension),
and <https://hackage.haskell.org/package/th-orphans th-orphans> package provides instances for TH datatypes.")
    (license license:bsd-3)))

haskell-8.8-th-lift-instances

(define-public haskell-8.8-uniplate
  (package
    (name "haskell-8.8-uniplate")
    (version "1.6.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniplate/uniplate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lis5qcb5j7yzd1cqjaqpb6bmkyjfb7l4nhk3ykmcma4513cjxz7"))))
    (properties `((upstream-name . "uniplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rvvzmi43gbrww0f17dzchm3g61zvm97arrfa5raljqb1mbibdy8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/ndmitchell/uniplate#readme")
    (synopsis "Help writing simple, concise and fast generic operations.")
    (description
     "Uniplate is library for writing simple and concise generic operations.
Uniplate has similar goals to the original Scrap Your Boilerplate work,
but is substantially simpler and faster.

To get started with Uniplate you should import one of the three following
modules:

* \"Data.Generics.Uniplate.Data\" - to quickly start writing generic functions.
Most users should start by importing this module.

* \"Data.Generics.Uniplate.Direct\" - a replacement for \"Data.Generics.Uniplate.Data\"
with substantially higher performance (around 5 times), but requires writing
instance declarations.

* \"Data.Generics.Uniplate.Operations\" - definitions of all the operations defined
by Uniplate. Both the above two modules re-export this module.

In addition, some users may want to make use of the following modules:

* \"Data.Generics.Uniplate.Zipper\" - a zipper built on top of Uniplate instances.

* \"Data.Generics.SYB\" - users transitioning from the Scrap Your Boilerplate library.

* \"Data.Generics.Compos\" - users transitioning from the Compos library.

* \"Data.Generics.Uniplate.DataOnly\" - users making use of both @@Data@@ and @@Direct@@
to avoid getting instance conflicts.")
    (license license:bsd-3)))

haskell-8.8-uniplate

(define-public haskell-8.8-utility-ht
  (package
    (name "haskell-8.8-utility-ht")
    (version "0.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/utility-ht/utility-ht-" version
                    ".tar.gz"))
              (sha256
               (base32
                "148gdz6pbl1i5qjvjrq5576pg58anmh18xha37n9fncjy36pjp44"))))
    (properties `((upstream-name . "utility-ht") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)))
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

haskell-8.8-utility-ht

(define-public haskell-8.8-wcwidth
  (package
    (name "haskell-8.8-wcwidth")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wcwidth/wcwidth-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n1fq7v64b59ajf5g50iqj9sa34wm7s2j3viay0kxpmvlcv8gipz"))))
    (properties `((upstream-name . "wcwidth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplit-base" "-f-cli")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-setlocale)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (home-page "http://github.com/solidsnack/wcwidth/")
    (synopsis "Native wcwidth.")
    (description
     "Bindings for your system's native wcwidth and a command line tool to examine
the widths assigned by it. The command line tool can compile a width table
to Haskell code that assigns widths to the Char type.")
    (license license:bsd-3)))

haskell-8.8-wcwidth

(define-public haskell-8.8-websockets
  (package
    (name "haskell-8.8-websockets")
    (version "0.12.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/websockets/websockets-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b92a41l2var1ccg350mh2bjmb2plb6d79yzvmlwkd41nifmmi44"))))
    (properties `((upstream-name . "websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("1" "0dq527wrpcn5kkh223zf0h4my9m3d3k2m981vi1l0a001ri8hn54")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-SHA)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://jaspervdj.be/websockets")
    (synopsis
     "A sensible and clean way to write WebSocket-capable servers in Haskell.")
    (description
     "This library allows you to write WebSocket-capable servers.

An example server:
<https://github.com/jaspervdj/websockets/blob/master/example/server.lhs>

An example client:
<https://github.com/jaspervdj/websockets/blob/master/example/client.hs>

See also:

* The specification of the WebSocket protocol:
<http://www.whatwg.org/specs/web-socket-protocol/>

* The JavaScript API for dealing with WebSockets:
<http://www.w3.org/TR/websockets/>")
    (license license:bsd-3)))

haskell-8.8-websockets

