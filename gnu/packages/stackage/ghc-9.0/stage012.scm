;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage012)
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
(define-public haskell-9.0-ChasingBottoms
  (package
    (name "haskell-9.0-ChasingBottoms")
    (version "1.3.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ChasingBottoms/ChasingBottoms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vy9yq07p95qiap1pcp2bbbn1mqvp3spyrswpdz0qfcn06656650"))))
    (properties `((upstream-name . "ChasingBottoms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
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

haskell-9.0-ChasingBottoms

(define-public haskell-9.0-HStringTemplate
  (package
    (name "haskell-9.0-HStringTemplate")
    (version "0.8.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HStringTemplate/HStringTemplate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n8ci0kzjcgnqh4dfpqwlh7mnlzyiqiqc6hc0zr65p0balbg8zbi"))))
    (properties `((upstream-name . "HStringTemplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0316jr5npssxxxj85x74vasvm2ib09mjv2jy7abwjs7cfqbpnr8w")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (home-page "https://hackage.haskell.org/package/HStringTemplate")
    (synopsis "StringTemplate implementation in Haskell.")
    (description "A port of the Java library by Terrence Parr.")
    (license license:bsd-3)))

haskell-9.0-HStringTemplate

(define-public haskell-9.0-STMonadTrans
  (package
    (name "haskell-9.0-STMonadTrans")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/STMonadTrans/STMonadTrans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rvhh0hhwz601ibpzisry7xf3j61r5sxfgp47imaa37i5bvrlynb"))))
    (properties `((upstream-name . "STMonadTrans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04svg3fwiir2zd5da44pklvw51bs2qm8pqmsnicyav0g0wvhbxbc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/josefs/STMonadTrans")
    (synopsis "A monad transformer version of the ST monad")
    (description
     "A monad transformer version of the ST monad.

Warning! This monad transformer should not be used with monads that
can contain multiple answers, like the list monad. The reason is that
the state token will be duplicated across the different answers and
this causes Bad Things to happen (such as loss of referential
transparency). Safe monads include the monads State, Reader, Writer,
Maybe and combinations of their corresponding monad transformers.")
    (license license:bsd-3)))

haskell-9.0-STMonadTrans

(define-public haskell-9.0-barbies
  (package
    (name "haskell-9.0-barbies")
    (version "2.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/barbies/barbies-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gfzb52k3py1qnr2b6gshdg7c9aj1j9y2xsdhz86n01ybv81yg51"))))
    (properties `((upstream-name . "barbies") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jcpetruzza/barbies#readme")
    (synopsis "Classes for working with types that can change clothes.")
    (description
     "Types that are parametric on a functor are like Barbies that have an outfit for each role. This package provides the basic abstractions to work with them comfortably.")
    (license license:bsd-3)))

haskell-9.0-barbies

(define-public haskell-9.0-blaze-markup
  (package
    (name "haskell-9.0-blaze-markup")
    (version "0.8.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-markup/blaze-markup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jd30wg5yz0a97b36zwqg4hv8faifza1n2gys3l1p3fwf9l3zz23"))))
    (properties `((upstream-name . "blaze-markup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1hn694kk615prqdn7bfzl0wvbw8bksxk4cxwmx8yhwpl0cq3fiwa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast markup combinator library for Haskell")
    (description
     "Core modules of a blazingly fast markup combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-9.0-blaze-markup

(define-public haskell-9.0-brotli
  (package
    (name "haskell-9.0-brotli")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/brotli/brotli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fp8vhqzl6i1vvb4fw4zya6cgkzmj0yaaw94jdf2kggm3gn8zwfc"))))
    (properties `((upstream-name . "brotli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages compression) brotli)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-hvr/brotli")
    (synopsis "Brotli (RFC7932) compression and decompression")
    (description
     "<http://brotli.org Brotli> (<https://tools.ietf.org/html/rfc7932 RFC7932>) is a generic-purpose lossless compression algorithm suitable for <https://en.wikipedia.org/wiki/HTTP_compression HTTP compression> that compresses data using a combination of a modern variant of the LZ77 algorithm, Huffman coding and 2nd order context modeling.

This package provides a pure interface for compressing and
decompressing Brotli streams of data represented as lazy @@ByteString@@s. A
monadic incremental interface is provided as well. This package
relies on Google's C implementation.

The following packages are based on this package and provide
API support for popular streaming frameworks:

* </package/brotli-streams brotli-streams> (for </package/io-streams io-streams>)

* </package/pipes-brotli pipes-brotli> (for </package/pipes pipes>)

* </package/brotli-conduit brotli-conduit> (for </package/conduit conduit>)
")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-brotli

(define-public haskell-9.0-bytestring-conversion
  (package
    (name "haskell-9.0-bytestring-conversion")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-conversion/bytestring-conversion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ls1jqf4r2hk0mcxmlviw6vgs0cn1db99w2fggsg6x39pi31rk8c"))))
    (properties `((upstream-name . "bytestring-conversion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-double-conversion)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/bytestring-conversion")
    (synopsis "Type-classes to convert values to and from ByteString.")
    (description
     "Defines the type-classes 'ToByteString' and 'FromByteString'
to convert values to and from textual 'ByteString' encodings.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-bytestring-conversion

(define-public haskell-9.0-carray
  (package
    (name "haskell-9.0-carray")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ix-shapable)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
    (home-page "https://hackage.haskell.org/package/carray")
    (synopsis "A C-compatible array library.")
    (description
     "A C-compatible array library.

Provides both an immutable and mutable (in the IO monad) interface.
Includes utilities for multi-dimensional arrays, slicing and norms.
Memory is 16-byte aligned by default to enable use of vector instructions.")
    (license license:bsd-3)))

haskell-9.0-carray

(define-public haskell-9.0-compiler-warnings
  (package
    (name "haskell-9.0-compiler-warnings")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yi-editor/compiler-warnings#readme")
    (synopsis "Parser for common compiler warning formats")
    (description "")
    (license license:bsd-2)))

haskell-9.0-compiler-warnings

(define-public haskell-9.0-cookie
  (package
    (name "haskell-9.0-cookie")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cookie/cookie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10rmdasb7mypbwxdj2mhr810vqhkakpik7hyd8fvj60hng8r8zvh"))))
    (properties `((upstream-name . "cookie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/snoyberg/cookie")
    (synopsis "HTTP cookie parsing and rendering")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/cookie>.")
    (license license:expat)))

haskell-9.0-cookie

(define-public haskell-9.0-csp
  (package
    (name "haskell-9.0-csp")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/csp/csp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "15ilx5ycvh12c71wza2d25cp4llvncxc9csmmisjcxwny5gpz1q8"))))
    (properties `((upstream-name . "csp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-nondeterminism)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/csp")
    (synopsis "Discrete constraint satisfaction problem (CSP) solver.")
    (description "Constraint satisfaction problem (CSP) solvers")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-csp

(define-public haskell-9.0-data-bword
  (package
    (name "haskell-9.0-data-bword")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-bword/data-bword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dcngqc0igqs68lplqzfg5rl2nj1iy4555g7swsxd8n7svkq0j6n"))))
    (properties `((upstream-name . "data-bword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-bword")
    (synopsis "Extra operations on binary words of fixed length")
    (description
     "This package provides extra (vs. 'Data.Bits') operations on binary words of
fixed length.")
    (license license:bsd-3)))

haskell-9.0-data-bword

(define-public haskell-9.0-data-tree-print
  (package
    (name "haskell-9.0-data-tree-print")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
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

haskell-9.0-data-tree-print

(define-public haskell-9.0-df1
  (package
    (name "haskell-9.0-df1")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/df1/df1-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0adsmfjfcxsg55y4pahw408b82bi7phyzq48vrf80p84nyxmmpsi"))))
    (properties `((upstream-name . "df1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis
     "Type, render and parse the df1 hierarchical structured log format")
    (description
     "Type, render and parse logs in /df1/ format, a hierarchical structured
log format that is easy for humans and fast for computers.")
    (license license:bsd-3)))

haskell-9.0-df1

(define-public haskell-9.0-diagrams-solve
  (package
    (name "haskell-9.0-diagrams-solve")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-solve/diagrams-solve-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09qqwcvbvd3a0j5fnp40dbzw0i3py9c7kgizj2aawajwbyjvpd17"))))
    (properties `((upstream-name . "diagrams-solve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dp61igq17l7hvhs3167skdi1vmlm773qrrmsqmj08951l4cgv0h")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://diagrams.github.io")
    (synopsis "Pure Haskell solver routines used by diagrams")
    (description "Pure Haskell solver routines used by the diagrams
project.  Currently includes finding real roots
of low-degree (n < 5) polynomials, and solving
tridiagonal and cyclic tridiagonal linear
systems.")
    (license license:bsd-3)))

haskell-9.0-diagrams-solve

(define-public haskell-9.0-direct-sqlite
  (package
    (name "haskell-9.0-direct-sqlite")
    (version "2.3.27")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/direct-sqlite/direct-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bnq7gkia713w1kc6zhwclxsyxlg100i93qbrz59z18j0xwds683"))))
    (properties `((upstream-name . "direct-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-systemlib" "-ffulltextsearch" "-furifilenames" "-fhaveusleep" "-fjson1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/IreneKnapp/direct-sqlite")
    (synopsis "Low-level binding to SQLite3.  Includes UTF8 and BLOB support.")
    (description
     "This package is not very different from the other SQLite3 bindings out
there, but it fixes a few deficiencies I was finding.  As compared to
bindings-sqlite3, it is slightly higher-level, in that it supports
marshalling of data values to and from the database.  In particular,
it supports strings encoded as UTF8, and BLOBs represented as
ByteStrings.")
    (license license:bsd-3)))

haskell-9.0-direct-sqlite

(define-public haskell-9.0-doctest
  (package
    (name "haskell-9.0-doctest")
    (version "0.18.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/doctest/doctest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0c48dpxa8i3q5xh2shd2p2xxhrsy7wdil6dg4mayr3lkk1dlwbfp"))))
    (properties `((upstream-name . "doctest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-code-page)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-paths)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
    (home-page "https://github.com/sol/doctest#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "The doctest program checks examples in source code comments.  It is modeled
after doctest for Python (<https://docs.python.org/3/library/doctest.html>).

Documentation is at <https://github.com/sol/doctest#readme>.")
    (license license:expat)))

haskell-9.0-doctest

(define-public haskell-9.0-drifter
  (package
    (name "haskell-9.0-drifter")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/drifter/drifter-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "079y7yzws7lghgazkc7qprz43q4bv0qjnxh7rmcrrwfs5acm1x34"))))
    (properties `((upstream-name . "drifter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fgl)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AndrewRademacher/drifter")
    (synopsis "Simple schema management for arbitrary databases.")
    (description
     "Simple support for migrating database schemas, which allows
haskell functions to be run as a part of the migration. Note
that this library isn't meant to be used directly, but rather
as a base library for a specific driver. For an example of a
functioning driver, you should check out <https://hackage.haskell.org/package/drifter-postgresql drifter-postgresql>.")
    (license license:expat)))

haskell-9.0-drifter

(define-public haskell-9.0-exact-pi
  (package
    (name "haskell-9.0-exact-pi")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exact-pi/exact-pi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xmc3vlzfccrn5szglnxx13akxw2xacgl40kqh0kiw82d58x47a4"))))
    (properties `((upstream-name . "exact-pi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-numtype-dk)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dmcclean/exact-pi/")
    (synopsis "Exact rational multiples of pi (and integer powers of pi)")
    (description
     "Provides an exact representation for rational multiples of pi alongside an approximate representation of all reals.
Useful for storing and computing with conversion factors between physical units.")
    (license license:expat)))

haskell-9.0-exact-pi

(define-public haskell-9.0-extended-reals
  (package
    (name "haskell-9.0-extended-reals")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/msakai/extended-reals/")
    (synopsis "Extension of real numbers with positive/negative infinities")
    (description
     "Extension of real numbers with positive/negative infinities (±∞).
It is useful for describing various limiting behaviors in mathematics.")
    (license license:bsd-3)))

haskell-9.0-extended-reals

(define-public haskell-9.0-fusion-plugin
  (package
    (name "haskell-9.0-fusion-plugin")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fusion-plugin/fusion-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xzy7ml8wh63mza4am9rdd12qqn9r6ba6c0i9bv7bxp0nlzy7d6l"))))
    (properties `((upstream-name . "fusion-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-fusion-plugin-types)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
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
<https://streamly.composewell.com streamly> but it can
be used in general.")
    (license license:asl2.0)))

haskell-9.0-fusion-plugin

(define-public haskell-9.0-ghc-source-gen
  (package
    (name "haskell-9.0-ghc-source-gen")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-source-gen/ghc-source-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lhqsklibgiv51hs8mnrkn784rc5sxf5z8cfv8hf9jqlny50720f"))))
    (properties `((upstream-name . "ghc-source-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-paths)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/ghc-source-gen#readme")
    (synopsis "Constructs Haskell syntax trees for the GHC API.")
    (description
     "@@ghc-source-gen@@ is a library for generating Haskell source code.
It uses the <https://hackage.haskell.org/package/ghc ghc> library
to support recent language extensions, and provides a simple, consistent
interface across several major versions of GHC.

To get started, take a look at the \"GHC.SourceGen\" module.

For more information, please see the <https://github.com/google/ghc-source-gen README>.")
    (license license:bsd-3)))

haskell-9.0-ghc-source-gen

(define-public haskell-9.0-ghc-typelits-knownnat
  (package
    (name "haskell-9.0-ghc-typelits-knownnat")
    (version "0.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-knownnat/ghc-typelits-knownnat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b7rhnij3i74baqm7ban92sfdiscbjvrypfi6wwipkc8graii467"))))
    (properties `((upstream-name . "ghc-typelits-knownnat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://clash-lang.org/")
    (synopsis "Derive KnownNat constraints from other KnownNat constraints")
    (description
     "A type checker plugin for GHC that can derive \\\"complex\\\" @@KnownNat@@
constraints from other simple/variable @@KnownNat@@ constraints. i.e. without
this plugin, you must have both a @@KnownNat n@@ and a @@KnownNat (n+2)@@
constraint in the type signature of the following function:

@@
f :: forall n . (KnownNat n, KnownNat (n+2)) => Proxy n -> Integer
f _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))
@@

Using the plugin you can omit the @@KnownNat (n+2)@@ constraint:

@@
f :: forall n . KnownNat n => Proxy n -> Integer
f _ = natVal (Proxy :: Proxy n) + natVal (Proxy :: Proxy (n+2))
@@

The plugin can derive @@KnownNat@@ constraints for types consisting of:

* Type variables, when there is a corresponding @@KnownNat@@ constraint

* Type-level naturals

* Applications of the arithmetic expression: +,-,*,^

* Type functions, when there is either:

1. a matching given @@KnownNat@@ constraint; or

2. a corresponding @@KnownNat\\<N\\>@@ instance for the type function

To use the plugin, add the

@@
OPTIONS_GHC -fplugin GHC.TypeLits.KnownNat.Solver
@@

Pragma to the header of your file.")
    (license license:bsd-2)))

haskell-9.0-ghc-typelits-knownnat

(define-public haskell-9.0-gloss-algorithms
  (package
    (name "haskell-9.0-gloss-algorithms")
    (version "1.13.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-algorithms/gloss-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "083rq6p5m0im380c6x0jc3hi59hk94z1nyj08hmvmb3vcszjxra5"))))
    (properties `((upstream-name . "gloss-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-gloss)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Data structures and algorithms for working with 2D graphics.")
    (description
     "Data structures and algorithms for working with 2D graphics.")
    (license license:expat)))

haskell-9.0-gloss-algorithms

(define-public haskell-9.0-gloss-raster
  (package
    (name "haskell-9.0-gloss-raster")
    (version "1.13.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gloss-raster/gloss-raster-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sn1pnkpl76q6lf6w9ji7fh1fcb89vaz2jz9slz7fih2ksrnwlsa"))))
    (properties `((upstream-name . "gloss-raster") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-llvm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-gloss)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-gloss-rendering)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-repa)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Parallel rendering of raster images.")
    (description "Parallel rendering of raster images.")
    (license license:expat)))

haskell-9.0-gloss-raster

(define-public haskell-9.0-gnuplot
  (package
    (name "haskell-9.0-gnuplot")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gnuplot/gnuplot-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1glahh3si5bpazsklnpwxx4h4ivgb4wyngc032797zq1496fhhm3"))))
    (properties `((upstream-name . "gnuplot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-executepipe" "-f-executeshell")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-accessor)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-accessor-transformers)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Gnuplot")
    (synopsis "2D and 3D plots using gnuplot")
    (description
     "This is a wrapper to gnuplot
which lets you create 2D and 3D plots.

Start a simple session with @@cabal repl@@.
If not already loaded, call @@:module Graphics.Gnuplot.Simple@@
in order to load \"Graphics.Gnuplot.Simple\"
which is ready for use in GHCi.
It does not address all fancy gnuplot features
in order to stay simple.
For more sophisticated plots,
especially batch generated graphics,
I recommend \"Graphics.Gnuplot.Advanced\".
This module contains also an overview
of the hierarchy of objects.

Examples for using this interface can be found in the \"Demo\" module.
In order to compile this and install an example data file,
use the Cabal flag @@buildExamples@@:

> $ cabal install -fbuildExamples gnuplot

With the Cabal flags executePipe and executeShell
you can switch to more convenient
but probably less portable ways
of feeding gnuplot with a script.

Alternative packages: @@plot@@, @@HPlot@@, @@Chart@@, @@textPlot@@, @@easyplot@@")
    (license license:bsd-3)))

haskell-9.0-gnuplot

(define-public haskell-9.0-graphviz
  (package
    (name "haskell-9.0-graphviz")
    (version "2999.20.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphviz/graphviz-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l0zxgb938hh09qirggbaskq79mgj3s081cnr42y5vm1rp1jir2s"))))
    (properties `((upstream-name . "graphviz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test-parsing")
       #:cabal-revision
       ("2" "110yp1h2jrswllnx2ks772g10v9h4vqxc07b33wfaksyim9769bp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fgl)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-polyparse)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-wl-pprint-text)))
    (home-page "https://github.com/ivan-m/graphviz")
    (synopsis "Bindings to Graphviz for graph visualisation.")
    (description
     "This library provides bindings for the Dot language used by the
Graphviz (<http://graphviz.org/>) suite of programs for visualising
graphs, as well as functions to call those programs.

Main features of the graphviz library include:

* Almost complete coverage of all Graphviz attributes and syntax.

* Support for specifying clusters.

* The ability to use a custom node type.

* Functions for running a Graphviz layout tool with all specified
output types.

* The ability to not only generate but also parse Dot code with two
options: strict and liberal (in terms of ordering of statements).

* Functions to convert FGL graphs and other graph-like data structures
to Dot code - including support to group them into clusters - with a
high degree of customisation by specifying which attributes to use
and limited support for the inverse operation.

* Round-trip support for passing an FGL graph through Graphviz to
augment node and edge labels with positional information, etc.")
    (license license:bsd-3)))

haskell-9.0-graphviz

(define-public haskell-9.0-haskell-src
  (package
    (name "haskell-9.0-haskell-src")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src/haskell-src-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1spkhv83hy5v1lxs44l3w53vk8zj7gnx42c40hrkj4fcz6apdiwb"))))
    (properties `((upstream-name . "haskell-src") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dfjzq0sxxcalqxygp2svx4890qx8b4amad0xldwy1f4xrp3lsnb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-happy)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
    (home-page "https://hackage.haskell.org/package/haskell-src")
    (synopsis "Support for manipulating Haskell source code")
    (description
     "The @@haskell-src@@ package provides support for manipulating Haskell
source code. The package provides a lexer, parser and
pretty-printer, and a definition of a Haskell abstract syntax tree
(AST). Common uses of this package are to parse or generate
<http://www.haskell.org/onlinereport/ Haskell 98> code.")
    (license license:bsd-3)))

haskell-9.0-haskell-src

(define-public haskell-9.0-hint
  (package
    (name "haskell-9.0-hint")
    (version "0.9.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hint/hint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1j7jzx8i1rc66xw4c6gf4kjv0a8ma96j25kfz6rzswik4vp5xmky"))))
    (properties `((upstream-name . "hint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-paths)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (home-page "https://github.com/haskell-hint/hint")
    (synopsis "A Haskell interpreter built on top of the GHC API")
    (description
     "This library defines an Interpreter monad. It allows to load Haskell
modules, browse them, type-check and evaluate strings with Haskell
expressions and even coerce them into values. The library is thread-safe
and type-safe (even the coercion of expressions to values).
It is, essentially, a huge subset of the GHC API wrapped in a simpler
API.")
    (license license:bsd-3)))

haskell-9.0-hint

(define-public haskell-9.0-hourglass
  (package
    (name "haskell-9.0-hourglass")
    (version "0.2.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hourglass/hourglass-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jnay5j13vpz6i1rkaj3j0d9v8jfpri499xn3l7wd01f81f5ncs4"))))
    (properties `((upstream-name . "hourglass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-old-locale)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-hourglass")
    (synopsis "simple performant time related library")
    (description
     "Simple time library focusing on simple but powerful and performant API

The backbone of the library are the Timeable and Time type classes.

Each Timeable instances can be converted to type that has a Time instances,
and thus are different representations of current time.")
    (license license:bsd-3)))

haskell-9.0-hourglass

(define-public haskell-9.0-hs-bibutils
  (package
    (name "haskell-9.0-hs-bibutils")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
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

haskell-9.0-hs-bibutils

(define-public haskell-9.0-immortal-queue
  (package
    (name "haskell-9.0-immortal-queue")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/immortal-queue/immortal-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14a0sy4j0b0x2l8j4ajqizjkzrgbicavy3k5xzz349cvy3dq6fz7"))))
    (properties `((upstream-name . "immortal-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-immortal)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://github.com/prikhi/immortal-queue#readme")
    (synopsis "Build a pool of queue-processing worker threads.")
    (description
     "@@immortal-queue@@ is a library for build an asynchronous worker pool that
processes action from a generic queue. You can use any thread-safe datatype
with a push and pop like a @@TQueue@@ or a @@persistent@@ database table.

The worker pool is configured by building an @@ImmortalQueue@@ type, which
describes how to push and pop from the queue as well as how to process
items and handle errors.

For a simple usage example using a TQueue, see the module documentation.
For a more complex example that uses a @@persistent@@ database as a queue,
see
<https://github.com/Southern-Exposure-Seed-Exchange/southernexposure.com/blob/develop/server/src/Workers.hs Southern Exposure's website code>.")
    (license license:bsd-3)))

haskell-9.0-immortal-queue

(define-public haskell-9.0-json
  (package
    (name "haskell-9.0-json")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/json/json-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fjnd2r4gl2hfqx158db3cn3rsyin4ch7rf9scb2hcy90cy6l10c"))))
    (properties `((upstream-name . "json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplit-base" "-fparsec" "-fpretty" "-fgeneric" "-f-mapdict")
       #:cabal-revision
       ("1" "16fp0y95gaibjravzj1hxdkng1cr8zqjqzd14m48kf4jrq3npz6r")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)))
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

haskell-9.0-json

(define-public haskell-9.0-language-java
  (package
    (name "haskell-9.0-language-java")
    (version "0.2.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-java/language-java-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03hrj8hgyjmw2fvvk4ik30fdmbi3hndpkvf1bqcnpzqy5anwh58x"))))
    (properties `((upstream-name . "language-java") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fnbg9b8isyk8dpmggh736mms7a2m65956y1z15wds63imzhs2ik")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-alex)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/language-java")
    (synopsis "Java source manipulation")
    (description
     "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer.")
    (license license:bsd-3)))

haskell-9.0-language-java

(define-public haskell-9.0-lpeg
  (package
    (name "haskell-9.0-lpeg")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lpeg/lpeg-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19vvsvdw8l2zjwdcypnzw12vc9ycix92mkd6g3f6kx1i364z9hg1"))))
    (properties `((upstream-name . "lpeg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-rely-on-shared-lpeg-library")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-lua)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://hslua.org/")
    (synopsis "LPeg – Parsing Expression Grammars For Lua")
    (description "This package contains the C sources of LPeg, as well
as some tiny Haskell helper to load the package.

<http://www.inf.puc-rio.br/~roberto/lpeg/>")
    (license license:expat)))

haskell-9.0-lpeg

(define-public haskell-9.0-lua-arbitrary
  (package
    (name "haskell-9.0-lua-arbitrary")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lua-arbitrary/lua-arbitrary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01g2pkvy7yhcrk8p1d9xzmqv279ldgy9z5aa6xj5msbxrpxvbpma"))))
    (properties `((upstream-name . "lua-arbitrary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-lua)))
    (home-page "https://hslua.org/")
    (synopsis "Arbitrary instances for Lua types.")
    (description "Provides instances for QuickCheck's \\\"Arbitrary\\\"
typeclass.")
    (license license:expat)))

haskell-9.0-lua-arbitrary

(define-public haskell-9.0-lukko
  (package
    (name "haskell-9.0-lukko")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lukko/lukko-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07xb926kixqv5scqdl8w34z42zjzdpbq06f0ha3f3nm3rxhgn3m8"))))
    (properties `((upstream-name . "lukko") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fofd-locking")
       #:cabal-revision
       ("3" "1a6spmbiv3ias40sjrnsxfgr1d5mwg039a2q7113zb7i9n6c1m7g")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-singleton-bool)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (home-page "https://hackage.haskell.org/package/lukko")
    (synopsis "File locking")
    (description
     "This package provides access to platform dependent file locking APIs:

* <https://www.gnu.org/software/libc/manual/html_node/Open-File-Description-Locks.html Open file descriptor locking> on Linux (\"Lukko.OFD\")
* BSD-style @@flock(2)@@ locks on UNIX platforms (\"Lukko.FLock\")
* Windows locking via <https://docs.microsoft.com/en-us/windows/win32/api/fileapi/nf-fileapi-lockfilee LockFileEx> (\"Lukko.Windows\")
* No-op locking, which throws exceptions (\"Lukko.NoOp\")
* \"Lukko\" module exports the best option for the target platform with uniform API.

There are alternative file locking packages:

* \"GHC.IO.Handle.Lock\" in @@base >= 4.10@@ is good enough for most use cases.
However, uses only 'Handle's so these locks cannot be used for intra-process locking.
(You should use e.g. 'MVar' in addition).

* <https://hackage.haskell.org/package/filelock filelock> doesn't support OFD locking.

/Lukko/ means lock in Finnish.

Submodules \"Lukko.OFD\", \"Lukko.Windows\" etc are available based on following conditions.

@@
if os(windows)
\\  cpp-options: -DHAS_WINDOWS_LOCK

elif (os(linux) && flag(ofd-locking))
\\  cpp-options: -DHAS_OFD_LOCKING
\\  cpp-options: -DHAS_FLOCK

elif !(os(solaris) || os(aix))
\\  cpp-options: -DHAS_FLOCK
@@

\"Lukko.FLock\" is available on not (Windows or Solaris or AIX).
\"Lukko.NoOp\" is always available.")
    (license license:gpl2+)))

haskell-9.0-lukko

(define-public haskell-9.0-matrices
  (package
    (name "haskell-9.0-matrices")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/matrices/matrices-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k8x75k1vkalpmcblmfjqy7lq49nr5mznh134h3d0zqz0q5ky0gx"))))
    (properties `((upstream-name . "matrices") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/matrices")
    (synopsis "native matrix based on vector")
    (description "Pure Haskell matrix library, supporting creating, indexing,
and modifying dense/sparse matrices.")
    (license license:bsd-3)))

haskell-9.0-matrices

(define-public haskell-9.0-mpi-hs
  (package
    (name "haskell-9.0-mpi-hs")
    (version "0.7.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mpi-hs/mpi-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1d68py61h09qshzr3lx66cgs2f2kxzdmy3z35hsf96wi9aqz3fr5"))))
    (properties `((upstream-name . "mpi-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-mpich-debian" "-f-mpich-macports" "-f-mpich-ubuntu" "-f-openmpi-debian" "-f-openmpi-macports" "-f-openmpi-ubuntu" "-fsystem-mpi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-monad-loops)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages mpi) mpich)))
    (home-page "https://github.com/eschnett/mpi-hs#readme")
    (synopsis "MPI bindings for Haskell")
    (description
     "MPI (the [Message Passinag Interface](https://www.mpi-forum.org)) is
a widely used standard for distributed-memory programming on HPC
(High Performance Computing) systems. MPI allows exchanging data
(_messages_) between programs running in parallel. There are several
high-quality open source MPI implementations (e.g. MPICH, MVAPICH,
OpenMPI) as well as a variety of closed-source implementations.
These libraries can typically make use of high-bandwidth low-latency
communication hardware such as InfiniBand.

This library @@mpi-hs@@ provides Haskell bindings for MPI. It is based
on ideas taken from
[haskell-mpi](https://github.com/bjpop/haskell-mpi),
[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html)
for C++, and [MPI for
Python](https://mpi4py.readthedocs.io/en/stable/).

@@mpi-hs@@ provides two API levels: A low-level API gives rather
direct access to the actual MPI API, apart from certain \"reasonable\"
mappings from C to Haskell (e.g. output arguments that are in C
stored via a pointer are in Haskell regular return values). A
high-level API simplifies exchanging arbitrary values that can be
serialized.

Note that the automated builds on
[Hackage](http://hackage.haskell.org) will currently always fail
since no system MPI library is present there. However, builds on
[Stackage](https://www.stackage.org) should succeed -- if not, there
is an error in this package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-mpi-hs

(define-public haskell-9.0-parsec-numeric
  (package
    (name "haskell-9.0-parsec-numeric")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AndrewRademacher/parsec-numeric")
    (synopsis "Parsec combinators for parsing Haskell numeric types.")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-parsec-numeric

(define-public haskell-9.0-pqueue
  (package
    (name "haskell-9.0-pqueue")
    (version "1.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pqueue/pqueue-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kl608jw0xz0n4ysw7p3cvlm1s71xrysw8862cddrzbr38bv8jvq"))))
    (properties `((upstream-name . "pqueue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lspitzner/pqueue")
    (synopsis "Reliable, persistent, fast priority queues.")
    (description
     "A fast, reliable priority queue implementation based on a binomial heap.")
    (license license:bsd-3)))

haskell-9.0-pqueue

(define-public haskell-9.0-proto-lens
  (package
    (name "haskell-9.0-proto-lens")
    (version "0.7.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens/proto-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zbkwksmnpc5ivbhckg1kjivn1qbk9pz79vifyiydp90nxjh56fy"))))
    (properties `((upstream-name . "proto-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-lens-family)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "A lens-based implementation of protocol buffers in Haskell.")
    (description
     "The proto-lens library provides an API for protocol buffers using modern Haskell language and library patterns.  Specifically, it provides:

* Composable field accessors via lenses

* Simple field name resolution/overloading via type-level literals

* Type-safe reflection and encoding/decoding of messages via GADTs")
    (license license:bsd-3)))

haskell-9.0-proto-lens

(define-public haskell-9.0-psqueues
  (package
    (name "haskell-9.0-psqueues")
    (version "0.2.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/psqueues/psqueues-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cmz7spfzx7niglmsphnndh0m4b8njkn0fhb9nshbnbq6nx515yh"))))
    (properties `((upstream-name . "psqueues") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/psqueues")
    (synopsis "Pure priority search queues")
    (description
     "The psqueues package provides
<http://en.wikipedia.org/wiki/Priority_queue Priority Search Queues> in
three different flavors.

* @@OrdPSQ k p v@@, which uses the @@Ord k@@ instance to provide fast insertion,
deletion and lookup. This implementation is based on Ralf Hinze's
<http://citeseer.ist.psu.edu/hinze01simple.html A Simple Implementation Technique for Priority Search Queues>.
Hence, it is similar to the
<http://hackage.haskell.org/package/PSQueue PSQueue> library, although it is
considerably faster and provides a slightly different API.

* @@IntPSQ p v@@ is a far more efficient implementation. It fixes the key type
to @@Int@@ and uses a <http://en.wikipedia.org/wiki/Radix_tree radix tree>
(like @@IntMap@@) with an additional min-heap property.

* @@HashPSQ k p v@@ is a fairly straightforward extension of @@IntPSQ@@: it
simply uses the keys' hashes as indices in the @@IntPSQ@@. If there are any
hash collisions, it uses an @@OrdPSQ@@ to resolve those. The performance of
this implementation is comparable to that of @@IntPSQ@@, but it is more widely
applicable since the keys are not restricted to @@Int@@, but rather to any
@@Hashable@@ datatype.

Each of the three implementations provides the same API, so they can be used
interchangeably. The benchmarks show how they perform relative to one
another, and also compared to the other Priority Search Queue
implementations on Hackage:
<http://hackage.haskell.org/package/PSQueue PSQueue>
and
<http://hackage.haskell.org/package/fingertree-psqueue fingertree-psqueue>.

<<http://i.imgur.com/KmbDKR6.png>>

<<http://i.imgur.com/ClT181D.png>>

Typical applications of Priority Search Queues include:

* Caches, and more specifically LRU Caches;

* Schedulers;

* Pathfinding algorithms, such as Dijkstra's and A*.")
    (license license:bsd-3)))

haskell-9.0-psqueues

(define-public haskell-9.0-quickcheck-higherorder
  (package
    (name "haskell-9.0-quickcheck-higherorder")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-higherorder/quickcheck-higherorder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17bnbq6hndlvfv2ryingw181vhv6ab5npkjxkxs0bijv654dca2h"))))
    (properties `((upstream-name . "quickcheck-higherorder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-sample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-test-fun)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Lysxia/quickcheck-higherorder#readme")
    (synopsis "QuickCheck extension for higher-order properties")
    (description
     "Enhancements for property-based testing of higher-order properties.

* Associate types to their representations with the
@@Constructible@@ class.
* @@Testable'@@ class,
variant of @@Testable@@ with an improved instance for @@(->)@@.
* Representation of higher-order functions (via test-fun).
* Testable equality @@TestEq@@.
* Explicit testable type of @@Equation@@.

See also README.")
    (license license:expat)))

haskell-9.0-quickcheck-higherorder

(define-public haskell-9.0-quote-quot
  (package
    (name "haskell-9.0-quote-quot")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quote-quot/quote-quot-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xsd5vs97dwp3wnz862mplakkryi44brr73aqrrv76svkj82bp37"))))
    (properties `((upstream-name . "quote-quot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/quote-quot#readme")
    (synopsis "Divide without division")
    (description
     "Generate routines for integer division, employing arithmetic
and bitwise operations only, which are __2.5x-3.5x faster__
than 'quot'. Divisors must be known in compile-time and be positive.")
    (license license:bsd-3)))

haskell-9.0-quote-quot

(define-public haskell-9.0-random-fu
  (package
    (name "haskell-9.0-random-fu")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-fu/random-fu-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iz4b8742pshzsscy6pq39x4pndvyrydzrn968fzav9b1y6ib7d1"))))
    (properties `((upstream-name . "random-fu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4_2" "-fmtl2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-erf)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-math-functions)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-monad-loops)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-random-shuffle)
                  (@ (gnu packages stackage ghc-9.0 stage002) haskell-9.0-rvar)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-random-fu

(define-public haskell-9.0-rope-utf16-splay
  (package
    (name "haskell-9.0-rope-utf16-splay")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rope-utf16-splay/rope-utf16-splay-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yacy3iqx52nz2ja6fx5di7z3xjzakcmld2l1gixyawfvhavh17p"))))
    (properties `((upstream-name . "rope-utf16-splay") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ollef/rope-utf16-splay")
    (synopsis "Ropes optimised for updating using UTF-16 code units and
row/column pairs.")
    (description "Ropes optimised for updating using UTF-16 code units and
row/column pairs.  This implementation uses splay trees
instead of the usual finger trees. According to my
benchmarks, splay trees are faster in most situations.")
    (license license:bsd-3)))

haskell-9.0-rope-utf16-splay

(define-public haskell-9.0-silently
  (package
    (name "haskell-9.0-silently")
    (version "1.2.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/silently/silently-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wk3yci4r9v0vwyzylj3k07damz17jwc6n6imwqahf4lsapsz7ds"))))
    (properties `((upstream-name . "silently") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-nanospec)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (home-page "https://github.com/hspec/silently")
    (synopsis "Prevent or capture writing to stdout and other handles.")
    (description
     "Prevent or capture writing to stdout, stderr, and other handles.")
    (license license:bsd-3)))

haskell-9.0-silently

(define-public haskell-9.0-smallcheck
  (package
    (name "haskell-9.0-smallcheck")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smallcheck/smallcheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sf87zjlrgjw7q6a0499g2ywx66zvpv6rg6953fjc18fnl8rs7z4"))))
    (properties `((upstream-name . "smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "141lvb58hy94gywchaaf2dbh1dncnj951q5l6xkg1drvm94dvj1b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-logict)))
    (home-page "https://github.com/Bodigrim/smallcheck")
    (synopsis "A property-based testing library")
    (description
     "SmallCheck is a testing library that allows to verify properties
for all test cases up to some depth. The test cases are generated
automatically by SmallCheck.")
    (license license:bsd-3)))

haskell-9.0-smallcheck

(define-public haskell-9.0-socket
  (package
    (name "haskell-9.0-socket")
    (version "0.8.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/socket/socket-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gd0rw6mpzlimvcn3jiw7l0q9h4l3rhfr2n5hhg6k0bkklqp6rbr"))))
    (properties `((upstream-name . "socket") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07n19jbgn6459v13l7x55x8l73d48jrn48dcf4402hnyab1mzhr5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lpeterse/haskell-socket")
    (synopsis "An extensible socket library.")
    (description "This library is a minimal cross-platform interface for
BSD style networking.")
    (license license:expat)))

haskell-9.0-socket

(define-public haskell-9.0-storablevector
  (package
    (name "haskell-9.0-storablevector")
    (version "0.2.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storablevector/storablevector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06fgxbnc5vwmiv7dxywj7ncjhmxv0wjs0bys5hza6mrwn3sw5r2w"))))
    (properties `((upstream-name . "storablevector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fseparatesyb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-negative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unsafe)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Storable_Vector")
    (synopsis
     "Fast, packed, strict storable arrays with a list interface like ByteString")
    (description
     "Fast, packed, strict storable arrays
with a list interface,
a chunky lazy list interface with variable chunk size
and an interface for write access via the @@ST@@ monad.
This is much like @@bytestring@@ and @@binary@@
but can be used for every 'Foreign.Storable.Storable' type.
See also package
<http://hackage.haskell.org/package/vector>
with a similar intention.

We do not provide advanced fusion optimization,
since especially for lazy vectors
this would either be incorrect or not applicable.
However we provide fusion with lazy lists in the package
<http://hackage.haskell.org/package/storablevector-streamfusion>.")
    (license license:bsd-3)))

haskell-9.0-storablevector

(define-public haskell-9.0-structs
  (package
    (name "haskell-9.0-structs")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/structs/structs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wzbhsvix46aans0hdm11pvsigk1lxpdaha2sxslx0ip1xsdg0gk"))))
    (properties `((upstream-name . "structs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vpi14bc8x53dxzcyya39zr287kyfrjxiy5z5lwfkf63dmsrbd28")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/structs/")
    (synopsis
     "Strict GC'd imperative object-oriented programming with cheap pointers.")
    (description
     "This project is an experiment with a small GC'd strict mutable imperative universe with cheap pointers inside of the GHC runtime system.")
    (license license:bsd-3)))

haskell-9.0-structs

(define-public haskell-9.0-tasty-kat
  (package
    (name "haskell-9.0-tasty-kat")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-kat/tasty-kat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14yvlpli6cv6bn3kh8mlfp4x1l6ns4fvmfv6hmj75cvxyzq029d7"))))
    (properties `((upstream-name . "tasty-kat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/tasty-kat")
    (synopsis "Known Answer Tests (KAT) framework for tasty")
    (description
     "Tests running from simple KATs file (different formats/helper supported)")
    (license license:expat)))

haskell-9.0-tasty-kat

(define-public haskell-9.0-text-rope
  (package
    (name "haskell-9.0-text-rope")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-rope/text-rope-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dfn8hjnw38zh9nw7wy2jfyg0acg9jpfhngj65aczb9qxv6yj3hv"))))
    (properties `((upstream-name . "text-rope") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/text-rope")
    (synopsis "Text lines and ropes")
    (description
     "A wrapper around `Text` for fast line/column navigation and logarithmic concatenation.")
    (license license:bsd-3)))

haskell-9.0-text-rope

(define-public haskell-9.0-text-short
  (package
    (name "haskell-9.0-text-short")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-short/text-short-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nid00c1rg5c1z7l9mwk3f2izc2sps2mip2hl30q985dwb6wcpm3"))))
    (properties `((upstream-name . "text-short") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-asserts")
       #:cabal-revision
       ("1" "0gmmwwchy9312kz8kr5jhiamqrnjqxdqg1wkrww4289yfj1p7dzb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/text-short")
    (synopsis "Memory-efficient representation of Unicode text strings")
    (description
     "This package provides the 'ShortText' type which is suitable for keeping many short strings in memory. This is similiar to how 'ShortByteString' relates to 'ByteString'.

The main difference between 'Text' and 'ShortText' is that 'ShortText' uses UTF-8 instead of UTF-16 internally and also doesn't support zero-copy slicing (thereby saving 2 words). Consequently, the memory footprint of a (boxed) 'ShortText' value is 4 words (2 words when unboxed) plus the length of the UTF-8 encoded payload.")
    (license license:bsd-3)))

haskell-9.0-text-short

(define-public haskell-9.0-th-expand-syns
  (package
    (name "haskell-9.0-th-expand-syns")
    (version "0.4.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-expand-syns/th-expand-syns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "044h1hv4b0ihpwr9wndj55fa843cbzqp1difgj9wyy3mw925higm"))))
    (properties `((upstream-name . "th-expand-syns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (home-page "https://github.com/DanielSchuessler/th-expand-syns")
    (synopsis "Expands type synonyms in Template Haskell ASTs")
    (description "Expands type synonyms in Template Haskell ASTs.

As of version @@0.4.9.0@@, this library is a small shim on
top of the @@applySubstitution@@/@@resolveTypeSynonyms@@
functions from @@th-abstraction@@, so you may want to
consider using @@th-abstraction@@ instead.")
    (license license:bsd-3)))

haskell-9.0-th-expand-syns

(define-public haskell-9.0-th-extras
  (package
    (name "haskell-9.0-th-extras")
    (version "0.0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-extras/th-extras-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jkwy2kqdqmq3qmfy76px2pm8idxgs18x1k1dzpsccq21ja27gq2"))))
    (properties `((upstream-name . "th-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (home-page "https://github.com/mokus0/th-extras")
    (synopsis "A grab bag of functions for use with Template Haskell")
    (description
     "A grab bag of functions for use with Template Haskell.

This is basically the place I put all my ugly CPP hacks to support
the ever-changing interface of the template haskell system by
providing high-level operations and making sure they work on as many
versions of Template Haskell as I can.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-th-extras

(define-public haskell-9.0-time-compat
  (package
    (name "haskell-9.0-time-compat")
    (version "1.9.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-compat/time-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "103b3vpn277kkccv6jv54b2wpi5c00mpb01ndl9w4y4nxc0bn1xd"))))
    (properties `((upstream-name . "time-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("4" "1n39yfk21xz8y1xvkh01651yysk2zp5qac22l5pq2hi7scczmxaw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/time-compat")
    (synopsis "Compatibility package for time")
    (description
     "This packages tries to compat as much of @@time@@ features as possible.

/TODO:/

* Difference type @@ParseTime@@ and @@FormatTime@@ instances are missing.

* Formatting varies depending on underlying @@time@@ version

* @@dayFractionToTimeOfDay@@ on extreme values")
    (license license:bsd-3)))

haskell-9.0-time-compat

(define-public haskell-9.0-titlecase
  (package
    (name "haskell-9.0-titlecase")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/titlecase/titlecase-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k29br4ck9hpjq0w8md7i5kbh47svx74i2abv6ql2awxa0liqwz7"))))
    (properties `((upstream-name . "titlecase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/titlecase#readme")
    (synopsis "Convert English Words to Title Case")
    (description
     "Capitalize all English words except articles (a, an, the), coordinating conjunctions (for, and, nor, but, or, yet, so), and prepositions (unless they begin or end the title).  The prepositions are taken from <https://en.wikipedia.org/wiki/List_of_English_prepositions Wikipedia>.")
    (license license:bsd-3)))

haskell-9.0-titlecase

(define-public haskell-9.0-tz
  (package
    (name "haskell-9.0-tz")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-data-default)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-th)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-tzdata)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-tz

(define-public haskell-9.0-unbound-generics
  (package
    (name "haskell-9.0-unbound-generics")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unbound-generics/unbound-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pbpcvkkn360l0f5m7q5piyagvxznghknzjpxc7znb35i3xqywl1"))))
    (properties `((upstream-name . "unbound-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/lambdageek/unbound-generics")
    (synopsis
     "Support for programming with names and binders using GHC Generics")
    (description
     "Specify the binding structure of your data type with an
expressive set of type combinators, and unbound-generics
handles the rest!  Automatically derives
alpha-equivalence, free variable calculation,
capture-avoiding substitution, and more. See
@@Unbound.Generics.LocallyNameless@@ to get started.

This is an independent re-implementation of <http://hackage.haskell.org/package/unbound Unbound>
but using <https://hackage.haskell.org/package/base/docs/GHC-Generics.html GHC.Generics>
instead of <http://hackage.haskell.org/package/RepLib RepLib>.
See the accompanying README for some porting notes.")
    (license license:bsd-3)))

haskell-9.0-unbound-generics

(define-public haskell-9.0-unification-fd
  (package
    (name "haskell-9.0-unification-fd")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unification-fd/unification-fd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lyx3g10llkr7vl7c2j15ddlqrkz2r684d1laza7nvq97amrqnqv"))))
    (properties `((upstream-name . "unification-fd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-logict)))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "Simple generic unification algorithms.")
    (description
     "Generic functions for single-sorted first-order structural
unification (think of programming in Prolog, or of the metavariables
in type inference).")
    (license license:bsd-3)))

haskell-9.0-unification-fd

(define-public haskell-9.0-units-parser
  (package
    (name "haskell-9.0-units-parser")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/units-parser/units-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdf8jqq03x20gj91faqir9vrdjq7cxpnypx7bi953vjg8fh2jfm"))))
    (properties `((upstream-name . "units-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14g8a4azsdxp86c0yddkws5yzszjmkw1y78x1i7pj20cgbfjnnn7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-multimap)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/units-parser")
    (synopsis "A parser for units of measure")
    (description
     "The @@units-parser@@ package provides a parser for unit expressions
with F#-style syntax, to support the @@units@@ package and other
packages providing type-level units of measure.")
    (license license:bsd-3)))

haskell-9.0-units-parser

(define-public haskell-9.0-vector-mmap
  (package
    (name "haskell-9.0-vector-mmap")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-mmap/vector-mmap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12l6ka6vgl5g193sycn3k6gr2q3k64jaq196p825vawh46qdsfg5"))))
    (properties `((upstream-name . "vector-mmap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-mmap)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "http://github.com/pumpkin/vector-mmap")
    (synopsis "Memory map immutable and mutable vectors")
    (description "Memory map immutable and mutable vectors.")
    (license license:bsd-3)))

haskell-9.0-vector-mmap

(define-public haskell-9.0-vector-rotcev
  (package
    (name "haskell-9.0-vector-rotcev")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-rotcev/vector-rotcev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zrw1r6xspjncavd307xbbnjdmmhjq9w3dbvm0khnkxjgh47is8v"))))
    (properties `((upstream-name . "vector-rotcev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/rotcev")
    (synopsis "Vectors with O(1) reverse")
    (description
     "A wrapper for an arbitrary @@Vector@@ with O(1) @@reverse@@.
Instead of creating a copy, it just flips a flag, which inverts indexing.
Imagine it as a vector with a switch between little-endianness and big-endianness.")
    (license license:bsd-3)))

haskell-9.0-vector-rotcev

(define-public haskell-9.0-vector-split
  (package
    (name "haskell-9.0-vector-split")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-split/vector-split-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05mxkgcg5v2w0vnqq8z5s6aj0aqi7b55mh6knaafalpc1yjyxbml"))))
    (properties `((upstream-name . "vector-split") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fhaust/vector-split")
    (synopsis "Combinator library for splitting vectors.")
    (description "This package aims to be a vector-based drop-in replacement
for the list-based split package.
For more information see the haddocs or checkout the source
on github.")
    (license license:expat)))

haskell-9.0-vector-split

(define-public haskell-9.0-versions
  (package
    (name "haskell-9.0-versions")
    (version "5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/versions/versions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zny1kkk42nxwsbjfg87kwgcz4amjbihzqqpwmr3vcwqgx06lx19"))))
    (properties `((upstream-name . "versions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parser-combinators)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fosskers/versions")
    (synopsis "Types and parsers for software version numbers.")
    (description
     "A library for parsing and comparing software version numbers. We like to give
version numbers to our software in a myriad of ways. Some ways follow strict
guidelines for incrementing and comparison. Some follow conventional wisdom
and are generally self-consistent. Some are just plain asinine. This library
provides a means of parsing and comparing /any/ style of versioning, be it a
nice Semantic Version like this:

> 1.2.3-r1+git123

...or a monstrosity like this:

> 2:10.2+0.0093r3+1-1

Please switch to <http://semver.org Semantic Versioning> if you aren't
currently using it. It provides consistency in version incrementing and has
the best constraints on comparisons.

This library implements version @@2.0.0@@ of the SemVer spec.")
    (license license:bsd-3)))

haskell-9.0-versions

(define-public haskell-9.0-weigh
  (package
    (name "haskell-9.0-weigh")
    (version "0.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/weigh/weigh-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13pbjr7fzqy3s9c1nd2jhfwzbpccmpfwdn7y46z9k2bfkch1jam9"))))
    (properties `((upstream-name . "weigh") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y71p1fg2q9ig955b21fhfaipdamdrlzfl302prqz8g0sfcxvmfg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)))
    (home-page "https://github.com/fpco/weigh#readme")
    (synopsis "Measure allocations of a Haskell functions/values")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-weigh

(define-public haskell-9.0-wl-pprint-console
  (package
    (name "haskell-9.0-wl-pprint-console")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wl-pprint-console/wl-pprint-console-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05dq90zh2ywmaz0z9vr7114f4c6gacp7b7hlbl3sx31km92v8xnb"))))
    (properties `((upstream-name . "wl-pprint-console") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colorful-monoids)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-wl-pprint-annotated)))
    (home-page "https://github.com/minad/wl-pprint-console#readme")
    (synopsis
     "Wadler/Leijen pretty printer supporting colorful console output.")
    (description
     "Wadler/Leijen pretty printer with support for annotations and colorful console output. Additional useful display routines are provided, e.g, for HTML output.")
    (license license:expat)))

haskell-9.0-wl-pprint-console

(define-public haskell-9.0-xor
  (package
    (name "haskell-9.0-xor")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xor/xor-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "05jwfrg4cm27ldj3dbl0y144njhiha9yiypirbhsg6lc1b36s3kh"))))
    (properties `((upstream-name . "xor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ppy515y2y1bviaafx6hg440ain0l6j5pg4g5j7lwjzsknxb0jd5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-byteorder)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/xor")
    (synopsis "Efficient XOR masking")
    (description
     "This package provides efficient implementations of routines for applying <https://en.wikipedia.org/wiki/Bitwise_operation#XOR bitwise XOR> masks to binary data.

The currently supported operations (see \"Data.XOR\" API documentation for more details) are applying

* 8-bit  wide XOR masks or
* 32-bit wide XOR masks

to binary data represented by

* Strict @@ByteString@@s,
* Lazy @@ByteString@@s,
* @@ShortByteString@@s (i.e. @@ByteArray#@@s), or
* @@CStringLen@@ (i.e. @@Ptr@@s).

The performance is comparable to portable ISO C99 implementations but this library is implemented as pure Haskell and is thereby compatible with compile targets such as <https://github.com/ghcjs/ghcjs GHCJS>.")
    (license license:gpl2+)))

haskell-9.0-xor

(define-public haskell-9.0-yeshql-core
  (package
    (name "haskell-9.0-yeshql-core")
    (version "4.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yeshql-core/yeshql-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rh6pn182h4cjsca7gbbaq3s25y6lmbwcfzsbm7452m9hrwm0vlf"))))
    (properties `((upstream-name . "yeshql-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-convertible)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tdammers/yeshql")
    (synopsis "YesQL-style SQL database abstraction (core)")
    (description
     "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while
adding type annotations to turn SQL into well-typed Haskell
functions.")
    (license license:expat)))

haskell-9.0-yeshql-core

(define-public haskell-9.0-zeromq4-haskell
  (package
    (name "haskell-9.0-zeromq4-haskell")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zeromq4-haskell/zeromq4-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sznvz842ycbd73y8q09s6hs4i3yj1b5qm00n06f69p1i5jrkgnk"))))
    (properties `((upstream-name . "zeromq4-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages networking) zeromq)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/zeromq-haskell/")
    (synopsis "Bindings to ZeroMQ 4.x")
    (description
     "The 0MQ lightweight messaging kernel is a library which extends
the standard socket interfaces with features traditionally provided
by specialised messaging middleware products.

0MQ sockets provide an abstraction of asynchronous message queues,
multiple messaging patterns, message filtering (subscriptions),
seamless access to multiple transport protocols and more.

This library provides the Haskell language binding to 0MQ >= 4.x")
    (license license:expat)))

haskell-9.0-zeromq4-haskell

(define-public haskell-9.0-zlib
  (package
    (name "haskell-9.0-zlib")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zlib/zlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nh4xsm3kgsg76jmkcphvy7hhslg9hx1s75mpsskhi2ksjd9ialy"))))
    (properties `((upstream-name . "zlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-non-blocking-ffi" "-f-pkg-config" "-f-bundled-c-zlib")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/zlib")
    (synopsis "Compression and decompression in the gzip and zlib formats")
    (description "This package provides a pure interface for compressing and
decompressing streams of data represented as lazy
'ByteString's. It uses the
<https://en.wikipedia.org/wiki/Zlib zlib C library>
so it has high performance. It supports the \\\"zlib\\\",
\\\"gzip\\\" and \\\"raw\\\" compression formats.

It provides a convenient high level API suitable for most
tasks and for the few cases where more control is needed it
provides access to the full zlib feature set.")
    (license license:bsd-3)))

haskell-9.0-zlib

