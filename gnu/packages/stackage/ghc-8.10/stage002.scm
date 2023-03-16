;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage002)
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
(define-public haskell-8.10-ENIG
  (package
    (name "haskell-8.10-ENIG")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ENIG/ENIG-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zv6dybsnj3kssiyyg69lxyj5wvi5qjx0xp7skg362xzqmi97ch3"))))
    (properties `((upstream-name . "ENIG") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/QuietJoon/ENIG#readme")
    (synopsis "Auto Korean conjugator/adjustor/adopter/converter")
    (description
     "Please see the README on GitHub at <https://github.com/QuietJoon/ENIG#readme>")
    (license license:bsd-3)))

haskell-8.10-ENIG

(define-public haskell-8.10-Ebnf2ps
  (package
    (name "haskell-8.10-Ebnf2ps")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)))
    (home-page "https://github.com/FranklinChen/Ebnf2ps")
    (synopsis "Peter's Syntax Diagram Drawing Tool")
    (description "Ebnf2ps generates nice looking syntax diagrams in EPS
and FIG format from EBNF specifications and from yacc,
bison, and Happy input grammars. The diagrams can be
immediatedly included in TeX/LaTeX documents and in
texts created with other popular document preparation
systems.")
    (license license:bsd-3)))

haskell-8.10-Ebnf2ps

(define-public haskell-8.10-FontyFruity
  (package
    (name "haskell-8.10-FontyFruity")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml)))
    (home-page "https://hackage.haskell.org/package/FontyFruity")
    (synopsis "A true type file format loader")
    (description "A haskell Truetype file parser.

You can load a font file and extract some curves to be
drawed with a library like Rasterific .")
    (license license:bsd-3)))

haskell-8.10-FontyFruity

(define-public haskell-8.10-HUnit-approx
  (package
    (name "haskell-8.10-HUnit-approx")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)))
    (home-page "https://github.com/goldfirere/HUnit-approx")
    (synopsis "Approximate equality for floating point numbers with HUnit")
    (description
     "This package exports combinators useful in comparing floating-point numbers
in HUnit tests, by using approximate equality.")
    (license license:bsd-3)))

haskell-8.10-HUnit-approx

(define-public haskell-8.10-HaXml
  (package
    (name "haskell-8.10-HaXml")
    (version "1.25.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HaXml/HaXml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n65s75l4manb65msh9fz97dzqf9554x58bqdhyylgsgk84mfg80"))))
    (properties `((upstream-name . "HaXml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-polyparse)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://github.com/HaXml/HaXml")
    (synopsis "Utilities for manipulating XML documents")
    (description "Haskell utilities for parsing, filtering, transforming and
generating XML documents.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-HaXml

(define-public haskell-8.10-Imlib
  (package
    (name "haskell-8.10-Imlib")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-X11)
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

haskell-8.10-Imlib

(define-public haskell-8.10-JuicyPixels
  (package
    (name "haskell-8.10-JuicyPixels")
    (version "3.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels/JuicyPixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rrvapzcj0q8sigxq1zq2k4h88i1r2hyca4p7pkqa1b4pk6vhdny"))))
    (properties `((upstream-name . "JuicyPixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mmap")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Twinside/Juicy.Pixels")
    (synopsis
     "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>

This library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.")
    (license license:bsd-3)))

haskell-8.10-JuicyPixels

(define-public haskell-8.10-MonadRandom
  (package
    (name "haskell-8.10-MonadRandom")
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
       ("3" "0317qhagxgn41ql1w7isnw4jqddnw394wglqahm3c569pbr3lmdv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/MonadRandom")
    (synopsis "Random-number generation monad.")
    (description "Support for computations which consume random values.")
    (license license:bsd-3)))

haskell-8.10-MonadRandom

(define-public haskell-8.10-QuickCheck
  (package
    (name "haskell-8.10-QuickCheck")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)))
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

haskell-8.10-QuickCheck

(define-public haskell-8.10-SafeSemaphore
  (package
    (name "haskell-8.10-SafeSemaphore")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "https://github.com/ChrisKuklewicz/SafeSemaphore")
    (synopsis "Much safer replacement for QSemN, QSem, and SampleVar")
    (description
     "This provides a much safer semaphore than the QSem, QSemN, SampleVar in base.
Those base modules are not exception safe and can be broken by killThread.
See <https://github.com/ChrisKuklewicz/SafeSemaphore> for more details.")
    (license license:bsd-3)))

haskell-8.10-SafeSemaphore

(define-public haskell-8.10-abstract-deque
  (package
    (name "haskell-8.10-abstract-deque")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
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

haskell-8.10-abstract-deque

(define-public haskell-8.10-alternative-vector
  (package
    (name "haskell-8.10-alternative-vector")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/athanclark/alternative-vector#readme")
    (synopsis "Use vectors instead of lists for many and some")
    (description "")
    (license license:bsd-3)))

haskell-8.10-alternative-vector

(define-public haskell-8.10-ansi-wl-pprint
  (package
    (name "haskell-8.10-ansi-wl-pprint")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)))
    (home-page "http://github.com/ekmett/ansi-wl-pprint")
    (synopsis
     "The Wadler/Leijen Pretty Printer for colored ANSI terminal output")
    (description
     "This is a pretty printing library based on Wadler's paper [\"A Prettier Printer\"](https://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf).
It has been enhanced with support for ANSI terminal colored output using the [ansi-terminal](https://hackage.haskell.org/package/ansi-terminal) package.")
    (license license:bsd-3)))

haskell-8.10-ansi-wl-pprint

(define-public haskell-8.10-ascii-case
  (package
    (name "haskell-8.10-ascii-case")
    (version "1.0.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-case/ascii-case-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vncwrngvqlzacs8084s7xvbj02zpq5irciwmv8cxh8pwjk2vhpw"))))
    (properties `((upstream-name . "ascii-case") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ascii-char)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "ASCII letter case")
    (description
     "This package defines a @@Case@@ type that describes the two varieties of ASCII letter: capital and small.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-ascii-case

(define-public haskell-8.10-ascii-group
  (package
    (name "haskell-8.10-ascii-group")
    (version "1.0.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-group/ascii-group-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0swkv40jlcix8qs62zszkbsvw0k833l6rmrx21jzxvfi41pycd5r"))))
    (properties `((upstream-name . "ascii-group") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ascii-char)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "ASCII character groups")
    (description
     "This package defines a @@Group@@ type that describes the two varieties of ASCII character, and provides some functions for classifying characters by group.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-ascii-group

(define-public haskell-8.10-ascii-predicates
  (package
    (name "haskell-8.10-ascii-predicates")
    (version "1.0.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-predicates/ascii-predicates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pl1pw6z1yc2r21v70qrm1wfnbzyq8cl0z3xn0268w1qx4qlnpng"))))
    (properties `((upstream-name . "ascii-predicates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ascii-char)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Various categorizations of ASCII characters")
    (description
     "This package provides a variety of predicates on the ASCII character set.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-ascii-predicates

(define-public haskell-8.10-ascii-superset
  (package
    (name "haskell-8.10-ascii-superset")
    (version "1.0.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-superset/ascii-superset-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1filq9yr5lmwmn6m5ax0hpnyxlk160qbw2ikvjk4rs6078xwjwl9"))))
    (properties `((upstream-name . "ascii-superset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ascii-char)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Representing ASCII with refined supersets")
    (description
     "This package defines classes which describe what subset of a type is valid as ASCII, as well as a type constructor representing a value of a superset that is known to be valid ASCII.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-ascii-superset

(define-public haskell-8.10-assert-failure
  (package
    (name "haskell-8.10-assert-failure")
    (version "0.1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/assert-failure/assert-failure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k8a7g82dsj50djpy2kvhnfljb3y9w9dx9mpymvn6hxd6rir4bpm"))))
    (properties `((upstream-name . "assert-failure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)))
    (home-page "https://github.com/Mikolaj/assert-failure")
    (synopsis "Syntactic sugar improving 'assert' and 'error'")
    (description "This library contains syntactic sugar that makes it easier
to write simple contracts with 'assert' and 'error'
and report the values that violate contracts.")
    (license license:bsd-3)))

haskell-8.10-assert-failure

(define-public haskell-8.10-async-extra
  (package
    (name "haskell-8.10-async-extra")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-extra/async-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hyc27mphjpc7m9khs47ch0q6j6hy2hmibk82vzrfmc3rfjxa1hd"))))
    (properties `((upstream-name . "async-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "https://github.com/agrafix/async-extra#readme")
    (synopsis "Useful concurrent combinators")
    (description "Various concurrent combinators")
    (license license:expat)))

haskell-8.10-async-extra

(define-public haskell-8.10-attoparsec
  (package
    (name "haskell-8.10-attoparsec")
    (version "0.13.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec/attoparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vv88m5m7ynjrg114psp4j4s69f1a5va3bvn293vymqrma7g7q11"))))
    (properties `((upstream-name . "attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("2" "1syz7hf2h8c8vwqniymblnyciwqh4hvflfp1h0ywg7ad8q4gqr0v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (home-page "https://github.com/bgamari/attoparsec")
    (synopsis "Fast combinator parsing for bytestrings and text")
    (description
     "A fast parser combinator library, aimed particularly at dealing
efficiently with network protocols and complicated text/binary
file formats.")
    (license license:bsd-3)))

haskell-8.10-attoparsec

(define-public haskell-8.10-base16
  (package
    (name "haskell-8.10-base16")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base16/base16-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1k7gp9nxzsd9d22ma7r4wbigck3bv71jycdjgr2n72bv5yzvrrzn"))))
    (properties `((upstream-name . "base16") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)))
    (home-page "https://github.com/emilypi/base16")
    (synopsis "Fast RFC 4648-compliant Base16 encoding")
    (description
     "RFC 4648-compliant Base16 encodings and decodings.
This library provides performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-8.10-base16

(define-public haskell-8.10-base64
  (package
    (name "haskell-8.10-base64")
    (version "0.4.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base64/base64-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hdqswxhgjrg8akl5v99hbm02gkpagsbx4i7fxbzdys1k0bj3gxw"))))
    (properties `((upstream-name . "base64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "153csdlayv1zh6xrjrdbdczj6xl5xnipa5pg4l3i3dmaxiynzgcp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-byteorder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)))
    (home-page "https://github.com/emilypi/base64")
    (synopsis "A modern RFC 4648-compliant Base64 library")
    (description
     "RFC 4648-compliant Base64 with an eye towards performance and modernity (additional support for RFC 7049 standards)")
    (license license:bsd-3)))

haskell-8.10-base64

(define-public haskell-8.10-blaze-textual
  (package
    (name "haskell-8.10-blaze-textual")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-textual/blaze-textual-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zjnwnjpcpnnm0815h9ngr3a3iy0szsnb3nrcavkbx4905s9k4bs"))))
    (properties `((upstream-name . "blaze-textual") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-fnative" "-f-integer-simple")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/bos/blaze-textual")
    (synopsis "Fast rendering of common datatypes")
    (description
     "A library for efficiently rendering Haskell datatypes to
bytestrings.

/Note/: if you use GHCi or Template Haskell, please see the
@@README@@ file for important details about building this package,
and other packages that depend on it:
<https://github.com/bos/blaze-textual#readme>")
    (license license:bsd-3)))

haskell-8.10-blaze-textual

(define-public haskell-8.10-both
  (package
    (name "haskell-8.10-both")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-zero)))
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

haskell-8.10-both

(define-public haskell-8.10-byte-order
  (package
    (name "haskell-8.10-byte-order")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-primitive-unaligned)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-wide-word)))
    (home-page "https://github.com/andrewthad/byte-order")
    (synopsis "Portable big-endian and little-endian conversions")
    (description
     "This library provides an interface to portably work with byte
arrays whose contents are known to be of a fixed endianness.
There are two ways to use this module. See the `System.ByteOrder`
module for more documentation.")
    (license license:bsd-3)))

haskell-8.10-byte-order

(define-public haskell-8.10-category
  (package
    (name "haskell-8.10-category")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/category/category-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0iya7q3b1z1bxv4amsibmc1lrmf7dng76nzcnanwy300jm1n42w7"))))
    (properties `((upstream-name . "category") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13yj1v414llr5cxdd5f3wdy75si2hj7f3k1f6w7kwj84gbrii5rr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-alg)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-dual)))
    (home-page "https://hackage.haskell.org/package/category")
    (synopsis "Categorical types and classes")
    (description "")
    (license license:bsd-3)))

haskell-8.10-category

(define-public haskell-8.10-chan
  (package
    (name "haskell-8.10-chan")
    (version "0.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/chan/chan-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ks74njh8fj9dh8qhydwjyqdx8lrdj5fif455cxfshvdbwhcnvwj"))))
    (properties `((upstream-name . "chan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)))
    (home-page "https://github.com/athanclark/chan#readme")
    (synopsis "Some extra kit for Chans")
    (description
     "Please see the README on Github at <https://github.com/athanclark/chan#readme>")
    (license license:bsd-3)))

haskell-8.10-chan

(define-public haskell-8.10-chunked-data
  (package
    (name "haskell-8.10-chunked-data")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Typeclasses for dealing with various chunked data representations")
    (description
     "See docs and README at <http://www.stackage.org/package/chunked-data>")
    (license license:expat)))

haskell-8.10-chunked-data

(define-public haskell-8.10-cmark
  (package
    (name "haskell-8.10-cmark")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
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

haskell-8.10-cmark

(define-public haskell-8.10-cmark-gfm
  (package
    (name "haskell-8.10-cmark-gfm")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cmark-gfm/cmark-gfm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0krf1991bny99raw3961wp6hqdi0xmzcz18yisfp172kvd4cx33q"))))
    (properties `((upstream-name . "cmark-gfm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pkgconfig")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "https://github.com/kivikakk/cmark-gfm-hs")
    (synopsis "Fast, accurate GitHub Flavored Markdown parser and renderer")
    (description
     "This package provides Haskell bindings for
<https://github.com/github/cmark-gfm libcmark-gfm>, the reference
parser for <https://github.github.com/gfm/ GitHub Flavored Markdown>, a fully
specified variant of Markdown. It includes sources for
libcmark-gfm (0.29.0.gfm.3) and does not require prior installation of the
C library.")
    (license license:bsd-3)))

haskell-8.10-cmark-gfm

(define-public haskell-8.10-colorize-haskell
  (package
    (name "haskell-8.10-colorize-haskell")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-haskell-lexer)))
    (home-page "http://github.com/yav/colorize-haskell")
    (synopsis "Highligt Haskell source")
    (description "Highligt Haskell source")
    (license license:bsd-3)))

haskell-8.10-colorize-haskell

(define-public haskell-8.10-commutative
  (package
    (name "haskell-8.10-commutative")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commutative/commutative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0scrc0bwa3ggvhmhmj0pvi7q7sbm495nc8m30jjjcp5wbd26mg6c"))))
    (properties `((upstream-name . "commutative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/athanclark/commutative#readme")
    (synopsis "Commutative binary operations.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/commutative#readme>")
    (license license:bsd-3)))

haskell-8.10-commutative

(define-public haskell-8.10-comonad
  (package
    (name "haskell-8.10-comonad")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "http://github.com/ekmett/comonad/")
    (synopsis "Comonads")
    (description "Comonads.")
    (license license:bsd-3)))

haskell-8.10-comonad

(define-public haskell-8.10-composition-extra
  (package
    (name "haskell-8.10-composition-extra")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-composition)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)))
    (home-page "https://hackage.haskell.org/package/composition-extra")
    (synopsis "Combinators for unorthodox structure composition")
    (description "")
    (license license:bsd-3)))

haskell-8.10-composition-extra

(define-public haskell-8.10-contravariant-extras
  (package
    (name "haskell-8.10-contravariant-extras")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-template-haskell-compat-v0208)))
    (home-page "https://github.com/nikita-volkov/contravariant-extras")
    (synopsis "Extras for the \"contravariant\" package")
    (description "")
    (license license:expat)))

haskell-8.10-contravariant-extras

(define-public haskell-8.10-convertible
  (package
    (name "haskell-8.10-convertible")
    (version "1.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/convertible/convertible-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v18ap1mccnndgxmbfgyjdicg8jlss01bd5fq8a576dr0h4sgyg9"))))
    (properties `((upstream-name . "convertible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildtests")
       #:cabal-revision
       ("1" "19rz01rlcflyljzkf47g5xs2w1blnji7s8vsh0wimil4c0wahazj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)))
    (home-page "http://hackage.haskell.org/package/convertible")
    (synopsis "Typeclasses and instances for converting between types")
    (description
     "convertible provides a typeclass with a single function
that is designed to help convert between different types: numeric
values, dates and times, and the like.  The conversions perform bounds
checking and return a pure Either value.  This means that you need
not remember which specific function performs the conversion you
desire.

Also included in the package are optional instances that provide
conversion for various numeric and time types, as well as utilities
for writing your own instances.

Finally, there is a function that will raise an exception on
bounds-checking violation, or return a bare value otherwise,
implemented in terms of the safer function described above.

Convertible is also used by HDBC 2.0 for handling marshalling of
data to and from databases.

Convertible is backed by an extensive test suite and passes tests
on GHC and Hugs.")
    (license license:bsd-3)))

haskell-8.10-convertible

(define-public haskell-8.10-ctrie
  (package
    (name "haskell-8.10-ctrie")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ctrie/ctrie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0568v5m5k8dyqx5sfcr13mh1qay13m1wbcjszxiidvb5kz9sdqr0"))))
    (properties `((upstream-name . "ctrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "https://github.com/mcschroeder/ctrie")
    (synopsis "Non-blocking concurrent map")
    (description "A non-blocking concurrent map implementation based on
/lock-free concurrent hash tries/ (aka /Ctries/).")
    (license license:expat)))

haskell-8.10-ctrie

(define-public haskell-8.10-data-ascii
  (package
    (name "haskell-8.10-data-ascii")
    (version "1.0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-ascii/data-ascii-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0j8mk1gdxcczhwcs75rx50zh6vxv2vkd1rf5n6q4ryn8wm5r3gcr"))))
    (properties `((upstream-name . "data-ascii") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "Type-safe, bytestring-based ASCII values")
    (description "Type-safe, bytestring-based ASCII values.")
    (license license:bsd-3)))

haskell-8.10-data-ascii

(define-public haskell-8.10-data-default-instances-case-insensitive
  (package
    (name "haskell-8.10-data-default-instances-case-insensitive")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-case-insensitive/data-default-instances-case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d0a0y3fgq820brwbad58xsz1imxfjsiwg9s9h577l6ri9q3a0a3"))))
    (properties `((upstream-name . "data-default-instances-case-insensitive")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0w8k7zjxwbj1y2acxadg956pfpf7y70jc23wgjivqvafbv69ra25")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instance for CI type from case-insensitive package.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> instance (Default s, FoldCase s) => Default (CI s) where
>     def = mk def")
    (license license:bsd-3)))

haskell-8.10-data-default-instances-case-insensitive

(define-public haskell-8.10-data-default-instances-vector
  (package
    (name "haskell-8.10-data-default-instances-vector")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-data-default-instances-vector

(define-public haskell-8.10-derulo
  (package
    (name "haskell-8.10-derulo")
    (version "1.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/derulo/derulo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mdmrzypl0hjbnwn9ij1bjfk4j07r0c9gw7h3wdhl82a8zcxggpc"))))
    (properties `((upstream-name . "derulo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "https://hackage.haskell.org/package/derulo")
    (synopsis "Parse and render JSON simply.")
    (description "Derulo parses and renders JSON simply.")
    (license license:expat)))

haskell-8.10-derulo

(define-public haskell-8.10-earcut
  (package
    (name "haskell-8.10-earcut")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/earcut/earcut-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nssl7n697rzwlfb5lq4kl64j4mrb4i19rp5kzjpmc7iin9fzxsf"))))
    (properties `((upstream-name . "earcut") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/reanimate/earcut")
    (synopsis "Binding to C++ earcut library.")
    (description "")
    (license license:isc)))

haskell-8.10-earcut

(define-public haskell-8.10-edit-distance
  (package
    (name "haskell-8.10-edit-distance")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "http://github.com/phadej/edit-distance")
    (synopsis "Levenshtein and restricted Damerau-Levenshtein edit distances")
    (description
     "Optimized edit distances for fuzzy matching, including Levenshtein and restricted Damerau-Levenshtein algorithms.")
    (license license:bsd-3)))

haskell-8.10-edit-distance

(define-public haskell-8.10-elerea
  (package
    (name "haskell-8.10-elerea")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
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

haskell-8.10-elerea

(define-public haskell-8.10-emojis
  (package
    (name "haskell-8.10-emojis")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
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

haskell-8.10-emojis

(define-public haskell-8.10-every
  (package
    (name "haskell-8.10-every")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/every/every-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rc0g5rn8hzglm2b4biaf8jvj5kb2j1s5vsxnm24q2gvrvjg03sx"))))
    (properties `((upstream-name . "every") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)))
    (home-page "https://github.com/athanclark/every#readme")
    (synopsis "Run a process every so often.")
    (description "")
    (license license:bsd-3)))

haskell-8.10-every

(define-public haskell-8.10-exception-mtl
  (package
    (name "haskell-8.10-exception-mtl")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-mtl/exception-mtl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d51rsrcjy52d62f51hb6fdg0fj9b0qbv8hqf6523pndwsxbq4zc"))))
    (properties `((upstream-name . "exception-mtl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-exception-transformers)))
    (home-page "https://hackage.haskell.org/package/exception-mtl")
    (synopsis "Exception monad transformer instances for mtl classes.")
    (description
     "This package provides exception monad transformer instances for
the classes defined by mtl.")
    (license license:bsd-3)))

haskell-8.10-exception-mtl

(define-public haskell-8.10-fclabels
  (package
    (name "haskell-8.10-fclabels")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)))
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

haskell-8.10-fclabels

(define-public haskell-8.10-filelock
  (package
    (name "haskell-8.10-filelock")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filelock/filelock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06a44i7a956d7xkk2na4090xj2a7b7a228pk4spmccs4x20ymssh"))))
    (properties `((upstream-name . "filelock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)))
    (home-page "http://github.com/takano-akio/filelock")
    (synopsis "Portable interface to file locking (flock / LockFileEx)")
    (description "This package provides an interface to Windows and Unix
file locking functionalities.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-filelock

(define-public haskell-8.10-flow
  (package
    (name "haskell-8.10-flow")
    (version "1.0.23")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flow/flow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "064dzij0qj0psnis7fcr3zklkkm8bncl448c9k1na1g7h46660mv"))))
    (properties `((upstream-name . "flow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "https://hackage.haskell.org/package/flow")
    (synopsis "Write more understandable Haskell.")
    (description
     "Flow provides operators for writing more understandable Haskell.")
    (license license:expat)))

haskell-8.10-flow

(define-public haskell-8.10-freenect
  (package
    (name "haskell-8.10-freenect")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages openkinect) libfreenect)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages openkinect) libfreenect)))
    (home-page "https://github.com/chrisdone/freenect")
    (synopsis "Interface to the Kinect device.")
    (description "Interface to the Kinect device. Currently supports
depth perception. (No video or audio.)")
    (license license:bsd-3)))

haskell-8.10-freenect

(define-public haskell-8.10-gauge
  (package
    (name "haskell-8.10-gauge")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-basement)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-foundation)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/vincenthz/hs-gauge")
    (synopsis "small framework for performance measurement and analysis")
    (description
     "This library provides a powerful but simple way to measure software
performance.  It provides both a framework for executing and
analysing benchmarks and a set of driver functions that makes it
easy to build and run benchmarks, and to analyse their results.")
    (license license:bsd-3)))

haskell-8.10-gauge

(define-public haskell-8.10-generic-constraints
  (package
    (name "haskell-8.10-generic-constraints")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (home-page "https://github.com/yairchu/generic-constraints")
    (synopsis "Constraints via Generic")
    (description "Standalone deriving without boiler-plate")
    (license license:bsd-3)))

haskell-8.10-generic-constraints

(define-public haskell-8.10-generic-functor
  (package
    (name "haskell-8.10-generic-functor")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ap-normalize)))
    (home-page "https://gitlab.com/lysxia/generic-functor")
    (synopsis "Deriving generalized functors with GHC.Generics")
    (description "Derive @@fmap@@, and other @@fmap@@-like functions where the
parameter of the functor could occur anywhere.

See the README for details.")
    (license license:expat)))

haskell-8.10-generic-functor

(define-public haskell-8.10-generic-optics
  (package
    (name "haskell-8.10-generic-optics")
    (version "2.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-optics/generic-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04szdpcaxiaw9n1cry020mcrcirypfq3qxwr7h8h34b2mffvnl25"))))
    (properties `((upstream-name . "generic-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generic-lens-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)))
    (home-page "https://github.com/kcsongor/generic-lens")
    (synopsis "Generically derive traversals, lenses and prisms.")
    (description
     "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.

The library exposes an @@<https://hackage.haskell.org/package/optics optics>@@ interface. For a van Laarhoven interface, see
@@<https://hackage.haskell.org/package/generic-lens generic-lens>@@.")
    (license license:bsd-3)))

haskell-8.10-generic-optics

(define-public haskell-8.10-ghc-events
  (package
    (name "haskell-8.10-ghc-events")
    (version "0.17.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-events/ghc-events-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dkzxpfiqpd1i1lhrssp1b242111228ap113iavarr9hb7y8rl72"))))
    (properties `((upstream-name . "ghc-events") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/ghc-events")
    (synopsis "Library and tool for parsing .eventlog files from GHC")
    (description "Parses .eventlog files emitted by GHC 6.12.1 and later.
Includes the ghc-events tool permitting, in particular,
to dump an event log file as text.")
    (license license:bsd-3)))

haskell-8.10-ghc-events

(define-public haskell-8.10-ghc-lib
  (package
    (name "haskell-8.10-ghc-lib")
    (version "8.10.7.20220219")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ghc-lib/ghc-lib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s6llxxw4gqa73xdwdiyzdr3rrpmz85zjif964w039clpl4g16rx"))))
    (properties `((upstream-name . "ghc-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-alex)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)))
    (home-page "https://github.com/digital-asset/ghc-lib")
    (synopsis "The GHC API, decoupled from GHC versions")
    (description
     "A package equivalent to the @@ghc@@ package, but which can be loaded on many compiler versions.")
    (license license:bsd-3)))

haskell-8.10-ghc-lib

(define-public haskell-8.10-ghc-parser
  (package
    (name "haskell-8.10-ghc-parser")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-parser/ghc-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sm93n6w2zqkp4dhr604bk67sis1rb6jb6imsxr64vjfm7bkigln"))))
    (properties `((upstream-name . "ghc-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-cpphs)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-happy)))
    (home-page "https://github.com/gibiansky/IHaskell")
    (synopsis "Haskell source parser from GHC.")
    (description "")
    (license license:expat)))

haskell-8.10-ghc-parser

(define-public haskell-8.10-groom
  (package
    (name "haskell-8.10-groom")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)))
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

haskell-8.10-groom

(define-public haskell-8.10-hashable-time
  (package
    (name "haskell-8.10-hashable-time")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashable-time/hashable-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zw2gqagpbwq1hgx5rlvy6mhsnb15cxg3pmhawwv0ylfihmx2yxh"))))
    (properties `((upstream-name . "hashable-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("1" "151gxiprdlj3masa95vvrxal9nwa72n3p1y15xyj4hp7mvvl4s2l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)))
    (home-page "https://hackage.haskell.org/package/hashable-time")
    (synopsis "Hashable instances for Data.Time")
    (description "Hashable instances for types in Data.Time")
    (license license:bsd-3)))

haskell-8.10-hashable-time

(define-public haskell-8.10-hashtables
  (package
    (name "haskell-8.10-hashtables")
    (version "1.2.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashtables/hashtables-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1z3h2h0wbiwzj9zs17bggynzgqa77gxcj8h4x28dq3sha81j5rx8"))))
    (properties `((upstream-name . "hashtables") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-funsafe-tricks" "-f-bounds-checking" "-f-debug" "-f-detailed-profiling" "-f-sse42" "-f-portable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/gregorycollins/hashtables")
    (synopsis "Mutable hash tables in the ST monad")
    (description
     "This package provides a couple of different implementations of mutable hash
tables in the ST monad, as well as a typeclass abstracting their common
operations, and a set of wrappers to use the hash tables in the IO monad.

/QUICK START/: documentation for the hash table operations is provided in the
\"Data.HashTable.Class\" module, and the IO wrappers (which most users will
probably prefer) are located in the \"Data.HashTable.IO\" module.

This package currently contains three hash table implementations:

1. \"Data.HashTable.ST.Cuckoo\" contains an implementation of \\\"cuckoo
hashing\\\" as introduced by Pagh and Rodler in 2001 (see
<http://en.wikipedia.org/wiki/Cuckoo_hashing>). Cuckoo hashing has
worst-case /O(1)/ lookups and can reach a high \\\"load factor\\\", in which
the table can perform acceptably well even when approaching 90% full.
Randomized testing shows this implementation of cuckoo hashing to be
slightly faster on insert and slightly slower on lookup than
\"Data.HashTable.ST.Basic\", while being more space efficient by about a
half-word per key-value mapping. Cuckoo hashing, like the basic hash
table implementation using linear probing, can suffer from long delays
when the table is resized.

2. \"Data.HashTable.ST.Basic\" contains a basic open-addressing hash table
using linear probing as the collision strategy. On a pure speed basis it
should currently be the fastest available Haskell hash table
implementation for lookups, although it has a higher memory overhead
than the other tables and can suffer from long delays when the table is
resized because all of the elements in the table need to be rehashed.

3. \"Data.HashTable.ST.Linear\" contains a linear hash table (see
<http://en.wikipedia.org/wiki/Linear_hashing>), which trades some insert
and lookup performance for higher space efficiency and much shorter
delays when expanding the table. In most cases, benchmarks show this
table to be currently slightly faster than @@Data.HashTable@@ from the
Haskell base library.

It is recommended to create a concrete type alias in your code when using this
package, i.e.:

> import qualified Data.HashTable.IO as H
>
> type HashTable k v = H.BasicHashTable k v
>
> foo :: IO (HashTable Int Int)
> foo = do
>     ht <- H.new
>     H.insert ht 1 1
>     return ht

Firstly, this makes it easy to switch to a different hash table implementation,
and secondly, using a concrete type rather than leaving your functions abstract
in the HashTable class should allow GHC to optimize away the typeclass
dictionaries.

This package accepts a couple of different cabal flags:

* @@unsafe-tricks@@, default /ON/. If this flag is enabled, we use some
unsafe GHC-specific tricks to save indirections (namely @@unsafeCoerce#@@
and @@reallyUnsafePtrEquality#@@. These techniques rely on assumptions
about the behaviour of the GHC runtime system and, although they've been
tested and should be safe under normal conditions, are slightly
dangerous. Caveat emptor. In particular, these techniques are
incompatible with HPC code coverage reports.

* @@sse42@@, default /OFF/. If this flag is enabled, we use some SSE 4.2
instructions (see <http://en.wikipedia.org/wiki/SSE4>, first available on
Intel Core 2 processors) to speed up cache-line searches for cuckoo
hashing.

* @@bounds-checking@@, default /OFF/. If this flag is enabled, array accesses
are bounds-checked.

* @@debug@@, default /OFF/. If turned on, we'll rudely spew debug output to
stdout.

* @@portable@@, default /OFF/. If this flag is enabled, we use only pure
Haskell code and try not to use unportable GHC extensions. Turning this
flag on forces @@unsafe-tricks@@ and @@sse42@@ /OFF/.

Please send bug reports to
<https://github.com/gregorycollins/hashtables/issues>.")
    (license license:bsd-3)))

haskell-8.10-hashtables

(define-public haskell-8.10-haskey-btree
  (package
    (name "haskell-8.10-haskey-btree")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskey-btree/haskey-btree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11zkj4a5j2f7g9kann4f0ab27aq30v6yn8cyn9hn7mhc3gslrx9m"))))
    (properties `((upstream-name . "haskey-btree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/haskell-haskey/haskey-btree")
    (synopsis "B+-tree implementation in Haskell.")
    (description
     "This package provides two B+-tree implementations. The first one is a pure
B+-tree of a specific order, while the second one is an impure one backed
by a page allocator.

For more information on how to use this package, visit
<https://github.com/haskell-haskey/haskey-btree>")
    (license license:bsd-3)))

haskell-8.10-haskey-btree

(define-public haskell-8.10-hexml
  (package
    (name "haskell-8.10-hexml")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hexml/hexml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0amy5gjk1sqj5dq8a8gp7d3z9wfhcflhxkssijnklnfn5s002x4k"))))
    (properties `((upstream-name . "hexml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)))
    (home-page "https://github.com/ndmitchell/hexml#readme")
    (synopsis "XML subset DOM parser")
    (description
     "An XML DOM-style parser, that only parses a subset of XML, but is designed to be fast.")
    (license license:bsd-3)))

haskell-8.10-hexml

(define-public haskell-8.10-hinotify
  (package
    (name "haskell-8.10-hinotify")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hinotify/hinotify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06pqfikfa61i45g92b65br83kplwmizqkm42yp8d0ddgmq0b21qk"))))
    (properties `((upstream-name . "hinotify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)))
    (home-page "https://github.com/kolmodin/hinotify")
    (synopsis "Haskell binding to inotify")
    (description
     "This library provides a wrapper to the Linux Kernel's inotify feature,
allowing applications to subscribe to notifications when a file is
accessed or modified.")
    (license license:bsd-3)))

haskell-8.10-hinotify

(define-public haskell-8.10-hmatrix
  (package
    (name "haskell-8.10-hmatrix")
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
       (list "-f-openblas" "-f-disable-default-paths" "-f-no-random_r")
       #:cabal-revision
       ("1" "154n2hddfk90rqd9fwwhfjnq6ab701nglsrdjss71brza93wjy8d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-storable-complex)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
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

haskell-8.10-hmatrix

(define-public haskell-8.10-hspec-expectations
  (package
    (name "haskell-8.10-hspec-expectations")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-nanospec)))
    (home-page "https://github.com/hspec/hspec-expectations#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/hspec/hspec-expectations#readme>")
    (license license:expat)))

haskell-8.10-hspec-expectations

(define-public haskell-8.10-hspec-expectations-pretty-diff
  (package
    (name "haskell-8.10-hspec-expectations-pretty-diff")
    (version "0.7.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations-pretty-diff/hspec-expectations-pretty-diff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wksgvdj50yc3p4bg3wmacf2w75v7p8nlq1g33z5amrwllig6m49"))))
    (properties `((upstream-name . "hspec-expectations-pretty-diff")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hscolour)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-nicify-lib)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unicode-show)))
    (home-page
     "https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme>")
    (license license:expat)))

haskell-8.10-hspec-expectations-pretty-diff

(define-public haskell-8.10-hw-prim
  (package
    (name "haskell-8.10-hw-prim")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-prim/hw-prim-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gqn7s0ki9x951n5whyh0pkcbbqz4kpcn80xxpsv1c0v34946xv7"))))
    (properties `((upstream-name . "hw-prim") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")
       #:cabal-revision
       ("2" "14x1bijg1d8jdh963rxrlwzlqa1p1vh0bc7hjdysk8dzbrc7fbmv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mmap)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/haskell-works/hw-prim#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-8.10-hw-prim

(define-public haskell-8.10-hxt-regex-xmlschema
  (package
    (name "haskell-8.10-hxt-regex-xmlschema")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hxt-charproperties)))
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

haskell-8.10-hxt-regex-xmlschema

(define-public haskell-8.10-hybrid-vectors
  (package
    (name "haskell-8.10-hybrid-vectors")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hybrid-vectors/hybrid-vectors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mw69xjdncj6kqa2mvag8xc79y4jijnh2qg6ahrhifb4vxqw7ij1"))))
    (properties `((upstream-name . "hybrid-vectors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16wpgh7cxgmap5acyccbff02b2jvhqiad5m3fknribpbahvmkk88")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/ekmett/hybrid-vectors")
    (synopsis "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors")
    (description "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors.")
    (license license:bsd-3)))

haskell-8.10-hybrid-vectors

(define-public haskell-8.10-inbox
  (package
    (name "haskell-8.10-inbox")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/inbox/inbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12012di97775da8ijv0qjwaxls36kvly0j7nvqqj15ai3kf9yarq"))))
    (properties `((upstream-name . "inbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-error-or)))
    (home-page
     "https://github.com/luntain/error-or-bundle/blob/master/inbox#readme")
    (synopsis "Inbox for asychronous messages")
    (description "Facilitates testing of asynchronous behavior")
    (license license:bsd-3)))

haskell-8.10-inbox

(define-public haskell-8.10-include-file
  (package
    (name "haskell-8.10-include-file")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://hackage.haskell.org/package/include-file")
    (synopsis "Inclusion of files in executables at compile-time.")
    (description "Inclusion of files in source code via Template Haskell.

When distributing executables, sometimes it is required
to attach some other resources in files. Using this library
(together with the TemplateHaskell extension) you avoid this
problem by including those files inside the executable at
compile time.")
    (license license:bsd-3)))

haskell-8.10-include-file

(define-public haskell-8.10-io-memoize
  (package
    (name "haskell-8.10-io-memoize")
    (version "1.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-memoize/io-memoize-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ga85wdvz67jjx8qh6f687kfikcrfmp7winn13v6na7vlaqs2ly7"))))
    (properties `((upstream-name . "io-memoize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)))
    (home-page "https://github.com/DanBurton/io-memoize")
    (synopsis "Memoize IO actions")
    (description
     "Transform an IO action into a similar IO action
that performs the original action only once.

You can choose to perform the original action
in one of two ways:

(1) lazily (might never be performed)

(2) eagerly (concurrently performed)

Special thanks to shachaf and headprogrammingczar from #haskell irc
for helping me reason about the behavior of this library.")
    (license license:bsd-3)))

haskell-8.10-io-memoize

(define-public haskell-8.10-iterable
  (package
    (name "haskell-8.10-iterable")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/BioHaskell/iterable")
    (synopsis "API for hierarchical multilevel collections.")
    (description
     "Two-argument typeclass that generalizes Foldable, Functor, and Traversable for monomorphic
multi-level collections. Transitive instances allow for folding and mapping over any
subordinate level of the hierarchy.

Main interface for hPDB library.

Contains convenience TemplateHaskell methods for generating Iterable instances that have Vector containers.")
    (license license:bsd-3)))

haskell-8.10-iterable

(define-public haskell-8.10-kind-generics-th
  (package
    (name "haskell-8.10-kind-generics-th")
    (version "0.2.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kind-generics-th/kind-generics-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lgz7wvz5jvq65r7zmymcfx3hwskw2b45a3vfwj0pgnddpjmh9n4"))))
    (properties `((upstream-name . "kind-generics-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-kind-generics)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/kind-generics-th")
    (synopsis "Template Haskell support for generating `GenericK` instances")
    (description "This package provides Template Haskell functionality to
automatically derive @@GenericK@@ instances (from the
@@kind-generics@@ library).")
    (license license:bsd-3)))

haskell-8.10-kind-generics-th

(define-public haskell-8.10-lenz
  (package
    (name "haskell-8.10-lenz")
    (version "0.4.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lenz/lenz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13yz9lxxll928knxjgvdxdbnv911pxkd9d5jly1hdnhyymahv6lf"))))
    (properties `((upstream-name . "lenz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0mzvvddl7wwa4z3rxwdwlaazv0wbg7lfynsab7lya6dzkw4nl7m4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-hs-functors)))
    (home-page "https://hackage.haskell.org/package/lenz")
    (synopsis "Van Laarhoven lenses")
    (description "")
    (license license:bsd-3)))

haskell-8.10-lenz

(define-public haskell-8.10-lrucache
  (package
    (name "haskell-8.10-lrucache")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)))
    (home-page "http://github.com/chowells79/lrucache")
    (synopsis "a simple, pure LRU cache")
    (description
     "This package contains a simple, pure LRU cache, implemented in
terms of \"Data.Map\".

It also contains a mutable IO wrapper providing atomic updates to
an LRU cache.")
    (license license:bsd-3)))

haskell-8.10-lrucache

(define-public haskell-8.10-markov-chain
  (package
    (name "haskell-8.10-markov-chain")
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
       #:configure-flags (list "-fsplitbase")
       #:cabal-revision
       ("1" "10qpqdpnkjw72hxkrbxxwwjaf4lxk3shhippwkpn6m5s80fgzlwg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
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

haskell-8.10-markov-chain

(define-public haskell-8.10-math-functions
  (package
    (name "haskell-8.10-math-functions")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/bos/math-functions")
    (synopsis "Collection of tools for numeric computations")
    (description
     "This library contain collection of various utilities for numerical
computing. So far there're special mathematical functions,
compensated summation algorithm, summation of series, root finding
for real functions, polynomial summation and Chebyshev
polynomials.")
    (license license:bsd-2)))

haskell-8.10-math-functions

(define-public haskell-8.10-maximal-cliques
  (package
    (name "haskell-8.10-maximal-cliques")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/maximal-cliques")
    (synopsis "Enumerate all maximal cliques of a graph.")
    (description
     "Enumerate all maximal cliques of a graph. A clique is a set of nodes such that there is an edge between every node and every other node in the set. A maximal clique is a clique such that no node may be added while preserving the clique property.")
    (license license:bsd-3)))

haskell-8.10-maximal-cliques

(define-public haskell-8.10-megaparsec
  (package
    (name "haskell-8.10-megaparsec")
    (version "9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/megaparsec/megaparsec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00953zvxfyjibw8c1ssmixxh0cwn59pz24zbh6s34rk3v14vqa3j"))))
    (properties `((upstream-name . "megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "00vjc5b1x6yd0jqsbcahvghlkwai65dl1ib6744a0lhsa9vsni12")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (home-page "https://github.com/mrkkrp/megaparsec")
    (synopsis "Monadic parser combinators")
    (description
     "This is an industrial-strength monadic parser combinator library.
Megaparsec is a feature-rich package that tries to find a nice balance
between speed, flexibility, and quality of parse errors.")
    (license license:bsd-2)))

haskell-8.10-megaparsec

(define-public haskell-8.10-memory
  (package
    (name "haskell-8.10-memory")
    (version "0.15.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/memory/memory-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0a9mxcddnqn4359hk59d6l2zbh0vp154yb5vs1a8jw4l38n8kzz3"))))
    (properties `((upstream-name . "memory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsupport_bytestring" "-fsupport_foundation" "-fsupport_basement" "-fsupport_deepseq")
       #:cabal-revision
       ("2" "0fd40y5byy4cq4x6m66zxadxbw96gzswplgfyvdqnjlasq28xw68")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-basement)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-foundation)))
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

haskell-8.10-memory

(define-public haskell-8.10-mersenne-random
  (package
    (name "haskell-8.10-mersenne-random")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)))
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

haskell-8.10-mersenne-random

(define-public haskell-8.10-mersenne-random-pure64
  (package
    (name "haskell-8.10-mersenne-random-pure64")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
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

haskell-8.10-mersenne-random-pure64

(define-public haskell-8.10-monad-control
  (package
    (name "haskell-8.10-monad-control")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
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

haskell-8.10-monad-control

(define-public haskell-8.10-monad-control-aligned
  (package
    (name "haskell-8.10-monad-control-aligned")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://github.com/athanclark/monad-control#readme")
    (synopsis
     "Just like monad-control, except less efficient, and the monadic state terms are all * -> *")
    (description "")
    (license license:bsd-3)))

haskell-8.10-monad-control-aligned

(define-public haskell-8.10-monad-coroutine
  (package
    (name "haskell-8.10-monad-coroutine")
    (version "0.9.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-coroutine/monad-coroutine-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ns8863695hm4yabd4908znpn1bqc7ayfnzl9bkkqhs70rff2dmh"))))
    (properties `((upstream-name . "monad-coroutine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-monad-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://hub.darcs.net/blamario/SCC.wiki/")
    (synopsis
     "Coroutine monad transformer for suspending and resuming monadic computations")
    (description
     "This package defines a monad transformer, applicable to any monad, that allows the monadic computation to suspend and
to be later resumed. The transformer is parameterized by an arbitrary functor, used to store the suspended
computation's resumption.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-monad-coroutine

(define-public haskell-8.10-monad-memo
  (package
    (name "haskell-8.10-monad-memo")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-memo/monad-memo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lw5pdkk39zxckwha4wjfjg5hxlvxa5gjmw385zmanjx34wkzg2c"))))
    (properties `((upstream-name . "monad-memo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/EduardSergeev/monad-memo")
    (synopsis "Memoization monad transformer")
    (description
     "Memoization monad transformer supporting most of the standard monad transformers and a range of memoization cache types: from default pure maps to extremely fast mutable vectors

To add memoization behaviour to a monadic function:

1) Add 'Control.Monad.Memo.memo' combinator at the point when memoization is required (i.e. recursive call)

>import Control.Monad.Memo
>
>fibm 0 = return 0
>fibm 1 = return 1
>fibm n = do
>  n1 <- memo fibm (n-1)
>  n2 <- memo fibm (n-2)
>  return (n1+n2)

2) Use appropriate /*eval*/ or /*run*/ function to evaluate resulting `MonadMemo` monad:

>startEvalMemo (fibm 100)

See detailed description and examples: \"Control.Monad.Memo\"")
    (license license:bsd-3)))

haskell-8.10-monad-memo

(define-public haskell-8.10-monad-par-extras
  (package
    (name "haskell-8.10-monad-par-extras")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-par-extras/monad-par-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bl4bd6jzdc5zm20q1g67ppkfh6j6yn8fwj6msjayj621cck67p2"))))
    (properties `((upstream-name . "monad-par-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-abstract-par)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://github.com/simonmar/monad-par")
    (synopsis "Combinators and extra features for Par monads")
    (description "The modules below provide additional
data structures, and other added capabilities
layered on top of the 'Par' monad.")
    (license license:bsd-3)))

haskell-8.10-monad-par-extras

(define-public haskell-8.10-monad-resumption
  (package
    (name "haskell-8.10-monad-resumption")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)))
    (home-page "https://github.com/igraves/monad-resumption#readme")
    (synopsis "Resumption and reactive resumption monads for Haskell.")
    (description
     "This package contains the definitions of Resumption and Reactive Resumption Monads.")
    (license license:bsd-3)))

haskell-8.10-monad-resumption

(define-public haskell-8.10-netlib-ffi
  (package
    (name "haskell-8.10-netlib-ffi")
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
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0q5psp0gi0il6yz99sxmq7x3m7axwzh2qbimcvqbw623zbzgycyg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-guarded-allocation)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-storable-complex)))
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

haskell-8.10-netlib-ffi

(define-public haskell-8.10-network-transport-composed
  (package
    (name "haskell-8.10-network-transport-composed")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-transport-composed/network-transport-composed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i2rwl1hwbp87kvnhfc6h0v2zy1hbfgrz0wx1vicd9m76nzbynx3"))))
    (properties `((upstream-name . "network-transport-composed")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-network-transport)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "Compose network transports")
    (description "")
    (license license:bsd-3)))

haskell-8.10-network-transport-composed

(define-public haskell-8.10-operational
  (package
    (name "haskell-8.10-operational")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
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

haskell-8.10-operational

(define-public haskell-8.10-optics-th
  (package
    (name "haskell-8.10-optics-th")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-th/optics-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mxi4bwgpl02g7clbs4m5p16i64s5lp13811yhg66i50rnqwpw40"))))
    (properties `((upstream-name . "optics-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0kr473b0ibxi99fqcg86xl2pq8l2m1yra548v9p278rpqa8g51p7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/optics-th")
    (synopsis "Optics construction using TemplateHaskell")
    (description
     "This package is part of the @@<https://hackage.haskell.org/package/optics optics>@@
package family.  It provides machinery to construct optics using @@TemplateHaskell@@.

See the @@template-haskell-optics@@ package for optics to work with @@template-haskell@@ types.")
    (license license:bsd-3)))

haskell-8.10-optics-th

(define-public haskell-8.10-pcg-random
  (package
    (name "haskell-8.10-pcg-random")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-entropy)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
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

haskell-8.10-pcg-random

(define-public haskell-8.10-pcre-light
  (package
    (name "haskell-8.10-pcre-light")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
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

haskell-8.10-pcre-light

(define-public haskell-8.10-place-cursor-at
  (package
    (name "haskell-8.10-place-cursor-at")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-X11)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-unicode-symbols)
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

haskell-8.10-place-cursor-at

(define-public haskell-8.10-polynomials-bernstein
  (package
    (name "haskell-8.10-polynomials-bernstein")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/polynomials-bernstein")
    (synopsis "A solver for systems of polynomial equations in bernstein form")
    (description
     "This library defines an optimized type for representing polynomials
in Bernstein form, as well as instances of numeric classes and other
manipulation functions, and a solver of systems of polynomial
equations in this form.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-polynomials-bernstein

(define-public haskell-8.10-primitive-unlifted
  (package
    (name "haskell-8.10-primitive-unlifted")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-unlifted/primitive-unlifted-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gilzgclpvz200sybw86nmdm7084nrklscq48cs36qqlgcd0wcwb"))))
    (properties `((upstream-name . "primitive-unlifted") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y3zdwbs1fdzspj1k95jyjrhm7za38gb6ada031bp02ifxbvsvsf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)))
    (home-page "https://github.com/haskell-primitive/primitive-unlifted")
    (synopsis "Primitive GHC types with unlifted types inside")
    (description "Primitive GHC types with unlifted types inside. There used
to be a module named `Data.Primitive.UnliftedArray` in the
`primitive` library. However, the techniques it used were
unsound in the presence of certain FFI calls. This library
a successor to that module.")
    (license license:bsd-3)))

haskell-8.10-primitive-unlifted

(define-public haskell-8.10-print-console-colors
  (package
    (name "haskell-8.10-print-console-colors")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)))
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

haskell-8.10-print-console-colors

(define-public haskell-8.10-protolude
  (package
    (name "haskell-8.10-protolude")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protolude/protolude-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1b6wprbwfdjyvds2bm6na0fbqgzdkj5ikkk33whbkyh3krd3i0s0"))))
    (properties `((upstream-name . "protolude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ghc-paths)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mtl-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "https://github.com/sdiehl/protolude")
    (synopsis "A small prelude.")
    (description "A sensible set of defaults for writing custom Preludes.")
    (license license:expat)))

haskell-8.10-protolude

(define-public haskell-8.10-pureMD5
  (package
    (name "haskell-8.10-pureMD5")
    (version "2.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pureMD5/pureMD5-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qwkvxwi9wh6knn69rg2hvc8ngmv1if77kmpcnp0xqr0l30fwavq"))))
    (properties `((upstream-name . "pureMD5") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-crypto-api)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://hackage.haskell.org/package/pureMD5")
    (synopsis
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.")
    (description
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports
the crypto-api class interface.")
    (license license:bsd-3)))

haskell-8.10-pureMD5

(define-public haskell-8.10-raw-strings-qq
  (package
    (name "haskell-8.10-raw-strings-qq")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
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

haskell-8.10-raw-strings-qq

(define-public haskell-8.10-rcu
  (package
    (name "haskell-8.10-rcu")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rcu/rcu-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1p2cg6xy5cjdizqialv9y8qylwdri5fhby2xh04fnhpjapsrbc7l"))))
    (properties `((upstream-name . "rcu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-unstable" "-f-measure-synchronize")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "http://github.com/ekmett/rcu/")
    (synopsis "Read-Copy-Update for Haskell")
    (description "Read-Copy-Update for Haskell.")
    (license license:bsd-3)))

haskell-8.10-rcu

(define-public haskell-8.10-re2
  (package
    (name "haskell-8.10-re2")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
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

haskell-8.10-re2

(define-public haskell-8.10-records-sop
  (package
    (name "haskell-8.10-records-sop")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generics-sop)))
    (home-page "https://hackage.haskell.org/package/records-sop")
    (synopsis "Record subtyping and record utilities with generics-sop")
    (description "This library provides utilities for working with labelled
single-constructor record types via generics-sop.

It also provides functions to safely cast between record
types if the target type has a subset of the fields (with
the same names) of the source type.")
    (license license:bsd-3)))

haskell-8.10-records-sop

(define-public haskell-8.10-regex-compat
  (package
    (name "haskell-8.10-regex-compat")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-regex-base)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-posix)))
    (home-page "https://wiki.haskell.org/Regular_expressions")
    (synopsis "Replaces/enhances \"Text.Regex\"")
    (description
     "One module compat layer over <//hackage.haskell.org/package/regex-posix regex-posix> to replace \"Text.Regex\".

See also <https://wiki.haskell.org/Regular_expressions> for more information.")
    (license license:bsd-3)))

haskell-8.10-regex-compat

(define-public haskell-8.10-runmemo
  (package
    (name "haskell-8.10-runmemo")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-memocombinators)))
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

haskell-8.10-runmemo

(define-public haskell-8.10-salve
  (package
    (name "haskell-8.10-salve")
    (version "1.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/salve/salve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00haa87rpwhy89zg31k0fwizg97i65kqx5gzikm4fjxr7j8ds1xb"))))
    (properties `((upstream-name . "salve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "https://hackage.haskell.org/package/salve")
    (synopsis "Semantic version numbers and constraints.")
    (description
     "Salve provides semantic version (SemVer) numbers and constraints (ranges).")
    (license license:expat)))

haskell-8.10-salve

(define-public haskell-8.10-seqalign
  (package
    (name "haskell-8.10-seqalign")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/seqalign")
    (synopsis "Sequence Alignment")
    (description
     "FFI wrappers for global and local string alignment functions")
    (license license:bsd-3)))

haskell-8.10-seqalign

(define-public haskell-8.10-shell-escape
  (package
    (name "haskell-8.10-shell-escape")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/solidsnack/shell-escape")
    (synopsis "Shell escaping library.")
    (description
     "Shell escaping library, offering both Bourne shell and Bash style escaping
of ByteStrings.")
    (license license:bsd-3)))

haskell-8.10-shell-escape

(define-public haskell-8.10-simple-cmd
  (package
    (name "haskell-8.10-simple-cmd")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-cmd/simple-cmd-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r8rnv8zzp8jfvgrjls3zjdx235s9gh2kr3sv4w08dndq1rakxjv"))))
    (properties `((upstream-name . "simple-cmd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)))
    (home-page "https://hackage.haskell.org/package/simple-cmd")
    (synopsis "Simple String-based process commands")
    (description
     "Simple wrappers over System.Process
(readProcess, readProcessWithExitCode, rawSystem, and createProcess).
The idea is to provide some common idioms for calling out to commands
from programs.  For more advanced shell-scripting or streaming
use turtle, shelly, command, etc.")
    (license license:bsd-3)))

haskell-8.10-simple-cmd

(define-public haskell-8.10-special-values
  (package
    (name "haskell-8.10-special-values")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/special-values/special-values-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kkdw2c4d2hha99v9f89ahmifjxp7fxmxyfwq9a8xk6s0h9xs51w"))))
    (properties `((upstream-name . "special-values") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1vv5gydjd65jniifl3mnch8bzvpvdahi913gsa3kv5zijwhad699")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (home-page "https://github.com/minad/special-values#readme")
    (synopsis "Typeclass providing special values")
    (description
     "Special values are provided by a SpecialValues typeclass. Those can be used for example by QuickCheck, see quickcheck-special.")
    (license license:expat)))

haskell-8.10-special-values

(define-public haskell-8.10-speculate
  (package
    (name "haskell-8.10-speculate")
    (version "0.4.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/speculate/speculate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05yypi40k5ijml8zbv195pfl5xa1l5cz4sx5mz721jr6dvag6jn8"))))
    (properties `((upstream-name . "speculate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-express)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-leancheck)))
    (home-page "https://github.com/rudymatela/speculate#readme")
    (synopsis "discovery of properties about Haskell functions")
    (description
     "Speculate automatically discovers laws about Haskell functions.
Give Speculate a bunch of Haskell functions and it will discover laws like:

* equations, such as @@ id x == x @@;

* inequalities, such as @@ 0 <= x * x @@;

* conditional equations, such as @@ x \\<= 0  ==\\>  x + abs x == 0 @@.")
    (license license:bsd-3)))

haskell-8.10-speculate

(define-public haskell-8.10-static-text
  (package
    (name "haskell-8.10-static-text")
    (version "0.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/static-text/static-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mphxd0wpr4qwyznff96qn5b1xb2x9k956aghap6nnabnyhgvqr4"))))
    (properties `((upstream-name . "static-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring" "-ftext" "-fvector")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/dzhus/static-text#readme")
    (synopsis
     "Lists, Texts, ByteStrings and Vectors of statically known length")
    (description
     "static-text provides type-level safety for basic operations on string-like types (finite lists of elements), such as Data.Text, String (and all lists), Data.ByteString and Data.Vector. Use it when you need static guarantee on lengths of strings produced in your code.")
    (license license:bsd-3)))

haskell-8.10-static-text

(define-public haskell-8.10-stb-image-redux
  (package
    (name "haskell-8.10-stb-image-redux")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stb-image-redux/stb-image-redux-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01xm1vlyfmnnvr5vy9ry7cjwv9ffip0s4zlxcyvfnsgja08l5ni4"))))
    (properties `((upstream-name . "stb-image-redux") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/typedrat/stb-image-redux#readme")
    (synopsis "Image loading and writing microlibrary")
    (description
     "See <https://github.com/typedrat/stb-image-redux/blob/master/README.md>.")
    (license license:bsd-3)))

haskell-8.10-stb-image-redux

(define-public haskell-8.10-string-qq
  (package
    (name "haskell-8.10-string-qq")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "https://hackage.haskell.org/package/string-qq")
    (synopsis
     "QuasiQuoter for non-interpolated strings, texts and bytestrings.")
    (description
     "QuasiQuoter for non-interpolated strings, texts and bytestrings, useful for writing multi-line IsString literals.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-string-qq

(define-public haskell-8.10-tardis
  (package
    (name "haskell-8.10-tardis")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tardis/tardis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ffmpdvnmr1s3rh3kpqqscsbz2rq4s7k8nfc93zw9m4mchg37waw"))))
    (properties `((upstream-name . "tardis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1krk42qgdg10s6pxp805zv7z4c7mlhbhk15l07v9i750im1k73v3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)))
    (home-page "https://github.com/DanBurton/tardis")
    (synopsis "Bidirectional state monad transformer")
    (description
     "A Tardis is a combination of both a forwards and a backwards
state transformer, providing two state values that \\\"travel\\\"
in opposite directions.

A detailed description of what a Tardis is and how to use it
can be found in the documentation for Control.Monad.Tardis.")
    (license license:bsd-3)))

haskell-8.10-tardis

(define-public haskell-8.10-tce-conf
  (package
    (name "haskell-8.10-tce-conf")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "http://hub.darcs.net/dino/tce-conf")
    (synopsis "Very simple config file reading")
    (description
     "This package contains modules for runtime reading of very simple config files of the `key=value` style or as a Haskell data structure to be deserialized with `Read`. The modules support files with blank lines and simple single-line comments, but nothing else.")
    (license license:bsd-3)))

haskell-8.10-tce-conf

(define-public haskell-8.10-tensorflow-test
  (package
    (name "haskell-8.10-tensorflow-test")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/tensorflow/haskell#readme")
    (synopsis "Some common functions for test suites.")
    (description "This package provides common utility functions for the
TensorFlow test suites.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-tensorflow-test

(define-public haskell-8.10-text-latin1
  (package
    (name "haskell-8.10-text-latin1")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-latin1/text-latin1-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wxbv6m567n3330baw2k0xxd50nhn2k6w3lgmpk6zq7x1jp84x3c"))))
    (properties `((upstream-name . "text-latin1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-checked)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "https://github.com/mvv/text-latin1")
    (synopsis "Latin-1 (including ASCII) utility functions")
    (description
     "This package provides various functions over the ASCII ang Latin-1
portions of the 'Char' and 'Word8' data types.")
    (license license:bsd-3)))

haskell-8.10-text-latin1

(define-public haskell-8.10-tf-random
  (package
    (name "haskell-8.10-tf-random")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
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

haskell-8.10-tf-random

(define-public haskell-8.10-thread-local-storage
  (package
    (name "haskell-8.10-thread-local-storage")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
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

haskell-8.10-thread-local-storage

(define-public haskell-8.10-throttle-io-stream
  (package
    (name "haskell-8.10-throttle-io-stream")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/throttle-io-stream/throttle-io-stream-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13icrx3nrgidnb7j3ixqz93rcsc63qmczkvjyg74pjrb0rlsi5z8"))))
    (properties `((upstream-name . "throttle-io-stream") (hidden? . #f)))
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
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stm-chans)))
    (home-page "https://github.com/mtesseract/throttle-io-stream#readme")
    (synopsis "Throttler between arbitrary IO producer and consumer functions")
    (description
     "This packages provides functionality for throttling IO using general IO callbacks. The throttling depends on a provided configuration. The supported throttling modes are producer throttling, consumer throttling or producer & consumer throttling.")
    (license license:bsd-3)))

haskell-8.10-throttle-io-stream

(define-public haskell-8.10-through-text
  (package
    (name "haskell-8.10-through-text")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/through-text/through-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kdl36n98kajaa7v7js2sy8bi09p8rrxmlfcclcfc1l92bd2aclk"))))
    (properties `((upstream-name . "through-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "1h55jhl5igpli19qirk0wv5gl7ihhw0glbha18xpghfz2z6fjwl3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)))
    (home-page "https://www.github.com/bergmark/through-text")
    (synopsis
     "Convert textual types through Text without needing O(n^2) instances.")
    (description
     "Convert textual types through Text without needing O(n^2) instances.

See the README for more information: <https://github.com/bergmark/through-text/blob/master/README.md>")
    (license license:bsd-3)))

haskell-8.10-through-text

(define-public haskell-8.10-tile
  (package
    (name "haskell-8.10-tile")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "https://github.com/caneroj1/tile#readme")
    (synopsis "Slippy map tile functionality.")
    (description "Tile/lonlat conversion utilities for slippy maps.")
    (license license:bsd-3)))

haskell-8.10-tile

(define-public haskell-8.10-timer-wheel
  (package
    (name "haskell-8.10-timer-wheel")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timer-wheel/timer-wheel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16v663mcsj0h17x4jriq50dps3m3f8wqcsm19kl48vrs7f4mp07s"))))
    (properties `((upstream-name . "timer-wheel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1lgavl752g968ki042dxha8d28dm8zfs8mzm5zl8xk4p0wi1iwdv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-psqueues)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/mitchellwrosen/timer-wheel")
    (synopsis "A timer wheel")
    (description
     "This library provides a timer wheel data structure for

* (Almost) /O(1)/ registering @@IO@@ actions to fire after a given amount of time
* /O(1)/ canceling registered actions

It is similar to @@TimerManager@@ from \"GHC.Event\", but supports recurring
timers, can scale to handle many more registered timers.
")
    (license license:bsd-3)))

haskell-8.10-timer-wheel

(define-public haskell-8.10-topograph
  (package
    (name "haskell-8.10-topograph")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/topograph/topograph-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sd2gyirkdgwcll76zxw954wdsyxzajn59xa9zk55fbrsm6w24cv"))))
    (properties `((upstream-name . "topograph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "05pkc4byw9xqz4048sdlk24h311kw41nr18f3vs1p1vssyy10g36")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-topograph

(define-public haskell-8.10-transformers-bifunctors
  (package
    (name "haskell-8.10-transformers-bifunctors")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)))
    (home-page "https://github.com/jacobstanley/transformers-bifunctors")
    (synopsis "Bifunctors over monad transformers.")
    (description "Bifunctors over monad transformers.")
    (license license:bsd-3)))

haskell-8.10-transformers-bifunctors

(define-public haskell-8.10-tsv2csv
  (package
    (name "haskell-8.10-tsv2csv")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "https://hackage.haskell.org/package/tsv2csv")
    (synopsis "Convert tsv to csv")
    (description "Convert tab-delimited text to Excel-style comma-delimited.")
    (license license:bsd-3)))

haskell-8.10-tsv2csv

(define-public haskell-8.10-ttrie
  (package
    (name "haskell-8.10-ttrie")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ttrie/ttrie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1w875avd1hh2zrg52p7ynnnwkg0v9n1i4imcqwamfycasz4yy3py"))))
    (properties `((upstream-name . "ttrie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "http://github.com/mcschroeder/ttrie")
    (synopsis "Contention-free STM hash map")
    (description
     "A contention-free STM hash map.
\\\"Contention-free\\\" means that the map will never cause spurious conflicts.
A transaction operating on the map will only ever have to retry if
another transaction is operating on the same key at the same time.

This is an implementation of the /transactional trie/,
which is basically a /lock-free concurrent hash trie/ lifted into STM.
For a detailed discussion, including an evaluation of its performance,
see Chapter 4 of <https://github.com/mcschroeder/thesis my master's thesis>.")
    (license license:expat)))

haskell-8.10-ttrie

(define-public haskell-8.10-tuple-sop
  (package
    (name "haskell-8.10-tuple-sop")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generics-sop)))
    (home-page "https://github.com/Ferdinand-vW/tuple-sop#readme")
    (synopsis "functions on n-ary tuples using generics-sop")
    (description
     "Exports various functions on n-ary tuples. This library uses generics-sop to create a generic representation of n-ary product types. To regain type inference, the exported functions work only on tuples with at most 10 components.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-tuple-sop

(define-public haskell-8.10-type-map
  (package
    (name "haskell-8.10-type-map")
    (version "0.1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-map/type-map-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0612y1n2ydnb5sw411a1xnjmp03qhjl3iv9pnwdj59l17bcmqq21"))))
    (properties `((upstream-name . "type-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/Lysxia/type-map")
    (synopsis "Type-indexed maps")
    (description
     "Maps where keys are types and values can have types depending on their keys.")
    (license license:expat)))

haskell-8.10-type-map

(define-public haskell-8.10-typerep-map
  (package
    (name "haskell-8.10-typerep-map")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typerep-map/typerep-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j7f7k0knpdsh41p0bzg7yv32nz684s3vrxc8pig5ckmmadc4mh4"))))
    (properties `((upstream-name . "typerep-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/kowainik/typerep-map")
    (synopsis "Efficient implementation of a dependent map with types as keys")
    (description
     "A dependent map from type representations to values of these types.

Here is an illustration of such a map:

>     TMap
> ---------------
>  Int  -> 5
>  Bool -> True
>  Char -> 'x'

In addition to @@TMap@@, we provide @@TypeRepMap@@ parametrized by a
@@vinyl@@-style interpretation. This data structure is equivalent to @@DMap
TypeRep@@, but with significantly more efficient lookups.")
    (license license:mpl2.0)))

haskell-8.10-typerep-map

(define-public haskell-8.10-tzdata
  (package
    (name "haskell-8.10-tzdata")
    (version "0.2.20211021.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tzdata/tzdata-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x1pqdlbhh8qhbbfpc01jlcamk2ihwxbs9m8kgm8abd9fk0bwa0a"))))
    (properties `((upstream-name . "tzdata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/ysangkok/haskell-tzdata")
    (synopsis "Time zone database (as files and as a module)")
    (description
     "The goal of this package is to distribute the standard Time Zone
Database in a cabal package, so that it can be used in Haskell
programs uniformly on all platforms.

This package currently ships the @@2021e@@ version of the time zone
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

haskell-8.10-tzdata

(define-public haskell-8.10-unagi-chan
  (package
    (name "haskell-8.10-unagi-chan")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-atomic-primops)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
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

haskell-8.10-unagi-chan

(define-public haskell-8.10-unboxed-ref
  (package
    (name "haskell-8.10-unboxed-ref")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unboxed-ref/unboxed-ref-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gvpp35mzx6ydwhwqdv319pl4yw7g4pyayciry83lnh3a3asisv4"))))
    (properties `((upstream-name . "unboxed-ref") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "https://github.com/winterland1989/unboxed-ref")
    (synopsis "Fast unboxed references for ST and IO monad")
    (description "Fast unboxed references for ST and IO monad")
    (license license:bsd-3)))

haskell-8.10-unboxed-ref

(define-public haskell-8.10-universe-instances-base
  (package
    (name "haskell-8.10-universe-instances-base")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-base/universe-instances-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17g4xf7zcxd9a2am0p401b0l87ynxwpm3c2lqc4vmw4sz071kccb"))))
    (properties `((upstream-name . "universe-instances-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "03g5vpmmymfjx4p1l2v275vn2dknb7m91wmh01aw8f26224f7sjw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from the base package")
    (description
     "__DEPRECATED:__ instances are moved to @@universe-base@@ package
@@universe-base@@ package provides instances for types from GHC-boot libraries.")
    (license license:bsd-3)))

haskell-8.10-universe-instances-base

(define-public haskell-8.10-universe-instances-trans
  (package
    (name "haskell-8.10-universe-instances-trans")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-trans/universe-instances-trans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dp37rb61g5mqj4kfkgi6zxcjhrm9npz197sksqwg1skgjdgbbn6"))))
    (properties `((upstream-name . "universe-instances-trans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0fyhcfkriq4zcvqrr33x5ywxxmpyjjy0bz78pq2x38vpgqagiz4p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis
     "Universe instances for types from the transformers and mtl packages")
    (description
     "__DEPRECATED:__ instances are moved to @@universe-base@@ package

@@universe-base@@ package provides instances for types from GHC-boot libraries.")
    (license license:bsd-3)))

haskell-8.10-universe-instances-trans

(define-public haskell-8.10-universe-reverse-instances
  (package
    (name "haskell-8.10-universe-reverse-instances")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-universe-base)))
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

haskell-8.10-universe-reverse-instances

(define-public haskell-8.10-universe-some
  (package
    (name "haskell-8.10-universe-some")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1nay61awkq8w8v0bvqg7d187wzmylkj515q6glpw5n8nclp0imvk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-some)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-universe-base)))
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

haskell-8.10-universe-some

(define-public haskell-8.10-utf8-string
  (package
    (name "haskell-8.10-utf8-string")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "https://github.com/glguy/utf8-string/")
    (synopsis "Support for reading and writing UTF8 Strings")
    (description "A UTF8 layer for Strings. The utf8-string
package provides operations for encoding UTF8
strings to Word8 lists and back, and for reading and
writing UTF8 without truncation.")
    (license license:bsd-3)))

haskell-8.10-utf8-string

(define-public haskell-8.10-uuid-types
  (package
    (name "haskell-8.10-uuid-types")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uuid-types/uuid-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pd7xd6inkmmwjscf7pmiwqjks9y0gi1p8ahqbapvh34gadvhs5d"))))
    (properties `((upstream-name . "uuid-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "10hpjshw6z8xnjpga47cazfdd4i27qvy4ash13lza2lmwf36k9ww")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://github.com/haskell-hvr/uuid")
    (synopsis "Type definitions for Universally Unique Identifiers")
    (description
     "This library contains type definitions for
<https://en.wikipedia.org/wiki/UUID Universally Unique Identifiers (UUID)>
(as specified in
<http://tools.ietf.org/html/rfc4122 RFC 4122>)
and basic conversion functions.

See also the <https://hackage.haskell.org/package/uuid 'uuid' package>
providing a high-level API for managing the different UUID versions.")
    (license license:bsd-3)))

haskell-8.10-uuid-types

(define-public haskell-8.10-vector-algorithms
  (package
    (name "haskell-8.10-vector-algorithms")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/erikd/vector-algorithms/")
    (synopsis "Efficient algorithms for vector arrays")
    (description
     "Efficient algorithms for sorting vector arrays. At some stage
other vector algorithms may be added.")
    (license license:bsd-3)))

haskell-8.10-vector-algorithms

(define-public haskell-8.10-vector-binary-instances
  (package
    (name "haskell-8.10-vector-binary-instances")
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
       ("3" "0av0k2gn90mf5ai74575bd368x73ljnr7xlkwsqmrs6zdzkw0i83")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-vector-binary-instances

(define-public haskell-8.10-vector-buffer
  (package
    (name "haskell-8.10-vector-buffer")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/vector-buffer")
    (synopsis "A buffer compatible with Data.Vector.*")
    (description
     "A buffer type that can easily be converted to a Data.Vector.Storable vector
from the vector package and compatible with hmatrix.

Elements are pushed into the buffer.  When the buffer is converted to a read-only
vector, the last-pushed element occurs at the end.

Monadic map functions also operate so that the last-pushed element is treated last.")
    (license license:bsd-3)))

haskell-8.10-vector-buffer

(define-public haskell-8.10-vector-builder
  (package
    (name "haskell-8.10-vector-builder")
    (version "0.3.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-builder/vector-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rajpk54n9anlqixxr2qn7qximhhy7qa4gg4czwmj5zl5ysj2br4"))))
    (properties `((upstream-name . "vector-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "026yz76lqi7pllcnix8jwsqa7dp775nd0ssf6pkjbqnmlgf5iblf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/nikita-volkov/vector-builder")
    (synopsis "Vector builder")
    (description
     "An API for efficient and convenient construction of vectors.
It provides the composable `Builder` abstraction, which has instances of the `Monoid` and `Semigroup` classes.

[Usage]

First you use the `Builder` abstraction to specify the structure of the vector.
Then you execute the builder to actually produce the vector.

[Example]

The following code shows how you can efficiently concatenate different datastructures into a single immutable vector:

>
>import qualified Data.Vector as A
>import qualified VectorBuilder.Builder as B
>import qualified VectorBuilder.Vector as C
>
>
>myVector :: A.Vector a -> [a] -> a -> A.Vector a
>myVector vector list element =
>  C.build builder
>  where
>    builder =
>      B.vector vector <>
>      B.foldable list <>
>      B.singleton element")
    (license license:expat)))

haskell-8.10-vector-builder

(define-public haskell-8.10-witch
  (package
    (name "haskell-8.10-witch")
    (version "0.3.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/witch/witch-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qrvr8ink179xq69gwawvph942hkv798kvy303si5l1vmni6skh3"))))
    (properties `((upstream-name . "witch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)))
    (home-page "https://hackage.haskell.org/package/witch")
    (synopsis "Convert values from one type into another.")
    (description "Witch converts values from one type into another.")
    (license license:isc)))

haskell-8.10-witch

