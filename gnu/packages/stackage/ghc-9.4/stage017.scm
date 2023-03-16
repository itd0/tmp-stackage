;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage017)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.4-Color
  (package
    (name "haskell-9.4-Color")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Color/Color-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14sf71lhqc1w6s3p1k8a99xgzcwfnr3v5irvfkr09rvv7fd66nva"))))
    (properties `((upstream-name . "Color") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-massiv)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-massiv-test)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/lehins/Color")
    (synopsis "Color spaces and conversions between them")
    (description
     "Please see the README on GitHub at <https://github.com/lehins/Color#readme>")
    (license license:bsd-3)))

haskell-9.4-Color

(define-public haskell-9.4-LambdaHack
  (package
    (name "haskell-9.4-LambdaHack")
    (version "0.11.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/LambdaHack/LambdaHack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19dmcbx0clzmblk3kh367dx3bbvmargjq1zkjhy2i1ixfpfcs9jm"))))
    (properties `((upstream-name . "LambdaHack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-with_expensive_assertions" "-fwith_costly_optimizations" "-frelease" "-fsupportnodejs" "-f-jsaddle")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-assert-failure)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-enummapset)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hsini)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-keys)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-miniutter)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-open-browser)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-sdl2)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-sdl2-ttf)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-witch)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://lambdahack.github.io")
    (synopsis
     "A game engine library for tactical squad ASCII roguelike dungeon crawlers")
    (description
     "LambdaHack is a Haskell game engine library for ASCII roguelike
games of arbitrary theme, size and complexity, with optional
tactical squad combat. It's packaged together with a sample
dungeon crawler in a quirky fantasy setting. The sample game can be
tried out in the browser at <http://lambdahack.github.io>.

Please see the changelog file for recent improvements
and the issue tracker for short-term plans. Long term goals
include multiplayer tactical squad combat, in-game content
creation, auto-balancing and persistent content modification
based on player behaviour. Contributions are welcome.

Other games known to use the LambdaHack library:

* Allure of the Stars, a near-future Sci-Fi game,
<http://hackage.haskell.org/package/Allure>

Note: All modules in this library are kept visible,
to let games override and reuse them.
OTOH, to reflect that some modules are implementation details
relative to others, the source code adheres to the following
convention. If a module has the same name as a directory,
the module is the exclusive interface to the directory.
No references to the modules in the directory are allowed
except from the interface module. This policy is only binding
when developing the library --- library users are free
to access any modules, since the library authors are in
no position to guess their particular needs.

This is a workaround .cabal file, flattened to eliminate
internal libraries until generating haddocks for them
is fixed. The original .cabal file is in .cabal.bkp file.")
    (license license:bsd-3)))

haskell-9.4-LambdaHack

(define-public haskell-9.4-SVGFonts
  (package
    (name "haskell-9.4-SVGFonts")
    (version "1.8.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/SVGFonts/SVGFonts-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r3z7i7x56qvhyc51jlq084c1biy9xn72nm19mw116gx49rm32k9"))))
    (properties `((upstream-name . "SVGFonts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-svg)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cereal-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-diagrams-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-xml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/SVGFonts")
    (synopsis "Fonts from the SVG-Font format")
    (description
     "Native font support for the diagrams framework (<https://diagrams.github.io/>). Note that this package can be used with any diagrams backend, not just the SVG backend.  The SVG-font format is easy to parse
and was therefore chosen for a font library completely written in Haskell.

You can convert your own font to SVG with <http://fontforge.github.io/>,
or use the included LinLibertine and Bitstream fonts.

Features:

* Complete implementation of the features that Fontforge produces (though not the complete SVG format)

* Kerning (/i.e./ the two characters in \\\"VA\\\" are closer than the characters in \\\"VV\\\")

* Unicode

* Ligatures

XML speed issues can be solved by trimming the svg file to only those characters that are used (or maybe binary xml one day).

Version 1.0 of this library supports texturing, though this only makes sense in a diagrams backend that does rasterization in Haskell, such as diagrams-rasterific.

__Note__: for help porting pre-1.8 code to SVGFonts-1.8, <https://github.com/diagrams/SVGFonts/#porting-to-version-18 see the README>.
")
    (license license:bsd-3)))

haskell-9.4-SVGFonts

(define-public haskell-9.4-acc
  (package
    (name "haskell-9.4-acc")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/acc/acc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "03wk2pnh3scjf5102w882hg6hsczj9ihj8pb9g3928na2zk1jw1v"))))
    (properties `((upstream-name . "acc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/acc")
    (synopsis "Sequence optimized for monoidal construction and folding")
    (description
     "Data structure intended for accumulating a sequence of elements
for later traversal or folding.
Useful for implementing all kinds of builders on top.

The benchmarks show that for the described use-case it
is on average 2 times faster than 'DList' and 'Seq',
is on par with list when you always prepend elements and
is exponentially faster than list when you append.")
    (license license:expat)))

haskell-9.4-acc

(define-public haskell-9.4-ascii
  (package
    (name "haskell-9.4-ascii")
    (version "1.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ascii/ascii-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01a2xrkk60bpbz4x337jp66fy7zhdpb2c649c62inx723cc1q4il"))))
    (properties `((upstream-name . "ascii") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-ascii-case)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-ascii-caseless)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ascii-char)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-ascii-group)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-ascii-numbers)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-ascii-predicates)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-ascii-superset)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-ascii-th)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "The ASCII character set and encoding")
    (description
     "This package provides a variety of ways to work with ASCII text.")
    (license license:asl2.0)))

haskell-9.4-ascii

(define-public haskell-9.4-binary-conduit
  (package
    (name "haskell-9.4-binary-conduit")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-conduit/binary-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17yj8rn6fwzbv0z6lczrddv7mkr8906xg2pf2dlvmnwb97zw7004"))))
    (properties `((upstream-name . "binary-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/qnikst/binary-conduit/")
    (synopsis "data serialization/deserialization conduit library")
    (description
     "The binary-conduit package.
Allow binary serialization using iterative conduit interface.")
    (license license:expat)))

haskell-9.4-binary-conduit

(define-public haskell-9.4-bits-extra
  (package
    (name "haskell-9.4-bits-extra")
    (version "0.0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bits-extra/bits-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lyrr5jg8yg9cb97pn1pd4qgc7qn3irv8k5ra5j48fyn1rb6z4r7"))))
    (properties `((upstream-name . "bits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-bmi2")
       #:cabal-revision
       ("2" "1szy6g9a0sqz6cb1pcrxwypr8xf6nvgwvchxr7j5ax5jnh6xrk8h")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/bits-extra#readme")
    (synopsis "Useful bitwise operations")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/bits-extra#readme>")
    (license license:bsd-3)))

haskell-9.4-bits-extra

(define-public haskell-9.4-brick
  (package
    (name "haskell-9.4-brick")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/brick/brick-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kszp6yrpqc9v87m38rladhmn8xcdbrrh05xr6fi936n34bhi432"))))
    (properties `((upstream-name . "brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demos")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bimap)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-config-ini)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-data-clist)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-text-zipper)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-vty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word-wrap)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jtdaugherty/brick/")
    (synopsis "A declarative terminal user interface library")
    (description
     "Write terminal user interfaces (TUIs) painlessly with 'brick'! You
write an event handler and a drawing function and the library does the
rest.


> module Main where
>
> import Brick
>
> ui :: Widget ()
> ui = str \"Hello, world!\"
>
> main :: IO ()
> main = simpleMain ui


To get started, see:

* <https://github.com/jtdaugherty/brick/blob/master/README.md The README>

* The <https://github.com/jtdaugherty/brick/blob/master/docs/guide.rst Brick user guide>

* The demonstration programs in the 'programs' directory


This package deprecates <http://hackage.haskell.org/package/vty-ui vty-ui>.")
    (license license:bsd-3)))

