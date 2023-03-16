;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage002)
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
(define-public haskell-8.4-Ebnf2ps
  (package
    (name "haskell-8.4-Ebnf2ps")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)))
    (home-page "https://github.com/FranklinChen/Ebnf2ps")
    (synopsis "Peter's Syntax Diagram Drawing Tool")
    (description "Ebnf2ps generates nice looking syntax diagrams in EPS
and FIG format from EBNF specifications and from yacc,
bison, and Happy input grammars. The diagrams can be
immediatedly included in TeX/LaTeX documents and in
texts created with other popular document preparation
systems.")
    (license license:bsd-3)))

haskell-8.4-Ebnf2ps

(define-public haskell-8.4-Fin
  (package
    (name "haskell-8.4-Fin")
    (version "0.2.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Fin/Fin-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0w29dc2mdy0q3y5v6mkc0m51vp1bmbx8bswvr1khby63vb5zwcf3"))))
    (properties `((upstream-name . "Fin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001) haskell-8.4-alg)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-foldable1)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-natural-induction)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-peano)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-universe-base)))
    (home-page "https://hackage.haskell.org/package/Fin")
    (synopsis "Finite totally-ordered sets")
    (description "")
    (license license:bsd-3)))

haskell-8.4-Fin

(define-public haskell-8.4-FontyFruity
  (package
    (name "haskell-8.4-FontyFruity")
    (version "0.5.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/FontyFruity/FontyFruity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gavpjv83vg5q2x254d3zi3kw5aprl6z8ifcn0vs6hymaj0qgls3"))))
    (properties `((upstream-name . "FontyFruity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-xml)))
    (home-page "https://hackage.haskell.org/package/FontyFruity")
    (synopsis "A true type file format loader")
    (description "A haskell Truetype file parser.

You can load a font file and extract some curves to be
drawed with a library like Rasterific .")
    (license license:bsd-3)))

haskell-8.4-FontyFruity

(define-public haskell-8.4-GLFW-b
  (package
    (name "haskell-8.4-GLFW-b")
    (version "3.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLFW-b/GLFW-b-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19mngkprzlm322pfyljvm4lyk1j7j8ss50m5kzzmkwk3mph25h1i"))))
    (properties `((upstream-name . "GLFW-b") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0xlby7483dv33c13f44kkvmai186g72jhxmcq8749s1hyxi6fqnb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-bindings-GLFW)))
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

haskell-8.4-GLFW-b

(define-public haskell-8.4-HUnit-approx
  (package
    (name "haskell-8.4-HUnit-approx")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)))
    (home-page "https://github.com/goldfirere/HUnit-approx")
    (synopsis "Approximate equality for floating point numbers with HUnit")
    (description
     "This package exports combinators useful in comparing floating-point numbers
in HUnit tests, by using approximate equality.")
    (license license:bsd-3)))

haskell-8.4-HUnit-approx

(define-public haskell-8.4-HsOpenSSL-x509-system
  (package
    (name "haskell-8.4-HsOpenSSL-x509-system")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL-x509-system/HsOpenSSL-x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14hzjdpv8ld3nw5fcx451w49vq0s8fhs1zh984vpm85b5ypbgp2v"))))
    (properties `((upstream-name . "HsOpenSSL-x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HsOpenSSL)))
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

haskell-8.4-HsOpenSSL-x509-system

(define-public haskell-8.4-JuicyPixels
  (package
    (name "haskell-8.4-JuicyPixels")
    (version "3.2.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels/JuicyPixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mf3ihr0xy2wc2wzb9a17g0n3p60x7pvm8akwpvhdy8klvs6r744"))))
    (properties `((upstream-name . "JuicyPixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mmap")
       #:cabal-revision
       ("1" "0s6i5f2cpm29b88zjrs1na699v9kvfsbcvr25z6vyr6bi6mmxdfm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Twinside/Juicy.Pixels")
    (synopsis
     "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>

This library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.")
    (license license:bsd-3)))

haskell-8.4-JuicyPixels

(define-public haskell-8.4-LibZip
  (package
    (name "haskell-8.4-LibZip")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-bindings-libzip)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "http://bitbucket.org/astanin/hs-libzip/")
    (synopsis "Bindings to libzip, a library for manipulating zip archives.")
    (description
     "libzip is a C library for reading, creating, and modifying zip archives.
This package allows to use it from Haskell code.")
    (license license:bsd-3)))

haskell-8.4-LibZip

(define-public haskell-8.4-QuickCheck
  (package
    (name "haskell-8.4-QuickCheck")
    (version "2.11.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/QuickCheck/QuickCheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xhqk35fkzlbjcqbabg6962jkv8d688nzmz7ng4bm84x2d95d328"))))
    (properties `((upstream-name . "QuickCheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplatehaskell")
       #:cabal-revision
       ("2" "12c3jgdfh57b1cxfsm2qjvpjp3w8v2gxyakkhqlvliraidqq93jy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tf-random)))
    (home-page "https://github.com/nick8325/quickcheck")
    (synopsis "Automatic testing of Haskell programs")
    (description
     "QuickCheck is a library for random testing of program properties.

The programmer provides a specification of the program, in the form of
properties which functions should satisfy, and QuickCheck then tests that the
properties hold in a large number of randomly generated cases.

Specifications are expressed in Haskell, using combinators defined in the
QuickCheck library. QuickCheck provides combinators to define properties,
observe the distribution of test data, and define test data generators.

The <http://www.cse.chalmers.se/~rjmh/QuickCheck/manual.html official QuickCheck manual>
explains how to write generators and properties;
it is out-of-date in some details but still full of useful advice.

A user of QuickCheck has written an unofficial, but detailed, tutorial which
you can find at
<https://begriffs.com/posts/2017-01-14-design-use-quickcheck.html>.")
    (license license:bsd-3)))

haskell-8.4-QuickCheck

(define-public haskell-8.4-SafeSemaphore
  (package
    (name "haskell-8.4-SafeSemaphore")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)))
    (home-page "https://github.com/ChrisKuklewicz/SafeSemaphore")
    (synopsis "Much safer replacement for QSemN, QSem, and SampleVar")
    (description
     "This provides a much safer semaphore than the QSem, QSemN, SampleVar in base.
Those base modules are not exception safe and can be broken by killThread.
See <https://github.com/ChrisKuklewicz/SafeSemaphore> for more details.")
    (license license:bsd-3)))

haskell-8.4-SafeSemaphore

(define-public haskell-8.4-alternative-vector
  (package
    (name "haskell-8.4-alternative-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/athanclark/alternative-vector#readme")
    (synopsis "Use vectors instead of lists for many and some")
    (description "")
    (license license:bsd-3)))

haskell-8.4-alternative-vector

(define-public haskell-8.4-ansi-wl-pprint
  (package
    (name "haskell-8.4-ansi-wl-pprint")
    (version "0.6.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ansi-wl-pprint/ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gnb4mkqryv08vncxnj0bzwcnd749613yw3cxfzw6y3nsldp4c56"))))
    (properties `((upstream-name . "ansi-wl-pprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("2" "0xq83bwya8mfijp3dn9zfsqbbkl1wpzfjcmnkw8a06icjh9vg458")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)))
    (home-page "http://github.com/ekmett/ansi-wl-pprint")
    (synopsis
     "The Wadler/Leijen Pretty Printer for colored ANSI terminal output")
    (description
     "This is a pretty printing library based on Wadler's paper [\"A Prettier Printer\"](https://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf). It has been enhanced with support for ANSI terminal colored output using the [ansi-terminal](https://hackage.haskell.org/package/ansi-terminal) package.")
    (license license:bsd-3)))

haskell-8.4-ansi-wl-pprint

(define-public haskell-8.4-assert-failure
  (package
    (name "haskell-8.4-assert-failure")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)))
    (home-page "https://github.com/Mikolaj/assert-failure")
    (synopsis "Syntactic sugar improving 'assert' and 'error'")
    (description "This library contains syntactic sugar that makes it easier
to write simple contracts with 'assert' and 'error'
and report the values that violate contracts.")
    (license license:bsd-3)))

haskell-8.4-assert-failure

(define-public haskell-8.4-backprop
  (package
    (name "haskell-8.4-backprop")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/backprop/backprop-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xbbmv6cp9n21x2bqpr0p4cls994mchxp7hd7k6ib83avr0vwbda"))))
    (properties `((upstream-name . "backprop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-simple-reflect)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-vinyl)))
    (home-page "https://backprop.jle.im")
    (synopsis "Heterogeneous automatic differentation")
    (description
     "Write your functions to compute your result, and the library will
automatically generate functions to compute your gradient.

Implements heterogeneous reverse-mode automatic differentiation, commonly
known as \"backpropagation\".

See <https://backprop.jle.im> for official introduction and documentation.")
    (license license:bsd-3)))

haskell-8.4-backprop

(define-public haskell-8.4-both
  (package
    (name "haskell-8.4-both")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001) haskell-8.4-zero)))
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

haskell-8.4-both

(define-public haskell-8.4-category
  (package
    (name "haskell-8.4-category")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/category/category-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nsx8wdry3nd75almvvf70x8sy5a5q1h744rgz7w6ilfkpb57rxh"))))
    (properties `((upstream-name . "category") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001) haskell-8.4-alg)))
    (home-page "https://hackage.haskell.org/package/category")
    (synopsis "Categorical types and classes")
    (description "")
    (license license:bsd-3)))

haskell-8.4-category

(define-public haskell-8.4-chunked-data
  (package
    (name "haskell-8.4-chunked-data")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis
     "Typeclasses for dealing with various chunked data representations")
    (description
     "See docs and README at <http://www.stackage.org/package/chunked-data>")
    (license license:expat)))

haskell-8.4-chunked-data

(define-public haskell-8.4-cmark-gfm
  (package
    (name "haskell-8.4-cmark-gfm")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cmark-gfm/cmark-gfm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0s39djd1j0rq63g4sy0cnras14m263anr56nvijcbcy9zg41dyf8"))))
    (properties `((upstream-name . "cmark-gfm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pkgconfig")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)))
    (home-page "https://github.com/kivikakk/cmark-gfm-hs")
    (synopsis "Fast, accurate GitHub Flavored Markdown parser and renderer")
    (description
     "This package provides Haskell bindings for
<https://github.com/github/cmark libcmark-gfm>, the reference
parser for <https://github.github.com/gfm/ GitHub Flavored Markdown>, a fully
specified variant of Markdown. It includes sources for
libcmark-gfm (0.28.0) and does not require prior installation of the
C library.")
    (license license:bsd-3)))

haskell-8.4-cmark-gfm

(define-public haskell-8.4-colorize-haskell
  (package
    (name "haskell-8.4-colorize-haskell")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-lexer)))
    (home-page "http://github.com/yav/colorize-haskell")
    (synopsis "Highligt Haskell source")
    (description "Highligt Haskell source")
    (license license:bsd-3)))

