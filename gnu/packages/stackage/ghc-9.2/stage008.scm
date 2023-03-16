;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage008)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.2))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.2-HsOpenSSL-x509-system
  (package
    (name "haskell-9.2-HsOpenSSL-x509-system")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-HsOpenSSL)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)))
    (home-page "https://github.com/redneb/HsOpenSSL-x509-system")
    (synopsis "Use the system's native CA certificate store with HsOpenSSL")
    (description
     "A cross-platform library that tries to find a (reasonable) CA certificate
bundle that can be used with @@HsOpenSSL@@ to verify the certificates of
remote peers.

This package is for @@HsOpenSSL@@ what @@x509-system@@ is for the @@tls@@ package.
Additionally, it borrows some ideas from @@x509-system@@.")
    (license license:bsd-3)))

haskell-9.2-HsOpenSSL-x509-system

(define-public haskell-9.2-JuicyPixels
  (package
    (name "haskell-9.2-JuicyPixels")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Twinside/Juicy.Pixels")
    (synopsis
     "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>

This library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.")
    (license license:bsd-3)))

haskell-9.2-JuicyPixels

(define-public haskell-9.2-OpenGL
  (package
    (name "haskell-9.2-OpenGL")
    (version "3.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/OpenGL/OpenGL-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "069fg8jcxqq2z9iikynd8vi3jxm2b5y3qywdh4bdviyzab3zy1as"))))
    (properties `((upstream-name . "OpenGL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1nhlswxgxn8l1ysjq3fp3w5pvx6651d33036i8dlbqygzrn6iwmh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-GLURaw)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ObjectName)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-OpenGLRaw)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-StateVar)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://wiki.haskell.org/OpenGL")
    (synopsis "A binding for the OpenGL graphics system")
    (description
     "A Haskell binding for the OpenGL graphics system (GL, version 4.6) and its
accompanying utility library (GLU, version 1.3).

OpenGL is the industry's most widely used and supported 2D and 3D graphics
application programming interface (API), incorporating a broad set of
rendering, texture mapping, special effects, and other powerful visualization
functions. For more information about OpenGL and its various extensions,
please see <http://www.opengl.org/>
and <http://www.opengl.org/registry/>.")
    (license license:bsd-3)))

haskell-9.2-OpenGL

(define-public haskell-9.2-asn1-parse
  (package
    (name "haskell-9.2-asn1-parse")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-parse/asn1-parse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17pk8y3nwv9b9i5j15qlmwi7fmq9ab2z4kfpjk2rvcrh9lsf27wg"))))
    (properties `((upstream-name . "asn1-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-asn1-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "Simple monadic parser for ASN1 stream types.")
    (description
     "Simple monadic parser for ASN1 stream types, when ASN1 pattern matching is not convenient.")
    (license license:bsd-3)))

haskell-9.2-asn1-parse

(define-public haskell-9.2-blaze-html
  (package
    (name "haskell-9.2-blaze-html")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast HTML combinator library for Haskell")
    (description "A blazingly fast HTML combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-9.2-blaze-html

(define-public haskell-9.2-blaze-svg
  (package
    (name "haskell-9.2-blaze-svg")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)))
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

haskell-9.2-blaze-svg

(define-public haskell-9.2-bson
  (package
    (name "haskell-9.2-bson")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bson/bson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xmxhq1f8v00mbq2l1sb7akzhy0gd9wcylkanpizn68wczqkdi3b"))))
    (properties `((upstream-name . "bson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-_old-network")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cryptohash-md5)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (home-page "http://github.com/mongodb-haskell/bson")
    (synopsis "BSON documents are JSON-like objects with a standard binary
encoding.")
    (description
     "A BSON Document is an untyped (dynamically type-checked) record.
I.e. it is a list of name-value pairs, where a Value is a single
sum type with constructors for basic types (Bool, Int, Float,
String, and Time), compound types (List, and (embedded) Document),
and special types (Binary, Javascript, ObjectId, RegEx, and a few
others).
A BSON Document is serialized to a standard binary encoding
defined at <http://bsonspec.org>. This implements version 1 of
that spec.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-bson

(define-public haskell-9.2-bytestring-progress
  (package
    (name "haskell-9.2-bytestring-progress")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-progress/bytestring-progress-"
                    version ".tar.gz"))
              (sha256
               (base32
                "140dn6zyc1ka8vjxwd6zzc3mwd651zrawcwk3d5ipfxrgddf9bws"))))
    (properties `((upstream-name . "bytestring-progress") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse-system-progressbar")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-terminal-progress-bar)))
    (home-page "http://github.com/acw/bytestring-progress")
    (synopsis "A library for tracking the consumption of a lazy ByteString")
    (description
     "In some cases, it is useful to know how fast a ByteString is being
consumed. Typically, this could be to report some measure of progress
to a waiting user, but it could also be to perform some form of testing
on input / consumption code.")
    (license license:bsd-3)))

haskell-9.2-bytestring-progress

(define-public haskell-9.2-cabal-clean
  (package
    (name "haskell-9.2-cabal-clean")
    (version "0.2.20220819")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-clean/cabal-clean-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17zrny2wyqfvyjdsqj6z18cdq66ycj66i6mpr122paa08608kyrn"))))
    (properties `((upstream-name . "cabal-clean") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-filemanip)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-pretty-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-string-qq)))
    (home-page "https://github.com/andreasabel/cabal-clean")
    (synopsis "Remove outdated cabal build artefacts from `dist-newstyle`.")
    (description "Simple command line tool to remove cabal build artefacts
from `dist-newstyle/build` that are superseded by newer
versions of the built package or the Haskell compiler.")
    (license license:bsd-3)))

haskell-9.2-cabal-clean

(define-public haskell-9.2-co-log-core
  (package
    (name "haskell-9.2-co-log-core")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/co-log-core/co-log-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r8yq4wan48mm37p32vsym44icdx4c5dyc5wkm5vz8f4l39yv59l"))))
    (properties `((upstream-name . "co-log-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)))
    (home-page "https://github.com/co-log/co-log-core")
    (synopsis "Composable Contravariant Comonadic Logging Library")
    (description
     "This package provides core types and functions to work with the @@LogAction@@ data type which is both simple and powerful.

@@
__newtype__ LogAction m msg = LogAction
\\    @{ unLogAction :: msg -> m ()
\\    @}
@@

The ideas behind this package are described in the following blog post:

* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)

See the following packages for different implementations based on @@co-log-core@@:

* [co-log](http://hackage.haskell.org/package/co-log): taggless final implementations.
* [co-log-polysemy](http://hackage.haskell.org/package/co-log-polysemy): extensible
effects implementation based on @@polysemy@@.")
    (license license:mpl2.0)))

haskell-9.2-co-log-core

(define-public haskell-9.2-codec-beam
  (package
    (name "haskell-9.2-codec-beam")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hkgumbs/codec-beam#readme")
    (synopsis "Erlang VM byte code assembler")
    (description "Erlang VM byte code assembler.")
    (license license:bsd-3)))

haskell-9.2-codec-beam

(define-public haskell-9.2-comfort-array
  (package
    (name "haskell-9.2-comfort-array")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-array/comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rpv9mn1jmkb9f89y02zfg2vwz4slzny31yjrvwcm43jhdyvzkwh"))))
    (properties `((upstream-name . "comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsetindex")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-doctest-lib)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-guarded-allocation)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prelude-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-storablevector)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
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

* @@NestedTuple@@:
Arrays with shapes that are compatible to nested tuples
like @@(a,(a,a))@@ and indices like @@fst@@ and @@fst.snd@@.

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

haskell-9.2-comfort-array

(define-public haskell-9.2-crypto-pubkey-types
  (package
    (name "haskell-9.2-crypto-pubkey-types")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-pubkey-types/crypto-pubkey-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q0wlzjmpx536h1zcdzrpxjkvqw8abj8z0ci38138kpch4igbnby"))))
    (properties `((upstream-name . "crypto-pubkey-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-asn1-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-crypto-pubkey-types")
    (synopsis "Generic cryptography Public keys algorithm types")
    (description "Generic cryptography public keys algorithm types")
    (license license:bsd-3)))

haskell-9.2-crypto-pubkey-types

(define-public haskell-9.2-cryptonite
  (package
    (name "haskell-9.2-cryptonite")
    (version "0.30")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite/cryptonite-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07bb97iszhnrfddh5ql6p3dqd0c13xycjw5n2kljw7d0ia59q2an"))))
    (properties `((upstream-name . "cryptonite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsupport_aesni" "-fsupport_rdrand" "-f-support_pclmuldq" "-f-support_sse" "-finteger-gmp" "-fsupport_deepseq" "-f-old_toolchain_inliner" "-f-check_alignment" "-fuse_target_attributes")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-basement)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-tasty-kat)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
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

haskell-9.2-cryptonite

(define-public haskell-9.2-derive-topdown
  (package
    (name "haskell-9.2-derive-topdown")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-th-expand-syns)))
    (home-page
     "https://github.com/HaskellZhangSong/derive-topdown                   ")
    (synopsis
     "Help Haskellers derive class instances for composited data types.")
    (description
     "This package will make it easier to derive class instance for complex composited data types by using Template Haskell.")
    (license license:bsd-3)))

haskell-9.2-derive-topdown

(define-public haskell-9.2-dimensional
  (package
    (name "haskell-9.2-dimensional")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dimensional/dimensional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16d50vlln11hq894y8qxrg4cricz1459dg14z0wc1fzfiydxb6ns"))))
    (properties `((upstream-name . "dimensional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-exact-pi)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-numtype-dk)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bjornbm/dimensional/")
    (synopsis "Statically checked physical dimensions")
    (description
     "Dimensional is a library providing data types for performing arithmetic
with physical quantities and units. Information about the physical
dimensions of the quantities and units is embedded in their types and the
validity of operations is verified by the type checker at compile time.
The wrapping and unwrapping of numerical values as quantities is done by
multiplication and division with units. The library is designed to, as
far as is practical, enforce/encourage best practices of unit usage.
Version 1 of the dimensional package differs from earlier version in that
the dimension tracking is implemented using Closed Type Families and Data Kinds
rather than functional dependencies. This enables a number of features, including
improved support for unit names and quantities with statically-unknown dimensions.
Requires GHC 8.0 or later.")
    (license license:bsd-3)))

haskell-9.2-dimensional

(define-public haskell-9.2-equivalence
  (package
    (name "haskell-9.2-equivalence")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-STMonadTrans)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
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

haskell-9.2-equivalence

(define-public haskell-9.2-fft
  (package
    (name "haskell-9.2-fft")
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
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-carray)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ix-shapable)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-storable-complex)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/fft")
    (synopsis "Bindings to the FFTW library.")
    (description "Bindings to the FFTW library.

Provides high performance discrete fourier transforms in
arbitrary dimensions.  Include transforms of complex data,
real data, and real to real transforms.
")
    (license license:bsd-3)))

haskell-9.2-fft

(define-public haskell-9.2-fields-json
  (package
    (name "haskell-9.2-fields-json")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-json)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (home-page "https://github.com/scrive/fields-json")
    (synopsis "Abusing monadic syntax JSON objects generation.")
    (description
     "Generation of big, complex JSON objects with 'Text.JSON' is painful.
And autoderivation is not always possible.
Check documentation of 'Text.JSON.Gen' for more info.")
    (license license:bsd-3)))

haskell-9.2-fields-json

(define-public haskell-9.2-fixed-vector
  (package
    (name "haskell-9.2-fixed-vector")
    (version "1.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector/fixed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kp747v67x1ija33nyqmyh6g178pqn2c7glynrpzcv733lalp00z"))))
    (properties `((upstream-name . "fixed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-filemanip)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
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

haskell-9.2-fixed-vector

(define-public haskell-9.2-flexible-defaults
  (package
    (name "haskell-9.2-flexible-defaults")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-th-extras)))
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

haskell-9.2-flexible-defaults

(define-public haskell-9.2-from-sum
  (package
    (name "haskell-9.2-from-sum")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/from-sum/from-sum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rdsynimmq81y3g5c8z9yvlqhsl99hnvjq4wvdci5ql788cq4m81"))))
    (properties `((upstream-name . "from-sum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)))
    (home-page "https://github.com/cdepillabout/from-sum")
    (synopsis "Combinators for working with Maybe and Either")
    (description
     "Provides many functions for working with 'Maybe' and 'Either', including canonical 'fromMaybeM' and 'fromEitherM' functions.  Please see @@README.md@@.")
    (license license:bsd-3)))

haskell-9.2-from-sum

(define-public haskell-9.2-ghc-typelits-extra
  (package
    (name "haskell-9.2-ghc-typelits-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
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

haskell-9.2-ghc-typelits-extra

(define-public haskell-9.2-hashable
  (package
    (name "haskell-9.2-hashable")
    (version "1.4.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashable/hashable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y73606pcrs7zi6f4f07a5rkhc6620n1bx0adpa6j7xqhbm00h0v"))))
    (properties `((upstream-name . "hashable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-finteger-gmp" "-f-random-initial-seed")
       #:cabal-revision
       ("1" "12nmnmm2kyjalkvmz0l1l895ikc938lwppx8iykxnhamblrr4msq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-data-array-byte)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-unordered-containers/hashable")
    (synopsis "A class for types that can be converted to a hash value")
    (description "This package defines a class, 'Hashable', for types that
can be converted to a hash value.  This class
exists for the benefit of hashing-based data
structures.  The package provides instances for
basic types and a way to combine hash values.")
    (license license:bsd-3)))

haskell-9.2-hashable

(define-public haskell-9.2-hlibgit2
  (package
    (name "haskell-9.2-hlibgit2")
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
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/hlibgit2")
    (synopsis "Low-level bindings to libgit2")
    (description "Bindings to libgit2 v0.18.0.")
    (license license:expat)))

haskell-9.2-hlibgit2

(define-public haskell-9.2-hslogger
  (package
    (name "haskell-9.2-hslogger")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)))
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

haskell-9.2-hslogger

(define-public haskell-9.2-hspec-core
  (package
    (name "haskell-9.2-hspec-core")
    (version "2.9.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-core/hspec-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "040rzqiqwkp373jjpij8lkmv08pp2ya92zzcf95bw8px215rp08n"))))
    (properties `((upstream-name . "hspec-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-hspec-meta)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-io)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-setenv)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-tf-random)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "This package exposes internal types and functions that can be used to extend Hspec's functionality.")
    (license license:expat)))

haskell-9.2-hspec-core

(define-public haskell-9.2-human-readable-duration
  (package
    (name "haskell-9.2-human-readable-duration")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)))
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

haskell-9.2-human-readable-duration

(define-public haskell-9.2-hwk
  (package
    (name "haskell-9.2-hwk")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hwk/hwk-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1xn3rn81ixx5mil8x1s26cxsdnpq2mhbfcs26969rk3k9lbzvc38"))))
    (properties `((upstream-name . "hwk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-hint)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)))
    (home-page "https://github.com/juhp/hwk")
    (synopsis "Commandline text processing with Haskell functions")
    (description
     "A commandline tool for text processing with Haskell functions,
complementing unix-style tools like awk, grep, and sed.
'hwk' applies the function supplied on the commandline using 'hint'
to lines of input and outputs the results.")
    (license license:expat)))

haskell-9.2-hwk

(define-public haskell-9.2-microlens-process
  (package
    (name "haskell-9.2-microlens-process")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)))
    (home-page "https://github.com/emilypi/lens-process/tree/master/microlens")
    (synopsis "Micro-optics for the process library")
    (description
     "'microlens-process' is a set of multi-purpose optics and convenience
combinators for working with the `process` library, including
a more well-typed api for the parts that can be typed.")
    (license license:bsd-3)))

haskell-9.2-microlens-process

(define-public haskell-9.2-misfortune
  (package
    (name "haskell-9.2-misfortune")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/misfortune/misfortune-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0shzqc8yz4nrz31b55fsl00bkgbvj1kzdf2j845vwpnvmrwfr1g1"))))
    (properties `((upstream-name . "misfortune") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-knob)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-random-fu)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-regex-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-pcre)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/ncfavier/misfortune")
    (synopsis "fortune-mod clone")
    (description "fortune-mod clone, in library and executable form.")
    (license license:expat)))

haskell-9.2-misfortune

(define-public haskell-9.2-modular
  (package
    (name "haskell-9.2-modular")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-ghc-typelits-knownnat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pgujjula/modular#readme")
    (synopsis "Type-safe modular arithmetic")
    (description
     "Please see the GitHub page at <https://github.com/pgujjula/modular> for installation instructions, and the module documentation for Numeric.Modular for usage instructions.")
    (license license:bsd-3)))

haskell-9.2-modular

(define-public haskell-9.2-mpi-hs-binary
  (package
    (name "haskell-9.2-mpi-hs-binary")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-mpi-hs)))
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

haskell-9.2-mpi-hs-binary

(define-public haskell-9.2-mpi-hs-cereal
  (package
    (name "haskell-9.2-mpi-hs-cereal")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-loops)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-mpi-hs)))
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

haskell-9.2-mpi-hs-cereal

(define-public haskell-9.2-netlib-carray
  (package
    (name "haskell-9.2-netlib-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-carray)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-netlib-ffi)))
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

haskell-9.2-netlib-carray

(define-public haskell-9.2-network-byte-order
  (package
    (name "haskell-9.2-network-byte-order")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)))
    (home-page "https://hackage.haskell.org/package/network-byte-order")
    (synopsis "Network byte order utilities")
    (description "Peek and poke functions for network byte order.")
    (license license:bsd-3)))

haskell-9.2-network-byte-order

(define-public haskell-9.2-network-multicast
  (package
    (name "haskell-9.2-network-multicast")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)))
    (home-page "https://hackage.haskell.org/package/network-multicast")
    (synopsis "Simple multicast library")
    (description "The \"Network.Multicast\" module is for sending
UDP datagrams over multicast (class D) addresses.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-network-multicast

(define-public haskell-9.2-nonempty-vector
  (package
    (name "haskell-9.2-nonempty-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (home-page "https://github.com/emilypi/nonempty-vector")
    (synopsis "Non-empty vectors")
    (description "Performant, non-empty mutable and immutable vectors")
    (license license:bsd-3)))

haskell-9.2-nonempty-vector

(define-public haskell-9.2-nonempty-zipper
  (package
    (name "haskell-9.2-nonempty-zipper")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)))
    (home-page "https://github.com/freckle/nonempty-zipper#readme")
    (synopsis "A non-empty comonadic list zipper")
    (description "A non-empty comonadic list zipper")
    (license license:expat)))

haskell-9.2-nonempty-zipper

(define-public haskell-9.2-pcf-font
  (package
    (name "haskell-9.2-pcf-font")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcf-font/pcf-font-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gzlbdyhcrf7ap6zjd0fvkfwyakvb805198hpb9a86hrs5bih9mj"))))
    (properties `((upstream-name . "pcf-font") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/michael-swan/pcf-font")
    (synopsis "PCF font parsing and rendering library.")
    (description
     "pcf-font is a library for parsing and rendering X11 PCF fonts.")
    (license license:bsd-3)))

haskell-9.2-pcf-font

(define-public haskell-9.2-pgp-wordlist
  (package
    (name "haskell-9.2-pgp-wordlist")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-pgp-wordlist

(define-public haskell-9.2-prettyprinter-convert-ansi-wl-pprint
  (package
    (name "haskell-9.2-prettyprinter-convert-ansi-wl-pprint")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Converter from »ansi-wl-pprint« documents to »prettyprinter«-based ones.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-9.2-prettyprinter-convert-ansi-wl-pprint

(define-public haskell-9.2-proto-lens-arbitrary
  (package
    (name "haskell-9.2-proto-lens-arbitrary")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-lens-family)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-proto-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Arbitrary instances for proto-lens.")
    (description
     "The proto-lens-arbitrary allows generating arbitrary messages for use with QuickCheck.")
    (license license:bsd-3)))

haskell-9.2-proto-lens-arbitrary

(define-public haskell-9.2-proto-lens-optparse
  (package
    (name "haskell-9.2-proto-lens-optparse")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-proto-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Adapting proto-lens to optparse-applicative ReadMs.")
    (description
     "A package adapting proto-lens to optparse-applicative ReadMs. This gives an easy way to define options and arguments for text-format protobuf types.")
    (license license:bsd-3)))

haskell-9.2-proto-lens-optparse

(define-public haskell-9.2-proto-lens-runtime
  (package
    (name "haskell-9.2-proto-lens-runtime")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-lens-family)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-proto-lens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "")
    (description
     "Modules that are needed by the Haskell files generated by proto-lens-protoc. For forwards compatibility, we reexport them as new module names so that other packages don't accidentally write non-generated code that relies on these modules being reexported by this package.")
    (license license:bsd-3)))

haskell-9.2-proto-lens-runtime

(define-public haskell-9.2-pureMD5
  (package
    (name "haskell-9.2-pureMD5")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-crypto-api)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-crypto-api-tests)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-pretty-hex)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/pureMD5")
    (synopsis
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.")
    (description
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports
the crypto-api class interface.")
    (license license:bsd-3)))

haskell-9.2-pureMD5

(define-public haskell-9.2-ranged-list
  (package
    (name "haskell-9.2-ranged-list")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ranged-list/ranged-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ry2l6379g1q8y22hziqscsxv134k26a28aqvlxjyliqkx707b9i"))))
    (properties `((upstream-name . "ranged-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-typecheck-plugin-nat-simple)))
    (home-page "https://github.com/YoshikuniJujo/ranged-list#readme")
    (synopsis
     "The list like structure whose length or range of length can be specified")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/ranged-list#readme>")
    (license license:bsd-3)))

haskell-9.2-ranged-list

(define-public haskell-9.2-read-env-var
  (package
    (name "haskell-9.2-read-env-var")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)))
    (home-page "https://github.com/cdepillabout/read-env-var#readme")
    (synopsis "Functions for safely reading environment variables.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-read-env-var

(define-public haskell-9.2-rec-def
  (package
    (name "haskell-9.2-rec-def")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rec-def/rec-def-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dfw86ws00gsdnzb238pmr4i2lyfp405lp70nbak45qq2cbz0zj8"))))
    (properties `((upstream-name . "rec-def") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0kg2m81b4q73m8rysnqkmviiph1vf68f2dhyzawi9b2mj22q45fz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-concurrency)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-dejafu)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-dejafu)))
    (home-page "https://github.com/nomeata/haskell-rec-def")
    (synopsis "Recursively defined values")
    (description
     "This library provides safe APIs that allow you to define and calculate
values recursively, and still get a result out:

> let s1 = RS.insert 23 s2
>     s2 = RS.insert 42 s1
> in RS.get s1

will not loop, but rather produces the set @@fromList [23,42]@@

See \"Data.Recursive.Examples\" for more examples, or just browse the modules

* \"Data.Recursive.Bool\"
* \"Data.Recursive.Set\"
* \"Data.Recursive.Map\"
* \"Data.Recursive.DualBool\"

More APIs (e.g. for maps or 'Natural') can be added over time, as need and good
use-cases arise.

For the (unsafe) building blocks to build such APIs, see

* \"Data.Propagator.Purify\" for the wrapper that turns an IO-implemented
propagator into a pure data structure
* \"Data.Propagator.Naive\" for a naive propagator implementation
* \"Data.Propagator.P2\" for a smarter propagator implementation for
the two-point lattice, i.e. 'Bool'

The library is not (yet) focussed on performance, and uses a rather naive
propagator implementation. Expect this to be slow if you have large graphs.
This may be improved in the future (e.g. by propagating only deltas, and
accumulating deltas before applying a function), but for now the focus is on
foremost providing this capability in the first place and getting the
user-facing API right.")
    (license license:bsd-2)))

haskell-9.2-rec-def

(define-public haskell-9.2-synthesizer-core
  (package
    (name "haskell-9.2-synthesizer-core")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/synthesizer-core/synthesizer-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a12qmr7fdlz5mbrki9nd1fl07670hll3wrdpp1apvf6zd36h7mn"))))
    (properties `((upstream-name . "synthesizer-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimizeadvanced")
       #:cabal-revision
       ("2" "064a3xlqwl8v6q29djjcm0wx13wy1qw3p44v546amjbprk93kh1r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-event-list)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-explicit-exception)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-empty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-non-negative)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-numeric-quest)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-sample-frame-np)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-sox)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-storable-record)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-storable-tuple)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-storablevector)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)))
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

haskell-9.2-synthesizer-core

(define-public haskell-9.2-th-reify-many
  (package
    (name "haskell-9.2-th-reify-many")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-th-expand-syns)))
    (home-page "http://github.com/mgsloan/th-reify-many")
    (synopsis "Recurseively reify template haskell datatype info")
    (description
     "@@th-reify-many@@ provides functions for recursively reifying top
level declarations.  The main intended use case is for enumerating
the names of datatypes reachable from an initial datatype, and
passing these names to some function which generates instances.")
    (license license:bsd-3)))

haskell-9.2-th-reify-many

(define-public haskell-9.2-tidal
  (package
    (name "haskell-9.2-tidal")
    (version "1.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tidal/tidal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ncc5rc2g0brmgd28cbigp1rhvch9az30vg987q8fn7xfzbxw92h"))))
    (properties `((upstream-name . "tidal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-hosc)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-microspec)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tidal-link)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "http://tidalcycles.org/")
    (synopsis "Pattern language for improvised music")
    (description
     "Tidal is a domain specific language for live coding patterns.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-tidal

(define-public haskell-9.2-zip-archive
  (package
    (name "haskell-9.2-zip-archive")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-digest)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
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

haskell-9.2-zip-archive