haskell-9.4-brick

(define-public haskell-9.4-byte-order
  (package
    (name "haskell-9.4-byte-order")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-primitive-unaligned)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-wide-word)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/byte-order")
    (synopsis "Portable big-endian and little-endian conversions")
    (description
     "This library provides an interface to portably work with byte
arrays whose contents are known to be of a fixed endianness.
There are two ways to use this module. See the `System.ByteOrder`
module for more documentation.")
    (license license:bsd-3)))

haskell-9.4-byte-order

(define-public haskell-9.4-bytebuild
  (package
    (name "haskell-9.4-bytebuild")
    (version "0.3.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytebuild/bytebuild-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0n87jhn46yafnd3kjy07nxs2f36s99xk89x6cwkhiwhvz5hw6c2v"))))
    (properties `((upstream-name . "bytebuild") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-checked")
       #:cabal-revision
       ("1" "0mwnhra1nharn5kmbf5k6zqpb2jhkybfc9xbi3wpnq2kp2l1l1al")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-byteslice)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-natural-arithmetic)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-primitive-offset)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-run-st)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-wide-word)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-zigzag)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/byteverse/bytebuild")
    (synopsis "Build byte arrays")
    (description
     "This is similar to the builder facilities provided by
`Data.ByteString.Builder`. It is intended to be used in
situations where the following apply:

* An individual entity will be serialized as a small
number of bytes (less than 512).

* A large number (more than 32) of entities will be serialized
one after another without anything between them.

Unlike builders from the `bytestring` package, these builders
do not track their state when they run out of space. A builder
that runs out of space simply aborts and is rerun at the beginning
of the next chunk. This strategy for building is suitable for most
CSVs and several line protocols (carbon, InfluxDB, etc.).")
    (license license:bsd-3)))

haskell-9.4-bytebuild

(define-public haskell-9.4-bzlib-conduit
  (package
    (name "haskell-9.4-bzlib-conduit")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bzlib-conduit/bzlib-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a21zin5plsl37hkxh2jv8cxwyjrbs2fy7n5cyrzgdaa7lmp6b7b"))))
    (properties `((upstream-name . "bzlib-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/bzlib-conduit#readme")
    (synopsis "Streaming compression/decompression via conduits.")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/bzlib-conduit>")
    (license license:bsd-3)))

haskell-9.4-bzlib-conduit