haskell-8.4-colorize-haskell

(define-public haskell-8.4-commutative
  (package
    (name "haskell-8.4-commutative")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/athanclark/commutative#readme")
    (synopsis "Commutative binary operations.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/commutative#readme>")
    (license license:bsd-3)))

haskell-8.4-commutative

(define-public haskell-8.4-composition-extra
  (package
    (name "haskell-8.4-composition-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-composition)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)))
    (home-page "https://hackage.haskell.org/package/composition-extra")
    (synopsis "Combinators for unorthodox structure composition")
    (description "")
    (license license:bsd-3)))

haskell-8.4-composition-extra

(define-public haskell-8.4-contravariant-extras
  (package
    (name "haskell-8.4-contravariant-extras")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/contravariant-extras/contravariant-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gg62ccl94kvh7mnvdq09pifqxjx2kgs189si90nmg44bafj7a9n"))))
    (properties `((upstream-name . "contravariant-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1h2955ahga6i4fn7k8v66l03v77p6fhsac6ck8gpabkc08ij60wp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-tuple-th)))
    (home-page "https://github.com/nikita-volkov/contravariant-extras ")
    (synopsis "Extras for the \"contravariant\" package")
    (description "")
    (license license:expat)))

haskell-8.4-contravariant-extras

(define-public haskell-8.4-convertible
  (package
    (name "haskell-8.4-convertible")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)))
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

haskell-8.4-convertible

(define-public haskell-8.4-cpphs
  (package
    (name "haskell-8.4-cpphs")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-polyparse)))
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

haskell-8.4-cpphs

(define-public haskell-8.4-extrapolate
  (package
    (name "haskell-8.4-extrapolate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-leancheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-speculate)))
    (home-page "https://github.com/rudymatela/extrapolate#readme")
    (synopsis "generalize counter-examples of test properties")
    (description
     "Extrapolate is a tool able to provide generalized counter-examples of test
properties where irrelevant sub-expressions are replaces with variables.

For the incorrect property @@\\\\xs -> nub xs == (xs::[Int])@@:

* @@[0,0]@@ is a counter-example;

* @@x:x:_@@ is a generalized counter-example.")
    (license license:bsd-3)))

haskell-8.4-extrapolate

(define-public haskell-8.4-fclabels
  (package
    (name "haskell-8.4-fclabels")
    (version "2.0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fclabels/fclabels-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q62p41bj991s7i15ciayw1v1xq8szn4bls50p65lfy2dnj7554s"))))
    (properties `((upstream-name . "fclabels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "09pn1q4gjlhw956asmhzva1rhrafmn69xmd1sc80fh3c8vjd3icz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)))
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

* /Changelog from 2.0.3.1 to 2.0.3.2/

>   - Allow HUnit 1.5.*.")
    (license license:bsd-3)))

haskell-8.4-fclabels

(define-public haskell-8.4-freenect
  (package
    (name "haskell-8.4-freenect")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages openkinect) libfreenect)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages openkinect) libfreenect)))
    (home-page "https://github.com/chrisdone/freenect")
    (synopsis "Interface to the Kinect device.")
    (description "Interface to the Kinect device. Currently supports
depth perception. (No video or audio.)")
    (license license:bsd-3)))

