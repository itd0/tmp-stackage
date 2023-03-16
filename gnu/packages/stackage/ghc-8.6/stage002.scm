;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage002)
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
(define-public haskell-8.6-Ebnf2ps
  (package
    (name "haskell-8.6-Ebnf2ps")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)))
    (home-page "https://github.com/FranklinChen/Ebnf2ps")
    (synopsis "Peter's Syntax Diagram Drawing Tool")
    (description "Ebnf2ps generates nice looking syntax diagrams in EPS
and FIG format from EBNF specifications and from yacc,
bison, and Happy input grammars. The diagrams can be
immediatedly included in TeX/LaTeX documents and in
texts created with other popular document preparation
systems.")
    (license license:bsd-3)))

haskell-8.6-Ebnf2ps

(define-public haskell-8.6-FontyFruity
  (package
    (name "haskell-8.6-FontyFruity")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (home-page "https://hackage.haskell.org/package/FontyFruity")
    (synopsis "A true type file format loader")
    (description "A haskell Truetype file parser.

You can load a font file and extract some curves to be
drawed with a library like Rasterific .")
    (license license:bsd-3)))

haskell-8.6-FontyFruity

(define-public haskell-8.6-GLFW-b
  (package
    (name "haskell-8.6-GLFW-b")
    (version "3.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLFW-b/GLFW-b-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rjfdbx4pv7knlm4g8rh90jndc2a8zjmrdmfm2wvwna08h385g5g"))))
    (properties `((upstream-name . "GLFW-b") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-bindings-GLFW)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxcursor)
                             (@ (gnu packages xorg) libxi)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxxf86vm)))
    (home-page "https://hackage.haskell.org/package/GLFW-b")
    (synopsis "Bindings to GLFW OpenGL library")
    (description
     "Bindings to GLFW (<http://www.glfw.org/>), an open source, multi-platform
library for creating windows with OpenGL contexts and managing input and
events.

GLFW-b depends on bindings-GLFW
(<http://hackage.haskell.org/package/bindings-GLFW>), which, as of the time
of this writing, binds to GLFW 3.2.1, released 2016-08-18
(<http://www.glfw.org/Version-3.2.1-released.html>
<http://www.glfw.org/changelog.html>).

If you've used GLFW < 3 before, you should read the transition guide
(<http://www.glfw.org/docs/3.0/moving.html>).")
    (license license:bsd-3)))

haskell-8.6-GLFW-b

(define-public haskell-8.6-HUnit-approx
  (package
    (name "haskell-8.6-HUnit-approx")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)))
    (home-page "https://github.com/goldfirere/HUnit-approx")
    (synopsis "Approximate equality for floating point numbers with HUnit")
    (description
     "This package exports combinators useful in comparing floating-point numbers
in HUnit tests, by using approximate equality.")
    (license license:bsd-3)))

haskell-8.6-HUnit-approx

(define-public haskell-8.6-JuicyPixels
  (package
    (name "haskell-8.6-JuicyPixels")
    (version "3.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels/JuicyPixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qacrnz2qcykj3f6c4k2p8qd31pa2slpv3ykfblgizrfh3401q6x"))))
    (properties `((upstream-name . "JuicyPixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mmap")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Twinside/Juicy.Pixels")
    (synopsis
     "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>

This library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.")
    (license license:bsd-3)))

haskell-8.6-JuicyPixels

(define-public haskell-8.6-LibZip
  (package
    (name "haskell-8.6-LibZip")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/LibZip/LibZip-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ps2psza80jz566c9k377cqn536g6jcbs558jkc60gra5lhf0dm6"))))
    (properties `((upstream-name . "LibZip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-bindings-libzip)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "http://bitbucket.org/astanin/hs-libzip/")
    (synopsis "Bindings to libzip, a library for manipulating zip archives.")
    (description
     "libzip is a C library for reading, creating, and modifying zip archives.
This package allows to use it from Haskell code.")
    (license license:bsd-3)))

haskell-8.6-LibZip

(define-public haskell-8.6-QuickCheck
  (package
    (name "haskell-8.6-QuickCheck")
    (version "2.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/QuickCheck/QuickCheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0426j43af8v3qmdjjqxivazsvr3a2brac8yw09vpgpjkb2m0nmkv"))))
    (properties `((upstream-name . "QuickCheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplatehaskell")
       #:cabal-revision
       ("1" "0ynhx1n135b0zg539c9m7gp75dykm93pqqlp5xz2w4kmpxjp4vk3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-splitmix)))
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

haskell-8.6-QuickCheck

(define-public haskell-8.6-SafeSemaphore
  (package
    (name "haskell-8.6-SafeSemaphore")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)))
    (home-page "https://github.com/ChrisKuklewicz/SafeSemaphore")
    (synopsis "Much safer replacement for QSemN, QSem, and SampleVar")
    (description
     "This provides a much safer semaphore than the QSem, QSemN, SampleVar in base.
Those base modules are not exception safe and can be broken by killThread.
See <https://github.com/ChrisKuklewicz/SafeSemaphore> for more details.")
    (license license:bsd-3)))

haskell-8.6-SafeSemaphore

(define-public haskell-8.6-alternative-vector
  (package
    (name "haskell-8.6-alternative-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/athanclark/alternative-vector#readme")
    (synopsis "Use vectors instead of lists for many and some")
    (description "")
    (license license:bsd-3)))

haskell-8.6-alternative-vector

(define-public haskell-8.6-ansi-wl-pprint
  (package
    (name "haskell-8.6-ansi-wl-pprint")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)))
    (home-page "http://github.com/ekmett/ansi-wl-pprint")
    (synopsis
     "The Wadler/Leijen Pretty Printer for colored ANSI terminal output")
    (description
     "This is a pretty printing library based on Wadler's paper [\"A Prettier Printer\"](https://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf).
It has been enhanced with support for ANSI terminal colored output using the [ansi-terminal](https://hackage.haskell.org/package/ansi-terminal) package.")
    (license license:bsd-3)))

haskell-8.6-ansi-wl-pprint

(define-public haskell-8.6-both
  (package
    (name "haskell-8.6-both")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/both/both-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13hf6j8qfaqw446ifyx0y60j9kvlvm0yj3r4h910bcszfjvyhkkg"))))
    (properties `((upstream-name . "both") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fi2lvxcdnj9bi683kl840xpyj12wxwxvqbi86a6qp4r8bq8442n")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001) haskell-8.6-zero)))
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

haskell-8.6-both

(define-public haskell-8.6-category
  (package
    (name "haskell-8.6-category")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001) haskell-8.6-alg)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-dual)))
    (home-page "https://hackage.haskell.org/package/category")
    (synopsis "Categorical types and classes")
    (description "")
    (license license:bsd-3)))

haskell-8.6-category

(define-public haskell-8.6-chunked-data
  (package
    (name "haskell-8.6-chunked-data")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Typeclasses for dealing with various chunked data representations")
    (description
     "See docs and README at <http://www.stackage.org/package/chunked-data>")
    (license license:expat)))

haskell-8.6-chunked-data

(define-public haskell-8.6-clumpiness
  (package
    (name "haskell-8.6-clumpiness")
    (version "0.17.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clumpiness/clumpiness-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h1n349sq2lpikpvzzarz74200b8k7dkdjpp4rpkx79xdlfc58pc"))))
    (properties `((upstream-name . "clumpiness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-tree-fun)))
    (home-page "https://hackage.haskell.org/package/clumpiness")
    (synopsis "Calculate the clumpiness of leaf properties in a tree")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-clumpiness

(define-public haskell-8.6-cmark
  (package
    (name "haskell-8.6-cmark")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)))
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

haskell-8.6-cmark

(define-public haskell-8.6-cmark-gfm
  (package
    (name "haskell-8.6-cmark-gfm")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cmark-gfm/cmark-gfm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qbhcirg7a0r68l3ifq8q9clnkai5hyhk62jb232bjplrl6y4c23"))))
    (properties `((upstream-name . "cmark-gfm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pkgconfig")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)))
    (home-page "https://github.com/kivikakk/cmark-gfm-hs")
    (synopsis "Fast, accurate GitHub Flavored Markdown parser and renderer")
    (description
     "This package provides Haskell bindings for
<https://github.com/github/cmark-gfm libcmark-gfm>, the reference
parser for <https://github.github.com/gfm/ GitHub Flavored Markdown>, a fully
specified variant of Markdown. It includes sources for
libcmark-gfm (0.29.0.gfm.0) and does not require prior installation of the
C library.")
    (license license:bsd-3)))

haskell-8.6-cmark-gfm

(define-public haskell-8.6-colorize-haskell
  (package
    (name "haskell-8.6-colorize-haskell")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-lexer)))
    (home-page "http://github.com/yav/colorize-haskell")
    (synopsis "Highligt Haskell source")
    (description "Highligt Haskell source")
    (license license:bsd-3)))

haskell-8.6-colorize-haskell

(define-public haskell-8.6-commutative
  (package
    (name "haskell-8.6-commutative")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/athanclark/commutative#readme")
    (synopsis "Commutative binary operations.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/commutative#readme>")
    (license license:bsd-3)))

haskell-8.6-commutative

(define-public haskell-8.6-composition-extra
  (package
    (name "haskell-8.6-composition-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-composition)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)))
    (home-page "https://hackage.haskell.org/package/composition-extra")
    (synopsis "Combinators for unorthodox structure composition")
    (description "")
    (license license:bsd-3)))

haskell-8.6-composition-extra

(define-public haskell-8.6-contravariant-extras
  (package
    (name "haskell-8.6-contravariant-extras")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contravariant-extras/contravariant-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18hzip2i3r9hlw69pdvlkf9g7yg6bpm4b794m2ck84kpb4ajpm6p"))))
    (properties `((upstream-name . "contravariant-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tuple-th)))
    (home-page "https://github.com/nikita-volkov/contravariant-extras ")
    (synopsis "Extras for the \"contravariant\" package")
    (description "")
    (license license:expat)))

haskell-8.6-contravariant-extras

(define-public haskell-8.6-convertible
  (package
    (name "haskell-8.6-convertible")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)))
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

haskell-8.6-convertible

(define-public haskell-8.6-cpphs
  (package
    (name "haskell-8.6-cpphs")
    (version "1.20.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cpphs/cpphs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bh524asqhk9v1s0wvipl0hgn7l63iy3js867yv0z3h5v2kn8vg5"))))
    (properties `((upstream-name . "cpphs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-polyparse)))
    (home-page "http://projects.haskell.org/cpphs/")
    (synopsis "A liberalised re-implementation of cpp, the C pre-processor.")
    (description
     "Cpphs is a re-implementation of the C pre-processor that is both
more compatible with Haskell, and itself written in Haskell so
that it can be distributed with compilers.

This version of the C pre-processor is pretty-much
feature-complete and compatible with traditional (K&R)
pre-processors.  Additional features include: a plain-text mode;
an option to unlit literate code files; and an option to turn
off macro-expansion.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-cpphs

(define-public haskell-8.6-extrapolate
  (package
    (name "haskell-8.6-extrapolate")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extrapolate/extrapolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mc14d9wcrvrd2fkzjxc5gvy7s33p875qj97bdaacdjv5hmg5zr2"))))
    (properties `((upstream-name . "extrapolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-leancheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-speculate)))
    (home-page "https://github.com/rudymatela/extrapolate#readme")
    (synopsis "generalize counter-examples of test properties")
    (description
     "Extrapolate is a tool able to provide generalized counter-examples of test
properties where irrelevant sub-expressions are replaces with variables.

For the incorrect property @@\\\\xs -> nub xs == (xs::[Int])@@:

* @@[0,0]@@ is a counter-example;

* @@x:x:_@@ is a generalized counter-example.")
    (license license:bsd-3)))

haskell-8.6-extrapolate

(define-public haskell-8.6-freenect
  (package
    (name "haskell-8.6-freenect")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages openkinect) libfreenect)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages openkinect) libfreenect)))
    (home-page "https://github.com/chrisdone/freenect")
    (synopsis "Interface to the Kinect device.")
    (description "Interface to the Kinect device. Currently supports
depth perception. (No video or audio.)")
    (license license:bsd-3)))

haskell-8.6-freenect

(define-public haskell-8.6-gauge
  (package
    (name "haskell-8.6-gauge")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-basement)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-foundation)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/vincenthz/hs-gauge")
    (synopsis "small framework for performance measurement and analysis")
    (description
     "This library provides a powerful but simple way to measure software
performance.  It provides both a framework for executing and
analysing benchmarks and a set of driver functions that makes it
easy to build and run benchmarks, and to analyse their results.")
    (license license:bsd-3)))

haskell-8.6-gauge

(define-public haskell-8.6-ghc-lib-parser
  (package
    (name "haskell-8.6-ghc-lib-parser")
    (version "8.8.0.20190424")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-lib-parser/ghc-lib-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12gsh994pr13bsybwlravmi21la66dyw74pk74yfw2pnz682wv10"))))
    (properties `((upstream-name . "ghc-lib-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-alex)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)))
    (home-page "https://github.com/digital-asset/ghc-lib")
    (synopsis "The GHC API, decoupled from GHC versions")
    (description
     "A package equivalent to the @@ghc@@ package, but which can be loaded on many compiler versions.")
    (license license:bsd-3)))

haskell-8.6-ghc-lib-parser

(define-public haskell-8.6-hdaemonize
  (package
    (name "haskell-8.6-hdaemonize")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hdaemonize/hdaemonize-" version
                    ".tar.gz"))
              (sha256
               (base32
                "097fgjgskigy3grnd3ijzyhdq34vjmd9bjk2rscixi59j8j30vxd"))))
    (properties `((upstream-name . "hdaemonize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-hsyslog)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "http://github.com/unprolix/hdaemonize")
    (synopsis "Library to handle the details of writing daemons for UNIX")
    (description "Provides functions that help writing better UNIX daemons,
daemonize and serviced/serviced': daemonize does what
a daemon should do (forking and closing descriptors),
while serviced does that and more (syslog interface,
PID file writing, start-stop-restart command line
handling, dropping privileges).")
    (license license:bsd-3)))

haskell-8.6-hdaemonize

(define-public haskell-8.6-hopenssl
  (package
    (name "haskell-8.6-hopenssl")
    (version "2.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hopenssl/hopenssl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wbnibaffpmk453jbvh95r1d1scz1ivkj59ddrbd3hf4iwr6rx4x"))))
    (properties `((upstream-name . "hopenssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-link-libz")
       #:cabal-revision
       ("1" "14bs0wjrqnnn1v8c4yznfzggvmgypm2lssgl0cr498kmp54if0lf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/peti/hopenssl")
    (synopsis "FFI Bindings to OpenSSL's EVP Digest Interface")
    (description
     "Foreign-function bindings to the <http://www.openssl.org/ OpenSSL library>.
Currently provides access to the messages digests MD5, DSS, DSS1,
RIPEMD160, and various SHA variants through the EVP digest interface.")
    (license license:bsd-3)))

haskell-8.6-hopenssl

(define-public haskell-8.6-hset
  (package
    (name "haskell-8.6-hset")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-type-fun)))
    (home-page "https://bitbucket.org/s9gf4ult/hset")
    (synopsis "Primitive list with elements of unique types.")
    (description "")
    (license license:bsd-3)))

haskell-8.6-hset

(define-public haskell-8.6-hslogger
  (package
    (name "haskell-8.6-hslogger")
    (version "1.2.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslogger/hslogger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ykcsk7wqygvrg60r5kpl6xfinr706al8pfyk5wj67wjs24lqypr"))))
    (properties `((upstream-name . "hslogger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsmall_base" "-f-buildtests")
       #:cabal-revision
       ("1" "1rk2lrg3959nbgbyd1aacvwbv865lsrnczqdmj4ivkfn0c8nkidh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)))
    (home-page "http://software.complete.org/hslogger")
    (synopsis "Versatile logging framework")
    (description
     "hslogger is a logging framework for Haskell, roughly similar to
Python's logging module.

hslogger lets each log message have a priority and source be associated
with it.  The programmer can then define global handlers that route
or filter messages based on the priority and source.  hslogger also
has a syslog handler built in.")
    (license license:bsd-3)))

haskell-8.6-hslogger

(define-public haskell-8.6-hspec-expectations
  (package
    (name "haskell-8.6-hspec-expectations")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-nanospec)))
    (home-page "https://github.com/hspec/hspec-expectations#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/hspec/hspec-expectations#readme>")
    (license license:expat)))

haskell-8.6-hspec-expectations

(define-public haskell-8.6-hw-prim
  (package
    (name "haskell-8.6-hw-prim")
    (version "0.6.2.39")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-prim/hw-prim-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06f4ygwmfb3ambzw972cninj9v0i7pir97qq0832a1mb19h4222g"))))
    (properties `((upstream-name . "hw-prim") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mmap)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/haskell-works/hw-prim#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-8.6-hw-prim

(define-public haskell-8.6-hybrid-vectors
  (package
    (name "haskell-8.6-hybrid-vectors")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/ekmett/hybrid-vectors")
    (synopsis "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors")
    (description "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors.")
    (license license:bsd-3)))

haskell-8.6-hybrid-vectors

(define-public haskell-8.6-iterable
  (package
    (name "haskell-8.6-iterable")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/BioHaskell/iterable")
    (synopsis "API for hierarchical multilevel collections.")
    (description
     "Two-argument typeclass that generalizes Foldable, Functor, and Traversable for monomorphic
multi-level collections. Transitive instances allow for folding and mapping over any
subordinate level of the hierarchy.

Main interface for hPDB library.

Contains convenience TemplateHaskell methods for generating Iterable instances that have Vector containers.")
    (license license:bsd-3)))

haskell-8.6-iterable

(define-public haskell-8.6-kind-generics-th
  (package
    (name "haskell-8.6-kind-generics-th")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kind-generics-th/kind-generics-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pwhids2d9wfmycaxn5qm04jp1qjj8ji8casgk7d7k36fs15qgkl"))))
    (properties `((upstream-name . "kind-generics-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-kind-generics)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/kind-generics-th")
    (synopsis "Template Haskell support for generating `GenericK` instances")
    (description "This package provides Template Haskell functionality to
automatically derive @@GenericK@@ instances (from the
@@kind-generics@@ library).")
    (license license:bsd-3)))

haskell-8.6-kind-generics-th

(define-public haskell-8.6-lenz
  (package
    (name "haskell-8.6-lenz")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lenz/lenz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1c87m35wvsk9dyfp9d8ar6qb4gz534xmg1rf8xahsjkryn9vjqfn"))))
    (properties `((upstream-name . "lenz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-hs-functors)))
    (home-page "https://hackage.haskell.org/package/lenz")
    (synopsis "Van Laarhoven lenses")
    (description "")
    (license license:bsd-3)))

haskell-8.6-lenz

(define-public haskell-8.6-lrucache
  (package
    (name "haskell-8.6-lrucache")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)))
    (home-page "http://github.com/chowells79/lrucache")
    (synopsis "a simple, pure LRU cache")
    (description
     "This package contains a simple, pure LRU cache, implemented in
terms of \"Data.Map\".

It also contains a mutable IO wrapper providing atomic updates to
an LRU cache.")
    (license license:bsd-3)))

haskell-8.6-lrucache

(define-public haskell-8.6-maximal-cliques
  (package
    (name "haskell-8.6-maximal-cliques")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/maximal-cliques")
    (synopsis "Enumerate all maximal cliques of a graph.")
    (description
     "Enumerate all maximal cliques of a graph. A clique is a set of nodes such that there is an edge between every node and every other node in the set. A maximal clique is a clique such that no node may be added while preserving the clique property.")
    (license license:bsd-3)))

haskell-8.6-maximal-cliques

(define-public haskell-8.6-memory
  (package
    (name "haskell-8.6-memory")
    (version "0.14.18")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/memory/memory-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01rmq3vagxzjmm96qnfxk4f0516cn12bp5m8inn8h5r918bqsigm"))))
    (properties `((upstream-name . "memory") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsupport_bytestring" "-fsupport_foundation" "-fsupport_basement" "-fsupport_deepseq")
       #:cabal-revision
       ("2" "1kwlgsjxh4ncvc6x9rps82bm55qyzn8lvzg49s4rbyc7vjjsbmx6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-basement)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-foundation)))
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

haskell-8.6-memory

(define-public haskell-8.6-monad-coroutine
  (package
    (name "haskell-8.6-monad-coroutine")
    (version "0.9.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-coroutine/monad-coroutine-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rsxzry8qk5229vx4iw4jrzbbc82m80m1nlxlq73k5k20h9gzq0k"))))
    (properties `((upstream-name . "monad-coroutine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-monad-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "http://trac.haskell.org/SCC/wiki/monad-coroutine")
    (synopsis
     "Coroutine monad transformer for suspending and resuming monadic computations")
    (description
     "This package defines a monad transformer, applicable to any monad, that allows the monadic computation to suspend and
to be later resumed. The transformer is parameterized by an arbitrary functor, used to store the suspended
computation's resumption.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-monad-coroutine

(define-public haskell-8.6-monoid-subclasses
  (package
    (name "haskell-8.6-monoid-subclasses")
    (version "0.4.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-subclasses/monoid-subclasses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19mfklkdhyv94pfg5i92h0z90sc99rbgpi8z0w55bz3qhxnqg5yh"))))
    (properties `((upstream-name . "monoid-subclasses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primes)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/blamario/monoid-subclasses/")
    (synopsis "Subclasses of Monoid")
    (description
     "A hierarchy of subclasses of 'Monoid' together with their instances for all data structures from base, containers, and
text packages.")
    (license license:bsd-3)))

haskell-8.6-monoid-subclasses

(define-public haskell-8.6-network-multicast
  (package
    (name "haskell-8.6-network-multicast")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-multicast/network-multicast-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0whvi0pbwjy6dbwfdf9rv1j3yr3lcmfp3q7a8pwq63g537l4l2l3"))))
    (properties `((upstream-name . "network-multicast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-network-bsd)))
    (home-page "https://hackage.haskell.org/package/network-multicast")
    (synopsis "Simple multicast library")
    (description "The \"Network.Multicast\" module is for sending
UDP datagrams over multicast (class D) addresses.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-network-multicast

(define-public haskell-8.6-operational-class
  (package
    (name "haskell-8.6-operational-class")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/operational-class/operational-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02z766b5a6fa7dgmw3qa1xryijf2im9n79gnjq0m5pd2hv5vja4b"))))
    (properties `((upstream-name . "operational-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-operational)))
    (home-page "https://github.com/srijs/haskell-operational-class")
    (synopsis "MonadProgram typeclass for the operational package")
    (description "")
    (license license:expat)))

haskell-8.6-operational-class

(define-public haskell-8.6-palette
  (package
    (name "haskell-8.6-palette")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/palette/palette-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0820n3cj4zy9s46diln2rrs4lrxbipkhdw74p2w42gc7k1nlj54i"))))
    (properties `((upstream-name . "palette") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1h5vs204qkq0m9ks5sf7f300drpkinkhinvmnijq8x0mbjl8hsg4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)))
    (home-page "https://diagrams.github.io/")
    (synopsis "Utilities for choosing and creating color schemes.")
    (description "Sets of predefined colors and tools for choosing and
creating color schemes. Random colors.")
    (license license:bsd-3)))

haskell-8.6-palette

(define-public haskell-8.6-pcf-font
  (package
    (name "haskell-8.6-pcf-font")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcf-font/pcf-font-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vwqy2zkj0yb0b7hx3hrcfdcg46j67sv9l8ljik8wrm7811d0rwa"))))
    (properties `((upstream-name . "pcf-font") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/michael-swan/pcf-font")
    (synopsis "PCF font parsing and rendering library.")
    (description
     "pcf-font is a library for parsing and rendering X11 PCF fonts.")
    (license license:bsd-3)))

haskell-8.6-pcf-font

(define-public haskell-8.6-pcre-light
  (package
    (name "haskell-8.6-pcre-light")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
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

haskell-8.6-pcre-light

(define-public haskell-8.6-polynomials-bernstein
  (package
    (name "haskell-8.6-polynomials-bernstein")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/polynomials-bernstein")
    (synopsis "A solver for systems of polynomial equations in bernstein form")
    (description
     "This library defines an optimized type for representing polynomials
in Bernstein form, as well as instances of numeric classes and other
manipulation functions, and a solver of systems of polynomial
equations in this form.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-polynomials-bernstein

(define-public haskell-8.6-pretty-show
  (package
    (name "haskell-8.6-pretty-show")
    (version "1.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-show/pretty-show-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gs2pabi4qa4b0r5vffpf9b1cf5n9y2939a3lljjw7cmg6xvx5dh"))))
    (properties `((upstream-name . "pretty-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-lexer)))
    (home-page "http://wiki.github.com/yav/pretty-show")
    (synopsis "Tools for working with derived `Show` instances and generic
inspection of values.")
    (description
     "We provide a library and an executable for working with derived 'Show'
instances. By using the library, we can parse derived 'Show' instances into a
generic data structure. The @@ppsh@@ tool uses the library to produce
human-readable versions of 'Show' instances, which can be quite handy for
debugging Haskell programs.  We can also render complex generic values into
an interactive Html page, for easier examination.")
    (license license:expat)))

haskell-8.6-pretty-show

(define-public haskell-8.6-rando
  (package
    (name "haskell-8.6-rando")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rando/rando-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cvwmp4882xdavfzhg5hwssddg0wjgwh8jxpd3251plf96jz9f4f"))))
    (properties `((upstream-name . "rando") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-tf-random)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/rando")
    (synopsis "Easy-to-use randomness for livecoding")
    (description
     "Easy-to-use randomness for livecoding.

The goal is to provide the simplest possible experience, e.g.

> >>> import Rando

> >>> pickOne [\"lemon\", \"lime\", \"strawberry\"]
> \"lime\" :: IO String

> >>> flipCoin
> True

> >>> shuffle [1..5]
> [2,4,1,3,5]

This library is in flux: names will change, types will change, functions
will appear and disappear and move between modules!")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-rando

(define-public haskell-8.6-random-shuffle
  (package
    (name "haskell-8.6-random-shuffle")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-shuffle/random-shuffle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0586bnlh0g2isc44jbjvafkcl4yw6lp1db8x6vr0pza0y08l8w2j"))))
    (properties `((upstream-name . "random-shuffle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)))
    (home-page "https://hackage.haskell.org/package/random-shuffle")
    (synopsis "Random shuffle implementation.")
    (description
     "Random shuffle implementation, on immutable lists.
Based on `perfect shuffle' implementation by Oleg Kiselyov,
available on http://okmij.org/ftp/Haskell/perfect-shuffle.txt")
    (license license:bsd-3)))

haskell-8.6-random-shuffle

(define-public haskell-8.6-raw-strings-qq
  (package
    (name "haskell-8.6-raw-strings-qq")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)))
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

haskell-8.6-raw-strings-qq

(define-public haskell-8.6-re2
  (package
    (name "haskell-8.6-re2")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
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

haskell-8.6-re2

(define-public haskell-8.6-records-sop
  (package
    (name "haskell-8.6-records-sop")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/records-sop/records-sop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "120kb6z4si5wqkahbqxqhm3qb8xpc9ivwg293ymz8a4ri1hdr0a5"))))
    (properties `((upstream-name . "records-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0492a3cabdl5ccncc7lk7bvh55in4hzm345fl3xpidp9jx6mv1x4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-generics-sop)))
    (home-page "https://hackage.haskell.org/package/records-sop")
    (synopsis "Record subtyping and record utilities with generics-sop")
    (description "This library provides utilities for working with labelled
single-constructor record types via generics-sop.

It also provides functions to safely cast between record
types if the target type has a subset of the fields (with
the same names) of the source type.")
    (license license:bsd-3)))

haskell-8.6-records-sop

(define-public haskell-8.6-regex-pcre
  (package
    (name "haskell-8.6-regex-pcre")
    (version "0.94.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-pcre/regex-pcre-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h16w994g9s62iwkdqa7bar2n9cfixmkzz2rm8svm960qr57valf"))))
    (properties `((upstream-name . "regex-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("1" "0jk29n0may65ghixlx1wwfmfcabsm730y8ppry1qy4naywhi1vs7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hackage.haskell.org/package/regex-pcre")
    (synopsis "Replaces/Enhances Text.Regex")
    (description "The PCRE backend to accompany regex-base, see www.pcre.org")
    (license license:bsd-3)))

haskell-8.6-regex-pcre

(define-public haskell-8.6-regex-pcre-builtin
  (package
    (name "haskell-8.6-regex-pcre-builtin")
    (version "0.94.5.8.8.35")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-pcre-builtin/regex-pcre-builtin-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s755qdg1mxrf125sh83bsc5kjkrj8fkq8wf6dg1jan86c7p7gl4"))))
    (properties `((upstream-name . "regex-pcre-builtin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)))
    (home-page "http://hackage.haskell.org/package/regex-pcre")
    (synopsis "Replaces/Enhances Text.Regex")
    (description
     "The PCRE backend to accompany regex-base, with bundled code from www.pcre.org")
    (license license:bsd-3)))

haskell-8.6-regex-pcre-builtin

(define-public haskell-8.6-regex-posix
  (package
    (name "haskell-8.6-regex-posix")
    (version "0.95.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-posix/regex-posix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gkhzhj8nvfn1ija31c7xnl6p0gadwii9ihyp219ck2arlhrj0an"))))
    (properties `((upstream-name . "regex-posix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("2" "1zrlwmmrb3x3r3af1r42xwhwspzfgnzh4dw1158523sndsg8qn08")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)))
    (home-page "http://sourceforge.net/projects/lazy-regex")
    (synopsis "Replaces/Enhances Text.Regex")
    (description "The posix regex backend for regex-base")
    (license license:bsd-3)))

haskell-8.6-regex-posix

(define-public haskell-8.6-runmemo
  (package
    (name "haskell-8.6-runmemo")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-data-memocombinators)))
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

haskell-8.6-runmemo

(define-public haskell-8.6-seqalign
  (package
    (name "haskell-8.6-seqalign")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/seqalign")
    (synopsis "Sequence Alignment")
    (description
     "FFI wrappers for global and local string alignment functions")
    (license license:bsd-3)))

haskell-8.6-seqalign

(define-public haskell-8.6-shell-escape
  (package
    (name "haskell-8.6-shell-escape")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/solidsnack/shell-escape")
    (synopsis "Shell escaping library.")
    (description
     "Shell escaping library, offering both Bourne shell and Bash style escaping
of ByteStrings.")
    (license license:bsd-3)))

haskell-8.6-shell-escape

(define-public haskell-8.6-static-text
  (package
    (name "haskell-8.6-static-text")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/static-text/static-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19d43v2cp6wg861lc6rvimzqq20via6fvradysapmilq7svs5kq7"))))
    (properties `((upstream-name . "static-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring" "-ftext" "-fvector")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/dzhus/static-text#readme")
    (synopsis
     "Lists, Texts, ByteStrings and Vectors of statically known length")
    (description
     "static-text provides type-level safety for basic operations on string-like types (finite lists of elements), such as Data.Text, String (and all lists), Data.ByteString and Data.Vector. Use it when you need static guarantee on lengths of strings produced in your code.")
    (license license:bsd-3)))

haskell-8.6-static-text

(define-public haskell-8.6-stb-image-redux
  (package
    (name "haskell-8.6-stb-image-redux")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/typedrat/stb-image-redux#readme")
    (synopsis "Image loading and writing microlibrary")
    (description
     "See <https://github.com/typedrat/stb-image-redux/blob/master/README.md>.")
    (license license:bsd-3)))

haskell-8.6-stb-image-redux

(define-public haskell-8.6-string-qq
  (package
    (name "haskell-8.6-string-qq")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)))
    (home-page "https://hackage.haskell.org/package/string-qq")
    (synopsis
     "QuasiQuoter for non-interpolated strings, texts and bytestrings.")
    (description
     "QuasiQuoter for non-interpolated strings, texts and bytestrings, useful for writing multi-line IsString literals.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-string-qq

(define-public haskell-8.6-syb
  (package
    (name "haskell-8.6-syb")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/syb/syb-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0077vxzyi9ppbphi2ialac3p376k49qly1kskdgf57wdwix9qjp0"))))
    (properties `((upstream-name . "syb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rgxzwnbwawi8visnpq74s51n0qi9rzgnxsm2bdmi4vwfn3lb6w0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "http://www.cs.uu.nl/wiki/GenericProgramming/SYB")
    (synopsis "Scrap Your Boilerplate")
    (description
     "This package contains the generics system described in the
/Scrap Your Boilerplate/ papers (see
<http://www.cs.uu.nl/wiki/GenericProgramming/SYB>).
It defines the @@Data@@ class of types permitting folding and unfolding
of constructor applications, instances of this class for primitive
types, and a variety of traversals.")
    (license license:bsd-3)))

haskell-8.6-syb

(define-public haskell-8.6-tardis
  (package
    (name "haskell-8.6-tardis")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tardis/tardis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nd54pff1n6ds5jqa98qrby06d3ziw2rhb3j5lvw4mahsynsnwp6"))))
    (properties `((upstream-name . "tardis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1mbxzp2wwmils8ccqfp56g3zwwa9j9nr296zv0mr0cx49krw1s1h")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/DanBurton/tardis")
    (synopsis "Bidirectional state monad transformer")
    (description
     "A Tardis is a combination of both a forwards and a backwards
state transformer, providing two state values that \\\"travel\\\"
in opposite directions.

A detailed description of what a Tardis is and how to use it
can be found in the documentation for Control.Monad.Tardis.")
    (license license:bsd-3)))

haskell-8.6-tardis

(define-public haskell-8.6-tce-conf
  (package
    (name "haskell-8.6-tce-conf")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)))
    (home-page "http://hub.darcs.net/dino/tce-conf")
    (synopsis "Very simple config file reading")
    (description
     "This package contains modules for runtime reading of very simple config files of the `key=value` style or as a Haskell data structure to be deserialized with `Read`. The modules support files with blank lines and simple single-line comments, but nothing else.")
    (license license:bsd-3)))

haskell-8.6-tce-conf

(define-public haskell-8.6-tensorflow-test
  (package
    (name "haskell-8.6-tensorflow-test")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/tensorflow/haskell#readme")
    (synopsis "Some common functions for test suites.")
    (description "This package provides common utility functions for the
TensorFlow test suites.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-tensorflow-test

(define-public haskell-8.6-thread-local-storage
  (package
    (name "haskell-8.6-thread-local-storage")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
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

haskell-8.6-thread-local-storage

(define-public haskell-8.6-tile
  (package
    (name "haskell-8.6-tile")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)))
    (home-page "https://github.com/caneroj1/tile#readme")
    (synopsis "Slippy map tile functionality.")
    (description "Tile/lonlat conversion utilities for slippy maps.")
    (license license:bsd-3)))

haskell-8.6-tile

(define-public haskell-8.6-time-lens
  (package
    (name "haskell-8.6-time-lens")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-lens/time-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07nh97x1mx5hc48xqv3gk3cgls6xpb829h3bzsjx8rwqnzybijyq"))))
    (properties `((upstream-name . "time-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-data-lens-light)))
    (home-page "https://github.com/feuerbach/time-lens")
    (synopsis "Lens-based interface to Data.Time data structures")
    (description "")
    (license license:bsd-3)))

haskell-8.6-time-lens

(define-public haskell-8.6-transformers-bifunctors
  (package
    (name "haskell-8.6-transformers-bifunctors")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)))
    (home-page "https://github.com/jacobstanley/transformers-bifunctors")
    (synopsis "Bifunctors over monad transformers.")
    (description "Bifunctors over monad transformers.")
    (license license:bsd-3)))

haskell-8.6-transformers-bifunctors

(define-public haskell-8.6-tuple-sop
  (package
    (name "haskell-8.6-tuple-sop")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-generics-sop)))
    (home-page "https://github.com/Ferdinand-vW/tuple-sop#readme")
    (synopsis "functions on n-ary tuples using generics-sop")
    (description
     "Exports various functions on n-ary tuples. This library uses generics-sop to create a generic representation of n-ary product types. To regain type inference, the exported functions work only on tuples with at most 10 components.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-tuple-sop

(define-public haskell-8.6-typerep-map
  (package
    (name "haskell-8.6-typerep-map")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/typerep-map/typerep-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s77hj0m9jiqgybccdfl1x88j05fx7grkg16q6kldd1lgqrvrgb0"))))
    (properties `((upstream-name . "typerep-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "032y3parcz7ffmsqichmshczk7zxkg66dciwvr5d7fznqvy3sg1s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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
    (license license:expat)))

haskell-8.6-typerep-map

(define-public haskell-8.6-unagi-chan
  (package
    (name "haskell-8.6-unagi-chan")
    (version "0.4.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unagi-chan/unagi-chan-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15fnk9x4fd2ryp31fjfrwm8k61m3a0qyb95m4065zc0yi0jyacp2"))))
    (properties `((upstream-name . "unagi-chan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-compare-benchmarks")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-atomic-primops)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
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

haskell-8.6-unagi-chan

(define-public haskell-8.6-vector-algorithms
  (package
    (name "haskell-8.6-vector-algorithms")
    (version "0.8.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-algorithms/vector-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11vks2h9f5gk0irsx5j9xwlicbzkv3k80sx76j5k3zb38q0izi0s"))))
    (properties `((upstream-name . "vector-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fboundschecks" "-f-unsafechecks" "-f-internalchecks" "-fbench" "-fproperties" "-f-llvm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/erikd/vector-algorithms/")
    (synopsis "Efficient algorithms for vector arrays")
    (description
     "Efficient algorithms for sorting vector arrays. At some stage
other vector algorithms may be added.")
    (license license:bsd-3)))

haskell-8.6-vector-algorithms

(define-public haskell-8.6-vector-binary-instances
  (package
    (name "haskell-8.6-vector-binary-instances")
    (version "0.2.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-binary-instances/vector-binary-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04n5cqm1v95pw1bp68l9drjkxqiy2vswxdq0fy1rqcgxisgvji9r"))))
    (properties `((upstream-name . "vector-binary-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ia9i7q7jrk3ab3nq2368glr69vl6fwvh42zlwvdmxn4xd861qfx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/bos/vector-binary-instances")
    (synopsis "Instances of Data.Binary for vector")
    (description
     "Instances for Binary for the types defined in the vector package,
making it easy to serialize vectors to and from disk. We use the
generic interface to vectors, so all vector types are supported.
Specific instances are provided for unboxed, boxed and storable
vectors.

To serialize a vector:

> *Data.Vector.Binary> let v = Data.Vector.fromList [1..10]
> *Data.Vector.Binary> v
> fromList [1,2,3,4,5,6,7,8,9,10] :: Data.Vector.Vector
> *Data.Vector.Binary> encode v
> Chunk \"\\NUL\\NUL\\NUL\\NUL\\NUL...\\NUL\\NUL\\NUL\\t\\NUL\\NUL\\NUL\\NUL\\n\" Empty

Which you can in turn compress before writing to disk:

> compress . encode $ v
> Chunk \"\\US\\139\\b\\NUL\\NUL\\N...\\229\\240,\\254:\\NUL\\NUL\\NUL\" Empty

Try the cereal-vector package if you are looking for Data.Serialize
instances.")
    (license license:bsd-3)))

haskell-8.6-vector-binary-instances

(define-public haskell-8.6-vector-buffer
  (package
    (name "haskell-8.6-vector-buffer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/vector-buffer")
    (synopsis "A buffer compatible with Data.Vector.*")
    (description
     "A buffer type that can easily be converted to a Data.Vector.Storable vector
from the vector package and compatible with hmatrix.

Elements are pushed into the buffer.  When the buffer is converted to a read-only
vector, the last-pushed element occurs at the end.

Monadic map functions also operate so that the last-pushed element is treated last.")
    (license license:bsd-3)))

haskell-8.6-vector-buffer

(define-public haskell-8.6-vector-builder
  (package
    (name "haskell-8.6-vector-builder")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-builder/vector-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ww0l52p8s6gmh985adnjbvm1vrqpqbm08qdcrvxwhhcqmxgv6m3"))))
    (properties `((upstream-name . "vector-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-vector-builder

(define-public haskell-8.6-webrtc-vad
  (package
    (name "haskell-8.6-webrtc-vad")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webrtc-vad/webrtc-vad-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lylc3axcamrmjaarx3aacbjc9d0rkhmdgq1g2pc5j0lsf8ndk49"))))
    (properties `((upstream-name . "webrtc-vad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/webrtc-vad")
    (synopsis "Easy voice activity detection")
    (description
     "A simple library wrapping WebRTC's voice activity detection engine.")
    (license license:expat)))

haskell-8.6-webrtc-vad

