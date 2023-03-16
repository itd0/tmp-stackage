;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage013)
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
(define-public haskell-9.0-JuicyPixels
  (package
    (name "haskell-9.0-JuicyPixels")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Twinside/Juicy.Pixels")
    (synopsis
     "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>

This library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.")
    (license license:bsd-3)))

haskell-9.0-JuicyPixels

(define-public haskell-9.0-asn1-types
  (package
    (name "haskell-9.0-asn1-types")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-types/asn1-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a119qxhxhr0yn37r26dkydm6g5kykdkx98ghb59i4ipa6i95vkq"))))
    (properties `((upstream-name . "asn1-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-hourglass)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-asn1")
    (synopsis "ASN.1 types")
    (description "ASN.1 standard types")
    (license license:bsd-3)))

haskell-9.0-asn1-types

(define-public haskell-9.0-audacity
  (package
    (name "haskell-9.0-audacity")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/audacity/audacity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04r36gy8z0d2fz1l5px6yajp7izf3zpda9vci6q0wc273pxc8ck6"))))
    (properties `((upstream-name . "audacity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")
       #:cabal-revision
       ("1" "0f43s469wgrp6vkiqz1ibnvcv37zjsng2pdzkhhpg9v4syi30r3b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-tagchup)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-xml-basic)))
    (home-page "https://hub.darcs.net/thielema/audacity")
    (synopsis "Interchange with the Audacity sound signal editor")
    (description
     "This package provides functions
for interchange with the Audacity sound signal editor.
Currently we support import and export of label tracks,
export of Audacity projects and
limited import of tracks from Audacity projects.

We provide some examples that are useful on its own:

* @@sox-split@@:
Split an audio file according to a label track.
Audacity provides this function by itself.
You can use placeholders like @@%s@@ and @@%02d@@
in order to compose the names of the parts from the labels and positions.

* @@sox-concat@@:
Concatenate a sequence of sound files with matching
sampling rates and numbers of channels using SoX
and generate an Audacity label track file
that shows the origins of the parts.

* @@audacity-concat@@:
Create an Audacity project file
containing a virtual concatenation of the input sound files
and a label track showing the origins of the sound files.

* @@audacity-combine@@:
Put several audio and label files into tracks of a new Audacity project.
Opening one or even multiple such projects is much easier
than loading individual tracks into Audacity.")
    (license license:bsd-3)))

haskell-9.0-audacity

(define-public haskell-9.0-base16
  (package
    (name "haskell-9.0-base16")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base16/base16-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "149kpmx63b8bmlwjpldkxxb4ldf28qz4h4i3ars6dwlyhzxg6qav"))))
    (properties `((upstream-name . "base16") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0jlynzbrd9bl7gdnh4hwnf5b4s90yy0jjfr5zg5pw720lb4601y3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-random-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base16")
    (synopsis "Fast RFC 4648-compliant Base16 encoding")
    (description
     "RFC 4648-compliant Base16 encodings and decodings.
This library provides performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-9.0-base16

(define-public haskell-9.0-base32
  (package
    (name "haskell-9.0-base32")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base32/base32-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g4yb3v1rgggl4ks4wznidssycs23zjl6fz1iiachf730hz79w31"))))
    (properties `((upstream-name . "base32") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base32")
    (synopsis "Fast RFC 4648-compliant Base32 encoding")
    (description
     "RFC 4648-compliant Base32 encodings and decodings.
This library provides performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-9.0-base32

(define-public haskell-9.0-base64
  (package
    (name "haskell-9.0-base64")
    (version "0.4.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base64/base64-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "119mpqcv1rwkhwm69ga2b4f7hr825fa5wfm1w3i1szmhzh52s2k4"))))
    (properties `((upstream-name . "base64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0cz3zzz9k490w9nfn4hpgdw4zx4w70fwqrwsfx8svcwqssqibqw3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base64")
    (synopsis "A modern RFC 4648-compliant Base64 library")
    (description
     "RFC 4648-compliant Base64 with an eye towards performance and modernity (additional support for RFC 7049 standards)")
    (license license:bsd-3)))

haskell-9.0-base64

(define-public haskell-9.0-blaze-html
  (package
    (name "haskell-9.0-blaze-html")
    (version "0.9.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-html/blaze-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k1r1hddjgqighazcazxrx6xfhvy2gm8il8l82ainv3cai13yl30"))))
    (properties `((upstream-name . "blaze-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1hjxvz62wlg0x7svc51zascgc96f5ly9xkkiyllgb4aqcvx9zf3l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast HTML combinator library for Haskell")
    (description "A blazingly fast HTML combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-9.0-blaze-html

(define-public haskell-9.0-blaze-svg
  (package
    (name "haskell-9.0-blaze-svg")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-svg/blaze-svg-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q5a4wam0sidng0cfsivwkyph9snyilk7rsdx4vb6wz9l6xz397n"))))
    (properties `((upstream-name . "blaze-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vb78d0nvk0909963pm0mnzklcm57w563lhgx1wv7qzdfznpi8f9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/deepakjois/blaze-svg")
    (synopsis "SVG combinator library")
    (description
     "A blazingly fast SVG combinator library for the Haskell
programming language. The \"Text.Blaze.SVG\" module is a good
starting point.

Other documentation:

* Programs in the /examples/ folder of this project: <https://github.com/deepakjois/blaze-svg/tree/master/examples/>

* Jasper Van Der Jeugt has written a tutorial for /blaze-html/,
which is a sister library of /blaze-svg/. It may not be directly relevant,
but still it gives a good overview on how to use the  combinators in
\"Text.Blaze.Svg11\" and \"Text.Blaze.Svg11.Attributes\":
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-9.0-blaze-svg

(define-public haskell-9.0-codec-beam
  (package
    (name "haskell-9.0-codec-beam")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/codec-beam/codec-beam-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rg398vh36fb5bkb0anq0iv7g5z55avchswpkwjcjzilbx765sv1"))))
    (properties `((upstream-name . "codec-beam") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hkgumbs/codec-beam#readme")
    (synopsis "Erlang VM byte code assembler")
    (description "Erlang VM byte code assembler.")
    (license license:bsd-3)))

haskell-9.0-codec-beam

(define-public haskell-9.0-comfort-array
  (package
    (name "haskell-9.0-comfort-array")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-array/comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07rajrpp495g17naywybkrydd67ixiav5g8rayavwabvyrybnmgy"))))
    (properties `((upstream-name . "comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsetindex")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-guarded-allocation)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prelude-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/comfort-array/")
    (synopsis "Arrays where the index type is a function of the shape type")
    (description
     "Arrays from the basic @@array@@ package are already very powerful
compared with arrays in other languages.
They may have any number of dimensions, are type safe
and defined in a uniform way using the Ix class
with free choice of the lower bounds (0, 1, or whatever you like).

This package goes one step further:
The shape and the index type are different,
but the index type is a type function of the shape type.
This offers much more flexibility and type safety.

Some examples are:

* @@Range@@:
Allow dynamic choice of lower and upper array bounds
such as in the 'Array's from the @@array@@ package.
You can combine it with other shapes in other dimensions.
It allows you to describe the bounds of each dimension individually.

* @@Shifted@@:
Describe array bounds by start index and length.
It is sometimes more natural to use these parameters.
E.g. a non-negative index type like 'Word' cannot represent @@-1@@
and thus cannot encode an empty range starting with index @@0@@.

* @@ZeroBased, OneBased@@:
Arrays with fixed lower bound, either 0 or 1, respectively.

* @@Cyclic@@:
Indices with wrap-around semantics.

* @@Zero, ()@@:
Arrays with fixed size 0 or 1, respectively.

* @@Enumeration@@:
Arrays with indices like 'LT', 'EQ', 'GT' and a shape of fixed size.

* @@(::+)@@:
The Append type constructor allows to respresent block arrays,
e.g. block matrices.
It also allows to represent non-empty arrays via @@()::+sh@@.

* @@Set@@: Use an arbitrary ordered set as index set.

* @@Map@@: Concatenate a set of shapes.

* @@Triangular@@:
A 2D array with the shape of a lower or upper triangular matrix.

* @@Simplex@@:
Simplices of any dimension, where the dimension is encoded in the type.
An index is a tuple of monotonic ordered sub-indices.

* @@Square@@: A 2D array where both dimensions always have equal size.

* @@Cube@@: A 3D array where all three dimensions always have equal size.

* @@Tagged@@: Statically distinguish shapes and indices that are isomorphic.

With our @@Array@@ type you can perform

* Fast Linear Algebra using the package @@lapack@@.
The @@lapack@@ package defines even more fancy shapes
like tall rectangular matrices, triangular matrices and banded matrices.

* Fast Fourier Transforms using the package @@comfort-fftw@@

* Fast Linear Programming using the package @@comfort-glpk@@

* Efficient Array Processing via LLVM Just-In-Time code generation
using the package @@knead@@.

See also @@comfort-graph@@ for a Graph data structure,
with non-Int node identifiers and flexible edge types.")
    (license license:bsd-3)))

haskell-9.0-comfort-array

(define-public haskell-9.0-core-text
  (package
    (name "haskell-9.0-core-text")
    (version "0.3.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-text/core-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vl463wdgnfb795nbir355w1cgy5ndqnwgfiiyr1j73xmngmvw04"))))
    (properties `((upstream-name . "core-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-fingertree)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis "A rope type based on a finger tree over UTF-8 fragments")
    (description
     "A rope data type for text, built as a finger tree over UTF-8 text
fragments. The package also includes utiltiy functions for breaking and
re-wrapping lines, conveniences for pretty printing and colourizing
terminal output, and a simple mechanism for multi-line Rope literals.

The main @@Rope@@ type and its usage are described at \"Core.Text.Rope\" in
this package.

This is part of a library intended to ease interoperability and assist in
building command-line programs, both tools and longer-running daemons.
A list of features and some background to the library's design is contained
in the
<https://github.com/aesiniath/unbeliever/blob/master/README.markdown README>
on GitHub.")
    (license license:expat)))

haskell-9.0-core-text

(define-public haskell-9.0-cryptonite
  (package
    (name "haskell-9.0-cryptonite")
    (version "0.29")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite/cryptonite-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13xhp3hshb8x06bw37kp16c9jpjmgfn06nkj9drz745fv8f04fnq"))))
    (properties `((upstream-name . "cryptonite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsupport_aesni" "-fsupport_rdrand" "-f-support_pclmuldq" "-f-support_sse" "-finteger-gmp" "-fsupport_deepseq" "-f-old_toolchain_inliner" "-f-check_alignment" "-fuse_target_attributes")
       #:cabal-revision
       ("1" "1gaabsh8ihxcb6f3pplvpkplw7xbdxvflmc1wwnssx7s070n4323")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-basement)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-tasty-kat)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-crypto/cryptonite")
    (synopsis "Cryptography Primitives sink")
    (description
     "A repository of cryptographic primitives.

* Symmetric ciphers: AES, DES, 3DES, CAST5, Blowfish, Twofish, Camellia, RC4, Salsa, XSalsa, ChaCha.

* Hash: SHA1, SHA2, SHA3, SHAKE, MD2, MD4, MD5, Keccak, Skein, Ripemd, Tiger, Whirlpool, Blake2

* MAC: HMAC, KMAC, Poly1305

* Asymmetric crypto: DSA, RSA, DH, ECDH, ECDSA, ECC, Curve25519, Curve448, Ed25519, Ed448

* Key Derivation Function: PBKDF2, Scrypt, HKDF, Argon2, BCrypt, BCryptPBKDF

* Cryptographic Random generation: System Entropy, Deterministic Random Generator

* Data related: Anti-Forensic Information Splitter (AFIS)

If anything cryptographic related is missing from here, submit
a pull request to have it added. This package strives to be a
cryptographic kitchen sink that provides cryptography for everyone.

Evaluate the security related to your requirements before using.

Read \"Crypto.Tutorial\" for a quick start guide.")
    (license license:bsd-3)))

haskell-9.0-cryptonite

(define-public haskell-9.0-data-dword
  (package
    (name "haskell-9.0-data-dword")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-dword/data-dword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l6xvy89zch5kxkaafsg874xrwx0x1rpxpx1ywbhbs7qv3pz250i"))))
    (properties `((upstream-name . "data-dword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-data-bword)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-dword")
    (synopsis "Stick two binary words together to get a bigger one")
    (description
     "This package provides Template Haskell utilities for declaring fixed-length
binary word data types. Signed and unsigned 96, 128, 160, 192, 224, and
256-bit types are predefined.")
    (license license:bsd-3)))

haskell-9.0-data-dword

(define-public haskell-9.0-derive-topdown
  (package
    (name "haskell-9.0-derive-topdown")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/derive-topdown/derive-topdown-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w36nczl0rl91sgm3vcd4gvm3lr6zdjqvmfdikkjq664xwnxrn8h"))))
    (properties `((upstream-name . "derive-topdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-th-expand-syns)))
    (home-page
     "https://github.com/HaskellZhangSong/derive-topdown                   ")
    (synopsis
     "Help Haskellers derive class instances for composited data types.")
    (description
     "This package will make it easier to derive class instance for complex composited data types by using Template Haskell.")
    (license license:bsd-3)))

haskell-9.0-derive-topdown

(define-public haskell-9.0-dimensional
  (package
    (name "haskell-9.0-dimensional")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dimensional/dimensional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19w6plp97ylwqgwzhfy54cvjvh0dd1gj843y59cmryckh80jap8s"))))
    (properties `((upstream-name . "dimensional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-exact-pi)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-numtype-dk)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bjornbm/dimensional/")
    (synopsis "Statically checked physical dimensions")
    (description
     "Dimensional is a library providing data types for performing arithmetic
with physical quantities and units. Information about the physical
dimensions of the quantities and units is embedded in their types and the
validity of operations is verified by the type checker at compile time.
The boxing and unboxing of numerical values as quantities is done by
multiplication and division with units. The library is designed to, as
far as is practical, enforce/encourage best practices of unit usage.
Version 1 of the dimensional package differs from earlier version in that
the dimension tracking is implemented using Closed Type Families and Data Kinds
rather than functional dependencies. This enables a number of features, including
improved support for unit names and quantities with statically-unknown dimensions.
Requires GHC 8.0 or later.")
    (license license:bsd-3)))

haskell-9.0-dimensional

(define-public haskell-9.0-equivalence
  (package
    (name "haskell-9.0-equivalence")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/equivalence/equivalence-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13q0lklm58n0l7bx0d4k1cw1i2il8hpdjp76lb79ix8lv7cxd2jr"))))
    (properties `((upstream-name . "equivalence") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-STMonadTrans)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pa-ba/equivalence")
    (synopsis
     "Maintaining an equivalence relation implemented as union-find using STT.")
    (description
     "This is an implementation of Tarjan's Union-Find algorithm (Robert
E. Tarjan. \"Efficiency of a Good But Not Linear Set Union
Algorithm\", JACM 22(2), 1975) in order to maintain an equivalence
relation.
This implementation is a port of the /union-find/ package using the
ST monad transformer (instead of the IO monad).")
    (license license:bsd-3)))

haskell-9.0-equivalence

(define-public haskell-9.0-fft
  (package
    (name "haskell-9.0-fft")
    (version "0.1.8.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fft/fft-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1kkdw08qzsgjgg9z7pf5876cn2hlq22cgvc3k2amidn317n2d6vz"))))
    (properties `((upstream-name . "fft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fbase4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages algebra) fftw)
                  (@ (gnu packages algebra) fftwf)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-carray)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ix-shapable)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/fft")
    (synopsis "Bindings to the FFTW library.")
    (description "Bindings to the FFTW library.

Provides high performance discrete fourier transforms in
arbitrary dimensions.  Include transforms of complex data,
real data, and real to real transforms.
")
    (license license:bsd-3)))

haskell-9.0-fft

(define-public haskell-9.0-fields-json
  (package
    (name "haskell-9.0-fields-json")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fields-json/fields-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pzh7j2ka4s4b2vgcj2qsrrmxb3gxry0r5wzhkblc82bk76sq4fn"))))
    (properties `((upstream-name . "fields-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-json)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (home-page "https://github.com/scrive/fields-json")
    (synopsis "Abusing monadic syntax JSON objects generation.")
    (description
     "Generation of big, complex JSON objects with 'Text.JSON' is painful.
And autoderivation is not always possible.
Check documentation of 'Text.JSON.Gen' for more info.")
    (license license:bsd-3)))

haskell-9.0-fields-json

(define-public haskell-9.0-fixed-vector
  (package
    (name "haskell-9.0-fixed-vector")
    (version "1.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector/fixed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05x3qivymg02n17wik17fmz2bqbbhj4b0w5iz7vnjz3szhwjizdf"))))
    (properties `((upstream-name . "fixed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-filemanip)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (home-page "https://hackage.haskell.org/package/fixed-vector")
    (synopsis "Generic vectors with statically known size.")
    (description
     "Generic library for vectors with statically known
size. Implementation is based on
<http://unlines.wordpress.com/2010/11/15/generics-for-small-fixed-size-vectors/>
Same functions could be used to work with both ADT based vector like

> data Vec3 a = a a a

Tuples are vectors too:

>>> sum (1,2,3)
6

Vectors which are represented internally by arrays are provided by
library. Both boxed and unboxed arrays are supported.

Library is structured as follows:

* Data.Vector.Fixed
Generic API. It's suitable for both ADT-based vector like Complex
and array-based ones.

* Data.Vector.Fixed.Cont
Continuation based vectors. Internally all functions use them.

* Data.Vector.Fixed.Mutable
Type classes for array-based implementation and API for working with
mutable state.

* Data.Vector.Fixed.Unboxed
Unboxed vectors.

* Data.Vector.Fixed.Boxed
Boxed vector which can hold elements of any type.

* Data.Vector.Fixed.Storable
Unboxed vectors of Storable  types.

* Data.Vector.Fixed.Primitive
Unboxed vectors based on pritimive package.")
    (license license:bsd-3)))

haskell-9.0-fixed-vector

(define-public haskell-9.0-flexible-defaults
  (package
    (name "haskell-9.0-flexible-defaults")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flexible-defaults/flexible-defaults-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02v35b3ahbw46q9xipyh4n46drlz1xrx1rixdmggjr0fwkygd1k5"))))
    (properties `((upstream-name . "flexible-defaults") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-th-extras)))
    (home-page "https://github.com/peti/flexible-defaults")
    (synopsis
     "Generate default function implementations for complex type classes.")
    (description "Template Haskell code to implement default implementations
for type-class functions based on which functions are
already implemented.  Currently extremely crude but
still fairly effective.

When defining a type class with many functions, each
of which can be implemented based on arbitrary subsets
of the others, the standard default-implementation
concept breaks down quite badly.  This library provides
a system by which more complex rules can be described
for choosing default implementations based on which
ones the user supplies.  These implementations can
additionally be given \\\"suitability scores\\\", so that
when multiple possible choices could be made, the
library can choose the \\\"best\\\" one.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-flexible-defaults

(define-public haskell-9.0-ghc-typelits-extra
  (package
    (name "haskell-9.0-ghc-typelits-extra")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-extra/ghc-typelits-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pjai171y374569xzqnp6amf7dvj57pcfykh3g48m5jij2b8jbc6"))))
    (properties `((upstream-name . "ghc-typelits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "Additional type-level operations on GHC.TypeLits.Nat")
    (description
     "Additional type-level operations on @@GHC.TypeLits.Nat@@:

* @@Max@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:max max>

* @@Min@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:min min>

* @@Div@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:div div>

* @@Mod@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:mod mod>

* @@FLog@@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
i.e. the exact integer equivalent to @@floor (logBase x y)@@

* @@CLog@@: type-level equivalent of /the ceiling of/ <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
i.e. the exact integer equivalent to @@ceiling (logBase x y)@@

* @@Log@@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
where the operation only reduces when @@floor (logBase b x) ~ ceiling (logBase b x)@@

* @@GCD@@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:gcd gcd>

* @@LCM@@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:lcm lcm>

And a custom solver for the above operations defined in
@@GHC.TypeLits.Extra.Solver@@ as a GHC type-checker plugin. To use the plugin,
add the

@@
OPTIONS_GHC -fplugin GHC.TypeLits.Extra.Solver
@@

pragma to the header of your file.")
    (license license:bsd-2)))

haskell-9.0-ghc-typelits-extra

(define-public haskell-9.0-hashable-time
  (package
    (name "haskell-9.0-hashable-time")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashable-time/hashable-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15zv0pgxp7rgd6v7skhyxgyf2sd8gr1br12bpd17r650yscw9fij"))))
    (properties `((upstream-name . "hashable-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-time-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hashable-time")
    (synopsis "Hashable instances for Data.Time")
    (description "Hashable instances for types in Data.Time")
    (license license:bsd-3)))

haskell-9.0-hashable-time

(define-public haskell-9.0-hlibgit2
  (package
    (name "haskell-9.0-hlibgit2")
    (version "0.18.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hlibgit2/hlibgit2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0plfzxzgph7iilwp434ndcw7pia47n96hcfa32fs7q5gz8kl17hr"))))
    (properties `((upstream-name . "hlibgit2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages version-control) git)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/hlibgit2")
    (synopsis "Low-level bindings to libgit2")
    (description "Bindings to libgit2 v0.18.0.")
    (license license:expat)))

haskell-9.0-hlibgit2

(define-public haskell-9.0-hspec-core
  (package
    (name "haskell-9.0-hspec-core")
    (version "2.8.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-core/hspec-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hy3qw7qvix5899hkq96mqda2ridif2g3mwdn8sxg2wlhbcvzfjm"))))
    (properties `((upstream-name . "hspec-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1nwki2mb64akmc7585cmjhiizwm090j7gqx5js1h9rmvl7z2zfbx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-call-stack)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-hspec-meta)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-quickcheck-io)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-setenv)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-silently)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-tf-random)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "This package exposes internal types and functions that can be used to extend Hspec's functionality.")
    (license license:expat)))

haskell-9.0-hspec-core

(define-public haskell-9.0-human-readable-duration
  (package
    (name "haskell-9.0-human-readable-duration")
    (version "0.2.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/human-readable-duration/human-readable-duration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06yw7bab1hk8287d2zdg45m46pgp87fivh0cb2x1nxivvn1qfs6c"))))
    (properties `((upstream-name . "human-readable-duration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)))
    (home-page
     "https://gitlab.esy.fun/yogsototh/human-readable-duration#readme")
    (synopsis "Provide duration helper")
    (description
     "This is a minimal Haskell library to display duration.

> let duration = 2 * ms + 3 * oneSecond + 2 * minute + 33*day + 2*year
> humanReadableDuration duration
> -- will return: \"2 years 33 days 2 min 3s 2ms\"
> getYears duration
> -- will return 2
> getDays duration
> -- will return 763
> getMs duration
> -- will return 65923323002")
    (license license:bsd-3)))

haskell-9.0-human-readable-duration

(define-public haskell-9.0-lrucaching
  (package
    (name "haskell-9.0-lrucaching")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lrucaching/lrucaching-" version
                    ".tar.gz"))
              (sha256
               (base32
                "192a2zap1bmxa2y48n48rmngf18fr8k0az4a230hziv3g795yzma"))))
    (properties `((upstream-name . "lrucaching") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("12" "0jc46492lq09yrmp0887q9smk0z6nn35nlgcarm9rndsr2a1x0ya")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-psqueues)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cocreature/lrucaching#readme")
    (synopsis "LRU cache")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-lrucaching

(define-public haskell-9.0-microlens-process
  (package
    (name "haskell-9.0-microlens-process")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-process/microlens-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dvhvrk1v0kjb45xnpjbr8b97vc6dx4cq34jfzkazqdp5jk5nlxp"))))
    (properties `((upstream-name . "microlens-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "04j2yap3ha45wq0slvxkd3gm7gkx2dks9abxfd6mg3asmdp743gk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)))
    (home-page "https://github.com/emilypi/lens-process/tree/master/microlens")
    (synopsis "Micro-optics for the process library")
    (description
     "'microlens-process' is a set of multi-purpose optics and convenience
combinators for working with the `process` library, including
a more well-typed api for the parts that can be typed.")
    (license license:bsd-3)))

haskell-9.0-microlens-process

(define-public haskell-9.0-modular
  (package
    (name "haskell-9.0-modular")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/modular/modular-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1igg7am4z1kfvpyp5a53rsqan5i209rp1s0z9xamqydx60ilc2s3"))))
    (properties `((upstream-name . "modular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-typelits-knownnat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pgujjula/modular#readme")
    (synopsis "Type-safe modular arithmetic")
    (description
     "Please see the GitHub page at <https://github.com/pgujjula/modular> for installation instructions, and the module documentation for Numeric.Modular for usage instructions.")
    (license license:bsd-3)))

haskell-9.0-modular

(define-public haskell-9.0-mpi-hs-binary
  (package
    (name "haskell-9.0-mpi-hs-binary")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mpi-hs-binary/mpi-hs-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10wlrm31drjgdviqzsvxlnj1mn1lli3n41z1xbfp0i80vmh29av3"))))
    (properties `((upstream-name . "mpi-hs-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-monad-loops)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-mpi-hs)))
    (propagated-inputs (list (@ (gnu packages mpi) mpich)))
    (home-page "https://github.com/eschnett/mpi-hs-binary#readme")
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

haskell-9.0-mpi-hs-binary

(define-public haskell-9.0-mpi-hs-cereal
  (package
    (name "haskell-9.0-mpi-hs-cereal")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mpi-hs-cereal/mpi-hs-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdizjk4xpc2hdh71s9ckjhq22appqj1c9s10mwxjgb9vd7bz07b"))))
    (properties `((upstream-name . "mpi-hs-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-monad-loops)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-mpi-hs)))
    (propagated-inputs (list (@ (gnu packages mpi) mpich)))
    (home-page "https://github.com/eschnett/mpi-hs-cereal#readme")
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

haskell-9.0-mpi-hs-cereal

(define-public haskell-9.0-netlib-carray
  (package
    (name "haskell-9.0-netlib-carray")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-carray/netlib-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rh4m4xxwm8n0577khqa2cx74hnwmgz94phq2rwhsdppg6dd2xx5"))))
    (properties `((upstream-name . "netlib-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18nniq616c9l65g6vxhs6w6yi9rcp8s8vid2v9v0r96i7x1a5g14")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-carray)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)))
    (home-page "http://hub.darcs.net/thielema/netlib-carray/")
    (synopsis "Helper modules for CArray wrappers to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-carray@@ and @@lapack-carray@@.")
    (license license:bsd-3)))

haskell-9.0-netlib-carray

(define-public haskell-9.0-network-byte-order
  (package
    (name "haskell-9.0-network-byte-order")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-byte-order/network-byte-order-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pnwcg13k4qw82n0zc1xibyc24sc77y79j5a62pqdmjrnz4wrc7j"))))
    (properties `((upstream-name . "network-byte-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fpyfd1adg9fr7w6afxkx306c0kaz3ji3x78sl29v9j3mh4vdn13")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)))
    (home-page "https://hackage.haskell.org/package/network-byte-order")
    (synopsis "Network byte order utilities")
    (description "Peek and poke functions for network byte order.")
    (license license:bsd-3)))

haskell-9.0-network-byte-order

(define-public haskell-9.0-nonempty-vector
  (package
    (name "haskell-9.0-nonempty-vector")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonempty-vector/nonempty-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w6fn8dinf8lcbhr5797i5kyixpasylpwn97ljmkjc6n3ad1b21y"))))
    (properties `((upstream-name . "nonempty-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18w57f8sdix71a27gwbifw7hmg34lms22c99gp7i7j7g154f3cn3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/emilypi/nonempty-vector")
    (synopsis "Non-empty vectors")
    (description "Performant, non-empty mutable and immutable vectors")
    (license license:bsd-3)))

haskell-9.0-nonempty-vector

(define-public haskell-9.0-nonempty-zipper
  (package
    (name "haskell-9.0-nonempty-zipper")
    (version "1.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonempty-zipper/nonempty-zipper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19r7lxjwiscg5ml7l2bx6sizb2rlbxmv81shqwnf8yjbnmpibmkp"))))
    (properties `((upstream-name . "nonempty-zipper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)))
    (home-page "https://github.com/freckle/nonempty-zipper#readme")
    (synopsis "A non-empty comonadic list zipper")
    (description "A non-empty comonadic list zipper")
    (license license:expat)))

haskell-9.0-nonempty-zipper

(define-public haskell-9.0-pgp-wordlist
  (package
    (name "haskell-9.0-pgp-wordlist")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pgp-wordlist/pgp-wordlist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15g6qh0fb7kjj3l0w8cama7cxgnhnhybw760md9yy7cqfq15cfzg"))))
    (properties `((upstream-name . "pgp-wordlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/quchen/pgp-wordlist")
    (synopsis "Translate between binary data and a human-readable
collection of words.")
    (description "Translate between binary data and a human-readable
collection of words.

The PGP Word List consists of two phonetic alphabets, each
with one word per possible byte value. A string of bytes
is translated with these alphabets, alternating between
them at each byte.

The PGP words corresponding to the bytes @@5B 1D CA 6E@@
are \"erase breakaway spellbind headwaters\", for example.

For further information, see
<http://en.wikipedia.org/wiki/PGP_word_list Wikipedia>.")
    (license license:bsd-3)))

haskell-9.0-pgp-wordlist

(define-public haskell-9.0-prettyprinter-convert-ansi-wl-pprint
  (package
    (name "haskell-9.0-prettyprinter-convert-ansi-wl-pprint")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-convert-ansi-wl-pprint/prettyprinter-convert-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kfrwnaldx0cyr3mwx3ys14bl58nfjpxkzrfi6152gvfh8ly44c6"))))
    (properties `((upstream-name . "prettyprinter-convert-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Converter from »ansi-wl-pprint« documents to »prettyprinter«-based ones.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-9.0-prettyprinter-convert-ansi-wl-pprint

(define-public haskell-9.0-primitive-unlifted
  (package
    (name "haskell-9.0-primitive-unlifted")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-primitive/primitive-unlifted")
    (synopsis "Primitive GHC types with unlifted types inside")
    (description "Primitive GHC types with unlifted types inside. There used
to be a module named `Data.Primitive.UnliftedArray` in the
`primitive` library. However, the techniques it used were
unsound in the presence of certain FFI calls. This library
a successor to that module.")
    (license license:bsd-3)))

haskell-9.0-primitive-unlifted

(define-public haskell-9.0-proto-lens-arbitrary
  (package
    (name "haskell-9.0-proto-lens-arbitrary")
    (version "0.1.2.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-arbitrary/proto-lens-arbitrary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gapsvn72hn8dbfdnrj9xdy7n1ip55sxx1679lpzgyjgq80sgslv"))))
    (properties `((upstream-name . "proto-lens-arbitrary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-lens-family)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-proto-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Arbitrary instances for proto-lens.")
    (description
     "The proto-lens-arbitrary allows generating arbitrary messages for use with QuickCheck.")
    (license license:bsd-3)))

haskell-9.0-proto-lens-arbitrary

(define-public haskell-9.0-proto-lens-optparse
  (package
    (name "haskell-9.0-proto-lens-optparse")
    (version "0.1.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-optparse/proto-lens-optparse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xg72lnx0r03gg41j8mgd61bil33kxpqd1jdpmgh6jx25km6rw9l"))))
    (properties `((upstream-name . "proto-lens-optparse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-proto-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Adapting proto-lens to optparse-applicative ReadMs.")
    (description
     "A package adapting proto-lens to optparse-applicative ReadMs. This gives an easy way to define options and arguments for text-format protobuf types.")
    (license license:bsd-3)))

haskell-9.0-proto-lens-optparse

(define-public haskell-9.0-proto-lens-runtime
  (package
    (name "haskell-9.0-proto-lens-runtime")
    (version "0.7.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-runtime/proto-lens-runtime-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fb64xcrgd7v2l4hqqcs0riszklkxh516l7n4p9lwwqmagmgz36y"))))
    (properties `((upstream-name . "proto-lens-runtime") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-lens-family)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-proto-lens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "")
    (description
     "Modules that are needed by the Haskell files generated by proto-lens-protoc. For forwards compatibility, we reexport them as new module names so that other packages don't accidentally write non-generated code that relies on these modules being reexported by this package.")
    (license license:bsd-3)))

haskell-9.0-proto-lens-runtime

(define-public haskell-9.0-read-env-var
  (package
    (name "haskell-9.0-read-env-var")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/read-env-var/read-env-var-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p5pw1y6wcq03bdixircf6bb9qjq2aci6bvpmqwfi360dwbwiwq3"))))
    (properties `((upstream-name . "read-env-var") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)))
    (home-page "https://github.com/cdepillabout/read-env-var#readme")
    (synopsis "Functions for safely reading environment variables.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.0-read-env-var

(define-public haskell-9.0-redis-resp
  (package
    (name "haskell-9.0-redis-resp")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/redis-resp/redis-resp-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12w00zjf901xi6wwb0g6wzbxkbh1iyyd7glxijx9sajv6jgd5365"))))
    (properties `((upstream-name . "redis-resp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-bytestring-conversion)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-double-conversion)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-operational)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-split)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/redis-resp/")
    (synopsis "REdis Serialization Protocol (RESP) implementation.")
    (description
     "REdis Serialization Protocol (RESP) implementation as specified
in <http://redis.io/topics/protocol>.

Most Redis commands are declared as a GADT which
enables different interpretations such as
<http://hackage.haskell.org/package/redis-io redis-io>.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.0-redis-resp

(define-public haskell-9.0-selda-sqlite
  (package
    (name "haskell-9.0-selda-sqlite")
    (version "0.1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-sqlite/selda-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cldk804vv82dp3hyxcddzy3plijgkmjz3ykrjzy7afqni97yc4y"))))
    (properties `((upstream-name . "selda-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-haste")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-direct-sqlite)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-selda)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/valderman/selda")
    (synopsis "SQLite backend for the Selda database EDSL.")
    (description "Allows the Selda database EDSL to be used with SQLite
databases.")
    (license license:expat)))

haskell-9.0-selda-sqlite

(define-public haskell-9.0-set-cover
  (package
    (name "haskell-9.0-set-cover")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/set-cover/set-cover-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04jjcmjll0azz24rx91p0dp5b8ya5jc0qacr21764ri1dbkfflgw"))))
    (properties `((upstream-name . "set-cover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-llvm")
       #:cabal-revision
       ("2" "05kisz47xka696fwszlxkvna2zv5qczaww8mpmn1g66sdppa5kzg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-enummapset)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prelude-compat)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-psqueues)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://hub.darcs.net/thielema/set-cover/")
    (synopsis
     "Solve exact set cover problems like Sudoku, 8 Queens, Soma Cube, Tetris Cube")
    (description
     "Solver for exact set cover problems.
Included examples:
Sudoku, Nonogram, 8 Queens, Domino tiling, Mastermind, Alphametics,
Soma Cube, Tetris Cube, Cube of L's,
Logika's Baumeister puzzle, Lonpos pyramid, Conway's puzzle.
The generic algorithm allows to choose between
slow but flexible @@Set@@ from @@containers@@ package
and fast but cumbersome bitvectors.

For getting familiar with the package
I propose to study the Queen8 example along with \"Math.SetCover.Exact\".

The Sudoku and Nonogram examples also demonstrate
how to interpret the set-cover solution in a human-friendly way.

Build examples with @@cabal install -fbuildExamples@@.

The package needs only Haskell 98.
There is also an experimental implementation using LLVM and @@knead@@.
Do not rely on that interface in released packages.")
    (license license:bsd-3)))

haskell-9.0-set-cover

(define-public haskell-9.0-soxlib
  (package
    (name "haskell-9.0-soxlib")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/soxlib/soxlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f7ci58yls5rhq1vy1q1imlsgkbvadv8646fvvymg0jq2mjwgsfd"))))
    (properties `((upstream-name . "soxlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-sample-frame)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages audio) sox)))
    (home-page "http://www.haskell.org/haskellwiki/Sox")
    (synopsis "Write, read, convert audio signals using libsox")
    (description
     "This is an FFI binding to @@libsox@@ of the Sox (Sound Exchanger) project
<http://sox.sourceforge.net/>.
It lets write, read and convert audio signals
in various formats, resolutions, and numbers of channels.

The package @@sox@@ has similar functionality
but calls the @@sox@@ shell command.")
    (license license:bsd-3)))

haskell-9.0-soxlib

(define-public haskell-9.0-sqlite-simple
  (package
    (name "haskell-9.0-sqlite-simple")
    (version "0.4.18.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlite-simple/sqlite-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14axfc9ii08g7yx3j9n5hrfrsmab3pjv7n0cshcg4a2lvnkv25fw"))))
    (properties `((upstream-name . "sqlite-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-Only)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-blaze-textual)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-direct-sqlite)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/nurpax/sqlite-simple")
    (synopsis "Mid-Level SQLite client library")
    (description
     "Mid-level SQLite client library, based on postgresql-simple.

Main documentation (with examples): <docs/Database-SQLite-Simple.html Database.SQLite.Simple>

You can view the project page at <http://github.com/nurpax/sqlite-simple>
for more information.")
    (license license:bsd-3)))

haskell-9.0-sqlite-simple

(define-public haskell-9.0-synthesizer-core
  (package
    (name "haskell-9.0-synthesizer-core")
    (version "0.8.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/synthesizer-core/synthesizer-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdvqabxlgiqqb3kppxwyvmkmvcqrmrzicbmcmy6mr5c4npjxffj"))))
    (properties `((upstream-name . "synthesizer-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimizeadvanced")
       #:cabal-revision
       ("1" "1c3l83qrdn3nxpp0gsr06iz9praw37c2j9zjj15pxd8in73mb74a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-event-list)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-negative)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-numeric-quest)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-sample-frame-np)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-sox)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-storable-tuple)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Synthesizer")
    (synopsis "Audio signal processing coded in Haskell: Low level part")
    (description
     "Low level audio signal processing
used by the other synthesizer packages.
The routines can be really fast
due to StorableVector, Stream-like list type and aggressive inlining.
For an interface to Haskore see <http://code.haskell.org/haskore/revised/synthesizer/>.
For introductory examples see \"Synthesizer.Plain.Tutorial\"
and \"Synthesizer.Generic.Tutorial\".

Functions:
Oscillators, Noise generators, Frequency filters,
Fast Fourier transform for computation of frequency spectrum")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-synthesizer-core

(define-public haskell-9.0-tasty-smallcheck
  (package
    (name "haskell-9.0-tasty-smallcheck")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-smallcheck/tasty-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0csgwn3vch0jnpqyyfnrfjq4z0dpl67imh5a7byll3hhlyidgjym"))))
    (properties `((upstream-name . "tasty-smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0033ha2w9rzc1rxpzh1dkfdrn256i5lvb41pqbdh2i6kli0v5vmh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "SmallCheck support for the Tasty test framework.")
    (description "SmallCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-9.0-tasty-smallcheck

(define-public haskell-9.0-test-framework-smallcheck
  (package
    (name "haskell-9.0-test-framework-smallcheck")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-smallcheck/test-framework-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xpgpk1gp4w7w46b4rhj80fa0bcyz8asj2dcjb5x1c37b7rw90b0"))))
    (properties `((upstream-name . "test-framework-smallcheck")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)))
    (home-page "https://github.com/feuerbach/smallcheck")
    (synopsis "Support for SmallCheck tests in test-framework")
    (description "Support for SmallCheck tests in test-framework")
    (license license:bsd-3)))

haskell-9.0-test-framework-smallcheck

(define-public haskell-9.0-th-reify-many
  (package
    (name "haskell-9.0-th-reify-many")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-reify-many/th-reify-many-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19g4gc1q3zxbylmvrgk3dqjzychq2k02i7fwvs3vhbrg4ihhw9cx"))))
    (properties `((upstream-name . "th-reify-many") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003) haskell-9.0-safe)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-th-expand-syns)))
    (home-page "http://github.com/mgsloan/th-reify-many")
    (synopsis "Recurseively reify template haskell datatype info")
    (description
     "@@th-reify-many@@ provides functions for recursively reifying top
level declarations.  The main intended use case is for enumerating
the names of datatypes reachable from an initial datatype, and
passing these names to some function which generates instances.")
    (license license:bsd-3)))

haskell-9.0-th-reify-many

(define-public haskell-9.0-tidal
  (package
    (name "haskell-9.0-tidal")
    (version "1.7.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tidal/tidal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vfymixr66sj6zsadkbcx0yx722f2d3q6cic4c91cswxssfqfrhc"))))
    (properties `((upstream-name . "tidal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-colour)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-hint)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-hosc)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-microspec)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://tidalcycles.org/")
    (synopsis "Pattern language for improvised music")
    (description
     "Tidal is a domain specific language for live coding patterns.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-tidal

(define-public haskell-9.0-timer-wheel
  (package
    (name "haskell-9.0-timer-wheel")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-atomic-primops)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-psqueues)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-timer-wheel

(define-public haskell-9.0-type-errors
  (package
    (name "haskell-9.0-type-errors")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-errors/type-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d1fi4ij18q39rpibc056mgvly75zqixkba4l8bn307c62f50k8p"))))
    (properties `((upstream-name . "type-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0ig8qd2g8rd5n78039xhbq7n8r514f8kvbh0mgajav2a5lp549s1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-first-class-families)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (home-page "https://github.com/isovector/type-errors#readme")
    (synopsis "Tools for writing better type errors")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/type-errors#readme>")
    (license license:bsd-3)))

haskell-9.0-type-errors

(define-public haskell-9.0-type-errors-pretty
  (package
    (name "haskell-9.0-type-errors-pretty")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-errors-pretty/type-errors-pretty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01zdb5mw77d5rj3yvabqdch132mjw49awpjnjvms20hdhwjgqb6b"))))
    (properties `((upstream-name . "type-errors-pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Glob)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)))
    (home-page "https://github.com/kowainik/type-errors-pretty")
    (synopsis "Combinators for writing pretty type errors easily")
    (description
     "This library provides replacements for the @@ErrorMessage@@ constructors to
write the text of custom error messages easily.")
    (license license:mpl2.0)))

haskell-9.0-type-errors-pretty

(define-public haskell-9.0-unordered-containers
  (package
    (name "haskell-9.0-unordered-containers")
    (version "0.2.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unordered-containers/unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05ss6ys9gp7dx93glhrm19fxdl916m7yaqxi6p06ibka1dp3m7n4"))))
    (properties `((upstream-name . "unordered-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/haskell-unordered-containers/unordered-containers")
    (synopsis "Efficient hashing-based container types")
    (description
     "Efficient hashing-based container types.  The containers have been
optimized for performance critical use, both in terms of large data
quantities and high speed.

The declared cost of each operation is either worst-case or
amortized, but remains valid even if structures are shared.

/Security/

This package currently provides no defenses against hash collision attacks
such as HashDoS.
Users who need to store input from untrusted sources are advised to use
@@Data.Map@@ or @@Data.Set@@ from the @@containers@@ package instead.")
    (license license:bsd-3)))

haskell-9.0-unordered-containers

(define-public haskell-9.0-zeromq4-patterns
  (package
    (name "haskell-9.0-zeromq4-patterns")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zeromq4-patterns/zeromq4-patterns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n9yndiw0z2asslkx2nlx56w3qhb55p7ih03j52889m2f8maiwvl"))))
    (properties `((upstream-name . "zeromq4-patterns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-async)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-zeromq4-haskell)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/zeromq4-patterns#readme")
    (synopsis "Haskell implementation of several ZeroMQ patterns.")
    (description
     "Haskell implementation of several ZeroMQ patterns that you can find in the
official ZeroMQ guide.")
    (license license:bsd-3)))

haskell-9.0-zeromq4-patterns

(define-public haskell-9.0-zip-archive
  (package
    (name "haskell-9.0-zip-archive")
    (version "0.4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-archive/zip-archive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02b76hm76gqallij70z77xz1y981ig4biklzm0wgxran8d06n0d4"))))
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-digest)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.0-zip-archive

(define-public haskell-9.0-zlib-lens
  (package
    (name "haskell-9.0-zlib-lens")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zlib-lens/zlib-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sv6yx7p06zk653d3rmcj0lh2rzwzfi25v9sz9n8kq4r712n79g5"))))
    (properties `((upstream-name . "zlib-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://lens.github.io/")
    (synopsis "Lenses for zlib")
    (description "Lenses for zlib")
    (license license:bsd-3)))

haskell-9.0-zlib-lens