haskell-8.4-freenect

(define-public haskell-8.4-gauge
  (package
    (name "haskell-8.4-gauge")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gauge/gauge-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p8accsrv0njiqgybz2plwiglg90nazibggc270j7gmqxqna0zr9"))))
    (properties `((upstream-name . "gauge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fanalysis")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-basement)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-foundation)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/vincenthz/hs-gauge")
    (synopsis "small framework for performance measurement and analysis")
    (description
     "This library provides a powerful but simple way to measure software
performance.  It provides both a framework for executing and
analysing benchmarks and a set of driver functions that makes it
easy to build and run benchmarks, and to analyse their results.")
    (license license:bsd-3)))

haskell-8.4-gauge

(define-public haskell-8.4-histogram-fill
  (package
    (name "haskell-8.4-histogram-fill")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/Shimuuar/histogram-fill/")
    (synopsis "Library for histograms creation.")
    (description
     "This is library for histograms filling. Its aim to provide
convenient way to create and fill histograms.

To get started, refer to the usage examples in 'Data.Histogram.Tutorial'.")
    (license license:bsd-3)))

haskell-8.4-histogram-fill

(define-public haskell-8.4-hopenssl
  (package
    (name "haskell-8.4-hopenssl")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/peti/hopenssl")
    (synopsis "FFI Bindings to OpenSSL's EVP Digest Interface")
    (description
     "Foreign-function bindings to the <http://www.openssl.org/ OpenSSL library>.
Currently provides access to the messages digests MD5, DSS, DSS1,
RIPEMD160, and various SHA variants through the EVP digest interface.")
    (license license:bsd-3)))

haskell-8.4-hopenssl

(define-public haskell-8.4-hset
  (package
    (name "haskell-8.4-hset")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-type-fun)))
    (home-page "https://bitbucket.org/s9gf4ult/hset")
    (synopsis "Primitive list with elements of unique types.")
    (description "")
    (license license:bsd-3)))

haskell-8.4-hset

(define-public haskell-8.4-hslogger
  (package
    (name "haskell-8.4-hslogger")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)))
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

haskell-8.4-hslogger

(define-public haskell-8.4-hspec-expectations
  (package
    (name "haskell-8.4-hspec-expectations")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-nanospec)))
    (home-page "https://github.com/hspec/hspec-expectations#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/hspec/hspec-expectations#readme>")
    (license license:expat)))

haskell-8.4-hspec-expectations

(define-public haskell-8.4-hspec-expectations-pretty-diff
  (package
    (name "haskell-8.4-hspec-expectations-pretty-diff")
    (version "0.7.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-expectations-pretty-diff/hspec-expectations-pretty-diff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02hvnlhvlhg4yv6pbr1f0ig01qs83z85cmcl4w5wpqqb6cjdbgqv"))))
    (properties `((upstream-name . "hspec-expectations-pretty-diff")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Diff)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hscolour)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-nicify-lib)))
    (home-page
     "https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme")
    (synopsis "Catchy combinators for HUnit")
    (description
     "Catchy combinators for HUnit: <https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme>")
    (license license:expat)))