(define-public haskell-9.4-capability
  (package
    (name "haskell-9.4-capability")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/capability/capability-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sksd42ywaq5av7a1h9y66pclsk1fd9qx46q38kgs3av88zhzqci"))))
    (properties `((upstream-name . "capability") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-hspec-jenkins" "-f-dev")
       #:cabal-revision
       ("2" "1kap52pv98sgr2mqxcd66wgxxyjp94p8w1b7b3gqwvk9jcanfwxl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-generic-lens)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-mutable-containers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tweag/capability")
    (synopsis "Extensional capabilities and deriving combinators")
    (description
     "Standard capability type classes for extensional effects and combinators
to derive capability instances with little boilerplate.")
    (license license:bsd-3)))

haskell-9.4-capability

(define-public haskell-9.4-cereal-conduit
  (package
    (name "haskell-9.4-cereal-conduit")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-conduit/cereal-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srr7agvgfw78q5s1npjq5sgynvhjgllpihiv37ylkwqm4c4ap6r"))))
    (properties `((upstream-name . "cereal-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1imyl3g2bni8bc6kajr857xh94fscphksj3286pxfpa8yp9vqqpc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits")
    (description
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits.")
    (license license:bsd-3)))

haskell-9.4-cereal-conduit

(define-public haskell-9.4-classy-prelude
  (package
    (name "haskell-9.4-classy-prelude")
    (version "1.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude/classy-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mxgx4hr5fsdg45wbilhsnryc61yclhf63bh94q88n26gjmjr60h"))))
    (properties `((upstream-name . "classy-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-basic-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-chunked-data)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-mono-traversable-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-mutable-containers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-say)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stm-chans)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "A typeclass-based Prelude.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude>")
    (license license:expat)))

haskell-9.4-classy-prelude

(define-public haskell-9.4-conduit-concurrent-map
  (package
    (name "haskell-9.4-conduit-concurrent-map")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-concurrent-map/conduit-concurrent-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mpbklyfqdc1wzx5z4dy2x2y5zi8bb7p83q04csybj5c5f4136yq"))))
    (properties `((upstream-name . "conduit-concurrent-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-say)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nh2/conduit-concurrent-map")
    (synopsis "Concurrent, order-preserving mapping Conduit")
    (description
     "Provides a @@Conduit@@ that maps a function concurrently over incoming elements, maintaining input order.")
    (license license:expat)))

haskell-9.4-conduit-concurrent-map

(define-public haskell-9.4-conduit-extra
  (package
    (name "haskell-9.4-conduit-extra")
    (version "1.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-extra/conduit-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lzip3af77wxf3a3vilfymqhd26gkvabx2fkj22w74nq960c6l49"))))
    (properties `((upstream-name . "conduit-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Batteries included conduit: adapters for common libraries.")
    (description
     "The conduit package itself maintains relative small dependencies. The purpose of this package is to collect commonly used utility functions wrapping other library dependencies, without depending on heavier-weight dependencies. The basic idea is that this package should only depend on haskell-platform packages and conduit.")
    (license license:expat)))

haskell-9.4-conduit-extra

(define-public haskell-9.4-covariance
  (package
    (name "haskell-9.4-covariance")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/covariance/covariance-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qidlpg3g76vw390bdily0hdnzx2xlnb21ai11xzffwqywg5xpzh"))))
    (properties `((upstream-name . "covariance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-glasso)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-statistics)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dschrempf/covariance")
    (synopsis
     "Well-conditioned estimation of large-dimensional covariance matrices")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/covariance#readme>")
    (license license:gpl3+)))

haskell-9.4-covariance

(define-public haskell-9.4-criterion
  (package
    (name "haskell-9.4-criterion")
    (version "1.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/criterion/criterion-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1c2jl881bb3g4w037dx4bs3s164s306vayw2jxd9k3hmrnffyaa0"))))
    (properties `((upstream-name . "criterion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-fast" "-f-embed-data-files")
       #:cabal-revision
       ("1" "1sq1izskw1j1dxrdak8zxv22q3cvxg7s9wvxx3l2gj0165xj83bc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-binary-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-code-page)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-criterion-measurement)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-js-chart)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-microstache)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-statistics)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.serpentine.com/criterion")
    (synopsis "Robust, reliable performance measurement and analysis")
    (description
     "This library provides a powerful but simple way to measure software
performance.  It provides both a framework for executing and
analysing benchmarks and a set of driver functions that makes it
easy to build and run benchmarks, and to analyse their results.

The fastest way to get started is to read the
<http://www.serpentine.com/criterion/tutorial.html online tutorial>,
followed by the documentation and examples in the \"Criterion.Main\"
module.

For examples of the kinds of reports that criterion generates, see
<http://www.serpentine.com/criterion the home page>.")
    (license license:bsd-3)))

haskell-9.4-criterion

(define-public haskell-9.4-cron
  (package
    (name "haskell-9.4-cron")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")
       #:cabal-revision
       ("1" "1xlfpdb7f5ycdn19f3a8c4lzr7w4cv02g6k83rrm4a8xbdda66hg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mtl-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-cron

(define-public haskell-9.4-data-sketches
  (package
    (name "haskell-9.4-data-sketches")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-sketches/data-sketches-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a3157ch2l2vn6s1b6mcfjw3lnvp45vm3dykzbjmfglhz7x9dxbz"))))
    (properties `((upstream-name . "data-sketches") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-data-sketches-core)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-statistics)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/iand675/datasketches-haskell#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/iand675/datasketches-haskell#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-data-sketches

(define-public haskell-9.4-deferred-folds
  (package
    (name "haskell-9.4-deferred-folds")
    (version "0.9.18.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deferred-folds/deferred-folds-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0amlxdgz1yfql1r7w6z9gy6gncihp5nm1fl2bxrk7027hc0wdp96"))))
    (properties `((upstream-name . "deferred-folds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/deferred-folds")
    (synopsis "Abstractions over deferred folds")
    (description "This library is in an experimental state.
Users should be prepared for frequent updates.")
    (license license:expat)))

haskell-9.4-deferred-folds

(define-public haskell-9.4-diagrams-contrib
  (package
    (name "haskell-9.4-diagrams-contrib")
    (version "1.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-contrib/diagrams-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v18a8hyrmpxqi9r30292956afqd4smxnn5v01s66sx382fay2wh"))))
    (properties `((upstream-name . "diagrams-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0i5s9mr88kc68v2wc07jpdy2hzqh2gc1dsawvb2sracnqmv9q658")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-MonadRandom)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-circle-packing)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-cubicbezier)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-diagrams-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-diagrams-solve)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-force-layout)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-mfsolve)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-monoid-extras)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mtl-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://diagrams.github.io/")
    (synopsis "Collection of user contributions to diagrams EDSL")
    (description "A collection of user contributions for diagrams,
an embedded domain-specific language for generation
of vector graphics.")
    (license license:bsd-3)))

haskell-9.4-diagrams-contrib

