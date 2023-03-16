;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage018)
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
(define-public haskell-9.2-LambdaHack
  (package
    (name "haskell-9.2-LambdaHack")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-assert-failure)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-enummapset)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-compact)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hsini)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-keys)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-miniutter)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-open-browser)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-sdl2)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sdl2-ttf)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-witch)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
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

haskell-9.2-LambdaHack

(define-public haskell-9.2-acc
  (package
    (name "haskell-9.2-acc")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
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

haskell-9.2-acc

(define-public haskell-9.2-apecs-gloss
  (package
    (name "haskell-9.2-apecs-gloss")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-apecs)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-apecs-physics)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-gloss)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jonascarpay/apecs/apecs-gloss")
    (synopsis "Simple gloss renderer for apecs")
    (description "Simple 2D gloss-based rendering for apecs.
Intended for prototyping.")
    (license license:bsd-3)))

haskell-9.2-apecs-gloss

(define-public haskell-9.2-ascii-numbers
  (package
    (name "haskell-9.2-ascii-numbers")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-numbers/ascii-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dqqnqrn3hvmjgakm6vzbidlik4p483wcslcwr60qbxa1v5lmznv"))))
    (properties `((upstream-name . "ascii-numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1jam0pzzb678k5bfr6prdzg8v68md2rg39k7sqr4csh1lzkq86im")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-ascii-case)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ascii-char)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-ascii-superset)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-invert)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-numbers")
    (synopsis "ASCII representations of numbers")
    (description "This package provides functions for converting back and
forth between numbers and their ASCII representations.")
    (license license:asl2.0)))

haskell-9.2-ascii-numbers

(define-public haskell-9.2-ascii-th
  (package
    (name "haskell-9.2-ascii-th")
    (version "1.0.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-th/ascii-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wm0n7wr7bypdqs1cpgkcbmcwgz84lm7la2xkqflwc2kn0wr839h"))))
    (properties `((upstream-name . "ascii-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0a74410lmbd11j6bfh5x1rk3gyp7sybl7lqfxkkz5qws413ijli6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ascii-char)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-ascii-superset)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-th")
    (synopsis "Template Haskell support for ASCII")
    (description "This package defines Template Haskell support for ASCII,
including quasi-quoters for expressing ASCII strings.")
    (license license:asl2.0)))

haskell-9.2-ascii-th

(define-public haskell-9.2-asciidiagram
  (package
    (name "haskell-9.2-asciidiagram")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-FontyFruity)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pandoc-types)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rasterific-svg)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-svg-tree)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.2-asciidiagram

(define-public haskell-9.2-avro
  (package
    (name "haskell-9.2-avro")
    (version "0.6.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/avro/avro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02qczc2hih1yvmarbi4vjccvh8x2n8wsjllq3hm42shkd9xl0s6a"))))
    (properties `((upstream-name . "avro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-HasBigDecimal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-fail)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-generic-lens)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-tf-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-works/avro#readme")
    (synopsis "Avro serialization support for Haskell")
    (description "Avro serialization and deserialization support for Haskell")
    (license license:bsd-3)))

haskell-9.2-avro

(define-public haskell-9.2-beam-postgres
  (package
    (name "haskell-9.2-beam-postgres")
    (version "0.5.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-postgres/beam-postgres-"
                    version ".tar.gz"))
              (sha256
               (base32
                "028aqd7r49avmwlf97612f98a5maw01l0d5vlbg0nj7kqi03ghj4"))))
    (properties `((upstream-name . "beam-postgres") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-beam-core)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-beam-migrate)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-postgresql-libpq)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page
     "https://haskell-beam.github.io/beam/user-guide/backends/beam-postgres")
    (synopsis "Connection layer between beam and postgres")
    (description
     "Beam driver for <https://www.postgresql.org/ PostgreSQL>, an advanced open-source RDBMS")
    (license license:expat)))

haskell-9.2-beam-postgres

(define-public haskell-9.2-beam-sqlite
  (package
    (name "haskell-9.2-beam-sqlite")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-sqlite/beam-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d5s6r54aamkr91ji3z05cn7vjmbl0xaysnx3dmalx75r5jhmhzq"))))
    (properties `((upstream-name . "beam-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-beam-core)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-beam-migrate)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-sqlite-simple)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "https://haskell-beam.github.io/beam/user-guide/backends/beam-sqlite/")
    (synopsis "Beam driver for SQLite")
    (description
     "Beam driver for the <https://sqlite.org/ SQLite> embedded database.
See <https://haskell-beam.github.io/beam/user-guide/backends/beam-sqlite/ here>
for more information")
    (license license:expat)))

haskell-9.2-beam-sqlite

(define-public haskell-9.2-bits-extra
  (package
    (name "haskell-9.2-bits-extra")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/bits-extra#readme")
    (synopsis "Useful bitwise operations")
    (description
     "Please see the README on Github at <https://github.com/haskell-works/bits-extra#readme>")
    (license license:bsd-3)))

haskell-9.2-bits-extra

(define-public haskell-9.2-brick
  (package
    (name "haskell-9.2-brick")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/brick/brick-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12gwwqq38x0k6hjcn72dpcdwi0lrvyy8gxmp884h22l73xa4vda6"))))
    (properties `((upstream-name . "brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fdemos")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bimap)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-config-ini)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-data-clist)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-zipper)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-vty)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-word-wrap)))
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

haskell-9.2-brick

