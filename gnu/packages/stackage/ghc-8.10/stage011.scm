;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage011)
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
(define-public haskell-8.10-ChasingBottoms
  (package
    (name "haskell-8.10-ChasingBottoms")
    (version "1.3.1.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ChasingBottoms/ChasingBottoms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "162lykrhhnj7i3l0kfzk2jwgjkdrqwamvxwf8g3hr042rqr1qywp"))))
    (properties `((upstream-name . "ChasingBottoms") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
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

haskell-8.10-ChasingBottoms

(define-public haskell-8.10-HStringTemplate
  (package
    (name "haskell-8.10-HStringTemplate")
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
       ("4" "0sj82pzq2hcx3yjsljwgbr1kcdgwpgfmq0n0dhz3am8ckwir0slz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "https://hackage.haskell.org/package/HStringTemplate")
    (synopsis "StringTemplate implementation in Haskell.")
    (description "A port of the Java library by Terrence Parr.")
    (license license:bsd-3)))

haskell-8.10-HStringTemplate

(define-public haskell-8.10-HandsomeSoup
  (package
    (name "haskell-8.10-HandsomeSoup")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-HTTP)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-hxt)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-hxt-http)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)))
    (home-page "https://github.com/egonSchiele/HandsomeSoup")
    (synopsis "Work with HTML more easily in HXT")
    (description
     "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/HandsomeSoup")
    (license license:bsd-3)))

haskell-8.10-HandsomeSoup

(define-public haskell-8.10-STMonadTrans
  (package
    (name "haskell-8.10-STMonadTrans")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
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

haskell-8.10-STMonadTrans

(define-public haskell-8.10-atomic-write
  (package
    (name "haskell-8.10-atomic-write")
    (version "0.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atomic-write/atomic-write-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03cn3ii74h0w3g4h78xsx9v2sn58r3qsr2dbdwq340xwhiwcgxdm"))))
    (properties `((upstream-name . "atomic-write") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)))
    (home-page "https://github.com/stackbuilders/atomic-write")
    (synopsis "Atomically write to a file")
    (description
     "
Atomically write to a file on POSIX-compliant systems while preserving
permissions.

On most Unix systems, `mv` is an atomic operation. This makes it simple to write
to a file atomically just by using the mv operation. However, this will
destroy the permissions on the original file. This library does the following
to preserve permissions while atomically writing to a file:

* If an original file exists, take those permissions and apply them to the
temp file before `mv`ing the file into place.

* If the original file does not exist, create a following with default
permissions (based on the currently-active umask).

This way, when the file is `mv`'ed into place, the permissions will be the ones
held by the original file.

This library is based on similar implementations found in common libraries in
Ruby and Python:

* <http://apidock.com/rails/File/atomic_write/class Ruby on Rails includes a similar method called atomic_write>

* <https://github.com/chef/chef/blob/c4631816132fcfefaba3d123a1d0dfe8bc2866bb/lib/chef/file_content_management/deploy/mv_unix.rb#L23:L71 Chef includes atomic update functionality>

* <https://github.com/sashka/atomicfile There is a python library for atomically updating a file>

To use `atomic-write`, import the module corresponding to the type you wish to
write atomically, e.g., to write a (strict) ByteString atomically:

> import System.AtomicWrite.Writer.ByteString

Then you can use the atomicWriteFile function that accepts a `FilePath` and a
`ByteString`, e.g.:

> atomicWriteFile myFilePath myByteString")
    (license license:expat)))

haskell-8.10-atomic-write

(define-public haskell-8.10-barbies
  (package
    (name "haskell-8.10-barbies")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jcpetruzza/barbies#readme")
    (synopsis "Classes for working with types that can change clothes.")
    (description
     "Types that are parametric on a functor are like Barbies that have an outfit for each role. This package provides the basic abstractions to work with them comfortably.")
    (license license:bsd-3)))

haskell-8.10-barbies

(define-public haskell-8.10-blaze-markup
  (package
    (name "haskell-8.10-blaze-markup")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast markup combinator library for Haskell")
    (description
     "Core modules of a blazingly fast markup combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-8.10-blaze-markup

(define-public haskell-8.10-bytestring-conversion
  (package
    (name "haskell-8.10-bytestring-conversion")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-conversion/bytestring-conversion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y2fhwz632sp7n0iw87lz2g8vks4jgxz2kw99kysgivxfd4fmdqk"))))
    (properties `((upstream-name . "bytestring-conversion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1x8c42cfzb6fdvgkxxdxcpdf16csimlzsgahb1axnplmr6b3ba63")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-double-conversion)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/twittner/bytestring-conversion/")
    (synopsis "Type-classes to convert values to and from ByteString.")
    (description "Defines the type-classes 'ToByteString' and 'FromByteString'
to convert values to and from ByteString.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.10-bytestring-conversion

(define-public haskell-8.10-carray
  (package
    (name "haskell-8.10-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ix-shapable)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (home-page "https://hackage.haskell.org/package/carray")
    (synopsis "A C-compatible array library.")
    (description
     "A C-compatible array library.

Provides both an immutable and mutable (in the IO monad) interface.
Includes utilities for multi-dimensional arrays, slicing and norms.
Memory is 16-byte aligned by default to enable use of vector instructions.")
    (license license:bsd-3)))

haskell-8.10-carray

(define-public haskell-8.10-commonmark
  (package
    (name "haskell-8.10-commonmark")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commonmark/commonmark-" version
                    ".tar.gz"))
              (sha256
               (base32
                "105szy7l4ji255fwv0kbfcy3i3a3a4197zgj6s9jb12kwbn6n0c7"))))
    (properties `((upstream-name . "commonmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unicode-transforms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Pure Haskell commonmark parser.")
    (description
     "This library provides the core data types and functions
for parsing commonmark (<https://spec.commonmark.org>).
The parser is fully commonmark-compliant and passes the test
suite.  It is designed to be customizable and easily extensible.
To customize the output, create an AST, or support a new output
format, one need only define some new typeclass instances.
It is also easy to add new syntax elements or modify existing ones.

Accurate information about source positions is available
for all block and inline elements.  Thus the library can be
used to create an accurate syntax highlighter or
an editor with live preview.

The parser has been designed for robust performance
even in pathological cases that tend to cause stack overflows or
exponential slowdowns in other parsers, with parsing speed that
varies linearly with input length.

Related packages:

- commonmark-extensions (which defines a number of syntax extensions)
- commonmark-pandoc (which allows using this parser to create a Pandoc
structure)
- commonmark-cli (a command-line tool for converting and
syntax-highlighting commonmark documents)")
    (license license:bsd-3)))

haskell-8.10-commonmark

(define-public haskell-8.10-compiler-warnings
  (package
    (name "haskell-8.10-compiler-warnings")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yi-editor/compiler-warnings#readme")
    (synopsis "Parser for common compiler warning formats")
    (description "")
    (license license:bsd-2)))

haskell-8.10-compiler-warnings

(define-public haskell-8.10-cookie
  (package
    (name "haskell-8.10-cookie")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/snoyberg/cookie")
    (synopsis "HTTP cookie parsing and rendering")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/cookie>.")
    (license license:expat)))

haskell-8.10-cookie

(define-public haskell-8.10-csp
  (package
    (name "haskell-8.10-csp")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-nondeterminism)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/csp")
    (synopsis "Discrete constraint satisfaction problem (CSP) solver.")
    (description "Constraint satisfaction problem (CSP) solvers")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-csp

(define-public haskell-8.10-data-bword
  (package
    (name "haskell-8.10-data-bword")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-bword/data-bword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zfvk7b7qi6inra0kc03rhsic2rj0818n4i03lfwzvb5g22izw3h"))))
    (properties `((upstream-name . "data-bword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-bword")
    (synopsis "Extra operations on binary words of fixed length")
    (description
     "This package provides extra (vs. 'Data.Bits') operations on binary words of
fixed length.")
    (license license:bsd-3)))

haskell-8.10-data-bword

(define-public haskell-8.10-di-core
  (package
    (name "haskell-8.10-di-core")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di-core/di-core-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wrj2ndzk9r7izjvwkjjmqb3gg1zy93ch7j7fdalzadzzsd4sqsm"))))
    (properties `((upstream-name . "di-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging without monad towers.")
    (description
     "Typeful hierarchical structured logging without monad towers.")
    (license license:bsd-3)))

haskell-8.10-di-core

(define-public haskell-8.10-diagrams-solve
  (package
    (name "haskell-8.10-diagrams-solve")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://diagrams.github.io")
    (synopsis "Pure Haskell solver routines used by diagrams")
    (description "Pure Haskell solver routines used by the diagrams
project.  Currently includes finding real roots
of low-degree (n < 5) polynomials, and solving
tridiagonal and cyclic tridiagonal linear
systems.")
    (license license:bsd-3)))

haskell-8.10-diagrams-solve

(define-public haskell-8.10-direct-sqlite
  (package
    (name "haskell-8.10-direct-sqlite")
    (version "2.3.26")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/direct-sqlite/direct-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z7rwaqhxl9hagbcndg3dkqysr5n2bcz2jrrvdl9pdi905x2663y"))))
    (properties `((upstream-name . "direct-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-systemlib" "-ffulltextsearch" "-furifilenames" "-fhaveusleep" "-fjson1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
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

haskell-8.10-direct-sqlite

(define-public haskell-8.10-distributed-closure
  (package
    (name "haskell-8.10-distributed-closure")
    (version "0.4.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distributed-closure/distributed-closure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l2pm3b3g539p0ll30x5csyzx51q7ydmdl9m94yx988sx9dv7l0n"))))
    (properties `((upstream-name . "distributed-closure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (home-page "https://github.com/tweag/distributed-closure")
    (synopsis "Serializable closures for distributed programming.")
    (description "See README.")
    (license license:bsd-3)))

haskell-8.10-distributed-closure

(define-public haskell-8.10-doctest
  (package
    (name "haskell-8.10-doctest")
    (version "0.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/doctest/doctest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f0knggq6yjcznyri35fll619q5jr8vcsbiyvdiz4prkawhaa4pz"))))
    (properties `((upstream-name . "doctest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-code-page)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-paths)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (home-page "https://github.com/sol/doctest#readme")
    (synopsis "Test interactive Haskell examples")
    (description
     "The doctest program checks examples in source code comments.  It is modeled
after doctest for Python (<http://docs.python.org/library/doctest.html>).

Documentation is at <https://github.com/sol/doctest#readme>.")
    (license license:expat)))

haskell-8.10-doctest

(define-public haskell-8.10-extended-reals
  (package
    (name "haskell-8.10-extended-reals")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/msakai/extended-reals/")
    (synopsis "Extension of real numbers with positive/negative infinities")
    (description
     "Extension of real numbers with positive/negative infinities (±∞).
It is useful for describing various limiting behaviors in mathematics.")
    (license license:bsd-3)))

haskell-8.10-extended-reals

(define-public haskell-8.10-fileplow
  (package
    (name "haskell-8.10-fileplow")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fileplow/fileplow-" version
                    ".tar.gz"))
              (sha256
               (base32
                "017f3f3w69fvlhdagivb5xp72vwzmimcjd94zw9l9ylp5jv7vp4x"))))
    (properties `((upstream-name . "fileplow") (hidden? . #f)))
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
                     haskell-8.10-binary-search)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/agrafix/fileplow#readme")
    (synopsis
     "Library to process and search large files or a collection of files")
    (description
     "Library to process and search large files or a collection of files")
    (license license:bsd-3)))

haskell-8.10-fileplow

(define-public haskell-8.10-flags-applicative
  (package
    (name "haskell-8.10-flags-applicative")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flags-applicative/flags-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sgla62999s9g5a2ckl70nbqi678pqq3zqad7jbm9p0kdm9yn5z3"))))
    (properties `((upstream-name . "flags-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-casing)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)))
    (home-page "https://github.com/mtth/flags-applicative")
    (synopsis "Applicative flag parsing")
    (description "https://github.com/mtth/flags-applicative")
    (license license:bsd-3)))

haskell-8.10-flags-applicative

(define-public haskell-8.10-fusion-plugin
  (package
    (name "haskell-8.10-fusion-plugin")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fusion-plugin/fusion-plugin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lklrd3afvm8fwd14yiavx5h8zxjkn2k2vqnxbqwcakcnljxrfyq"))))
    (properties `((upstream-name . "fusion-plugin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fusion-plugin-types)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
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

haskell-8.10-fusion-plugin

(define-public haskell-8.10-general-games
  (package
    (name "haskell-8.10-general-games")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/general-games/general-games-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h2h6dbd12xzvgwm7a26scpjyfkcwkmpdkw98nkmb2vk8qsrx3lb"))))
    (properties `((upstream-name . "general-games") (hidden? . #f)))
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
                     haskell-8.10-MonadRandom)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-random-shuffle)))
    (home-page "https://github.com/cgorski/general-games")
    (synopsis "Library supporting simulation of a number of games")
    (description
     "Library providing framework for simulating outcomes of a variety
of games, including Poker.")
    (license license:expat)))

haskell-8.10-general-games

(define-public haskell-8.10-ghc-typelits-knownnat
  (package
    (name "haskell-8.10-ghc-typelits-knownnat")
    (version "0.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-knownnat/ghc-typelits-knownnat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10m4y0hf25w2i40464pz85lqs5dr8cznl191icnibc5fjynyzd9v"))))
    (properties `((upstream-name . "ghc-typelits-knownnat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
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

haskell-8.10-ghc-typelits-knownnat

(define-public haskell-8.10-gloss
  (package
    (name "haskell-8.10-gloss")
    (version "1.13.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gloss/gloss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ladpnk2zw27bz895b9gphhrmawb0gwvzrmnisk56msjdxwqq5pn"))))
    (properties `((upstream-name . "gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fglut" "-f-glfw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-GLUT)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-OpenGL)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bmp)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-gloss-rendering)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://gloss.ouroborus.net")
    (synopsis "Painless 2D vector graphics, animations and simulations.")
    (description
     "Gloss hides the pain of drawing simple vector graphics behind a nice data type and
a few display functions. Gloss uses OpenGL under the hood, but you won't need to
worry about any of that. Get something cool on the screen in under 10 minutes.")
    (license license:expat)))

haskell-8.10-gloss

(define-public haskell-8.10-gnuplot
  (package
    (name "haskell-8.10-gnuplot")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-accessor)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-accessor-transformers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-gnuplot

(define-public haskell-8.10-graphviz
  (package
    (name "haskell-8.10-graphviz")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fgl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-polyparse)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-wl-pprint-text)))
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

haskell-8.10-graphviz

(define-public haskell-8.10-haskell-src
  (package
    (name "haskell-8.10-haskell-src")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (home-page "https://hackage.haskell.org/package/haskell-src")
    (synopsis "Support for manipulating Haskell source code")
    (description
     "The @@haskell-src@@ package provides support for manipulating Haskell
source code. The package provides a lexer, parser and
pretty-printer, and a definition of a Haskell abstract syntax tree
(AST). Common uses of this package are to parse or generate
<http://www.haskell.org/onlinereport/ Haskell 98> code.")
    (license license:bsd-3)))

haskell-8.10-haskell-src

(define-public haskell-8.10-hint
  (package
    (name "haskell-8.10-hint")
    (version "0.9.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hint/hint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qjasjbilvrfwk8lxfw0pa0hwpsr7nn0n9yd95lwjgfnqnigzcb8"))))
    (properties `((upstream-name . "hint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-paths)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://github.com/haskell-hint/hint")
    (synopsis "Runtime Haskell interpreter (GHC API wrapper)")
    (description
     "This library defines an Interpreter monad. It allows to load Haskell
modules, browse them, type-check and evaluate strings with Haskell
expressions and even coerce them into values. The library is thread-safe
and type-safe (even the coercion of expressions to values).
It is, essentially, a huge subset of the GHC API wrapped in a simpler
API.")
    (license license:bsd-3)))

haskell-8.10-hint

(define-public haskell-8.10-hourglass
  (package
    (name "haskell-8.10-hourglass")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-hourglass")
    (synopsis "simple performant time related library")
    (description
     "Simple time library focusing on simple but powerful and performant API

The backbone of the library are the Timeable and Time type classes.

Each Timeable instances can be converted to type that has a Time instances,
and thus are different representations of current time.")
    (license license:bsd-3)))

haskell-8.10-hourglass

(define-public haskell-8.10-hs-bibutils
  (package
    (name "haskell-8.10-hs-bibutils")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
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

haskell-8.10-hs-bibutils

(define-public haskell-8.10-hsass
  (package
    (name "haskell-8.10-hsass")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsass/hsass-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bnjvj6dpmcbpkbi4g5m5hvr0w5rmd7y5zkiwbqc8n9y4l2dkd5g"))))
    (properties `((upstream-name . "hsass") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "11xmb3mssql6ksdra03h9cqv0pdxgyj3askapbgpx6rmziw7a136")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hlibsass)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages web) libsass)))
    (home-page "https://github.com/jakubfijalkowski/hsass")
    (synopsis "Integrating Sass into Haskell applications.")
    (description
     "This package provides quite simple (but not too simple) API for
compilation of <http://sass-lang.com/ Sass> code. It uses
<https://sass-lang.com/libsass libsass> (hlibsass) underneath, so the code it
parses/generates should be compatible with original Sass implementation (or at
least <https://sass-lang.com/libsass#sassc sassc>).
This package tries to minimize C API usage, so the only place where it is used
is in the 'compileFile' / 'compileString' methods. This allows us to stay pure
as long as we can and not waste performance for going back and forth.
If you feel that compilation options constrain you too much, you may use rest
of modules without it. With them, you can use Haskell types and mechanisms to
manage libsass's data(eg. importers, options, values) and modify compilation
process as you like.")
    (license license:expat)))

haskell-8.10-hsass

(define-public haskell-8.10-hsini
  (package
    (name "haskell-8.10-hsini")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsini/hsini-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r6qksnrmk18ndxs5zaga8b7kvmk34kp0kh5hwqmq797qrlax9pa"))))
    (properties `((upstream-name . "hsini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1b83g6jk9hcm2h17f1h9vyzm34bmr7w4j5888rbv9k8gpi97f8i7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hsini")
    (synopsis "ini configuration files")
    (description
     "Library for reading and writing configuration files in INI format (see <https://en.wikipedia.org/wiki/INI_file>).")
    (license license:bsd-3)))

haskell-8.10-hsini

(define-public haskell-8.10-immortal-queue
  (package
    (name "haskell-8.10-immortal-queue")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-immortal)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
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

haskell-8.10-immortal-queue

(define-public haskell-8.10-json
  (package
    (name "haskell-8.10-json")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
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

haskell-8.10-json

(define-public haskell-8.10-language-java
  (package
    (name "haskell-8.10-language-java")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/language-java")
    (synopsis "Java source manipulation")
    (description
     "Manipulating Java source: abstract syntax, lexer, parser, and pretty-printer.")
    (license license:bsd-3)))

haskell-8.10-language-java

(define-public haskell-8.10-leveldb-haskell
  (package
    (name "haskell-8.10-leveldb-haskell")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/leveldb-haskell/leveldb-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a3csz8zmjjp90ji1yqrc3h7rb1b612i6v4kfwxagswd0s4b05x4"))))
    (properties `((upstream-name . "leveldb-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) leveldb)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/kim/leveldb-haskell")
    (synopsis "Haskell bindings to LevelDB")
    (description
     "From <http://code.google.com/p/snappy>:

LevelDB is a fast key-value storage library written at Google that provides
an ordered mapping from string keys to string values.


This library provides a Haskell language binding to LeveldDB. It is in very
early stage and has seen very limited testing.

Note: as of v1.3, LevelDB can be built as a shared library. Thus, as of
v0.1.0 of this library, LevelDB is no longer bundled and must be installed
on the target system (version 1.7 or greater is required).")
    (license license:bsd-3)))

haskell-8.10-leveldb-haskell

(define-public haskell-8.10-lifted-async
  (package
    (name "haskell-8.10-lifted-async")
    (version "0.10.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lifted-async/lifted-async-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pm7vfrk0vx3rg5ay81xmjfjw1l3s1cqa70frlwqnky7r2csds2h"))))
    (properties `((upstream-name . "lifted-async") (hidden? . #f)))
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
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-th)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/maoe/lifted-async")
    (synopsis
     "Run lifted IO operations asynchronously and wait for their results")
    (description
     "This package provides IO operations from @@async@@ package lifted to any
instance of 'MonadBase' or 'MonadBaseControl'.")
    (license license:bsd-3)))

haskell-8.10-lifted-async

(define-public haskell-8.10-lukko
  (package
    (name "haskell-8.10-lukko")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-singleton-bool)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
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

haskell-8.10-lukko

(define-public haskell-8.10-matrices
  (package
    (name "haskell-8.10-matrices")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/matrices")
    (synopsis "native matrix based on vector")
    (description "Pure Haskell matrix library, supporting creating, indexing,
and modifying dense/sparse matrices.")
    (license license:bsd-3)))

haskell-8.10-matrices

(define-public haskell-8.10-matrix
  (package
    (name "haskell-8.10-matrix")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/matrix/matrix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0b1v17rc9q7ni44gkzp124kmc5d6xmlpiqvskgjrq54qpjinr5zs"))))
    (properties `((upstream-name . "matrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0iy0gdgg68ldhgm4lzvzl5pmzflx0r4brdbdkq75rkarm7cigawn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-loop)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/matrix")
    (synopsis "A native implementation of matrix operations.")
    (description
     "Matrix library. Basic operations and some algorithms.

To get the library update your cabal package list (if needed) with @@cabal update@@ and
then use @@cabal install matrix@@, assuming that you already have Cabal installed.
Usage examples are included in the API reference generated by Haddock.

If you want to use GSL, BLAS and LAPACK, @@hmatrix@@ (<http://hackage.haskell.org/package/hmatrix>)
is the way to go.")
    (license license:bsd-3)))

haskell-8.10-matrix

(define-public haskell-8.10-mock-time
  (package
    (name "haskell-8.10-mock-time")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mock-time/mock-time-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fwnlkg3kbi7qh43ycymxxywsh8cw5f5km0ni4plf63k931y40jg"))))
    (properties `((upstream-name . "mock-time") (hidden? . #f)))
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
                     haskell-8.10-error-or)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-error-or-utils)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-inbox)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/mock-time#readme")
    (synopsis "Mock time in tests")
    (description
     "Allows to mock out Data.Time.getCurrentTime and Control.Concrurent.threadDelay")
    (license license:bsd-3)))

haskell-8.10-mock-time

(define-public haskell-8.10-mockery
  (package
    (name "haskell-8.10-mockery")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mockery/mockery-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09ypgm3z69gq8mj6y66ss58kbjnk15r8frwcwbqcfbfksfnfv8dp"))))
    (properties `((upstream-name . "mockery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-logging-facade)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://hackage.haskell.org/package/mockery")
    (synopsis "Support functions for automated testing")
    (description "Support functions for automated testing")
    (license license:expat)))

haskell-8.10-mockery

(define-public haskell-8.10-mpi-hs
  (package
    (name "haskell-8.10-mpi-hs")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
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

haskell-8.10-mpi-hs

(define-public haskell-8.10-parsec-numeric
  (package
    (name "haskell-8.10-parsec-numeric")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AndrewRademacher/parsec-numeric")
    (synopsis "Parsec combinators for parsing Haskell numeric types.")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-parsec-numeric

(define-public haskell-8.10-quickcheck-higherorder
  (package
    (name "haskell-8.10-quickcheck-higherorder")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-test-fun)))
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

haskell-8.10-quickcheck-higherorder

(define-public haskell-8.10-quote-quot
  (package
    (name "haskell-8.10-quote-quot")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quote-quot/quote-quot-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sj862037gdljwiv5s4yh0vjfppzf226z7sxb5f7y1k23rijsx0w"))))
    (properties `((upstream-name . "quote-quot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/quote-quot#readme")
    (synopsis "Divide without division")
    (description
     "Generate routines for integer division, employing arithmetic
and bitwise operations only, which are __2.5x-3.5x faster__
than 'quot'. Divisors must be known in compile-time and be positive.")
    (license license:bsd-3)))

haskell-8.10-quote-quot

(define-public haskell-8.10-rocksdb-haskell
  (package
    (name "haskell-8.10-rocksdb-haskell")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-haskell/rocksdb-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zsdxnmi2nyg54ic7xszdw7pz4c8ja18nmcaawhjwg2h7y9pqh5q"))))
    (properties `((upstream-name . "rocksdb-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) rocksdb)))
    (home-page "http://github.com/serokell/rocksdb-haskell")
    (synopsis "Haskell bindings to RocksDB")
    (description
     "From <http://rocksdb.org>:

RocksDB is an embeddable persistent key-value store for fast storage. RocksDB can also be the foundation for a client-server database but our current focus is on embedded workloads.

RocksDB builds on LevelDB to be scalable to run on servers with many CPU cores, to efficiently use fast storage, to support IO-bound, in-memory and write-once workloads, and to be flexible to allow for innovation.")
    (license license:bsd-3)))

haskell-8.10-rocksdb-haskell

(define-public haskell-8.10-rope-utf16-splay
  (package
    (name "haskell-8.10-rope-utf16-splay")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ollef/rope-utf16-splay")
    (synopsis "Ropes optimised for updating using UTF-16 code units and
row/column pairs.")
    (description "Ropes optimised for updating using UTF-16 code units and
row/column pairs.  This implementation uses splay trees
instead of the usual finger trees. According to my
benchmarks, splay trees are faster in most situations.")
    (license license:bsd-3)))

haskell-8.10-rope-utf16-splay

(define-public haskell-8.10-safe-money
  (package
    (name "haskell-8.10-safe-money")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-money/safe-money-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03fizw68y87lyk6r1r2dmjpakgm1whi54avsb5k2krvmgwhy6fs5"))))
    (properties `((upstream-name . "safe-money") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-vector-space)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/safe-money")
    (synopsis "Type-safe and lossless encoding and manipulation of money, fiat
currencies, crypto currencies and precious metals.")
    (description
     "The Haskell @@safe-money@@ library offers type-safe and lossless encoding and
operations for monetary values in all world currencies, including fiat
currencies, precious metals and crypto-currencies.

Useful instances for the many types defined by @@safe-money@@ can be found
in these other libraries:

* [safe-money-aeson](https://hackage.haskell.org/package/safe-money-aeson):
@@FromJSON@@ and @@ToJSON@@ instances (from the [aeson](https://hackage.haskell.org/package/aeson) library).

* [safe-money-cereal](https://hackage.haskell.org/package/safe-money-cereal):
@@Serialize@@ instances (from the [cereal](https://hackage.haskell.org/package/cereal) library).

* [safe-money-serialise](https://hackage.haskell.org/package/safe-money-serialise):
@@Serialise@@ instances (from the [serialise](https://hackage.haskell.org/package/serialise) library).

* [safe-money-store](https://hackage.haskell.org/package/safe-money-store):
@@Store@@ instances (from the [store](https://hackage.haskell.org/package/store) library).

* [safe-money-xmlbf](https://hackage.haskell.org/package/safe-money-xmlbf):
@@FromXml@@ and @@ToXml@@ instances (from the [xmlbf](https://hackage.haskell.org/package/xmlbf) library).")
    (license license:bsd-3)))

haskell-8.10-safe-money

(define-public haskell-8.10-selective
  (package
    (name "haskell-8.10-selective")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selective/selective-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mg5hnr3f4zjh3ajy16jkxj630rnfa9iqnnmpjqd9gkjdxpssd5l"))))
    (properties `((upstream-name . "selective") (hidden? . #f)))
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
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snowleopard/selective")
    (synopsis "Selective applicative functors")
    (description
     "Selective applicative functors: declare your effects statically,
select which to execute dynamically.

This is a library for /selective applicative functors/, or just
/selective functors/ for short, an abstraction between
applicative functors and monads, introduced in
<https://www.staff.ncl.ac.uk/andrey.mokhov/selective-functors.pdf this paper>.")
    (license license:expat)))

haskell-8.10-selective

(define-public haskell-8.10-silently
  (package
    (name "haskell-8.10-silently")
    (version "1.2.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/silently/silently-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15dnp83b0wj7m5v4r2yfrwxg9g6szv94ldcb74fpidninrqgqns6"))))
    (properties `((upstream-name . "silently") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-nanospec)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://github.com/hspec/silently")
    (synopsis "Prevent or capture writing to stdout and other handles.")
    (description
     "Prevent or capture writing to stdout, stderr, and other handles.")
    (license license:bsd-3)))

haskell-8.10-silently

(define-public haskell-8.10-smallcheck
  (package
    (name "haskell-8.10-smallcheck")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-logict)))
    (home-page "https://github.com/Bodigrim/smallcheck")
    (synopsis "A property-based testing library")
    (description
     "SmallCheck is a testing library that allows to verify properties
for all test cases up to some depth. The test cases are generated
automatically by SmallCheck.")
    (license license:bsd-3)))

haskell-8.10-smallcheck

(define-public haskell-8.10-socket
  (package
    (name "haskell-8.10-socket")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lpeterse/haskell-socket")
    (synopsis "An extensible socket library.")
    (description "This library is a minimal cross-platform interface for
BSD style networking.")
    (license license:expat)))

haskell-8.10-socket

(define-public haskell-8.10-storablevector
  (package
    (name "haskell-8.10-storablevector")
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
       (list "-fsplitbase" "-fseparatesyb")
       #:cabal-revision
       ("1" "10zazrk5fxhwmr5q2h8g0mgdgm1sd35268zjij0sv480v1znsy4i")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-non-negative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unsafe)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-storablevector

(define-public haskell-8.10-structs
  (package
    (name "haskell-8.10-structs")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/structs/")
    (synopsis
     "Strict GC'd imperative object-oriented programming with cheap pointers.")
    (description
     "This project is an experiment with a small GC'd strict mutable imperative universe with cheap pointers inside of the GHC runtime system.")
    (license license:bsd-3)))

haskell-8.10-structs

(define-public haskell-8.10-tasty-kat
  (package
    (name "haskell-8.10-tasty-kat")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/tasty-kat")
    (synopsis "Known Answer Tests (KAT) framework for tasty")
    (description
     "Tests running from simple KATs file (different formats/helper supported)")
    (license license:expat)))

haskell-8.10-tasty-kat

(define-public haskell-8.10-th-expand-syns
  (package
    (name "haskell-8.10-th-expand-syns")
    (version "0.4.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-expand-syns/th-expand-syns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mw0yxfbmicv0irfrcz4s6pn39za7yjd7zz09ialwym1b46624si"))))
    (properties `((upstream-name . "th-expand-syns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0l30cmwm20lgjpvr3a5yxj6429s1hqahjsij8z2ap88754phd41l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (home-page "https://github.com/DanielSchuessler/th-expand-syns")
    (synopsis "Expands type synonyms in Template Haskell ASTs")
    (description "Expands type synonyms in Template Haskell ASTs.")
    (license license:bsd-3)))

haskell-8.10-th-expand-syns

(define-public haskell-8.10-th-extras
  (package
    (name "haskell-8.10-th-extras")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (home-page "https://github.com/mokus0/th-extras")
    (synopsis "A grab bag of functions for use with Template Haskell")
    (description
     "A grab bag of functions for use with Template Haskell.

This is basically the place I put all my ugly CPP hacks to support
the ever-changing interface of the template haskell system by
providing high-level operations and making sure they work on as many
versions of Template Haskell as I can.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-th-extras

(define-public haskell-8.10-titlecase
  (package
    (name "haskell-8.10-titlecase")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/titlecase#readme")
    (synopsis "Convert English Words to Title Case")
    (description
     "Capitalize all English words except articles (a, an, the), coordinating conjunctions (for, and, nor, but, or, yet, so), and prepositions (unless they begin or end the title).  The prepositions are taken from <https://en.wikipedia.org/wiki/List_of_English_prepositions Wikipedia>.")
    (license license:bsd-3)))

haskell-8.10-titlecase

(define-public haskell-8.10-typed-process
  (package
    (name "haskell-8.10-typed-process")
    (version "0.2.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typed-process/typed-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1af0g34sws7fppziv7firr9r2wrnly4y6sr9nyqa8bvbbmadly45"))))
    (properties `((upstream-name . "typed-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1m017nqbaqishii32gwhxa1849h0qnn06w7k1rn8c9d8w71m4vqm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (home-page "https://github.com/fpco/typed-process")
    (synopsis "Run external processes, with strong typing of streams")
    (description
     "Please see the tutorial at <https://github.com/fpco/typed-process#readme>")
    (license license:expat)))

haskell-8.10-typed-process

(define-public haskell-8.10-unification-fd
  (package
    (name "haskell-8.10-unification-fd")
    (version "0.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unification-fd/unification-fd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xvc3xa0yhxjxd1nf6d1cnixlbjaz2ww08hg1vldsf6c1h4lvs05"))))
    (properties `((upstream-name . "unification-fd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-logict)))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "Simple generic unification algorithms.")
    (description
     "Generic functions for single-sorted first-order structural
unification (think of programming in Prolog, or of the metavariables
in type inference).")
    (license license:bsd-3)))

haskell-8.10-unification-fd

(define-public haskell-8.10-vector-mmap
  (package
    (name "haskell-8.10-vector-mmap")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mmap)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/pumpkin/vector-mmap")
    (synopsis "Memory map immutable and mutable vectors")
    (description "Memory map immutable and mutable vectors.")
    (license license:bsd-3)))

haskell-8.10-vector-mmap

(define-public haskell-8.10-vector-rotcev
  (package
    (name "haskell-8.10-vector-rotcev")
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
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0d84mi9lynbrcwsx3fsdvhja0l54qagpj6v4cnbnljnij99p8lr1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/rotcev")
    (synopsis "Vectors with O(1) reverse")
    (description
     "A wrapper for an arbitrary @@Vector@@ with O(1) @@reverse@@.
Instead of creating a copy, it just flips a flag, which inverts indexing.
Imagine it as a vector with a switch between little-endianness and big-endianness.")
    (license license:bsd-3)))

haskell-8.10-vector-rotcev

(define-public haskell-8.10-vector-split
  (package
    (name "haskell-8.10-vector-split")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fhaust/vector-split")
    (synopsis "Combinator library for splitting vectors.")
    (description "This package aims to be a vector-based drop-in replacement
for the list-based split package.
For more information see the haddocs or checkout the source
on github.")
    (license license:expat)))

haskell-8.10-vector-split

(define-public haskell-8.10-versions
  (package
    (name "haskell-8.10-versions")
    (version "5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/versions/versions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ca3m9rvx89mniipbkxz3nm49mz7s4nhqc11hpsa6hjw9ff5kcjv"))))
    (properties `((upstream-name . "versions") (hidden? . #f)))
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
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
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

haskell-8.10-versions

(define-public haskell-8.10-wave
  (package
    (name "haskell-8.10-wave")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wave/wave-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "149kgwngq3qxc7gxpkqb16j669j0wpv2f3gnvfwp58yg6m4259ki"))))
    (properties `((upstream-name . "wave") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "19rxhnqhhv1qs35y723c15c8nifj8pakcrd09jlvg5271zg4qb0b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://github.com/mrkkrp/wave")
    (synopsis "Work with WAVE and RF64 files")
    (description "Work with WAVE and RF64 files.")
    (license license:bsd-3)))

haskell-8.10-wave

(define-public haskell-8.10-weigh
  (package
    (name "haskell-8.10-weigh")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (home-page "https://github.com/fpco/weigh#readme")
    (synopsis "Measure allocations of a Haskell functions/values")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-weigh

(define-public haskell-8.10-wl-pprint-console
  (package
    (name "haskell-8.10-wl-pprint-console")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colorful-monoids)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-wl-pprint-annotated)))
    (home-page "https://github.com/minad/wl-pprint-console#readme")
    (synopsis
     "Wadler/Leijen pretty printer supporting colorful console output.")
    (description
     "Wadler/Leijen pretty printer with support for annotations and colorful console output. Additional useful display routines are provided, e.g, for HTML output.")
    (license license:expat)))

haskell-8.10-wl-pprint-console

(define-public haskell-8.10-zeromq4-haskell
  (package
    (name "haskell-8.10-zeromq4-haskell")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
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

haskell-8.10-zeromq4-haskell

(define-public haskell-8.10-zip-archive
  (package
    (name "haskell-8.10-zip-archive")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-archive/zip-archive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q9x2i8k6paf9r9jpqzw8rhrwxk1fagppfyv5psxr5amqks61lqp"))))
    (properties `((upstream-name . "zip-archive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages compression) unzip)
                         (@ (gnu packages base) which)))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-digest)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jgm/zip-archive")
    (synopsis "Library for creating and modifying zip archives.")
    (description
     "The zip-archive library provides functions for creating, modifying, and
extracting files from zip archives. The zip archive format is
documented in <http://www.pkware.com/documents/casestudies/APPNOTE.TXT>.

Certain simplifying assumptions are made about the zip archives: in
particular, there is no support for strong encryption, zip files that
span multiple disks, ZIP64, OS-specific file attributes, or compression
methods other than Deflate. However, the library should be able to read
the most common zip archives, and the archives it produces should be
readable by all standard unzip programs.

Archives are built and extracted in memory, so manipulating large zip
files will consume a lot of memory. If you work with large zip files or
need features not supported by this library, a better choice may be
<http://hackage.haskell.org/package/zip zip>, which uses a
memory-efficient streaming approach. However, zip can only read and
write archives inside instances of MonadIO, so zip-archive is a better
choice if you want to manipulate zip archives in \"pure\" contexts.

As an example of the use of the library, a standalone zip archiver and
extracter is provided in the source distribution.")
    (license license:bsd-3)))

haskell-8.10-zip-archive