(define-public haskell-9.4-diagrams-postscript
  (package
    (name "haskell-9.4-diagrams-postscript")
    (version "1.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-postscript/diagrams-postscript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11h2s33y6p1xd1d0kp281nz8iq5rpm0wj63wrzdha874qf79wz9g"))))
    (properties `((upstream-name . "diagrams-postscript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0w662h38pjmxz029ffxzv2cj6hx2mpzzr180m2340phxjflxr07g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-diagrams-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-monoid-extras)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-statestack)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://diagrams.github.io/")
    (synopsis "Postscript backend for diagrams drawing EDSL")
    (description "This package provides a modular backend for rendering
diagrams created with the diagrams EDSL using Postscript.

* \"Diagrams.Backend.Postscript.CmdLine\" - Provides
the \"mainWith\" interface to render a diagram
based on command line options.

* \"Diagrams.Backend.Postscript\" - Provides the
general API for rendering diagrams using the
Postscript backend.

* \"Diagrams.Backend.CMYK\" - Special support for CMYK
color attributes.")
    (license license:bsd-3)))

haskell-9.4-diagrams-postscript

(define-public haskell-9.4-diagrams-rasterific
  (package
    (name "haskell-9.4-diagrams-rasterific")
    (version "1.4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-rasterific/diagrams-rasterific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q0b3yh7wbi3yq0y8qswhvfmcz52f6njl4dawq9gl71jyfb2g8nq"))))
    (properties `((upstream-name . "diagrams-rasterific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1vkk5r4k2myfdrvg3s7l8cmwi3wz1nydnj0011747s1qhgzx3fjf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-FontyFruity)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-Rasterific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-diagrams-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams/")
    (synopsis "Rasterific backend for diagrams.")
    (description "A full-featured backend for rendering
diagrams using the Rasterific rendering engine.")
    (license license:bsd-3)))

haskell-9.4-diagrams-rasterific

(define-public haskell-9.4-diagrams-svg
  (package
    (name "haskell-9.4-diagrams-svg")
    (version "1.4.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-svg/diagrams-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "002lgmq78c6rsvds9bgm6m4w8j6qpg260mc52hf97wj6m050l237"))))
    (properties `((upstream-name . "diagrams-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "026mkj9fz64rdrap25mp8cwdrzwj90h35qg9kkn078fac93aaq10")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-diagrams-core)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-monoid-extras)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-svg-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://diagrams.github.io/")
    (synopsis "SVG backend for diagrams drawing EDSL.")
    (description
     "This package provides a modular backend for rendering
diagrams created with the diagrams EDSL to SVG
files.  It uses @@lucid-svg@@ to be a native
Haskell backend, making it suitable for use on
any platform.

The package provides the following modules:

* \"Diagrams.Backend.SVG.CmdLine\" - if you're
just getting started with diagrams, begin here.

* \"Diagrams.Backend.SVG\" - look at this next.
The general API for the SVG backend.

Additional documentation can be found in the
README file distributed with the source tarball or
viewable on GitHub:
<https://github.com/diagrams/diagrams-svg/blob/master/README.md>.")
    (license license:bsd-3)))

haskell-9.4-diagrams-svg

(define-public haskell-9.4-elynx-markov
  (package
    (name "haskell-9.4-elynx-markov")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-markov/elynx-markov-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m4nrpm3g9zwk1gf0v93nlr8vb5pd8sgn1mnzj6b968vq3zb2ab3"))))
    (properties `((upstream-name . "elynx-markov") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-elynx-seq)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-elynx-tools)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-integration)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-math-functions)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-statistics)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Simulate molecular sequences along trees")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.4-elynx-markov

(define-public haskell-9.4-elynx-tree
  (package
    (name "haskell-9.4-elynx-tree")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-tree/elynx-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jcqz49ml20cg0mwkpqjci44fkbcjhxf6dhhl8y68yczlz0778zs"))))
    (properties `((upstream-name . "elynx-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-elynx-nexus)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-elynx-tools)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-math-functions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-statistics)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle phylogenetic trees")
    (description
     "Examine, compare, and simulate phylogenetic trees in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.4-elynx-tree

(define-public haskell-9.4-evm-opcodes
  (package
    (name "haskell-9.4-evm-opcodes")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/evm-opcodes/evm-opcodes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p7gb3k64jsjscfxf2cd34igkm9j8q0rq3irfh1x4jdryvck2jch"))))
    (properties `((upstream-name . "evm-opcodes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-data-dword)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-tasty-hspec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sshine/evm-opcodes")
    (synopsis "Opcode types for Ethereum Virtual Machine (EVM)")
    (description
     "This library provides opcode types for the Ethereum Virtual Machine.")
    (license license:expat)))

haskell-9.4-evm-opcodes

(define-public haskell-9.4-follow-file
  (package
    (name "haskell-9.4-follow-file")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/follow-file/follow-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nxvw17ndjrg34mc2a0bcyprcng52f6mn3l7mhx2fc11njdf2b93"))))
    (properties `((upstream-name . "follow-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-attoparsec-path)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-hinotify)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/follow-file#readme")
    (synopsis
     "Be notified when a file gets appended, solely with what was added. Warning - only works on linux and for files that are strictly appended, like log files.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/follow-file#readme>")
    (license license:bsd-3)))

haskell-9.4-follow-file

(define-public haskell-9.4-genvalidity-mergeful
  (package
    (name "haskell-9.4-genvalidity-mergeful")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-mergeful/genvalidity-mergeful-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dd22kdlydhdns86awmmzbnr9bwrb84623zcyb5b9aaxmq75ifza"))))
    (properties `((upstream-name . "genvalidity-mergeful") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-mergeful)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/mergeful#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>")
    (license license:expat)))

haskell-9.4-genvalidity-mergeful

(define-public haskell-9.4-genvalidity-mergeless
  (package
    (name "haskell-9.4-genvalidity-mergeless")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-mergeless/genvalidity-mergeless-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1glz1w7mpbwpn800khqd2jzigs19k6y0bxx7cid2zvzwrnhz6prl"))))
    (properties `((upstream-name . "genvalidity-mergeless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-mergeless)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>")
    (license license:expat)))

haskell-9.4-genvalidity-mergeless

(define-public haskell-9.4-genvalidity-typed-uuid
  (package
    (name "haskell-9.4-genvalidity-typed-uuid")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-typed-uuid/genvalidity-typed-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18lfvw9slpgpng80mcj7mh7pfpl4xdyn9cfydafb7yq5lyr1vkym"))))
    (properties `((upstream-name . "genvalidity-typed-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-typed-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/typed-uuid#readme")
    (synopsis "Generators for Phantom-Typed version of UUID")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>")
    (license license:expat)))

haskell-9.4-genvalidity-typed-uuid

(define-public haskell-9.4-gitlib
  (package
    (name "haskell-9.4-gitlib")
    (version "3.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gitlib/gitlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02gk4z3q1hrr6wl7c2989ib2nqf8wcsx9msq6nbsfhxjsmc7qds7"))))
    (properties `((upstream-name . "gitlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jwiegley/gitlib")
    (synopsis "API library for working with Git repositories")
    (description
     "@@gitlib@@ is a high-level, lazy and conduit-aware set of abstractions for
programming with Git types.  Several different backends are available,
including one for the libgit2 C library (<http://libgit2.github.com>) (see
@@gitlib-libgit2@@).  The aim is both type-safety and convenience of use for
Haskell users, combined with high performance and minimal memory footprint
by taking advantage of Haskell's laziness and the conduit library's
deterministic resource cleanup.

For further information, as well as typical use cases, see \"Git.Tutorial\".")
    (license license:expat)))

haskell-9.4-gitlib

(define-public haskell-9.4-haskoin-core
  (package
    (name "haskell-9.4-haskoin-core")
    (version "0.21.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskoin-core/haskoin-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12i490xjfb0aav18ay3ahh0hpa9l5095a4hmva1ka3497clm7cfr"))))
    (properties `((upstream-name . "haskoin-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-base16)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-entropy)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-murmur3)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-secp256k1-haskell)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-string-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskoin/haskoin#readme")
    (synopsis "Bitcoin & Bitcoin Cash library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/haskoin/haskoin-core#readme>")
    (license license:expat)))

haskell-9.4-haskoin-core

(define-public haskell-9.4-hw-conduit
  (package
    (name "haskell-9.4-hw-conduit")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit/hw-conduit-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iv001vm0xlz9msw5f6bcr2a4fd7rhyd1zmk3axnh80g4m8lknzj"))))
    (properties `((upstream-name . "hw-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04vgiy5i3qwxspdxwb4nyw0snzqvsiqilwibb8zjv0nd51d9kpwk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-word8)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-conduit#readme")
    (synopsis "Conduits for tokenizing streams.")
    (description "Conduits for tokenizing streams. Please see README.md")
    (license license:expat)))

haskell-9.4-hw-conduit

(define-public haskell-9.4-hw-fingertree-strict
  (package
    (name "haskell-9.4-hw-fingertree-strict")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree-strict/hw-fingertree-strict-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y9h4riikfdrxbmfchm95qv2pmwsshdl27ngimkd5iww3d67vg36"))))
    (properties `((upstream-name . "hw-fingertree-strict") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0al2lmki3dgd731ndilnalsb29jifmpzfdsbzlq7v85c8nkhd6zr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-fingertree-strict#readme")
    (synopsis "Generic strict finger-tree structure")
    (description
     "A general sequence representation with arbitrary
annotations, for use as a base for implementations of
various collection types, with examples, as described
in section 4 of

* Ralf Hinze and Ross Paterson,
\\\"Finger trees: a simple general-purpose data structure\\\",
/Journal of Functional Programming/ 16:2 (2006) pp 197-217.
<http://staff.city.ac.uk/~ross/papers/FingerTree.html>

For a tuned sequence type, see @@Data.Sequence@@ in the
@@containers@@ package, which is a specialization of
this structure.")
    (license license:bsd-3)))

haskell-9.4-hw-fingertree-strict

(define-public haskell-9.4-hw-int
  (package
    (name "haskell-9.4-hw-int")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-int/hw-int-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13ifa28b12hiibhmwas5hn3dmmiz2rihlc837hhii0z1ng03s360"))))
    (properties `((upstream-name . "hw-int") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0q6w4a9dnwx1y34dwb439vg25lkpqmgxlq9r3j94sb4h90qm91dw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-int#readme")
    (synopsis "Additional facilities for Integers")
    (description "Additional faciltiies for Integers. Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-int

(define-public haskell-9.4-hw-mquery
  (package
    (name "haskell-9.4-hw-mquery")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-mquery/hw-mquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jdmgg0y04xl18vkdjwynb48wdl58kkzsw062v2cv65mkjhcvf0l"))))
    (properties `((upstream-name . "hw-mquery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16832r95lljph5vf33l9f544m8q9c3dx9b94wxmjjsl6z3bymmdc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-mquery#readme")
    (synopsis "Monadic query DSL")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-hw-mquery

(define-public haskell-9.4-hw-prim
  (package
    (name "haskell-9.4-hw-prim")
    (version "0.6.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-prim/hw-prim-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07a442g1fjzrfnz3y9mx3d2hv0ffjnbfdkmbiard8bn78vf5z80z"))))
    (properties `((upstream-name . "hw-prim") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bounds-checking-enabled")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-mmap)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-prim#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-9.4-hw-prim

(define-public haskell-9.4-hyperloglog
  (package
    (name "haskell-9.4-hyperloglog")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyperloglog/hyperloglog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zwg4dhgasa9sx7pbjjjb9kz2bnhb3r2daij2b572cszv65l91nv"))))
    (properties `((upstream-name . "hyperloglog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie")
       #:cabal-revision
       ("2" "0al93mhfhng8vwvhz8721gkzjjdblycpv4pi9lygbj8ay129djpr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-approximate)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-bits)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cereal-vector)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-cpu)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/analytics/hyperloglog")
    (synopsis
     "An approximate streaming (constant space) unique object counter")
    (description
     "This package provides an approximate streaming (constant space) unique object counter.

See the original paper for details:
<http://algo.inria.fr/flajolet/Publications/FlFuGaMe07.pdf>

Notably it can be used to approximate a set of several billion elements with 1-2% inaccuracy
in around 1.5k of memory.")
    (license license:bsd-3)))

haskell-9.4-hyperloglog

(define-public haskell-9.4-integer-types
  (package
    (name "haskell-9.4-integer-types")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/integer-types/integer-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s12gsa8k9b2pgd0705ji6qj4whl1vv0wpxjn129ppdb9dmji6gg"))))
    (properties `((upstream-name . "integer-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-quaalude)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/integer-types")
    (synopsis "Integer, Natural, and Positive")
    (description "The base package contains two unbounded integral types:
Integer (-∞, ∞) and Natural (0, ∞). This package expands that
integral repertoire with the addition of Positive (1, ∞).")
    (license license:asl2.0)))

haskell-9.4-integer-types

(define-public haskell-9.4-jose
  (package
    (name "haskell-9.4-jose")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jose/jose-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hhj1a6y7c63vka3f0k732clcx80k74syrfv2r996rxfxmlqlj8z"))))
    (properties `((upstream-name . "jose") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demos")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-concise)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-monad-time)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-pem)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/frasertweedale/hs-jose")
    (synopsis
     "JSON Object Signing and Encryption (JOSE) and JSON Web Token (JWT) library")
    (description
     "
Implementation of JSON Object Signing and Encryption
(JOSE) and JSON Web Token (JWT; RFC 7519).

The JSON Web Signature (JWS; RFC 7515) implementation is complete.

EdDSA signatures (RFC 8037) and secp256k1 (RFC 8812) are supported.

JWK Thumbprint (RFC 7638) is supported.

JSON Web Encryption (JWE; RFC 7516) is not yet implemented.

The __ECDSA implementation is vulnerable to timing attacks__ and
should only be used for verification.")
    (license license:asl2.0)))

haskell-9.4-jose

(define-public haskell-9.4-keyed-vals-mem
  (package
    (name "haskell-9.4-keyed-vals-mem")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/keyed-vals-mem/keyed-vals-mem-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08zsrwdcqw7ic1l9ygcalyg0k985ck1gal03kw21jlsh3l77942d"))))
    (properties `((upstream-name . "keyed-vals-mem") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-keyed-vals)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-keyed-vals-hspec-tests)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/adetokunbo/keyed-vals#readme")
    (synopsis "Implements a keyed-vals Handle using in-process memory")
    (description
     "keyed-vals provides a typed interface to a storage backend that allows the
path in the storage backend to be declaratively linked to the types of data
stored via a straightforward typeclass declaration.

Read this [short example](https://github.com/adetokunbo/keyed-vals/tree/main/keyed-vals#example)
for an introduction its usage.

While the goal of [keyed-vals](https://hackage.haskell.org/package/keyed-vals) is
to provide access to storage services like [Redis](https://redis.io), the
abstract definition of __Handle__ also enables this in-process implementation.

This package, keyed-vals-mem, is intended as a drop-in replacement for use in
testing and rapid prototyping.")
    (license license:bsd-3)))

haskell-9.4-keyed-vals-mem

(define-public haskell-9.4-libyaml
  (package
    (name "haskell-9.4-libyaml")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libyaml/libyaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dcpbsjg6n305l07isxmavgp01lbv1qggy16acjyxjlz35pxchlg"))))
    (properties `((upstream-name . "libyaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-unicode" "-f-system-libyaml")
       #:cabal-revision
       ("1" "00f1rag6sd7c8kza2agw9089p9vf21iiga2aq41nbf6d3yqn7dkz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Low-level, streaming YAML interface.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/libyaml>")
    (license license:bsd-3)))

haskell-9.4-libyaml

(define-public haskell-9.4-literatex
  (package
    (name "haskell-9.4-literatex")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/literatex/literatex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j82z5q6dzgi7b8si0fzxa3zv8rgqdhwm82sxh3wqsb6z1jfwk37"))))
    (properties `((upstream-name . "literatex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-write-hie")
       #:cabal-revision
       ("1" "091nqn5dsfr0hrsw92vs7n93p9h3j49q9v2n9ijcsb1cd6b473qf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-ttc)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ExtremaIS/literatex-haskell#readme")
    (synopsis "transform literate source code to Markdown")
    (description
     "This package provides a library as well as a command-line utility that
transforms literate source code to Markdown.  Please see the README on
GitHub at <https://github.com/ExtremaIS/literatex-haskell#readme>.")
    (license license:expat)))

haskell-9.4-literatex

(define-public haskell-9.4-lzma-conduit
  (package
    (name "haskell-9.4-lzma-conduit")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lzma-conduit/lzma-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pmvmchrg429b2yk485x0066lxcr37cbyczlyp3ala2iaq8hm61z"))))
    (properties `((upstream-name . "lzma-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-lzma)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/alphaHeavy/lzma-conduit")
    (synopsis "Conduit interface for lzma/xz compression.")
    (description
     "This package provides an Conduit interface for the LZMA compression algorithm used in the .xz file format.")
    (license license:bsd-3)))

haskell-9.4-lzma-conduit

(define-public haskell-9.4-massiv-serialise
  (package
    (name "haskell-9.4-massiv-serialise")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-serialise/massiv-serialise-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1309nsjk36l1qiq769f9yrvn20xgf6abkmqqddzb8gqfbvhkzzym"))))
    (properties `((upstream-name . "massiv-serialise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-massiv)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-massiv-test)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-serialise)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/massiv-compat")
    (synopsis "Compatibility of 'massiv' with 'serialise'")
    (description
     "Orphan 'Serialise' class instances from <https://hackage.haskell.org/package/serialise serialise> package that allow serialization of arrays defined in <https://hackage.haskell.org/package/massiv massiv> package")
    (license license:bsd-3)))

haskell-9.4-massiv-serialise

(define-public haskell-9.4-mnist-idx-conduit
  (package
    (name "haskell-9.4-mnist-idx-conduit")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mnist-idx-conduit/mnist-idx-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0319icnnw38fivjwz9m142wyp059hn5rydr6cdjq73d5d9c77xhx"))))
    (properties `((upstream-name . "mnist-idx-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/mnist-idx-conduit")
    (synopsis "conduit utilities for MNIST IDX files")
    (description
     "Conduit decoders for MNIST IDX data files, as described in http://yann.lecun.com/exdb/mnist/ . The IDX format is a low-level binary representation for storing general vector, image or tensor data. Here the parsers are specialized to the MNIST dataset, which stores scans of handwritten digits and is a classic benchmark for text classification.")
    (license license:bsd-3)))

haskell-9.4-mnist-idx-conduit

(define-public haskell-9.4-ndjson-conduit
  (package
    (name "haskell-9.4-ndjson-conduit")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ndjson-conduit/ndjson-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ccxliyy0flpby9jix2n8jy1i4jgiap42maqhh9ny53vqkvvhdy0"))))
    (properties `((upstream-name . "ndjson-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/srijs/haskell-ndjson-conduit")
    (synopsis
     "Conduit-based parsing and serialization for newline delimited JSON.")
    (description
     "Hackage documentation generation is not reliable.
For up to date documentation, please see: <http://www.stackage.org/package/ndjson-conduit>.")
    (license license:expat)))

haskell-9.4-ndjson-conduit

(define-public haskell-9.4-nonempty-containers
  (package
    (name "haskell-9.4-nonempty-containers")
    (version "0.3.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonempty-containers/nonempty-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12p40gzhmggbvh466s50d6xqaz9y7d32px3yv911wdwkcs3xxkch"))))
    (properties `((upstream-name . "nonempty-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hedgehog-fn)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-invariant)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-nonempty-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/nonempty-containers#readme")
    (synopsis "Non-empty variants of containers data types, with full API")
    (description
     "Efficient and optimized non-empty versions of types from /containers/.
Inspired by /non-empty-containers/ library, except attempting a more
faithful port (with under-the-hood optimizations) of the full /containers/
API. Also contains a convenient typeclass abstraction for converting
betwewen non-empty and possibly-empty variants. See README.md for more
information.")
    (license license:bsd-3)))

haskell-9.4-nonempty-containers

(define-public haskell-9.4-o-clock
  (package
    (name "haskell-9.4-o-clock")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/o-clock/o-clock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1swayrdhz10b67m6ipa75qz9ycz6r7xbk9fdq3ajlhp9bry31l7i"))))
    (properties `((upstream-name . "o-clock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-aeson" "-f-bench-buildable")
       #:cabal-revision
       ("1" "1fis58d0r7yvznmgijc2878gjv0261apb748d5pcphmgk9i5kzf3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages check) doctest)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-hunit-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-type-spec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/serokell/o-clock")
    (synopsis "Type-safe time library.")
    (description "See README.md for details.")
    (license license:mpl2.0)))

haskell-9.4-o-clock

(define-public haskell-9.4-ptr-poker
  (package
    (name "haskell-9.4-ptr-poker")
    (version "0.1.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ptr-poker/ptr-poker-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10bbfw0jdzvds4j6qcgppn4l7xflqa2578w6sqmz807mwr563f8c"))))
    (properties `((upstream-name . "ptr-poker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-numeric-limits)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/ptr-poker")
    (synopsis "Pointer poking action construction and composition toolkit")
    (description "")
    (license license:expat)))

haskell-9.4-ptr-poker

(define-public haskell-9.4-retry
  (package
    (name "haskell-9.4-retry")
    (version "0.9.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/retry/retry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kafm17xk6hylr0lwa98wxjcx7z3rgnqi4fzxcks7dy9dz5ms7n1"))))
    (properties `((upstream-name . "retry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mtl-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/Soostone/retry")
    (synopsis "Retry combinators for monadic actions that may fail")
    (description
     "This package exposes combinators that can wrap arbitrary
monadic actions. They run the action and potentially retry
running it with some configurable delay for a configurable
number of times.
The purpose is to make it easier to work with IO and
especially network IO actions that often experience temporary
failure and warrant retrying of the original action. For
example, a database query may time out for a while, in which
case we should hang back for a bit and retry the query instead
of simply raising an exception.")
    (license license:bsd-3)))

haskell-9.4-retry

(define-public haskell-9.4-rhbzquery-notests
  (package
    (name "haskell-9.4-rhbzquery-notests")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rhbzquery/rhbzquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00175smanmcr6k8b83kj7mif47jggxn0pvy64yjc4ikpbw822c2q"))))
    (properties `((upstream-name . "rhbzquery") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-config-ini)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-email-validate)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-simple-cmd)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/rhbzquery")
    (synopsis "Bugzilla query tool")
    (description
     "A CLI tool for creating bugzilla queries for bugzilla.redhat.com.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-rhbzquery-notests

(define-public haskell-9.4-rng-utils
  (package
    (name "haskell-9.4-rng-utils")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rng-utils/rng-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wpyq1lxqcxkzvswfq9sc916alck68g3z5xb04brzxhvwzgppwnq"))))
    (properties `((upstream-name . "rng-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://bitbucket.org/soostone/rng-utils")
    (synopsis "RNG within an IORef for convenient concurrent use")
    (description
     "rng-utils aims to make it easy to generate an RNG and safely use it concurrently.")
    (license license:bsd-3)))

haskell-9.4-rng-utils

(define-public haskell-9.4-rocksdb-query
  (package
    (name "haskell-9.4-rocksdb-query")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-query/rocksdb-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sh88q0vq0b13ig6vmwi8wa73d45qxdkbbc29zphch6p2z4n81wq"))))
    (properties `((upstream-name . "rocksdb-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-rocksdb-haskell-jprupp)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) rocksdb)))
    (home-page "https://github.com/jprupp/rocksdb-query#readme")
    (synopsis "RocksDB database querying library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/rocksdb-query#readme>")
    (license license:expat)))

haskell-9.4-rocksdb-query

(define-public haskell-9.4-rp-tree
  (package
    (name "haskell-9.4-rp-tree")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rp-tree/rp-tree-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01iy2awnwqgfqyigpggj6gfig930lx655bih1a2hd5ga2fbrymmp"))))
    (properties `((upstream-name . "rp-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-boxes)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-heaps)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-serialise)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-splitmix-distributions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/rp-tree")
    (synopsis "Random projection trees")
    (description
     "Random projection trees for approximate nearest neighbor search in high-dimensional vector spaces

To use the library, import \"Data.RPTree\", which also contains all documentation.")
    (license license:bsd-3)))

haskell-9.4-rp-tree

(define-public haskell-9.4-safeio
  (package
    (name "haskell-9.4-safeio")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/safeio/safeio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04g3070cbjdqj0h9l9ii6470xcbn40xfv4fr89a8yvnkdim9nyfm"))))
    (properties `((upstream-name . "safeio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/luispedro/safeio#readme")
    (synopsis "Write output to disk atomically")
    (description
     "This package implements utilities to perform atomic output so as to avoid the problem of partial intermediate files.")
    (license license:expat)))

haskell-9.4-safeio

(define-public haskell-9.4-sandi
  (package
    (name "haskell-9.4-sandi")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sandi/sandi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ndgai8idlxyccvkz5zsgq06v58blc30i6hkky5b1sf5x6gs2h29"))))
    (properties `((upstream-name . "sandi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-conduit")
       #:cabal-revision
       ("1" "1aj9i1ir6ks3bdb47yvqlxv2azrz09p69ggr73m0cxvir9rd0y5j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sandi")
    (synopsis "Data encoding library")
    (description "Reasonably fast data encoding library.")
    (license license:bsd-3)))

haskell-9.4-sandi

(define-public haskell-9.4-slist
  (package
    (name "haskell-9.4-slist")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/slist/slist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1j52gvq42x03y7jq0pxzab98qnrsjg6qnw4ysq6cd89cx6gg04ab"))))
    (properties `((upstream-name . "slist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-hspec-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kowainik/slist")
    (synopsis "Sized list")
    (description
     "This package implements @@Slist@@ data structure that stores the size
of the list along with the list itself.")
    (license license:mpl2.0)))

haskell-9.4-slist

(define-public haskell-9.4-store-streaming
  (package
    (name "haskell-9.4-store-streaming")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/store-streaming/store-streaming-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b164ixsqgrar4riqlm3ip5rfbinapk6md7hnz32gzcmrgav283q"))))
    (properties `((upstream-name . "store-streaming") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-store)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-store-core)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-streaming-commons)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/store#readme")
    (synopsis "Streaming interfaces for `store`")
    (description "")
    (license license:expat)))

haskell-9.4-store-streaming

(define-public haskell-9.4-strict-list
  (package
    (name "haskell-9.4-strict-list")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-list/strict-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dhfnb5zvwnnbsy0c9lyymfq223zw9jgwv3wn1rq5xp1np68mkbh"))))
    (properties `((upstream-name . "strict-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/strict-list")
    (synopsis "Strict linked list")
    (description
     "Implementation of strict linked list with care taken about stack.")
    (license license:expat)))

haskell-9.4-strict-list

(define-public haskell-9.4-tar-conduit
  (package
    (name "haskell-9.4-tar-conduit")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tar-conduit/tar-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgn3hyf20g1gfnzy8f41s7nj54kfcyjk2izw99svrw8f3dphi80"))))
    (properties `((upstream-name . "tar-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/tar-conduit#readme")
    (synopsis "Extract and create tar files using conduit for streaming")
    (description
     "Please see README.md. This is just filler to avoid warnings.")
    (license license:expat)))

haskell-9.4-tar-conduit

(define-public haskell-9.4-tasty-autocollect
  (package
    (name "haskell-9.4-tasty-autocollect")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-autocollect/tasty-autocollect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nq5zaf3ly7n4mqprdgvgw2ixdxk7qdrl108ppncid43dfj560ik"))))
    (properties `((upstream-name . "tasty-autocollect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-explainable-predicates)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/brandonchinn178/tasty-autocollect#readme")
    (synopsis "Autocollection of tasty tests.")
    (description
     "Autocollection of tasty tests. See README.md for more details.")
    (license license:bsd-3)))

haskell-9.4-tasty-autocollect

(define-public haskell-9.4-th-lego
  (package
    (name "haskell-9.4-th-lego")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-lego/th-lego-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1w7z6g0sfn23yaqjpylnf1kpwyyf9ka17f0bqvlxcd3b739ajg8z"))))
    (properties `((upstream-name . "th-lego") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-template-haskell-compat-v0208)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/th-lego")
    (synopsis "Template Haskell construction utilities")
    (description "A collection of templates for the typical patterns appearing
in construction of Template Haskell AST.
E.g., typical instance declaration templates,
lambda expressions for accessing members of data-types.")
    (license license:expat)))

haskell-9.4-th-lego

(define-public haskell-9.4-uri-bytestring
  (package
    (name "haskell-9.4-uri-bytestring")
    (version "0.3.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring/uri-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s0k26v5x6601rbpkjkl5vp3dkp9xwj1dlgy4xkl470i4sna1rzk"))))
    (properties `((upstream-name . "uri-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Soostone/uri-bytestring")
    (synopsis "Haskell URI parsing as ByteStrings")
    (description
     "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.")
    (license license:bsd-3)))

haskell-9.4-uri-bytestring

(define-public haskell-9.4-vector-builder
  (package
    (name "haskell-9.4-vector-builder")
    (version "0.3.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-builder/vector-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gc2n5j1ca07hd50shy7l5xybs1y720zrarzs5dj74dsdcpvmjxw"))))
    (properties `((upstream-name . "vector-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-rerebase)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.4-vector-builder

(define-public haskell-9.4-wai-conduit
  (package
    (name "haskell-9.4-wai-conduit")
    (version "3.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-conduit/wai-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07yn41rn2skd5p3wqqa09wa761vj7ibl8l19gh4bi4i8slxhk417"))))
    (properties `((upstream-name . "wai-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "conduit wrappers for WAI")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-conduit>.")
    (license license:expat)))

haskell-9.4-wai-conduit

(define-public haskell-9.4-withdependencies
  (package
    (name "haskell-9.4-withdependencies")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/withdependencies/withdependencies-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hjld3ndafnaxwx1c6s88dc3bimbc5vwfdf6lcsq22apzh1gmdm6"))))
    (properties `((upstream-name . "withdependencies") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-conduit)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bartavelle/withdependencies")
    (synopsis
     "Run computations that depend on one or more elements in a stream.")
    (description
     "Run computations that depend on one or more elements in a stream. It lets you model dependencies as an applicative functor.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-withdependencies

(define-public haskell-9.4-xeno
  (package
    (name "haskell-9.4-xeno")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xeno/xeno-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07l3wv4x56j6gl3pkcvpfszz7a0rhsw35i6mh222j1dcqx3hxn9v"))))
    (properties `((upstream-name . "xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-libxml2" "-f-whitespace-around-equals")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hexml)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage016)
                     haskell-9.4-mutable-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/xeno")
    (synopsis "A fast event-based XML parser in pure Haskell")
    (description
     "A fast, low-memory use, event-based XML parser in pure Haskell.  ")
    (license license:bsd-3)))

haskell-9.4-xeno