haskell-8.4-hspec-expectations-pretty-diff

(define-public haskell-8.4-hw-prim
  (package
    (name "haskell-8.4-hw-prim")
    (version "0.6.2.22")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-prim/hw-prim-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16dfajzylki7g7p8q2a79dvx3xymxkrpckajdks9k3q4rxsc6k0i"))))
    (properties `((upstream-name . "hw-prim") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-mmap)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/haskell-works/hw-prim#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-8.4-hw-prim

(define-public haskell-8.4-hxt-regex-xmlschema
  (package
    (name "haskell-8.4-hxt-regex-xmlschema")
    (version "9.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-regex-xmlschema/hxt-regex-xmlschema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c4jr0439f5yc05h7iz53fa47g6l2wrvqp6gvwf01mlqajk3nx7l"))))
    (properties `((upstream-name . "hxt-regex-xmlschema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-profile")
       #:cabal-revision
       ("2" "1v2yhw1d49xknrln06l45gw6d5dzb0djggmd0n7hp2qa6284k0cn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hxt-charproperties)))
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

haskell-8.4-hxt-regex-xmlschema

(define-public haskell-8.4-hybrid-vectors
  (package
    (name "haskell-8.4-hybrid-vectors")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/ekmett/hybrid-vectors")
    (synopsis "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors")
    (description "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors.")
    (license license:bsd-3)))

haskell-8.4-hybrid-vectors

(define-public haskell-8.4-iterable
  (package
    (name "haskell-8.4-iterable")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/BioHaskell/iterable")
    (synopsis "API for hierarchical multilevel collections.")
    (description
     "Two-argument typeclass that generalizes Foldable, Functor, and Traversable for monomorphic
multi-level collections. Transitive instances allow for folding and mapping over any
subordinate level of the hierarchy.

Main interface for hPDB library.

Contains convenience TemplateHaskell methods for generating Iterable instances that have Vector containers.")
    (license license:bsd-3)))

haskell-8.4-iterable

(define-public haskell-8.4-language-haskell-extract
  (package
    (name "haskell-8.4-language-haskell-extract")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)))
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

haskell-8.4-language-haskell-extract

(define-public haskell-8.4-lrucache
  (package
    (name "haskell-8.4-lrucache")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)))
    (home-page "http://github.com/chowells79/lrucache")
    (synopsis "a simple, pure LRU cache")
    (description
     "This package contains a simple, pure LRU cache, implemented in
terms of \"Data.Map\".

It also contains a mutable IO wrapper providing atomic updates to
an LRU cache.")
    (license license:bsd-3)))

haskell-8.4-lrucache

(define-public haskell-8.4-maximal-cliques
  (package
    (name "haskell-8.4-maximal-cliques")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/maximal-cliques")
    (synopsis "Enumerate all maximal cliques of a graph.")
    (description
     "Enumerate all maximal cliques of a graph. A clique is a set of nodes such that there is an edge between every node and every other node in the set. A maximal clique is a clique such that no node may be added while preserving the clique property.")
    (license license:bsd-3)))

haskell-8.4-maximal-cliques

(define-public haskell-8.4-memory
  (package
    (name "haskell-8.4-memory")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-basement)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-foundation)))
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

haskell-8.4-memory

(define-public haskell-8.4-microlens-contra
  (package
    (name "haskell-8.4-microlens-contra")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-contra/microlens-contra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ny9qhvd7rfzdkq4jdcgh4mfia856rsgpdhg8lprfprh6p7lhy5m"))))
    (properties `((upstream-name . "microlens-contra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "True folds and getters for microlens")
    (description
     "This package provides @@Fold@@ and @@Getter@@ that are fully compatible with lens; the downside is that this package depends on contravariant, which in its turn depends on a lot of other packages (but still less than lens).

The difference between @@Fold@@ and @@SimpleFold@@ is that you can use e.g. @@takingWhile@@\\/@@droppingWhile@@ and @@backwards@@ on the former but not on the latter. Most functions from lens that work with @@Fold@@ would work with @@SimpleFold@@ as well, tho.

Starting from GHC 8.6, this package doesn't depend on contravariant anymore.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.4-microlens-contra

(define-public haskell-8.4-monad-coroutine
  (package
    (name "haskell-8.4-monad-coroutine")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-monad-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://trac.haskell.org/SCC/wiki/monad-coroutine")
    (synopsis
     "Coroutine monad transformer for suspending and resuming monadic computations")
    (description
     "This package defines a monad transformer, applicable to any monad, that allows the monadic computation to suspend and
to be later resumed. The transformer is parameterized by an arbitrary functor, used to store the suspended
computation's resumption.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-monad-coroutine

(define-public haskell-8.4-monoid-subclasses
  (package
    (name "haskell-8.4-monoid-subclasses")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primes)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/blamario/monoid-subclasses/")
    (synopsis "Subclasses of Monoid")
    (description
     "A hierarchy of subclasses of 'Monoid' together with their instances for all data structures from base, containers, and
text packages.")
    (license license:bsd-3)))

haskell-8.4-monoid-subclasses

(define-public haskell-8.4-operational-class
  (package
    (name "haskell-8.4-operational-class")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-operational)))
    (home-page "https://github.com/srijs/haskell-operational-class")
    (synopsis "MonadProgram typeclass for the operational package")
    (description "")
    (license license:expat)))

haskell-8.4-operational-class

(define-public haskell-8.4-palette
  (package
    (name "haskell-8.4-palette")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/palette/palette-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ylwgb7a0mhffz00hmhx93y4kyjb9xgm96jrfcxl464x8cjka5gi"))))
    (properties `((upstream-name . "palette") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis "Utilities for choosing and creating color schemes.")
    (description "Sets of predefined colors and tools for choosing and
creating color schemes. Random colors.")
    (license license:bsd-3)))

haskell-8.4-palette

(define-public haskell-8.4-pcf-font
  (package
    (name "haskell-8.4-pcf-font")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/michael-swan/pcf-font")
    (synopsis "PCF font parsing and rendering library.")
    (description
     "pcf-font is a library for parsing and rendering X11 PCF fonts.")
    (license license:bsd-3)))

haskell-8.4-pcf-font

(define-public haskell-8.4-polynomials-bernstein
  (package
    (name "haskell-8.4-polynomials-bernstein")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/polynomials-bernstein")
    (synopsis "A solver for systems of polynomial equations in bernstein form")
    (description
     "This library defines an optimized type for representing polynomials
in Bernstein form, as well as instances of numeric classes and other
manipulation functions, and a solver of systems of polynomial
equations in this form.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-polynomials-bernstein

(define-public haskell-8.4-random-shuffle
  (package
    (name "haskell-8.4-random-shuffle")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://hackage.haskell.org/package/random-shuffle")
    (synopsis "Random shuffle implementation.")
    (description
     "Random shuffle implementation, on immutable lists.
Based on `perfect shuffle' implementation by Oleg Kiselyov,
available on http://okmij.org/ftp/Haskell/perfect-shuffle.txt")
    (license license:bsd-3)))

haskell-8.4-random-shuffle

(define-public haskell-8.4-raw-strings-qq
  (package
    (name "haskell-8.4-raw-strings-qq")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)))
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

haskell-8.4-raw-strings-qq

(define-public haskell-8.4-rcu
  (package
    (name "haskell-8.4-rcu")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rcu/rcu-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "17w0y843z5mr095cazfrz1jnf731zjsnd6vhgkx8ppras05vs371"))))
    (properties `((upstream-name . "rcu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-ftest-hlint" "-f-unstable" "-f-measure-synchronize")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-atomic-primops)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fail)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "http://github.com/ekmett/rcu/")
    (synopsis "Read-Copy-Update for Haskell")
    (description "Read-Copy-Update for Haskell.")
    (license license:bsd-3)))

haskell-8.4-rcu

(define-public haskell-8.4-re2
  (package
    (name "haskell-8.4-re2")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/re2/re2-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0qfmiwy4kc87a736fpzh4cscvldiywq641gb9kvn4hc3sq7dh1k9"))))
    (properties `((upstream-name . "re2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
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

haskell-8.4-re2

(define-public haskell-8.4-regex-compat
  (package
    (name "haskell-8.4-regex-compat")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)))
    (home-page "http://sourceforge.net/projects/lazy-regex")
    (synopsis "Replaces/Enhances Text.Regex")
    (description
     "One module layer over <//hackage.haskell.org/package/regex-posix regex-posix> to replace \"Text.Regex\"")
    (license license:bsd-3)))

haskell-8.4-regex-compat

(define-public haskell-8.4-regex-compat-tdfa
  (package
    (name "haskell-8.4-regex-compat-tdfa")
    (version "0.95.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-compat-tdfa/regex-compat-tdfa-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p90fn90yhp7fvljjdqjp41cszidcfz4pw7fwvzyx4739b98x8sg"))))
    (properties `((upstream-name . "regex-compat-tdfa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("1" "19jq1ic29mxfhrwxqxb4844cz0hc0bkyjbkjm3m4dinv13sv3sps")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)))
    (home-page "http://hub.darcs.net/shelarcy/regex-compat-tdfa")
    (synopsis "Unicode Support version of Text.Regex, using regex-tdfa")
    (description "One module layer over regex-tdfa to replace Text.Regex.

regex-compat can't use Unicode characters correctly because
of using regex-posix. This is not good for Unicode users.

I modified regex-compat to use regex-tdfa for solving today's
problem.")
    (license license:bsd-3)))

haskell-8.4-regex-compat-tdfa

(define-public haskell-8.4-regex-tdfa-text
  (package
    (name "haskell-8.4-regex-tdfa-text")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-tdfa-text/regex-tdfa-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0090g6lgbdm9lywpqm2d3724nnnh24nx3vnlqr96qc2w486pmmrq"))))
    (properties `((upstream-name . "regex-tdfa-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "00swglzmdw30g4bn47z6j71all0djjb2hjm7bkfl7pza4wv14wpv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)))
    (home-page "https://hackage.haskell.org/package/regex-tdfa-text")
    (synopsis "Text interface for regex-tdfa")
    (description
     "This provides text interface for regex-tdfa.

This should be part of regex-tdfa package. But my patches are not accepted yet.
So, I made a separate package. If you are interested in my patches, see
<http://hub.darcs.net/shelarcy/regex-base> and <http://hub.darcs.net/shelarcy/regex-tdfa>.")
    (license license:bsd-3)))

haskell-8.4-regex-tdfa-text

(define-public haskell-8.4-runmemo
  (package
    (name "haskell-8.4-runmemo")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-data-memocombinators)))
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

haskell-8.4-runmemo

(define-public haskell-8.4-seqalign
  (package
    (name "haskell-8.4-seqalign")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/seqalign")
    (synopsis "Sequence Alignment")
    (description
     "FFI wrappers for global and local string alignment functions")
    (license license:bsd-3)))

haskell-8.4-seqalign

(define-public haskell-8.4-shell-escape
  (package
    (name "haskell-8.4-shell-escape")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/solidsnack/shell-escape")
    (synopsis "Shell escaping library.")
    (description
     "Shell escaping library, offering both Bourne shell and Bash style escaping
of ByteStrings.")
    (license license:bsd-3)))

haskell-8.4-shell-escape

(define-public haskell-8.4-static-text
  (package
    (name "haskell-8.4-static-text")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/static-text/static-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "189x85skhzms3iydzh4gd5hmklx7ps2skzymls514drg8cz7m7ar"))))
    (properties `((upstream-name . "static-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbytestring" "-ftext" "-fvector")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/dzhus/static-text#readme")
    (synopsis
     "Lists, Texts, ByteStrings and Vectors of statically known length")
    (description
     "static-text provides type-level safety for basic operations on string-like types (finite lists of elements), such as Data.Text, String (and all lists), Data.ByteString and Data.Vector. Use it when you need static guarantee on lengths of strings produced in your code.")
    (license license:bsd-3)))

haskell-8.4-static-text

(define-public haskell-8.4-stb-image-redux
  (package
    (name "haskell-8.4-stb-image-redux")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/typedrat/stb-image-redux#readme")
    (synopsis "Image loading and writing microlibrary")
    (description
     "See <https://github.com/typedrat/stb-image-redux/blob/master/README.md>.")
    (license license:bsd-3)))

haskell-8.4-stb-image-redux

(define-public haskell-8.4-string-class
  (package
    (name "haskell-8.4-string-class")
    (version "0.1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-class/string-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s0bj0wvwriw4516za6ar7w7zsz5mmnf1dba0ch239n27rb00nwf"))))
    (properties `((upstream-name . "string-class") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z3cq57j6gjkz8q0wn9y222qw8lg560372na0nn7fcbf54yc749r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "https://github.com/string-class/string-class")
    (synopsis "String class library")
    (description "String class library.")
    (license license:bsd-3)))

haskell-8.4-string-class

(define-public haskell-8.4-syb
  (package
    (name "haskell-8.4-syb")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/syb/syb-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1da2zz7gqm4xbkx5vpd74dayx1svaxyl145fl14mq15lbb77sxdq"))))
    (properties `((upstream-name . "syb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0hq9i5j7snafa5lsx6igl16d6hacib8arf7ml40smskxf79137zf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)))
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

haskell-8.4-syb

(define-public haskell-8.4-tardis
  (package
    (name "haskell-8.4-tardis")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)))
    (home-page "https://github.com/DanBurton/tardis")
    (synopsis "Bidirectional state monad transformer")
    (description
     "A Tardis is a combination of both a forwards and a backwards
state transformer, providing two state values that \\\"travel\\\"
in opposite directions.

A detailed description of what a Tardis is and how to use it
can be found in the documentation for Control.Monad.Tardis.")
    (license license:bsd-3)))

haskell-8.4-tardis

(define-public haskell-8.4-tce-conf
  (package
    (name "haskell-8.4-tce-conf")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)))
    (home-page "http://hub.darcs.net/dino/tce-conf")
    (synopsis "Very simple config file reading")
    (description
     "This package contains modules for runtime reading of very simple config files of the `key=value` style or as a Haskell data structure to be deserialized with `Read`. The modules support files with blank lines and simple single-line comments, but nothing else.")
    (license license:bsd-3)))

haskell-8.4-tce-conf

(define-public haskell-8.4-tensorflow-test
  (package
    (name "haskell-8.4-tensorflow-test")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/tensorflow/haskell#readme")
    (synopsis "Some common functions for test suites.")
    (description "This package provides common utility functions for the
TensorFlow test suites.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-tensorflow-test

(define-public haskell-8.4-thread-local-storage
  (package
    (name "haskell-8.4-thread-local-storage")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-atomic-primops)
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

haskell-8.4-thread-local-storage

(define-public haskell-8.4-tile
  (package
    (name "haskell-8.4-tile")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)))
    (home-page "https://github.com/caneroj1/tile#readme")
    (synopsis "Slippy map tile functionality.")
    (description "Tile/lonlat conversion utilities for slippy maps.")
    (license license:bsd-3)))

haskell-8.4-tile

(define-public haskell-8.4-time-compat
  (package
    (name "haskell-8.4-time-compat")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/time-compat/time-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zqgzr8yjn36rn6gflwh5s0c92vl44xzxiw0jz8d5h0h8lhi21sr"))))
    (properties `((upstream-name . "time-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)))
    (home-page "http://hub.darcs.net/dag/time-compat")
    (synopsis "Compatibility with old-time for the time package")
    (description
                 "Compatibility with the <old-time> package for the \\\"new\\\"
<time> package.")
    (license license:bsd-3)))

haskell-8.4-time-compat

(define-public haskell-8.4-transformers-bifunctors
  (package
    (name "haskell-8.4-transformers-bifunctors")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)))
    (home-page "https://github.com/jacobstanley/transformers-bifunctors")
    (synopsis "Bifunctors over monad transformers.")
    (description "Bifunctors over monad transformers.")
    (license license:bsd-3)))

haskell-8.4-transformers-bifunctors

(define-public haskell-8.4-universe-instances-trans
  (package
    (name "haskell-8.4-universe-instances-trans")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-trans/universe-instances-trans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03iix0bdhfi4qlgwr8sl3gsqck6lsbkqgx245w2z5yaaxgqpq10d"))))
    (properties `((upstream-name . "universe-instances-trans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dcwgbgmbkjwzbxlncpl1b5hgjrmkl73djknjkhbnh02pysbwv69")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-universe-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-universe-instances-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis
     "Universe instances for types from the transformers and mtl packages")
    (description "")
    (license license:bsd-3)))

haskell-8.4-universe-instances-trans

(define-public haskell-8.4-universe-reverse-instances
  (package
    (name "haskell-8.4-universe-reverse-instances")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-reverse-instances/universe-reverse-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jcd7qyvzq8xxv9d3hfi0f1h48xdsy9r9xnxgxc7ggga4szirm79"))))
    (properties `((upstream-name . "universe-reverse-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0cpnsip1iakwkgnwnd21gwrc8qbifzpff6agjwm34jgkq9j646k8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-universe-instances-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis
     "instances of standard classes that are made possible by enumerations")
    (description "")
    (license license:bsd-3)))

haskell-8.4-universe-reverse-instances

(define-public haskell-8.4-vector-binary-instances
  (package
    (name "haskell-8.4-vector-binary-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-vector-binary-instances

(define-public haskell-8.4-vector-buffer
  (package
    (name "haskell-8.4-vector-buffer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/vector-buffer")
    (synopsis "A buffer compatible with Data.Vector.*")
    (description
     "A buffer type that can easily be converted to a Data.Vector.Storable vector
from the vector package and compatible with hmatrix.

Elements are pushed into the buffer.  When the buffer is converted to a read-only
vector, the last-pushed element occurs at the end.

Monadic map functions also operate so that the last-pushed element is treated last.")
    (license license:bsd-3)))

haskell-8.4-vector-buffer

(define-public haskell-8.4-vector-builder
  (package
    (name "haskell-8.4-vector-builder")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-builder/vector-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06d2pa1fb3ydrl7l6rjazqyxv5i73v65x2f5fp0ypjxfbm6jsmn8"))))
    (properties `((upstream-name . "vector-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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
>      foldMap B.singleton list <>
>      B.singleton element")
    (license license:expat)))

haskell-8.4-vector-builder

(define-public haskell-8.4-webrtc-vad
  (package
    (name "haskell-8.4-webrtc-vad")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://hackage.haskell.org/package/webrtc-vad")
    (synopsis "Easy voice activity detection")
    (description
     "A simple library wrapping WebRTC's voice activity detection engine.")
    (license license:expat)))

haskell-8.4-webrtc-vad

(define-public haskell-8.4-writer-cps-morph
  (package
    (name "haskell-8.4-writer-cps-morph")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/writer-cps-morph/writer-cps-morph-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n6m7wpxvvnxgkjz8qfiqz9jn2d83qb9wj4gmp476fg8vjvhf7g9"))))
    (properties `((upstream-name . "writer-cps-morph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0dqpbpaidwa7ahk0n7pv397mv7ncr26p3vcrjh1xzl6vk26bdah5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-writer-cps-transformers)))
    (home-page "https://github.com/louispan/writer-cps-morph#readme")
    (synopsis "MFunctor instance for CPS style WriterT and RWST")
    (description "MFunctor instance for CPS style WriterT and RWST")
    (license license:bsd-3)))

haskell-8.4-writer-cps-morph