(define-public haskell-9.2-bugsnag
  (package
    (name "haskell-9.2-bugsnag")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bugsnag/bugsnag-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sbm85r2ia5k4rdbz8yqgd5x01b2l5kw0p4knj8mr8cr37fqzp8b"))))
    (properties `((upstream-name . "bugsnag") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Glob)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-bugsnag-hs)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-ua-parser)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pbrisbin/bugsnag-haskell#readme")
    (synopsis "Bugsnag error reporter for Haskell")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.2-bugsnag

(define-public haskell-9.2-classy-prelude-conduit
  (package
    (name "haskell-9.2-classy-prelude-conduit")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-classy-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "classy-prelude together with conduit functions")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-conduit>")
    (license license:expat)))

haskell-9.2-classy-prelude-conduit

(define-public haskell-9.2-cointracking-imports
  (package
    (name "haskell-9.2-cointracking-imports")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cointracking-imports/cointracking-imports-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jf95fgzgqgr2xjbm5i0cwj1zx7zd44qpv3xqy91pk5kp33gwdjr"))))
    (properties `((upstream-name . "cointracking-imports") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-base-compat-batteries)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage017) haskell-9.2-xlsx)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages xml) expat)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/prikhi/cointracking-imports#readme")
    (synopsis "Generate CSV & XLSX files for importing into CoinTracking.")
    (description
     "@@cointracking-imports@@ is a library for generating CSV & XLSX files to use
with <https://cointracking.info CoinTracking>'s Import feature. You
construct a list of @@CTImportData@@, then feed those to our CSV/XLSX
generating functions.

E.g., if you generate a list of your BNB staking rewards, you can use this
library build a CSV file to import those rewards into CoinTracking.")
    (license license:bsd-3)))

haskell-9.2-cointracking-imports

(define-public haskell-9.2-composite-binary
  (package
    (name "haskell-9.2-composite-binary")
    (version "0.8.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composite-binary/composite-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bxnzxvw5mjhz3kh6x265l70hp1z3z1y9fbdwhrgv6bhhinxb3hq"))))
    (properties `((upstream-name . "composite-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-composite-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/composite-hs/composite#readme")
    (synopsis "Orphan binary instances.")
    (description "Binary instance for (:->) and Record.")
    (license license:bsd-3)))

haskell-9.2-composite-binary

(define-public haskell-9.2-composite-ekg
  (package
    (name "haskell-9.2-composite-ekg")
    (version "0.8.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composite-ekg/composite-ekg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c0rxa30r19wcvqrw20xk96652mxknbs1lqpnzdj9kz77al3k1kl"))))
    (properties `((upstream-name . "composite-ekg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-composite-base)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ekg-core)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-vinyl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/composite-hs/composite#readme")
    (synopsis "EKG Metrics for Vinyl records")
    (description
     "Integration between EKG and Vinyl records allowing records holding registered metrics to be easily constructed from a type declaration.")
    (license license:bsd-3)))

haskell-9.2-composite-ekg

(define-public haskell-9.2-composite-tuple
  (package
    (name "haskell-9.2-composite-tuple")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composite-tuple/composite-tuple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y5xz4q5z2lw3jy3fdm5rl19sd969cdpq1a44ar45dpab0qffr41"))))
    (properties `((upstream-name . "composite-tuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0j7mj8g3v4x0vy4rbx00kxb7d41r3s3djbfin9f1h592ahyap1va")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-composite-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/composite-tuple")
    (synopsis "Tuple functions for composite records.")
    (description "Tuple functions for composite records.")
    (license license:expat)))

haskell-9.2-composite-tuple

(define-public haskell-9.2-composite-xstep
  (package
    (name "haskell-9.2-composite-xstep")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composite-xstep/composite-xstep-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18q75ynlywr6yap6nn11x5kzxncn0b6ghmvbg642617pznznpfm9"))))
    (properties `((upstream-name . "composite-xstep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-composite-base)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-vinyl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/composite-xstep")
    (synopsis "ReaderT transformer pattern for higher kinded composite data.")
    (description
     "ReaderT transformer pattern for higher kinded composite data.")
    (license license:expat)))

haskell-9.2-composite-xstep

(define-public haskell-9.2-core-program
  (package
    (name "haskell-9.2-core-program")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-program/core-program-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qc9acs4jcrs80677fkd42h7nzwx8n7falrnxjsqpslh6i900hzc"))))
    (properties `((upstream-name . "core-program") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-core-data)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-core-text)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hourglass)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-terminal-size)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis "Opinionated Haskell Interoperability")
    (description
     "A library to help build command-line programs, both tools and
longer-running daemons.

A description of this package, a list of features, and some background
to its design is contained in the
<https://github.com/aesiniath/unbeliever/blob/master/README.md README>
on GitHub.

See \"Core.Program.Execute\" to get started.")
    (license license:expat)))

haskell-9.2-core-program

(define-public haskell-9.2-country
  (package
    (name "haskell-9.2-country")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/country/country-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12d1nymfj13jgh5jhznrg8sgxvxyb2y3lvbl6p4mpa3qqhggyr3g"))))
    (properties `((upstream-name . "country") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-bytebuild)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-bytehash)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-byteslice)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-contiguous)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/country#readme")
    (synopsis "Country data type and functions")
    (description
     "The `country` library provides a data type for dealing with
the set of countries as defined by ISO 3166. The representation
is compact and is well-suited to use with vectors and
primitive arrays. Additionally, this library exports functions
that provide the following encodings and decodings:

* ISO Alpha-2 (two-letter country code)

* ISO Alpha-3 (three-letter country code)

* ISO Numeric (three-digit country code)


The main differences between this library and `iso3166-country-codes` are:

* it doesn't use an ADT to represent countries, instead it uses the country's three-digit country code.

* it doesn't use `String` for encoding/decoding

* it provides two-alpha and three-alpha country codes.

* it provides `Prim` instances from the `primitive` package to allow types to be used in unboxed vectors/arrays.

* BSD3 licence instead of LGPL

Please open up an issue on github if there is anything
you would like to see added.")
    (license license:bsd-3)))

haskell-9.2-country

(define-public haskell-9.2-cron
  (package
    (name "haskell-9.2-cron")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mtl-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)))
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

