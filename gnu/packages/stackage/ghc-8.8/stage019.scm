;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage019)
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
(define-public haskell-8.8-LambdaHack
  (package
    (name "haskell-8.8-LambdaHack")
    (version "0.9.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/LambdaHack/LambdaHack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y5345cmwl40p0risziyqlxfa8jv1rm9x6ivv85xhznrsmr0406h"))))
    (properties `((upstream-name . "LambdaHack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-vty" "-f-curses" "-f-gtk" "-f-sdl" "-f-jsaddle" "-f-with_expensive_assertions" "-frelease" "-fsupportnodejs")
       #:cabal-revision
       ("1" "0qaqfyg7a50yibshq63718iyi4z1v017fzp7kbwrnwqmkmdqfa5a")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-assert-failure)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-enummapset)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-compact)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hsini)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-keys)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-miniutter)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-sdl2)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-sdl2-ttf)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://lambdahack.github.io")
    (synopsis
     "A game engine library for tactical squad ASCII roguelike dungeon crawlers")
    (description
     "LambdaHack is a Haskell game engine library for ASCII roguelike
games of arbitrary theme, size and complexity, with optional
tactical squad combat. It's packaged together with a sample
dungeon crawler in fantasy setting that can be tried out
in the browser at <http://lambdahack.github.io>.
(It runs fastest on Chrome. Keyboard commands and savefiles
are supported only on recent enough versions of browsers.
Mouse should work everywhere.)

Please see the changelog file for recent improvements
and the issue tracker for short-term plans. Long term goals
include multiplayer tactical squad combat, in-game content
creation, auto-balancing and persistent content modification
based on player behaviour. Contributions are welcome.

Games known to use the LambdaHack library:

* Allure of the Stars, a near-future Sci-Fi game,
<http://hackage.haskell.org/package/Allure>

* Space Privateers, an adventure game set in far future,
<http://hackage.haskell.org/package/SpacePrivateers>

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

This is a workaround .cabal file, flattened to eliminated
internal libraries until generating haddocks for them
is fixed. The original .cabal file is stored in the github repo.")
    (license license:bsd-3)))

haskell-8.8-LambdaHack

(define-public haskell-8.8-SVGFonts
  (package
    (name "haskell-8.8-SVGFonts")
    (version "1.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/SVGFonts/SVGFonts-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06vnpkkr19s9b1wjp7l2w29vr7fsghcrffd2knlxvdhjacrfpc9h"))))
    (properties `((upstream-name . "SVGFonts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0q731cyrqq1csbid9nxh2bj6rf8yss017lz9j9zk22bw3bymzb0s")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-svg)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-cereal-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-diagrams-core)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

* An example that shows how to do text boxes with syntax highlighting using highlighting-kate:
<http://hackage.haskell.org/package/highlighting-kate>

XML speed issues can be solved by trimming the svg file to only those characters that are used (or maybe binary xml one day).

Version 1.0 of this library supports texturing, though this only makes sense in a diagrams backend that does rasterization in Haskell, such as diagrams-rasterific.

Example:

>  # LANGUAGE NoMonomorphismRestriction #
>
> main = do linLibertine <- loadDataFont \"fonts/LinLibertine.svg\"
>           t <- text'''' linLibertine \"Hello\"
>           mainWith (t :: Diagram B)
>
> text'   font t = stroke (textSVG t 1) # fc purple # fillRule EvenOdd
> text''  font t = stroke (textSVG' (TextOpts font INSIDE_H KERN False 1 1) t) # fillRule EvenOdd
> text''' font t =        (textSVG_ (TextOpts font INSIDE_H KERN True  1 1) t) # fillRule EvenOdd
>
> -- using a local font
> text'''' font t = do
>    font <- loadFont \"/path/to/font.svg\"
>    return $ stroke (textSVG' (TextOpts font INSIDE_H KERN False 1 1) t)
")
    (license license:bsd-3)))

haskell-8.8-SVGFonts

(define-public haskell-8.8-advent-of-code-api
  (package
    (name "haskell-8.8-advent-of-code-api")
    (version "0.2.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/advent-of-code-api/advent-of-code-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g1wybpir0053pjav8czccnva38jr35gnii1as0lbyinc1k7vlhq"))))
    (properties `((upstream-name . "advent-of-code-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-finite-typelits)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-client-core)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-time-compat)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mstksg/advent-of-code-api#readme")
    (synopsis "Advent of Code REST API bindings and servant API")
    (description
     "Haskell bindings for Advent of Code REST API and a servant API.  Please use
responsibly! See README.md or \"Advent\" module for an introduction and
tutorial.")
    (license license:bsd-3)))

haskell-8.8-advent-of-code-api

(define-public haskell-8.8-amazonka
  (package
    (name "haskell-8.8-amazonka")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka/amazonka-" version
                    ".tar.gz"))
              (sha256
               (base32
                "104ifvmwdc1w3y42qcbq57v579zcnmlfv3f0bsazbcqdxnvr9dzd"))))
    (properties `((upstream-name . "amazonka") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "171rp3cbgy58lps437c1jfpmi4xsp0z4pral7jh3mybn73l672zm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage007) haskell-8.8-ini)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-mmorph)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-retry)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Comprehensive Amazon Web Services SDK.")
    (description
     "This client library contains request and response logic to communicate
with Amazon Web Service compatible APIs using the types supplied by the
various @@amazonka-*@@ service libraries. See the <http://hackage.haskell.org/packages/#cat:AWS AWS>
category on Hackage for supported services.

To get started, import the desired @@amazonka-*@@ library (such as
<http://hackage.haskell.org/package/amazonka-ml/docs/Network-AWS-MachineLearning.html Network.AWS.MachineLearning>)
and one of the following:

* \"Control.Monad.Trans.AWS\": The 'AWST' transformer and generalised operations.

* \"Network.AWS\": The 'AWS' monad and 'MonadAWS' type class for automatically
lifting operations when embedded as a layer in a transformer stack.

GHC 7.8.4 and higher is officially supported.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka

(define-public haskell-8.8-amazonka-test
  (package
    (name "haskell-8.8-amazonka-test")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-test/amazonka-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a92y92gwn4143z73fwrm03vi5wdxgl2i1myvb8qsk9c621xa7km"))))
    (properties `((upstream-name . "amazonka-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-groom)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Common functionality for Amazonka library test-suites.")
    (description
     "Common functionality depended upon by test suites of the various @@amazonka-*@@
service libraries.

The external interface of this library is stable with respect to the
downstream Amazonka libraries, only, and as such is not suitable
for use in non-Amazonka projects.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-test

(define-public haskell-8.8-apecs-gloss
  (package
    (name "haskell-8.8-apecs-gloss")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apecs-gloss/apecs-gloss-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dwaynabg26vlzbaa59q5ri6sczda667ni900fn567zn8hq9c837"))))
    (properties `((upstream-name . "apecs-gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-apecs)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-apecs-physics)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-gloss)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://github.com/jonascarpay/apecs/apecs-gloss")
    (synopsis "Simple gloss renderer for apecs")
    (description "Simple 2D gloss-based rendering for apecs.
Intended for prototyping.")
    (license license:bsd-3)))

haskell-8.8-apecs-gloss

(define-public haskell-8.8-asciidiagram
  (package
    (name "haskell-8.8-asciidiagram")
    (version "1.3.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asciidiagram/asciidiagram-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09k1kdaa0xi2fx9vfdlv2w2nxx5x1vnlkz7gp8s998a325w1x7q1"))))
    (properties `((upstream-name . "asciidiagram") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1j7p9smyfmkayx6n7inssxcg9cr4zdm6329fpvba7504b96aprdk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-FontyFruity)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pandoc-types)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-rasterific-svg)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-svg-tree)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/asciidiagram")
    (synopsis "Pretty rendering of Ascii diagram into svg or png.")
    (description
     "Transform Ascii art diagram like this:

@@
,               \\/---------+
+---------+     |         |
|  ASCII  +----\\>| Diagram |
+---------+     |         |
|         |     +--+------\\/
\\\\---*-----\\/\\<=======\\/
@@

Into this:

<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAR0AAABnCAQAAACXrV7jAAAH+UlEQVR4Xu3cbZCVZRkH8N++srssirgqqIKKGK4WphWQMjJjilCUaASklgCZKr6RpgphlRWK0kiZVqmmY5ImyppbZiU1lglqUCqb4bsk5oq87sKyu3dfmWGneFzZPQ9evw87c87HM//538+e67qPnSyEEEIIIYQQQgghhBBCCCGEEEIIodguqMjOFIbudsmWUS3Vg159foC8Kequ6IQe1XdWjbms58n2kT/V/zcbpXaOUF79h08eeVNVufzqluiEqu+MGPLTKlI8wGUS9mubfkNPmUXrhNNOaesryShaJ+wx/rNVsovWCeuPHCrJLFontJX2kl20Tthrt82pQmbROmG3yq2yi9YJNm8pSbKLGVYgrZFvfSiKAyt06YGVolE7J71vo2OjfKsWuik6SXYhWgftdh0hWidaJ6ITIjphgekas7dORCdMcJxJFsssohP6etQ8szQD0ToyCDOMMU5DZ6KzxAO+qvf785/zla7S240AWOReL6swwFx9wD/dYrk2g0x3OG73CICxJmK2FwBc6GNyYrCnzTLP/3WfhSixr7GOAcDN6n3UuPdn6/zS4zY5x+GAH5pjsrFarLRVwmKTDfZp5ZZ5Si0OMtxrbvdlexsg4YP2tsQjZqKPJDcqXW+sSVZD0jFetNQFWjxjvEmuVQy4wkeMkt6v0Zns5+rUAuaaajaAZJ2zjHCLUkDCCCMsdbvPqUXCqSj3sHNB0glf19VG+ofpfuF/6uk8UG+qY4zDSs+gnyaVgEaP+bcyw3wQ0OhXmvRThLFK8FuD1aizzmj90eZxDZoNcrwyySInWeAQQ92jj9GFG50GrxmtUZ3LAKUatCoB8Ij1vqZE2qGwpl14EJHAaLXudzKWud1mz3pAH8AYPQy0ymzzTMQSnzfMvuZr8mFjFGOWT3nAnprN81v9fd+tjsD1jrBQmXNMs9zTpvuzJ/3eYYUanUVqHKnRAisNBN90sROdbbSe4O/KHSx1GJokbfcOKPTWucq2FptktR1Waxk41ale9nEA1NsTXOAaE3Gd4e7EaKe5VhngJ64xySZHqzPdF10IlvqMJxyLFyyyvz+pc7TnCjc6DxkrGarMQpeA8Qa7wQyzzHQ61usn0XF08t86zds+JicdIyEBKm2VOvwU+kg22uBAiyS85RgJB+BtCXCaiZIqX7CPZHcJb6nBWglTJMWmKdZDq1SY48/nrTRXuyonqDcDcLgfW2W+y202RZV3tNteQrv27d7JlQbjNMhotRod+54btdqqVCsY5U4n6usaexkCYE/AFeBJF3tRBQCq0aq6sAcR9RivFcXarbYPgH3N8bx6kw223vMGZTiw8iLrV4IJbPGkCR22Tr3r/NRJuNVsCS/r7wobHeVeFVIH3dzkdMd7WCX2lyS2+1uQ0fm1MSaBFlPd5xxJEaDFegMlJ/imK92mJ2hRDkiQ3+is3nYQseMH1jsu0+QLUgefwrOqjJK0WIKkTZ3rTAAkQJIkAGtscKIKST2StG0gJQozOq9b4QrHAkZa6Gyvm+hDettqqXXmS/bwPRcaYbgSy53pTCzwqLX4hl5OMg5zvOQVRc7CWY5W4H5hukaZrDHZJsvUuMMB4EcabMB8NUY4xTHmm+Ygv7IHKHG8S8zVS6VBzneI7e3nEN/1nL97UWl+BhFvu8hwCXCex7To40tesU4P04xTJeET/uAh/1JqqtES9nEYhoO9JByowmFOAr0kBW5i1tYeBiqda4RiCdQ4ALWgt2SYuz2oyTX2Vydp8ppRxtui0W1O9ziYqlYCwF3u8Jbj3eQOg7S7WD/JVxwkmeowqUtWv9ML8m0gRbpPetV76Xem+KODwPfN7YJe6U9R/sefsSXoQCWucrIqK93s80qk2E3eEWGghe6xwFb7m+NTsXQRrbPjhhgCIBV2dD4ghOzRoUinhBS/Ix5C3DnPIFpn96Z1+1kVd84zi+iUt6mItfbsgs1l1kd0sovWsaHCW/GVYGZho5LWNtE6mUXrPKnXsrURnexCfdPae0V0sorW+Y+HStwV0cksfG1T8c1WRXQyidbZ6sqmJcubr4yliwxCo9+4aVNTfdMZWuim1gkfkC8Hv/JS/7KNPR7ecJ0nOrlg+oZ860eRLEKx9s6PPx39XKrV9cIEG9TrHu3v0Vr7KvlW27TuUKvkzY3+4eY8L130KGlLJXKtR5sK+dPfw+Q5OlvaSpJ8ay6zXv5s8FzO16FKWp4pq5JnAygSurx1VL+8YtBRuZ/8doOITutjTw36sPxaus3kN0dGWWpNzqOz6b76z07tJbce7HjyW+MHJipUlX5mSO5bx0Mr2t+0t3x6s+PJ70h361vA0fmyv3oz/9HReu3My368m056xxwPYqzL7aGrzNx+8lvpajMUst1dagzkPzrXP3HaDYeeX6oT2kxxgjWYbYp7lHTX5Hew+w1W2Jqdbfmucldpr6q/DNvv0sqDvVuPuMcfAcf5nBO6bvK7BQAzXK0y7rV2ZXToUTqt54yNA6qbm8tbymXnSt8GzPSd7pj89nW3kVDA0RnpapO8FjcktzVu6J1/7QkM2/TEGe7v4snvBD9Qs13PjjQSLLaYbn41ybe0+roFcqfUzlS3YtVFB3+7lJmtK1aps3O1y5+/OdkzthOtQ03vmzaMo9f9a8/RqIvk7MAS0SkonX9MDvEjKfMcpUGI6GSnwVHmeZdCGOkNSXYhqLHALiqEEEIIIYQQQgghhBBCCCGE8F9DWMtlMskJNQAAAABJRU5ErkJggg==>>

See the documentation of the Text.AsciiDiagram module for the
description of the input format.")
    (license license:bsd-3)))

haskell-8.8-asciidiagram

(define-public haskell-8.8-casa-client
  (package
    (name "haskell-8.8-casa-client")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/casa-client/casa-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l8lhk7bbrpjip693a3p6kp92aryajb6aw1w4ycak7nrb947dvjw"))))
    (properties `((upstream-name . "casa-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-casa-types)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-th-lift)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/casa-client")
    (synopsis "Client for Casa")
    (description "Client for Casa <https://casa.fpcomplete.com/>")
    (license license:bsd-3)))

haskell-8.8-casa-client

(define-public haskell-8.8-classy-prelude-conduit
  (package
    (name "haskell-8.8-classy-prelude-conduit")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude-conduit/classy-prelude-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "007xz0yzp0bzbrx7arj7xmjlwrja120kwgxrbkm98sydjlsph9ys"))))
    (properties `((upstream-name . "classy-prelude-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-classy-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "classy-prelude together with conduit functions")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-conduit>")
    (license license:expat)))

haskell-8.8-classy-prelude-conduit

(define-public haskell-8.8-dhall-lsp-server
  (package
    (name "haskell-8.8-dhall-lsp-server")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-lsp-server/dhall-lsp-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ig90w8iwyq5qwx5rd9zrd0mvrfksn6x1qh0hqxqvjdxrxk9lqnk"))))
    (properties `((upstream-name . "dhall-lsp-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-dhall)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-dhall-json)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-lsp)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-haskell-lsp-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-lens-family-core)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-lsp-test)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-rope-utf16-splay)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-uri-encode)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "https://github.com/dhall-lang/dhall-haskell/dhall-lsp-server#readme")
    (synopsis "Language Server Protocol (LSP) server for Dhall")
    (description "")
    (license license:expat)))

haskell-8.8-dhall-lsp-server

(define-public haskell-8.8-dhall-yaml
  (package
    (name "haskell-8.8-dhall-yaml")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-yaml/dhall-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06lwzis9jjfis6rv4r9gd0iq1da5ymcd6jl8x3rbcimg87k9r4bj"))))
    (properties `((upstream-name . "dhall-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1vflfl8j0fjvf5a8mz90d71myii4s2k98186gidxv0dkll8dix9a")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-HsYAML)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-dhall)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-dhall-json)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/dhall-yaml")
    (synopsis "Convert between Dhall and YAML")
    (description
     "Use this package if you want to convert between Dhall expressions and YAML.
You can use this package as a library or an executable:

* See the \"Dhall.Yaml\" module if you want to use this package as a library

* Use the @@dhall-to-yaml-ng@@ program from this package if you want an executable")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-dhall-yaml

(define-public haskell-8.8-diagrams-contrib
  (package
    (name "haskell-8.8-diagrams-contrib")
    (version "1.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-contrib/diagrams-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "043jpr7lqg708lzmv6cqys7312lfdwnf8ijcnpl4jkbvcwl87c1m"))))
    (properties `((upstream-name . "diagrams-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0jwj06c2bqawpr57y2x8hbnjlsl1nv9k7wjxhk56w240qyspmj3p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-MonadRandom)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-circle-packing)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-cubicbezier)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-diagrams-core)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-diagrams-solve)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-force-layout)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-mfsolve)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-monoid-extras)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mtl-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://diagrams.github.io/")
    (synopsis "Collection of user contributions to diagrams EDSL")
    (description "A collection of user contributions for diagrams,
an embedded domain-specific language for generation
of vector graphics.")
    (license license:bsd-3)))

haskell-8.8-diagrams-contrib

(define-public haskell-8.8-diagrams-postscript
  (package
    (name "haskell-8.8-diagrams-postscript")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-postscript/diagrams-postscript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00j58mc84srjvrf21v6zjxxlbw6b8ahhn1jmbq697w8kw3cvygpa"))))
    (properties `((upstream-name . "diagrams-postscript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1aq214837jk85b2l79adm5rcrv8y929aspvix7yjq1skyrqgk7pa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-diagrams-core)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-monoid-extras)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-statestack)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.8-diagrams-postscript

(define-public haskell-8.8-diagrams-rasterific
  (package
    (name "haskell-8.8-diagrams-rasterific")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-rasterific/diagrams-rasterific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "161rsy3g59n3sfrbfyvd4i4hszl0zm59w21b7pk6w88n0bk8gf2l"))))
    (properties `((upstream-name . "diagrams-rasterific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0q2nzcdv7j654bk8c5fjz3whiz1l6cdy21n6ah53f1s7rlsbiz0g")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-FontyFruity)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-Rasterific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-diagrams-core)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://projects.haskell.org/diagrams/")
    (synopsis "Rasterific backend for diagrams.")
    (description "A full-featured backend for rendering
diagrams using the Rasterific rendering engine.")
    (license license:bsd-3)))

haskell-8.8-diagrams-rasterific

(define-public haskell-8.8-diagrams-svg
  (package
    (name "haskell-8.8-diagrams-svg")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-svg/diagrams-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ysv6cz0fngrndl4wjmw4hrdj2rik5fxa1dkxzwnlgf1xwpvxgk8"))))
    (properties `((upstream-name . "diagrams-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0irjf0g1barr06fy409r0ld2hypihrhh6n80ig3487xxny6gfzs0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-diagrams-core)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-monoid-extras)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-svg-builder)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.8-diagrams-svg

(define-public haskell-8.8-dl-fedora
  (package
    (name "haskell-8.8-dl-fedora")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dl-fedora/dl-fedora-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x4gdnb2k1ywvaniif7j2lsbavadaghvcpbdnms3x13s4cg18lyh"))))
    (properties `((upstream-name . "dl-fedora") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-http-directory)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-posix)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-simple-cmd)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-simple-cmd-args)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-xdg-userdirs)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/juhp/dl-fedora")
    (synopsis "Fedora image download tool")
    (description "Tool to download Fedora iso and image files")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-dl-fedora

(define-public haskell-8.8-gi-cairo-connector
  (package
    (name "haskell-8.8-gi-cairo-connector")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo-connector/gi-cairo-connector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lhaki2qjk8f6bn78sag4g38g549sjzbjbah27j2i46xj7j08png"))))
    (properties `((upstream-name . "gi-cairo-connector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-cairo)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-gi-cairo-render)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cohomology/gi-cairo-render")
    (synopsis "GI friendly Binding to the Cairo library.")
    (description
     "This library contains glue code used to interconnect Haskell GI and Cairo")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-cairo-connector

(define-public haskell-8.8-gi-gobject
  (package
    (name "haskell-8.8-gi-gobject")
    (version "2.0.22")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gobject/gi-gobject-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c1ia60793dly5y5xd2s1qs5a37f0r3jypzc21r0yswgqdlsi7g6"))))
    (properties `((upstream-name . "gi-gobject") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GObject bindings")
    (description "Bindings for GObject, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-gobject

(define-public haskell-8.8-giphy-api
  (package
    (name "haskell-8.8-giphy-api")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/giphy-api/giphy-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "140d3k9c1jz6byvars1d1h66gwy1045nxnj0xqxn5kdq60gfp5a1"))))
    (properties `((upstream-name . "giphy-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildsample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-basic-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/passy/giphy-api#readme")
    (synopsis "Giphy HTTP API wrapper and CLI search tool.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-giphy-api

(define-public haskell-8.8-hOpenPGP
  (package
    (name "haskell-8.8-hOpenPGP")
    (version "2.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hOpenPGP/hOpenPGP-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wzvlk7my7a8rwmsw1glw2dlph3b2hwyz2jkcjr0hd1jj8ywksnx"))))
    (properties `((upstream-name . "hOpenPGP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("1" "0zislyrgjdnxzrk8hnlby19cb7v14rcr1xk9jj6hpi1b7vrks8q9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-binary-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-bz2)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-errors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-incremental-parser)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-ixset-typed)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-monad-loops)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-nettle)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-openpgp-asciiarmor)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://salsa.debian.org/clint/hOpenPGP")
    (synopsis "native Haskell implementation of OpenPGP (RFC4880)")
    (description
     "native Haskell implementation of OpenPGP (RFC4880), plus Camellia (RFC5581), plus ECC (RFC6637)")
    (license license:expat)))

haskell-8.8-hOpenPGP

(define-public haskell-8.8-haskell-import-graph
  (package
    (name "haskell-8.8-haskell-import-graph")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-import-graph/haskell-import-graph-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17ac5k98aqx77lq398kgvyiylpmkvxdmxzqbh7wk1fl9kphwsdm0"))))
    (properties `((upstream-name . "haskell-import-graph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-classy-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-graphviz)))
    (home-page "https://github.com/ncaq/haskell-import-graph#readme")
    (synopsis "create haskell import graph for graphviz")
    (description "")
    (license license:expat)))

haskell-8.8-haskell-import-graph

(define-public haskell-8.8-hasql-pool
  (package
    (name "haskell-8.8-hasql-pool")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-pool/hasql-pool-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l870d58a53akwbzgrcxfmz8mqc598qh1786d5ks937q0w219wlz"))))
    (properties `((upstream-name . "hasql-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hasql)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/nikita-volkov/hasql-pool ")
    (synopsis "A pool of connections for Hasql")
    (description "")
    (license license:expat)))

haskell-8.8-hasql-pool

(define-public haskell-8.8-hasql-transaction
  (package
    (name "haskell-8.8-hasql-transaction")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-transaction/hasql-transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jfvabsjpj56piny41hzbblhprjsk5xkpk35x502q2isl2mkk5ql"))))
    (properties `((upstream-name . "hasql-transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-bytestring-tree-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hasql)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/nikita-volkov/hasql-transaction")
    (synopsis "Composable abstraction over retryable transactions for Hasql")
    (description "")
    (license license:expat)))

haskell-8.8-hasql-transaction

(define-public haskell-8.8-headroom
  (package
    (name "haskell-8.8-headroom")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/headroom/headroom-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02s1s6v0fsn5a2anpi91za3dqafcp50lckr4xpir270l66lzdc2g"))))
    (properties `((upstream-name . "headroom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-either)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-mustache)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-pcre-light)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/vaclavsvejcar/headroom")
    (synopsis "License Header Manager")
    (description
     "Would you like to have nice, up-to-date license/copyright headers in your source code files but hate to manage them by hand? Then Headroom is the right tool for you! Now you can define your license header as Mustache template, put all the variables (such as author's name, year, etc.) into the YAML config file and Headroom will take care to add such license headers to all your source code files.")
    (license license:bsd-3)))

haskell-8.8-headroom

(define-public haskell-8.8-hpack-dhall
  (package
    (name "haskell-8.8-hpack-dhall")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpack-dhall/hpack-dhall-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16mnh9hwp0224cn3rlpbjgqklgvbaffbzjskyksakpgxc0phk1zi"))))
    (properties `((upstream-name . "hpack-dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-dhall)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-dhall-json)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-hpack)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/blockscope/hpack-dhall#readme")
    (synopsis "hpack's dhalling")
    (description
     "Work with hpack's top-level
<https://github.com/sol/hpack#top-level-fields fields> in a Dhall
record with the following executables;

* with @@dhall-hpack-cabal@@ write the @@.cabal@@ for a @@.dhall@@ package description.
* with @@dhall-hpack-dhall@@ show the package description expression, with imports resolved.
* with @@dhall-hpack-json@@ show the package description as JSON.
* with @@dhall-hpack-yaml@@ show the package description as YAML.")
    (license license:bsd-3)))

haskell-8.8-hpack-dhall

(define-public haskell-8.8-hspec-wai-json
  (package
    (name "haskell-8.8-hspec-wai-json")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-wai-json/hspec-wai-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04mpqij446ki5l6xwi3bjmlf3ggjia2nzv8j62mdy6ick96dqwk6"))))
    (properties `((upstream-name . "hspec-wai-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-qq)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hspec-wai)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Testing JSON APIs with hspec-wai")
    (description "Testing JSON APIs with hspec-wai")
    (license license:expat)))

haskell-8.8-hspec-wai-json

(define-public haskell-8.8-hyperloglog
  (package
    (name "haskell-8.8-hyperloglog")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyperloglog/hyperloglog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r1zrhl81hm0sb9my32xyng0xdl2yzh1pdw2bqabzccrhyjk1fwd"))))
    (properties `((upstream-name . "hyperloglog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-herbie")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-approximate)
                  (@ (gnu packages stackage ghc-8.8 stage005) haskell-8.8-bits)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-bytes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-cereal-vector)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-generic-deriving)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-reflection)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-simple-reflect)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-siphash)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
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

haskell-8.8-hyperloglog

(define-public haskell-8.8-ipynb
  (package
    (name "haskell-8.8-ipynb")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ipynb/ipynb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lwpz0ip7r1rxkirqb6p48ql19fzamqkrnf3khx7bfl5wsxi6yrb"))))
    (properties `((upstream-name . "ipynb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-aeson-diff)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/ipynb")
    (synopsis "Data structure for working with Jupyter notebooks (ipynb).")
    (description "ipynb defines a data structure for representing Jupyter
notebooks, along with ToJSON and FromJSON instances
for conversion to and from JSON .ipynb files.")
    (license license:bsd-3)))

haskell-8.8-ipynb

(define-public haskell-8.8-language-puppet
  (package
    (name "haskell-8.8-language-puppet")
    (version "1.4.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-puppet/language-puppet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j32504iwla8h33h4nycx6gwp46kvlqp1d6c9wirygm8ng3vpz6r"))))
    (properties `((upstream-name . "language-puppet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-filecache)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-formatting)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hruby)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-operational)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-pcre-utils)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-protolude)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-strict-base-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages ruby) ruby-3.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://lpuppet.banquise.net/")
    (synopsis "Tools to parse and evaluate the Puppet DSL.")
    (description
     "This is a set of tools that is supposed to fill all your Puppet needs : syntax checks, catalog compilation, PuppetDB queries, simulation of complex interactions between nodes, Puppet master replacement, and more !")
    (license license:bsd-3)))

haskell-8.8-language-puppet

(define-public haskell-8.8-learn-physics
  (package
    (name "haskell-8.8-learn-physics")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/learn-physics/learn-physics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hcd03ygsq6kl08k7d8f61xm7bdzsdx6v4mplzz0c6c7sp9a40sb"))))
    (properties `((upstream-name . "learn-physics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-gloss)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-gnuplot)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hmatrix)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-not-gloss)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-spatial-math)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-vector-space)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://hackage.haskell.org/package/learn-physics")
    (synopsis "Haskell code for learning physics")
    (description "A library of functions for vector calculus,
calculation of electric field, electric flux,
magnetic field, and other quantities in classical mechanics,
electromagnetic theory, and quantum mechanics.")
    (license license:bsd-3)))

haskell-8.8-learn-physics

(define-public haskell-8.8-mixpanel-client
  (package
    (name "haskell-8.8-mixpanel-client")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mixpanel-client/mixpanel-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gangs1ivbg0hyc804flmxq7fgai3qlf2fnsw1r9dyjb5d91smp1"))))
    (properties `((upstream-name . "mixpanel-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-string-conv)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/hercules-ci/mixpanel-client#readme")
    (synopsis "Mixpanel client")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-mixpanel-client

(define-public haskell-8.8-mmark-cli
  (package
    (name "haskell-8.8-mmark-cli")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mmark-cli/mmark-cli-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15qrp2q1flx9csqvj8zx9w1jqg8pwfi0v7wpia7n7vg09jgydhby"))))
    (properties `((upstream-name . "mmark-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("7" "0ml4pj14nd3gbgrh8ji3ifbjdayp8fbsf7kdcwqmyajm1sz965x0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-ghc-syntax-highlighter)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-gitrev)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-mmark)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-mmark-ext)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-stache)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/mmark-md/mmark-cli")
    (synopsis "Command line interface to the MMark markdown processor")
    (description "Command line interface to the MMark markdown processor.")
    (license license:bsd-3)))

haskell-8.8-mmark-cli

(define-public haskell-8.8-network-messagepack-rpc-websocket
  (package
    (name "haskell-8.8-network-messagepack-rpc-websocket")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-messagepack-rpc-websocket/network-messagepack-rpc-websocket-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0adkav3nl7ghbx2r7dx83ki6m397clxaw37s54ivnkxydqscjv06"))))
    (properties `((upstream-name . "network-messagepack-rpc-websocket")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-data-msgpack)
                  (@ (gnu packages stackage ghc-8.8 stage014) haskell-8.8-envy)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-network-messagepack-rpc)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-skews)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-wss-client)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc-websocket")
    (synopsis "WebSocket backend for MessagePack RPC")
    (description "WebSocket backend for \"network-messagepack-rpc\"")
    (license license:bsd-3)))

haskell-8.8-network-messagepack-rpc-websocket

(define-public haskell-8.8-persistent-pagination
  (package
    (name "haskell-8.8-persistent-pagination")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-pagination/persistent-pagination-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16p89c4rjwak7slb7rmzn0qyap2vg3ayis8q3lkxl0k7a609pf5h"))))
    (properties `((upstream-name . "persistent-pagination") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-esqueleto)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-foldl)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-template)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/parsonsmatt/persistent-pagination#readme")
    (synopsis
     "Efficient and correct pagination for persistent or esqueleto queries.")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/persistent-pagination#readme>")
    (license license:bsd-3)))

haskell-8.8-persistent-pagination

(define-public haskell-8.8-persistent-qq
  (package
    (name "haskell-8.8-persistent-qq")
    (version "2.9.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-qq/persistent-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gnwkrjyh9fkli35qp0mvivbsycz58ng26z6rfqv377hgrjsvjiq"))))
    (properties `((upstream-name . "persistent-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-fast-logger)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-template)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/yesodweb/persistent#readme")
    (synopsis "Provides a quasi-quoter for raw SQL for persistent")
    (description
     "Please see README and API docs at <http://www.stackage.org/package/persistent>.")
    (license license:expat)))

haskell-8.8-persistent-qq

(define-public haskell-8.8-persistent-test
  (package
    (name "haskell-8.8-persistent-test")
    (version "2.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-test/persistent-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11aq5cy0n43jamf6mg4sr4300bc2zdbjxsczzxwjkb4hzs0ijsdv"))))
    (properties `((upstream-name . "persistent-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-path-pieces)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-template)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Tests for Persistent")
    (description
     "Tests for Persistent. This is only for use in developing libraries that should conform to the persistent interface, not for users of the persistent suite of database libraries.")
    (license license:expat)))

haskell-8.8-persistent-test

(define-public haskell-8.8-persistent-typed-db
  (package
    (name "haskell-8.8-persistent-typed-db")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-typed-db/persistent-typed-db-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07yjzxg5yfxv1zbp5pkrvj8nrsxyhy4n11zgmd0q9g186q6283qn"))))
    (properties `((upstream-name . "persistent-typed-db") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "15qqrxjg00xvn9ffdj0yk3zxw5snn91379zzhzzv3kd9w1b25zg0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-esqueleto)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-path-pieces)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-template)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/parsonsmatt/persistent-typed-db#readme")
    (synopsis "Type safe access to multiple database schemata.")
    (description "See README.md for more details, examples, and fun.")
    (license license:bsd-3)))

haskell-8.8-persistent-typed-db

(define-public haskell-8.8-plaid
  (package
    (name "haskell-8.8-plaid")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/plaid/plaid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mwwd3mnj45l1487hfhb8lhgcvik88qch7vzgk17zv77ginnifni"))))
    (properties `((upstream-name . "plaid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-casing)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-either)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-errors)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hspec-wai)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pretty-simple)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/v0d1ch/plaid#readme")
    (synopsis "Plaid.com api integration library")
    (description
     "@@Plaid@@ is a library for interacting with https://plaid.com

Plaid.com connects the users to their bank accounts via the app and this library provides programmatic
access to all these features.

Please take a look at examples folder to easily get started.

Haskell examples in the plaid [documentation] (https://plaid.com/docs) come from this library.
")
    (license license:bsd-3)))

haskell-8.8-plaid

(define-public haskell-8.8-reanimate
  (package
    (name "haskell-8.8-reanimate")
    (version "0.3.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reanimate/reanimate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0yyhspd13wws99kpb61cw3bc6yrvkxrq86y0p9w4sl66jdl1zbli"))))
    (properties `((upstream-name . "reanimate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fhmatrix" "-f-test")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-cassava)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-chiphunk)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-cubicbezier)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fingertree)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-geojson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-here)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hmatrix)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-matrix)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-open-browser)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-random-shuffle)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-reanimate-svg)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-tasty-golden)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-vector-space)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/Lemmih/reanimate")
    (synopsis "Animation library based on SVGs.")
    (description
     "Animation library based on SVGs. Can import (and manipulate) SVGs from
LaTeX and diagrams. Exports gifs, mp4s, and more. Ships with a webbased
viewer and auto-reloader.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-reanimate

(define-public haskell-8.8-scotty
  (package
    (name "haskell-8.8-scotty")
    (version "0.11.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scotty/scotty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ghn41nvkr8vajlm6y12wz3jbbyf4vyklspx0bhyisn1mps53p57"))))
    (properties `((upstream-name . "scotty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hspec-wai)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-nats)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-regex-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/scotty-web/scotty")
    (synopsis
     "Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp")
    (description
     "A Haskell web framework inspired by Ruby's Sinatra, using WAI and Warp.

@@
&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;

import Web.Scotty

import Data.Monoid (mconcat)

main = scotty 3000 $
&#32;&#32;get &#34;/:word&#34; $ do
&#32;&#32;&#32;&#32;beam <- param &#34;word&#34;
&#32;&#32;&#32;&#32;html $ mconcat [&#34;&#60;h1&#62;Scotty, &#34;, beam, &#34; me up!&#60;/h1&#62;&#34;]
@@


Scotty is the cheap and cheerful way to write RESTful, declarative web applications.

* A page is as simple as defining the verb, url pattern, and Text content.

* It is template-language agnostic. Anything that returns a Text value will do.

* Conforms to WAI Application interface.

* Uses very fast Warp webserver by default.

As for the name: Sinatra + Warp = Scotty.

[WAI] <http://hackage.haskell.org/package/wai>

[Warp] <http://hackage.haskell.org/package/warp>")
    (license license:bsd-3)))

haskell-8.8-scotty

(define-public haskell-8.8-servant-auth-swagger
  (package
    (name "haskell-8.8-servant-auth-swagger")
    (version "0.2.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-swagger/servant-auth-swagger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04ndbbhdmpgb8yshki6q2j46a5q8fzvlb4nn8x8gv0mqkriq79sh"))))
    (properties `((upstream-name . "servant-auth-swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "087faa5bg2hlxyhg7jzy2jj4fzs3dkp0znsbabrharcvdlkpqj1r")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-servant-auth)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-swagger)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-swagger2)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-swagger/servant-auth compatibility")
    (description
     "This package provides instances that allow generating swagger2 schemas from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.8-servant-auth-swagger

(define-public haskell-8.8-servant-elm
  (package
    (name "haskell-8.8-servant-elm")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-elm/servant-elm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hn7qkz4aw5snc4lbprbshzr3dagfry1bms0fx9bfif61312swqy"))))
    (properties `((upstream-name . "servant-elm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-integration")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-elm-bridge)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-interpolate)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-mockery)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-foreign)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-typed-process)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/mattjbray/servant-elm#readme")
    (synopsis
     "Automatically derive Elm functions to query servant webservices.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-servant-elm

(define-public haskell-8.8-servant-server
  (package
    (name "haskell-8.8-servant-server")
    (version "0.16.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-server/servant-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l4kgjg5z775bi76hy7cb70qwvmkai4rxqkgp0ildsjgsvf8qb80"))))
    (properties `((upstream-name . "servant-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "017aw6wyhi5g7zkk59yj44r1n02zzin2w9wdskwqys7iqkvnvczn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-string-conversions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-wai-app-static)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "A family of combinators for defining webservices APIs and serving them")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>
is a runnable example, with comments, that defines a dummy API and implements
a webserver that serves this API, using this package.

<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.8-servant-server

(define-public haskell-8.8-soap-tls
  (package
    (name "haskell-8.8-soap-tls")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/soap-tls/soap-tls-" version
                    ".tar.gz"))
              (sha256
               (base32
                "051shlb128lsacd2cjm4kpyqkmzdcwcj7ppl7l4n1k5j9g6k72yf"))))
    (properties `((upstream-name . "soap-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "06a65jphfn1nxcnm4r6gf12afxhd7cs6ax8kq22w4pai98jk3jwn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-configurator)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage018) haskell-8.8-soap)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-x509-store)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://bitbucket.org/dpwiz/haskell-soap")
    (synopsis "TLS-enabled SOAP transport (using tls package)")
    (description
     "TLS-enabled SOAP transport (using tls package)

> main = do
>     -- Initial one-time preparations.
>     settings <- makeSettings (Just \"client.crt\") (Just \"client.key\") validateDefault
>     transport <- initTransportWith settings \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")
>
>     -- the rest is the same as before...")
    (license license:expat)))

haskell-8.8-soap-tls

(define-public haskell-8.8-status-notifier-item
  (package
    (name "haskell-8.8-status-notifier-item")
    (version "0.3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/status-notifier-item/status-notifier-item-"
                    version ".tar.gz"))
              (sha256
               (base32
                "165kdg1wb0xpy4z7hlk8654ph2psdibal1p0f32zzrccbnk0w801"))))
    (properties `((upstream-name . "status-notifier-item") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-byte-order)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-bytestring-to-vector)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-dbus)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-dbus-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/IvanMalison/status-notifier-item#readme")
    (synopsis
     "A wrapper over the StatusNotifierItem/libappindicator dbus specification")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/status-notifier-item#readme>")
    (license license:bsd-3)))

haskell-8.8-status-notifier-item

(define-public haskell-8.8-wai-enforce-https
  (package
    (name "haskell-8.8-wai-enforce-https")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-enforce-https/wai-enforce-https-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mbhk50j1a47ydg5kd6bj3nbzqfq1abm1d1vcxc3smw4fgf39g5x"))))
    (properties `((upstream-name . "wai-enforce-https") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/turboMaCk/wai-enforce-https")
    (synopsis "Enforce HTTPS in Wai server app safely.")
    (description
     "Wai middleware enforcing HTTPS protocol on any incoming request. In case of non-encrypted HTTP, traffic is redirected using 301 Permanent Redirect or optionally 307 Temporary Redirect. Middleware has compatibility modes for various reverse proxies (load balancers) and therefore can be used with Heroku, Google Cloud (Ingress), Azure or any other type of PAS or Cloud provider.")
    (license license:bsd-3)))

haskell-8.8-wai-enforce-https

(define-public haskell-8.8-wai-middleware-clacks
  (package
    (name "haskell-8.8-wai-middleware-clacks")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-clacks/wai-middleware-clacks-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mx3qmyiywib8wcrccxd7wjlx4jv9wlc5w8lykivgh8q66pbcihf"))))
    (properties `((upstream-name . "wai-middleware-clacks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-tasty-wai)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/prikhi/wai-middleware-clacks#readme")
    (synopsis
     "GNU Terry Pratchett - Add the X-Clacks-Overhead Header to Wai Responses.")
    (description
     "/\"You know they'll never really die while the Trunk is alive.\"/

@@wai-middleware-clacks@@ is a middleware that inserts an arbitrary
@@X-Clacks-Overhead@@ header into every Wai response. From
<http://gnuterrypratchett.com GNU Terry Pratchett>:

> In Terry Pratchett's Discworld series, the clacks are a series of
> semaphore towers loosely based on the concept of the telegraph. Invented
> by an artificer named Robert Dearheart, the towers could send messages
> \"at the speed of light\" using standardized codes. Three of these codes
> are of particular import:
>
> G: send the message on
> N: do not log the message
> U: turn the message around at the end of the line and send it back again
>
> When Dearheart's son John died due to an accident while working on a
> clacks tower, Dearheart inserted John's name into the overhead of the
> clacks with a \"GNU\" in front of it as a way to memorialize his son forever
> (or for at least as long as the clacks are standing.)
>
>
> Keeping the legacy of Sir Terry Pratchett alive forever. For as long as
> his name is still passed along the Clacks, Death can't have him.

Please see the
<https://github.com/prikhi/wai-middleware-clacks/blob/master/README.md README>
or
<https://hackage.haskell.org/package/wai-middleware-clacks/docs/Network-Wai-Middleware-Clacks.html module documentation>
for usage instructions.")
    (license license:bsd-3)))

haskell-8.8-wai-middleware-clacks

(define-public haskell-8.8-wai-websockets
  (package
    (name "haskell-8.8-wai-websockets")
    (version "3.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-websockets/wai-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b2xmdsrsqpssyib53wbr6r8hf75789ndyyanv37sv99iyqcwz4i"))))
    (properties `((upstream-name . "wai-websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-wai-app-static)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Provide a bridge between WAI and the websockets package.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-websockets>.")
    (license license:expat)))

haskell-8.8-wai-websockets

(define-public haskell-8.8-warp-tls-uid
  (package
    (name "haskell-8.8-warp-tls-uid")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/warp-tls-uid/warp-tls-uid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09xvwvb6nc6ymp6x389dxbllisrj24srcdli6d19h05cwlqbay4w"))))
    (properties `((upstream-name . "warp-tls-uid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-warp-tls)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/YoshikuniJujo/warp-tls-uid#readme")
    (synopsis "set group and user id before running server")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/warp-tls-uid#readme>")
    (license license:bsd-3)))

haskell-8.8-warp-tls-uid

(define-public haskell-8.8-webex-teams-conduit
  (package
    (name "haskell-8.8-webex-teams-conduit")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-conduit/webex-teams-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ig4krcvc256lyrqvj6g4kjklln5m7sm44c4bvbgkgr3lmrpfkr7"))))
    (properties `((upstream-name . "webex-teams-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Conduit wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.8-webex-teams-conduit

(define-public haskell-8.8-webex-teams-pipes
  (package
    (name "haskell-8.8-webex-teams-pipes")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-pipes/webex-teams-pipes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "094wvrnv0609gp0iya34pciw2hc5wi7fax5wjwr3n1lmwdgf7i4g"))))
    (properties `((upstream-name . "webex-teams-pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Pipes wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.8-webex-teams-pipes

(define-public haskell-8.8-yesod-bin
  (package
    (name "haskell-8.8-yesod-bin")
    (version "1.6.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-bin/yesod-bin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "044xk75pymw6limz08zicxp4lw8jqf6f2ilj8i2qw2h419w3ry9f"))))
    (properties `((upstream-name . "yesod-bin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-project-template)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-say)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-tar)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-warp-tls)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "The yesod helper executable.")
    (description "See README.md for more information")
    (license license:expat)))

haskell-8.8-yesod-bin

(define-public haskell-8.8-yesod-fb
  (package
    (name "haskell-8.8-yesod-fb")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-fb/yesod-fb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nyi5jp85ysabljkds6h4w8ndrb12ac76awsih52amf60k4n7afl"))))
    (properties `((upstream-name . "yesod-fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage018) haskell-8.8-fb)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/psibi/yesod-fb")
    (synopsis "Useful glue functions between the fb library and Yesod.")
    (description "This package contains useful glue functions between the fb
package (<http://hackage.haskell.org/package/fb>) and Yesod.
These functions can't be included on the fb package itself
because it should not depend on Yesod.")
    (license license:bsd-3)))

haskell-8.8-yesod-fb

(define-public haskell-8.8-yesod-gitrev
  (package
    (name "haskell-8.8-yesod-gitrev")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-gitrev/yesod-gitrev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wd6xvq9aa11n8y4hna0a5ivqfxnbg8w2bq5lramm895xs7c8d7w"))))
    (properties `((upstream-name . "yesod-gitrev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-githash)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/DanBurton/yesod-gitrev")
    (synopsis "A subsite for displaying git information.")
    (description
     "(Please see the readme) https://github.com/DanBurton/yesod-gitrev#readme")
    (license license:bsd-3)))

haskell-8.8-yesod-gitrev

(define-public haskell-8.8-yesod-newsfeed
  (package
    (name "haskell-8.8-yesod-newsfeed")
    (version "1.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-newsfeed/yesod-newsfeed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g7n99zsrfinal2kcmrfyj3gcxrd390az93yz3c1kxzd5w1ffb4g"))))
    (properties `((upstream-name . "yesod-newsfeed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Helper functions and data types for producing News feeds.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-newsfeed>")
    (license license:expat)))

haskell-8.8-yesod-newsfeed

(define-public haskell-8.8-yesod-persistent
  (package
    (name "haskell-8.8-yesod-persistent")
    (version "1.6.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-persistent/yesod-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0chvpzhfj0l1lacwslizhawsc9ns307q0wc6mcalz6gv7cm7mfi3"))))
    (properties `((upstream-name . "yesod-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-template)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Some helpers for using Persistent from Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-persistent>")
    (license license:expat)))

haskell-8.8-yesod-persistent

(define-public haskell-8.8-yesod-sitemap
  (package
    (name "haskell-8.8-yesod-sitemap")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-sitemap/yesod-sitemap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mnv658z36ja1avig0g4pirb2i9vqriycykhfky74xymvjmhdyp5"))))
    (properties `((upstream-name . "yesod-sitemap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Generate XML sitemaps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-sitemap>")
    (license license:expat)))

haskell-8.8-yesod-sitemap

(define-public haskell-8.8-yesod-test
  (package
    (name "haskell-8.8-yesod-test")
    (version "1.6.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-test/yesod-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xgy7dzhqjgllqcpyyxs0spdg6vlz2c1sjvni7w7qnsf0ckyw2l8"))))
    (properties `((upstream-name . "yesod-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-cookie)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-html-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com")
    (synopsis "integration testing for WAI/Yesod Applications")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-test>")
    (license license:expat)))

haskell-8.8-yesod-test