haskell-9.2-cron

(define-public haskell-9.2-deferred-folds
  (package
    (name "haskell-9.2-deferred-folds")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/deferred-folds")
    (synopsis "Abstractions over deferred folds")
    (description "This library is in an experimental state.
Users should be prepared for frequent updates.")
    (license license:expat)))

haskell-9.2-deferred-folds

(define-public haskell-9.2-detour-via-sci
  (package
    (name "haskell-9.2-detour-via-sci")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/detour-via-sci/detour-via-sci-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r417lp98k0nizlxh7r74c2c4g1ij33pk5ip0bm7ssmzyya127j5"))))
    (properties `((upstream-name . "detour-via-sci") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "00dj8vf9gg9ww37sir6mblf3xhcpam8qgfz5bfana23arhf2cixj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cassava)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-newtype)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-siggy-chardust)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/blockscope/flare-timing/tree/master/detour-via-sci#readme")
    (synopsis "JSON and CSV encoding for rationals as decimal point numbers.")
    (description
     "Lossy JSON and CSV encoding and decoding for newtype rationals via scientific with fixed decimal places.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-detour-via-sci

(define-public haskell-9.2-dhall-yaml
  (package
    (name "haskell-9.2-dhall-yaml")
    (version "1.2.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-yaml/dhall-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1iqn9gign1y9cysdghxip4gpcp3x4knirlnm3mkin7zbr9hhxflh"))))
    (properties `((upstream-name . "dhall-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0h7fzbx3fndfgh3afsa2gjj4zqcmdh43afzr9whxdk5n0l9cn02r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-HsYAML)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-HsYAML-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-dhall)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-dhall-json)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-yaml")
    (synopsis "Convert between Dhall and YAML")
    (description
     "Use this package if you want to convert between Dhall expressions and YAML.
You can use this package as a library or an executable:

* See the \"Dhall.Yaml\" module if you want to use this package as a library

* Use the @@dhall-to-yaml-ng@@ program from this package if you want an executable")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-dhall-yaml

(define-public haskell-9.2-diagrams-lib
  (package
    (name "haskell-9.2-diagrams-lib")
    (version "1.4.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-lib/diagrams-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vx51g9znb4a9bf20pjd9zr98wmh39avk2i06217p0iidcw8whz6"))))
    (properties `((upstream-name . "diagrams-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14lxvlxdzkrhdgblgglr5k0rwak0yl4gzawqkfla04mkg6hkh5bb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-active)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-adjunctions)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-diagrams-solve)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-dual-tree)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-intervals)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-monoid-extras)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-numeric-extras)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://diagrams.github.io")
    (synopsis "Embedded domain-specific language for declarative graphics")
    (description "Diagrams is a flexible, extensible EDSL for creating
graphics of many types.  Graphics can be created
in arbitrary vector spaces and rendered with
multiple backends.  diagrams-lib provides a
standard library of primitives and operations for
creating diagrams.  To get started using it, see
the \"Diagrams\" module, and refer to the tutorials and
documentation on the diagrams website,
<http://diagrams.github.io>.")
    (license license:bsd-3)))

haskell-9.2-diagrams-lib

(define-public haskell-9.2-elynx
  (package
    (name "haskell-9.2-elynx")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/elynx/elynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1k6hxsxcqlrfrcww1n31kidn5y7kafz9fm2qflj7zrcxpfpi9skj"))))
    (properties `((upstream-name . "elynx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-elynx-tools)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-slynx)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-tlynx)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Validate and (optionally) redo ELynx analyses")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.2-elynx

(define-public haskell-9.2-evm-opcodes
  (package
    (name "haskell-9.2-evm-opcodes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-data-dword)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-tasty-hspec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sshine/evm-opcodes")
    (synopsis "Opcode types for Ethereum Virtual Machine (EVM)")
    (description
     "This library provides opcode types for the Ethereum Virtual Machine.")
    (license license:expat)))

haskell-9.2-evm-opcodes

(define-public haskell-9.2-filecache
  (package
    (name "haskell-9.2-filecache")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filecache/filecache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17fbjdy2cicrd956317jj7fir0bd621c4zb5sb4991ph7jsah0n5"))))
    (properties `((upstream-name . "filecache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-strict-base-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://lpuppet.banquise.net/")
    (synopsis "A cache system associating values to files.")
    (description
     "A cache system, that works by associating computation results with file names. When the files are modified, the cache entries are discarded.")
    (license license:bsd-3)))

haskell-9.2-filecache

(define-public haskell-9.2-fsnotify-conduit
  (package
    (name "haskell-9.2-fsnotify-conduit")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fsnotify-conduit/fsnotify-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kh1y1p4dw2yhxrl1rrkmpkvm3q5nq12cwl8dfcscrkx3wqhz683"))))
    (properties `((upstream-name . "fsnotify-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fpco/fsnotify-conduit#readme")
    (synopsis "Get filesystem notifications as a stream of events")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/fsnotify-conduit>")
    (license license:expat)))

haskell-9.2-fsnotify-conduit

(define-public haskell-9.2-fused-effects
  (package
    (name "haskell-9.2-fused-effects")
    (version "1.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fused-effects/fused-effects-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h9nnfn0i89gr8151dlxcyjh9467l25y6glyy5zbqkhwxglmjns0"))))
    (properties `((upstream-name . "fused-effects") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hedgehog-fn)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-inspection-testing)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fused-effects/fused-effects")
    (synopsis "A fast, flexible, fused effect system.")
    (description
     "A fast, flexible, fused effect system, à la Effect Handlers in Scope, Monad Transformers and Modular Algebraic Effects: What Binds Them Together, and Fusion for Free—Efficient Algebraic Effect Handlers.")
    (license license:bsd-3)))

haskell-9.2-fused-effects

(define-public haskell-9.2-genvalidity-sydtest
  (package
    (name "haskell-9.2-genvalidity-sydtest")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest/genvalidity-sydtest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11v66s8srcfigb4jkvz7nm0ynczg8mdslw4vn98qyv2j85sp6l45"))))
    (properties `((upstream-name . "genvalidity-sydtest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis
     "Standard properties for functions on `Validity` types for the sydtest framework")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-sydtest

(define-public haskell-9.2-ghcid
  (package
    (name "haskell-9.2-ghcid")
    (version "0.8.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ghcid/ghcid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yqc1pkfajnr56gnh43sbj50r7c3r41b2jfz07ivgl6phi4frjbq"))))
    (properties `((upstream-name . "ghcid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0s4z20cbap0bymljkdbw6lr3dchi34yvy9j27f4xjwx93dhnrmkk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-terminal-size)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/ghcid#readme")
    (synopsis "GHCi based bare bones IDE")
    (description
     "Either \\\"GHCi as a daemon\\\" or \\\"GHC + a bit of an IDE\\\". A very simple Haskell development tool which shows you the errors in your project and updates them whenever you save. Run @@ghcid --topmost --command=ghci@@, where @@--topmost@@ makes the window on top of all others (Windows only) and @@--command@@ is the command to start GHCi on your project (defaults to @@ghci@@ if you have a @@.ghci@@ file, or else to @@cabal repl@@).")
    (license license:bsd-3)))

haskell-9.2-ghcid

(define-public haskell-9.2-gi-cairo-connector
  (package
    (name "haskell-9.2-gi-cairo-connector")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo-connector/gi-cairo-connector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jkca1x0dlyfwyywn6gmsnxhyad3j7vfwa0c4hpvx8k8m350dn3c"))))
    (properties `((upstream-name . "gi-cairo-connector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-gi-cairo-render)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cohomology/gi-cairo-render")
    (synopsis "GI friendly Binding to the Cairo library.")
    (description
     "This library contains glue code used to interconnect Haskell GI and Cairo")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-cairo-connector

(define-public haskell-9.2-gi-gmodule
  (package
    (name "haskell-9.2-gi-gmodule")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gmodule/gi-gmodule-" version
                    ".tar.gz"))
              (sha256
               (base32
                "043n3nyxy29chzc7xzhinp40yxazlikqcjdbm3pvh344jv7m5xjx"))))
    (properties `((upstream-name . "gi-gmodule") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GModule bindings")
    (description "Bindings for GModule, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-gmodule

(define-public haskell-9.2-gi-gobject
  (package
    (name "haskell-9.2-gi-gobject")
    (version "2.0.28")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gobject/gi-gobject-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0av574yvvbky1pm187fmjkmy52lssvv74zad30818qbkzpkwfdx8"))))
    (properties `((upstream-name . "gi-gobject") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GObject bindings")
    (description "Bindings for GObject, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-gobject

(define-public haskell-9.2-gotyno-hs
  (package
    (name "haskell-9.2-gotyno-hs")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gotyno-hs/gotyno-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06iyihagbsxddn2lq26razb5q6j3g4mwb134lb62caw3r7iyxfd7"))))
    (properties `((upstream-name . "gotyno-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-rio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/gotyno-hs")
    (synopsis
     "A type definition compiler supporting multiple output languages.")
    (description
     "Compiles type definitions into F#, TypeScript and Python, with validators, decoders and encoders.")
    (license license:bsd-2)))

haskell-9.2-gotyno-hs

(define-public haskell-9.2-hal
  (package
    (name "haskell-9.2-hal")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hal/hal-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1gdd0nbwm6hma57nw1y1gd0cc6z9zhhmim6l5miql2j6dk909mdv"))))
    (properties `((upstream-name . "hal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-conduit-extra)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Nike-inc/hal#readme")
    (synopsis
     "A runtime environment for Haskell applications running on AWS Lambda.")
    (description
     "This library uniquely supports different types of AWS Lambda Handlers for your
needs/comfort with advanced Haskell. Instead of exposing a single function
that constructs a Lambda, this library exposes many.")
    (license license:bsd-3)))

haskell-9.2-hal

(define-public haskell-9.2-hpack-dhall
  (package
    (name "haskell-9.2-hpack-dhall")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpack-dhall/hpack-dhall-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hwq3painl4ix7pldkzi5a8zakh9f67kcyabfbdky8b49dc5703r"))))
    (properties `((upstream-name . "hpack-dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-dhall)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-dhall-json)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hpack)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cabalism/hpack-dhall#readme")
    (synopsis "hpack's dhalling")
    (description
     "Use hpack phrasing in dhall to write cabal files.

There are two main reasons why you'd use hpack-dhall, convenience and safety.

Get the convenience of hpack. Don't bother to state what can be inferred or
defaulted, easing the burden of completing a package description by hand.  For
example `other-modules` can be inferred by taking the set difference between
modules on disk and the set of `exposed-modules`.

Get the safety of dhall's programmable configuration: typed fields, safe imports
and functions.")
    (license license:bsd-3)))

haskell-9.2-hpack-dhall

(define-public haskell-9.2-hslua-module-doclayout
  (package
    (name "haskell-9.2-hslua-module-doclayout")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-doclayout/hslua-module-doclayout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14sqffgcrhhrv7k4j8b1l41mn5gqlp8yzggd727746kjl0n56hqq"))))
    (properties `((upstream-name . "hslua-module-doclayout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-doclayout)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hslua)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua-module-doclayout")
    (synopsis "Lua module wrapping Text.DocLayout.")
    (description "Lua module wrapping @@Text.DocLayout@@.")
    (license license:expat)))

haskell-9.2-hslua-module-doclayout

(define-public haskell-9.2-hw-fingertree-strict
  (package
    (name "haskell-9.2-hw-fingertree-strict")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
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

haskell-9.2-hw-fingertree-strict

(define-public haskell-9.2-hw-int
  (package
    (name "haskell-9.2-hw-int")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-int#readme")
    (synopsis "Additional facilities for Integers")
    (description "Additional faciltiies for Integers. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-int

(define-public haskell-9.2-hw-mquery
  (package
    (name "haskell-9.2-hw-mquery")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-mquery#readme")
    (synopsis "Monadic query DSL")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-mquery

(define-public haskell-9.2-hw-prim
  (package
    (name "haskell-9.2-hw-prim")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-mmap)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-prim#readme")
    (synopsis "Primitive functions and data types")
    (description "Primitive functions and data types.")
    (license license:bsd-3)))

haskell-9.2-hw-prim

(define-public haskell-9.2-hyperloglog
  (package
    (name "haskell-9.2-hyperloglog")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-approximate)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-bits)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cereal-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-cpu)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-hyperloglog

(define-public haskell-9.2-ihaskell-hvega
  (package
    (name "haskell-9.2-ihaskell-hvega")
    (version "0.5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ihaskell-hvega/ihaskell-hvega-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12bznrjb3qgy9di9p3faymaba8wsbx7v9gp5zxifnad6aqwlblf8"))))
    (properties `((upstream-name . "ihaskell-hvega") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hvega)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-ihaskell)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/DougBurke/hvega")
    (synopsis "IHaskell display instance for hvega types.")
    (description "Support Vega-Lite visualizations in IHaskell notebooks.")
    (license license:bsd-3)))

haskell-9.2-ihaskell-hvega

(define-public haskell-9.2-ip
  (package
    (name "haskell-9.2-ip")
    (version "1.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ip/ip-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "11ckl62w9005pww467ydx38imadzwrn36ww21c535x3jhhbic3a9"))))
    (properties `((upstream-name . "ip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0j9zs161awzvcbnc72prs6byzcy65gqg3q2m3hsi70hxbvpkm0zk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-bytebuild)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-byteslice)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-bytesmith)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-natural-arithmetic)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-wide-word)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-word-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/haskell-ip#readme")
    (synopsis "Library for IP and MAC addresses")
    (description
     "The `ip` package provides types and functions for dealing with
IPv4 addresses, CIDR blocks, and MAC addresses. We provide instances
for typeclasses found in commonly used packages like `aeson`, `vector`,
and `hashable`. We also provide `Parser`s for working with attoparsec.

Notably, this package does not overload functions by introducing any
typeclasses of its own. Neither does it prefix functions with the name
of the type that they work on. Instead, functions of the same name are
exported by several different modules, and it is expected that end users
disambiguate by importing these modules qualified.

The only module intended to be imported unqualified is `Net.Types`. The
types in this package should not conflict with the types in
any other commonly used packages.

The following packages are intended to be used with this package:

* `yesod-ip`: Provides orphan instances needed to work with yesod and
persistent. Also, provides a `yesod-form` helper.")
    (license license:bsd-3)))

haskell-9.2-ip

(define-public haskell-9.2-ixset-typed-binary-instance
  (package
    (name "haskell-9.2-ixset-typed-binary-instance")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed-binary-instance/ixset-typed-binary-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jgqc1ys5pvfkha8pyddz5f01qsmv9a83xw0q75njk8zhqajlyvx"))))
    (properties `((upstream-name . "ixset-typed-binary-instance")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-ixset-typed)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/ixset-typed-binary-instance")
    (synopsis "Binary instance for ixset-typed.")
    (description
     "Please see the README on GitHub at <https://gitlab.com/homotopic-tech/ixset-typed-binary-instance/README.md>")
    (license license:expat)))

haskell-9.2-ixset-typed-binary-instance

(define-public haskell-9.2-ixset-typed-conversions
  (package
    (name "haskell-9.2-ixset-typed-conversions")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed-conversions/ixset-typed-conversions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15hxis8m60kfxi65k4sq2wica65whh8l1axw8jkx37yh1fys520x"))))
    (properties `((upstream-name . "ixset-typed-conversions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-ixset-typed)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-zipper-extra)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ixset-typed-conversions")
    (synopsis "Conversions from ixset-typed to other containers.")
    (description
     "Conversions from ixset-typed to other containers; HashMaps, zippers.")
    (license license:expat)))

haskell-9.2-ixset-typed-conversions

(define-public haskell-9.2-ixset-typed-hashable-instance
  (package
    (name "haskell-9.2-ixset-typed-hashable-instance")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed-hashable-instance/ixset-typed-hashable-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bwajqlj1kpis2616lrmcymmag66fkmdrsrj0r3kf8j6090zxmyv"))))
    (properties `((upstream-name . "ixset-typed-hashable-instance")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-ixset-typed)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/ixset-typed-hashable-instance")
    (synopsis "Hashable instance for ixset-typed.")
    (description
     "Please see the README on GitHub at <https://github.com/githubuser/ixset-typed-hashable-instance#readme>")
    (license license:expat)))

haskell-9.2-ixset-typed-hashable-instance

(define-public haskell-9.2-linear-base
  (package
    (name "haskell-9.2-linear-base")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/linear-base/linear-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b1hs26a9av8vml10kw1jjsliwwhj3h2cmfnkiqbrqpm47yxmr35"))))
    (properties `((upstream-name . "linear-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-inspection-testing)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-linear-generics)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-storable-tuple)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-inspection-testing)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tweag/linear-base#README")
    (synopsis "Standard library for linear types.")
    (description "Please see README.md.")
    (license license:expat)))

haskell-9.2-linear-base

(define-public haskell-9.2-loc
  (package
    (name "haskell-9.2-loc")
    (version "0.1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/loc/loc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "12bsbjl0808dfcshz38iih3cl3768zix23adznnq821ffxsxfiiw"))))
    (properties `((upstream-name . "loc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hspec-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/loc")
    (synopsis "Line and column positions and ranges in text files")
    (description "The package name /loc/ stands for “location” and is
also an allusion to the acronym for “lines of code”.

The @@Loc@@ type represents a caret position in a text file,
the @@Span@@ type is a nonempty range between two @@Loc@@s,
and the @@Area@@ type is a set of non-touching @@Span@@s.")
    (license license:asl2.0)))

haskell-9.2-loc

(define-public haskell-9.2-morpheus-graphql-server
  (package
    (name "haskell-9.2-morpheus-graphql-server")
    (version "0.27.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-server/morpheus-graphql-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cd6qczbb5cm12xv181pzq6d62nv7nf4w1yd3gmhzjfrks62lhwy"))))
    (properties `((upstream-name . "morpheus-graphql-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-morpheus-graphql-app)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-morpheus-graphql-subscriptions)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-morpheus-graphql-tests)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-9.2-morpheus-graphql-server

(define-public haskell-9.2-nonempty-containers
  (package
    (name "haskell-9.2-nonempty-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hedgehog-fn)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-invariant)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-nonempty-vector)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-nonempty-containers

(define-public haskell-9.2-pandoc-lua-marshal
  (package
    (name "haskell-9.2-pandoc-lua-marshal")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-lua-marshal/pandoc-lua-marshal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pn9b7f8dln049k76zb4znscl01qms751y1ln4j8irs50rc1b55j"))))
    (properties `((upstream-name . "pandoc-lua-marshal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hslua)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-lua)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pandoc-types)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-tasty-lua)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pandoc/pandoc-lua-marshal")
    (synopsis "Use pandoc types in Lua")
    (description "This package provides functions to marshal and unmarshal
pandoc document types to and from Lua.

The values of most types are pushed to pandoc as \"userdata\"
objects that wrap a stable pointer to the Haskell value;
these objects come with methods to access and modify their
properties.

Sequences are pushed as normal Lua tables, but are
augmented with convenience functions.")
    (license license:expat)))

haskell-9.2-pandoc-lua-marshal

(define-public haskell-9.2-pretty-diff
  (package
    (name "haskell-9.2-pretty-diff")
    (version "0.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-diff/pretty-diff-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qzsq9dm95f6yjryl2675rbyx178zxl562x0y9i1py2rx4k8z7gl"))))
    (properties `((upstream-name . "pretty-diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-test-reporter)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/stoeffel/pretty-diff#readme")
    (synopsis "Pretty printing a diff of two values.")
    (description
     "Please see the README at <https://github.com/stoeffel/pretty-diff>.")
    (license license:bsd-3)))

haskell-9.2-pretty-diff

(define-public haskell-9.2-ptr-poker
  (package
    (name "haskell-9.2-ptr-poker")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-numeric-limits)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/ptr-poker")
    (synopsis "Pointer poking action construction and composition toolkit")
    (description "")
    (license license:expat)))

haskell-9.2-ptr-poker

(define-public haskell-9.2-registry
  (package
    (name "haskell-9.2-registry")
    (version "0.3.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/registry/registry-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x5ilikd9xxdhkzvvm5mklxrzx8vbyzzji4rqnw8lsgrxpzwca9d"))))
    (properties `((upstream-name . "registry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-generic-lens)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-io-memoize)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-multimap)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-universum)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/registry")
    (synopsis "data structure for assembling components")
    (description
     "This library provides a \"Registry\" which is a data structure containing a list of functions and values representing dependencies in a directed acyclic graph. A `make` function can then be used to create a value of a specific type out of the registry.
You can start with the [README](https://github.com/etorreborre/registry/blob/master/README.md) for a full description of the library.")
    (license license:expat)))

haskell-9.2-registry

(define-public haskell-9.2-retry
  (package
    (name "haskell-9.2-retry")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mtl-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
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

haskell-9.2-retry

(define-public haskell-9.2-rhbzquery-notests
  (package
    (name "haskell-9.2-rhbzquery-notests")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-config-ini)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-email-validate)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-simple-cmd)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/juhp/rhbzquery")
    (synopsis "Bugzilla query tool")
    (description
     "A CLI tool for creating bugzilla queries for bugzilla.redhat.com.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-rhbzquery-notests

(define-public haskell-9.2-rng-utils
  (package
    (name "haskell-9.2-rng-utils")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://bitbucket.org/soostone/rng-utils")
    (synopsis "RNG within an IORef for convenient concurrent use")
    (description
     "rng-utils aims to make it easy to generate an RNG and safely use it concurrently.")
    (license license:bsd-3)))

haskell-9.2-rng-utils

(define-public haskell-9.2-servant-auth-docs
  (package
    (name "haskell-9.2-servant-auth-docs")
    (version "0.2.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-docs/servant-auth-docs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j1ynnrb6plrhpb2vzs2p7a9jb41llp0j1jwgap7hjhkwhyc7wxd"))))
    (properties `((upstream-name . "servant-auth-docs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("11" "1xk6j4l5jccwzk0xkiv6ny6w33g92wziacqvqgc5rvy2mzyff4fl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-servant-auth)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-servant-docs)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-docs/servant-auth compatibility")
    (description
     "This package provides instances that allow generating docs from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-9.2-servant-auth-docs

(define-public haskell-9.2-servant-auth-swagger
  (package
    (name "haskell-9.2-servant-auth-swagger")
    (version "0.2.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-swagger/servant-auth-swagger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "029nvb4wxwl98ah26bgcq1b7izrnvssxwn1682liimvsh4a8bady"))))
    (properties `((upstream-name . "servant-auth-swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "19hp58cf3avq3jnzhspsxkb7vml8ch3cw7dq8qy59xp1wgci6v5m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-servant-auth)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-servant-swagger)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-swagger2)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-swagger/servant-auth compatibility")
    (description
     "This package provides instances that allow generating swagger2 schemas from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-9.2-servant-auth-swagger

(define-public haskell-9.2-skylighting
  (package
    (name "haskell-9.2-skylighting")
    (version "0.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting/skylighting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dh4k39ddqca5px2d06ni8n9x3mifvkwd5i16077l472dwjcs879"))))
    (properties `((upstream-name . "skylighting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-skylighting-core)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-skylighting-format-ansi)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-skylighting-format-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-skylighting-format-context)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-skylighting-format-latex)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "syntax highlighting library")
    (description "Skylighting is a syntax highlighting library with
support for over one hundred languages.  It derives
its tokenizers from XML syntax definitions used
by KDE's KSyntaxHighlighting framework, so any
syntax supported by that framework can be added.
An optional command-line program is provided.
Skylighting is intended to be the successor to
highlighting-kate.
This package provides generated syntax modules
based on the KDE XML definitions provided by the
@@skylighting-core@@ package. As a result this
package is licensed under the GPL.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-skylighting

(define-public haskell-9.2-status-notifier-item
  (package
    (name "haskell-9.2-status-notifier-item")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/status-notifier-item/status-notifier-item-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x3zqa2b9vl5mirfbh2bmyali47jpfcqsw4xxgbmsgz9jiffpda9"))))
    (properties `((upstream-name . "status-notifier-item") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-byte-order)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bytestring-to-vector)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-dbus)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-dbus-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/status-notifier-item#readme")
    (synopsis
     "A wrapper over the StatusNotifierItem/libappindicator dbus specification")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/status-notifier-item#readme>")
    (license license:bsd-3)))

haskell-9.2-status-notifier-item

(define-public haskell-9.2-strict-list
  (package
    (name "haskell-9.2-strict-list")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/strict-list")
    (synopsis "Strict linked list")
    (description
     "Implementation of strict linked list with care taken about stack.")
    (license license:expat)))

haskell-9.2-strict-list

(define-public haskell-9.2-sydtest-aeson
  (package
    (name "haskell-9.2-sydtest-aeson")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-aeson/sydtest-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kidxlaw8snyzl0nq2vynjz179blh03cvg2qdjr5j521cjxxmwf8"))))
    (properties `((upstream-name . "sydtest-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An aeson companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-aeson

(define-public haskell-9.2-sydtest-autodocodec
  (package
    (name "haskell-9.2-sydtest-autodocodec")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-autodocodec/sydtest-autodocodec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11505pn0wqlny3nxc2z406fryir5isdg1yc0hx10xcyk6gsbm2m3"))))
    (properties `((upstream-name . "sydtest-autodocodec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-autodocodec-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An autodocodec companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-autodocodec

(define-public haskell-9.2-sydtest-hedgehog
  (package
    (name "haskell-9.2-sydtest-hedgehog")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-hedgehog/sydtest-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12yqhz927x2nzca3xg824a0rc3icz8hs088rci530s30wc7qpvlj"))))
    (properties `((upstream-name . "sydtest-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A Hedgehog companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-hedgehog

(define-public haskell-9.2-sydtest-hspec
  (package
    (name "haskell-9.2-sydtest-hspec")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-hspec/sydtest-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02vq4s5r87phkvzrzf13gg1796b7f9w7sn0kmdd7sqqx7ap20ysp"))))
    (properties `((upstream-name . "sydtest-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An Hspec companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-hspec

(define-public haskell-9.2-sydtest-process
  (package
    (name "haskell-9.2-sydtest-process")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-process/sydtest-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1afjwxq7bq4q0g5qznffxfn20ikxxmr7yywiksfyfnyh4n0a1zsf"))))
    (properties `((upstream-name . "sydtest-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A typed-process companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-process

(define-public haskell-9.2-sydtest-typed-process
  (package
    (name "haskell-9.2-sydtest-typed-process")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-typed-process/sydtest-typed-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j5x2liimaxnd1p7bhkd1ic9vccxdph431rq3dmzl3f440qb3rws"))))
    (properties `((upstream-name . "sydtest-typed-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "A typed-process companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-typed-process

(define-public haskell-9.2-th-lego
  (package
    (name "haskell-9.2-th-lego")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-template-haskell-compat-v0208)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/th-lego")
    (synopsis "Template Haskell construction utilities")
    (description "A collection of templates for the typical patterns appearing
in construction of Template Haskell AST.
E.g., typical instance declaration templates,
lambda expressions for accessing members of data-types.")
    (license license:expat)))

haskell-9.2-th-lego

(define-public haskell-9.2-uri-bytestring
  (package
    (name "haskell-9.2-uri-bytestring")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Soostone/uri-bytestring")
    (synopsis "Haskell URI parsing as ByteStrings")
    (description
     "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.")
    (license license:bsd-3)))

haskell-9.2-uri-bytestring

(define-public haskell-9.2-vector-builder
  (package
    (name "haskell-9.2-vector-builder")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-vector-builder

(define-public haskell-9.2-vector-circular
  (package
    (name "haskell-9.2-vector-circular")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-circular/vector-circular-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18aijs6yn01bv3zal7l0wsck0hd54bbhckjc67cvr8wmpqdk2xxw"))))
    (properties `((upstream-name . "vector-circular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hedgehog-classes)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-nonempty-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/vector-circular")
    (synopsis "circular vectors")
    (description
     "nonempty circular vector data structure library. indexing is always total")
    (license license:expat)))

haskell-9.2-vector-circular

(define-public haskell-9.2-webgear-openapi
  (package
    (name "haskell-9.2-webgear-openapi")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webgear-openapi/webgear-openapi-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wqgpq77ak4n0phaaq6mlr06krf9xxv4q26h7v8zni0422y01f4i"))))
    (properties `((upstream-name . "webgear-openapi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-arrows)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-openapi3)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-webgear-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-webgear/webgear#readme")
    (synopsis "Composable, type-safe library to build HTTP API servers")
    (description
     "WebGear is a library to for building composable, type-safe HTTP API servers.
This package can be used to generate OpenAPI specifications from WebGear
applications.")
    (license license:mpl2.0)))

haskell-9.2-webgear-openapi

(define-public haskell-9.2-webgear-server
  (package
    (name "haskell-9.2-webgear-server")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webgear-server/webgear-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "106nfvr9saqpl3ngb3216wfig6fx90yl90vsxk9qjnkzi0dk041y"))))
    (properties `((upstream-name . "webgear-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-arrows)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-bytestring-conversion)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-jose)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-monad-time)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-webgear-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-webgear/webgear#readme")
    (synopsis "Composable, type-safe library to build HTTP API servers")
    (description
     "WebGear is a library to for building composable, type-safe HTTP API servers.
WebGear focuses on good documentation and usability. See the documentation
of WebGear module to get started.")
    (license license:mpl2.0)))

haskell-9.2-webgear-server

(define-public haskell-9.2-with-utf8
  (package
    (name "haskell-9.2-with-utf8")
    (version "1.0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/with-utf8/with-utf8-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ddhnnp48ndngwd81agxajig533r39wy31l49znpjqy9d1ccw1q7"))))
    (properties `((upstream-name . "with-utf8") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-th-env)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/serokell/haskell-with-utf8#readme")
    (synopsis "Get your IO right on the first try")
    (description
     "This minimalistic library helps you navigate the world of text encodings
avoiding @@invalid argument (invalid byte sequence)@@
and @@invalid argument (invalid character)@@ in runtime.

See <https://serokell.io/blog/haskell-with-utf8 this blog post> for why this
library exists and what exactly it does.

The two most important modules are:

* \"Main.Utf8\"
* \"System.IO.Utf8\"")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-with-utf8

(define-public haskell-9.2-xlsx-tabular
  (package
    (name "haskell-9.2-xlsx-tabular")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xlsx-tabular/xlsx-tabular-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgxs1a0prnq6ljvv1g3rs39565w4609hv3ckq0gk0fz85yqkpa8"))))
    (properties `((upstream-name . "xlsx-tabular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage017) haskell-9.2-xlsx)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages xml) expat)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/kkazuo/xlsx-tabular")
    (synopsis "Xlsx table cell value extraction utility")
    (description "
Convenience utility to read xlsx tabular cells.

You can extract the values from xlsx files
table rows to JSON format by the heuristics or
your custom function.")
    (license license:bsd-3)))

haskell-9.2-xlsx-tabular

