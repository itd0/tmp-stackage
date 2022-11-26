;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage020)
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
(define-public haskell-8.6-LambdaHack
  (package
    (name "haskell-8.6-LambdaHack")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-assert-failure)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-enummapset)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-ghc-compact)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-hsini)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-keys)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-miniutter)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-sdl2)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-sdl2-ttf)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
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

haskell-8.6-LambdaHack

(define-public haskell-8.6-SVGFonts
  (package
    (name "haskell-8.6-SVGFonts")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-svg)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-cereal-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-diagrams-core)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
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

haskell-8.6-SVGFonts

(define-public haskell-8.6-amqp
  (package
    (name "haskell-8.6-amqp")
    (version "0.18.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/amqp/amqp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cyzazl3hz5yd2i220b4g8xs0fm47xqlwyvgarxbnn5gnrm8ys21"))))
    (properties `((upstream-name . "amqp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/hreinhardt/amqp")
    (synopsis "Client library for AMQP servers (currently only RabbitMQ)")
    (description "Client library for AMQP servers (currently only RabbitMQ)")
    (license license:bsd-3)))

haskell-8.6-amqp

(define-public haskell-8.6-apecs-gloss
  (package
    (name "haskell-8.6-apecs-gloss")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-apecs)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-apecs-physics)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-gloss)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://github.com/jonascarpay/apecs/apecs-gloss")
    (synopsis "Simple gloss renderer for apecs")
    (description "Simple 2D gloss-based rendering for apecs.
Intended for prototyping.")
    (license license:bsd-3)))

haskell-8.6-apecs-gloss

(define-public haskell-8.6-asciidiagram
  (package
    (name "haskell-8.6-asciidiagram")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-FontyFruity)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-pandoc-types)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-rasterific-svg)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-svg-tree)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-asciidiagram

(define-public haskell-8.6-aur
  (package
    (name "haskell-8.6-aur")
    (version "6.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aur/aur-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "00h5v3b4is5jc11x85cjzq25lsqrlhidibsyn847bl0cpn9292d2"))))
    (properties `((upstream-name . "aur") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/aurapm/aura")
    (synopsis "Access metadata from the Arch Linux User Repository.")
    (description
     "Access package information from Arch Linux's AUR via its RPC interface. The
main exposed functions reflect those of the RPC. `info` gets metadata for
one package. `search` gets limited metadata for packages that match a given
regex. By default this library supports version 5 of the RPC, and hence
version 4.2+ of the AUR.")
    (license license:gpl3)))

haskell-8.6-aur

(define-public haskell-8.6-auto-update
  (package
    (name "haskell-8.6-auto-update")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/auto-update/auto-update-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i36xc2i34aync8271x3pv515l3zb53i518dybn8ghqkhzf27q7l"))))
    (properties `((upstream-name . "auto-update") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-retry)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Efficiently run periodic, on-demand actions")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/auto-update>.")
    (license license:expat)))

haskell-8.6-auto-update

(define-public haskell-8.6-classy-prelude-conduit
  (package
    (name "haskell-8.6-classy-prelude-conduit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-classy-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "classy-prelude together with conduit functions")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-conduit>")
    (license license:expat)))

haskell-8.6-classy-prelude-conduit

(define-public haskell-8.6-diagrams-contrib
  (package
    (name "haskell-8.6-diagrams-contrib")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-circle-packing)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cubicbezier)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-diagrams-core)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-diagrams-solve)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-force-layout)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-mfsolve)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-monoid-extras)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mtl-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://diagrams.github.io/")
    (synopsis "Collection of user contributions to diagrams EDSL")
    (description "A collection of user contributions for diagrams,
an embedded domain-specific language for generation
of vector graphics.")
    (license license:bsd-3)))

haskell-8.6-diagrams-contrib

(define-public haskell-8.6-diagrams-postscript
  (package
    (name "haskell-8.6-diagrams-postscript")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-postscript/diagrams-postscript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "171c53msr2x8da87fghl7jikbmrwy7gdxwhdviixc2y3k4fijn57"))))
    (properties `((upstream-name . "diagrams-postscript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0s6z3kaj1dm5kifaydnd2nx97g5qbc6jjqy3wn4dwa9rm7w49753")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-diagrams-core)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-monoid-extras)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-statestack)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://projects.haskell.org/diagrams/")
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

haskell-8.6-diagrams-postscript

(define-public haskell-8.6-diagrams-rasterific
  (package
    (name "haskell-8.6-diagrams-rasterific")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-FontyFruity)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-Rasterific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-diagrams-core)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://projects.haskell.org/diagrams/")
    (synopsis "Rasterific backend for diagrams.")
    (description "A full-featured backend for rendering
diagrams using the Rasterific rendering engine.")
    (license license:bsd-3)))

haskell-8.6-diagrams-rasterific

(define-public haskell-8.6-diagrams-svg
  (package
    (name "haskell-8.6-diagrams-svg")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-diagrams-core)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-monoid-extras)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-svg-builder)))
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

haskell-8.6-diagrams-svg

(define-public haskell-8.6-functor-combinators
  (package
    (name "haskell-8.6-functor-combinators")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/functor-combinators/functor-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bs1xqlndbzi91z9048clmgmgkjyyrkgcmz6s864villy0s9h90c"))))
    (properties `((upstream-name . "functor-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dependent-sum)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-deriving-compat)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-natural-transformation)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-nonempty-containers)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-pointed)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-these)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-trivial-constraint)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-vinyl)))
    (home-page "https://github.com/mstksg/functor-combinators#readme")
    (synopsis "Tools for functor combinator-based program design")
    (description
     "Tools for working with /functor combinators/: types that take functors (or
other indexed types) and returns a new functor that \"enhances\" or \"mixes\"
them in some way.  In the process, you can design featureful programs by
composing smaller \"primitives\" using basic unversal combinators.

The main entry point is \"Data.Functor.Combinators\", but more fine-grained
functionality and extra combinators (some of them re-implementations for
compatibility) are available in other modules as well.

This library does not define new functor combinators for the most part,
but rather re-exports them from different parts of the Haskell ecosystem
and provides a uniform interface.

See the README for a quick overview, and also
<https://blog.jle.im/entry/functor-combinatorpedia.html> for an in-depth
dive into the motivation behind functor combinator-driven development,
examples of the functor combinators in this library, and details about how
to use these abstractions!")
    (license license:bsd-3)))

haskell-8.6-functor-combinators

(define-public haskell-8.6-gi-gobject
  (package
    (name "haskell-8.6-gi-gobject")
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
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-gi-glib)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-haskell-gi)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GObject bindings")
    (description "Bindings for GObject, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-gi-gobject

(define-public haskell-8.6-hOpenPGP
  (package
    (name "haskell-8.6-hOpenPGP")
    (version "2.8.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hOpenPGP/hOpenPGP-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d5cmgj3rg8snc2b5jn9h7hb83j2hhf0c9shiiyrpr8rrl4hx2mj"))))
    (properties `((upstream-name . "hOpenPGP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-binary-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bzlib)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-incremental-parser)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-ixset-typed)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-nettle)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-newtype)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-openpgp-asciiarmor)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://salsa.debian.org/clint/hOpenPGP")
    (synopsis "native Haskell implementation of OpenPGP (RFC4880)")
    (description
     "native Haskell implementation of OpenPGP (RFC4880), plus Camellia (RFC5581), plus ECC (RFC6637)")
    (license license:expat)))

haskell-8.6-hOpenPGP

(define-public haskell-8.6-hasbolt
  (package
    (name "haskell-8.6-hasbolt")
    (version "0.1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasbolt/hasbolt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p2gffh6ym221sgrhlns209p6s0j3qbmam5a0b3s06663qgzvh5b"))))
    (properties `((upstream-name . "hasbolt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-hex)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/zmactep/hasbolt#readme")
    (synopsis "Haskell driver for Neo4j 3+ (BOLT protocol)")
    (description
     "Haskell driver for Neo4j 3+ (BOLT protocol).

The package covers:

-Data serialization and deserialization

-Nodes, relationships and paths support

-Cypher queries and responses

-Authentification

-TLS/SSL connection

The code was tested with neo4j versions 3.0 — 3.4 and GrapheneDB service")
    (license license:bsd-3)))

haskell-8.6-hasbolt

(define-public haskell-8.6-hasql-optparse-applicative
  (package
    (name "haskell-8.6-hasql-optparse-applicative")
    (version "0.3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-optparse-applicative/hasql-optparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q5ggbx3xlzq0lv6i6wac9zsf0x4k91cf1n5rg6q96wg90f0dxxq"))))
    (properties `((upstream-name . "hasql-optparse-applicative")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-hasql)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-hasql-pool)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/sannsyn/hasql-optparse-applicative ")
    (synopsis "\"optparse-applicative\" parsers for \"hasql\"")
    (description "")
    (license license:expat)))

haskell-8.6-hasql-optparse-applicative

(define-public haskell-8.6-http-client-tls
  (package
    (name "haskell-8.6-http-client-tls")
    (version "0.3.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-tls/http-client-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qj3pcpgbsfsc4m52dz35khhl4hf1i0nmcpa445z82d9567vy6j7"))))
    (properties `((upstream-name . "http-client-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0llb5k8mz1h6zyv1nd433wwgyjsw7n8x0b1fwib312iiws43sz69")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis
     "http-client backend using the connection package and tls library")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/http-client-tls>.")
    (license license:expat)))

haskell-8.6-http-client-tls

(define-public haskell-8.6-hw-bits
  (package
    (name "haskell-8.6-hw-bits")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-bits/hw-bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r4jinz2h5zkjap6f6qrjgfq6xhaz3j34fjwawv8qvgc4qgq7bil"))))
    (properties `((upstream-name . "hw-bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsse42")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-bitvec)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-hw-int)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hw-prim)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hw-string-parse)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-bits#readme")
    (synopsis "Bit manipulation")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-hw-bits

(define-public haskell-8.6-hyperloglog
  (package
    (name "haskell-8.6-hyperloglog")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-approximate)
                  (@ (gnu packages stackage ghc-8.6 stage010) haskell-8.6-bits)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-bytes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-cereal-vector)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-simple-reflect)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-siphash)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-hyperloglog

(define-public haskell-8.6-ipynb
  (package
    (name "haskell-8.6-ipynb")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ipynb/ipynb-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0daadhzil4q573mqb0rpvjzm0vpkzgzqcimw480qpvlh6rhppwj5"))))
    (properties `((upstream-name . "ipynb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-aeson-diff)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-microlens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/ipynb")
    (synopsis "Data structure for working with Jupyter notebooks (ipynb).")
    (description "ipynb defines a data structure for representing Jupyter
notebooks, along with ToJSON and FromJSON instances
for conversion to and from JSON .ipynb files.")
    (license license:bsd-3)))

haskell-8.6-ipynb

(define-public haskell-8.6-language-puppet
  (package
    (name "haskell-8.6-language-puppet")
    (version "1.4.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-puppet/language-puppet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07rv00rpxza9pg0jg19bh5pnk065mxadb7qcxw5i822ad22b85yn"))))
    (properties `((upstream-name . "language-puppet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-filecache)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-formatting)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hruby)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hslogger)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-operational)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-pcre-utils)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-strict-base-types)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages ruby) ruby-3.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://lpuppet.banquise.net/")
    (synopsis "Tools to parse and evaluate the Puppet DSL.")
    (description
     "This is a set of tools that is supposed to fill all your Puppet needs : syntax checks, catalog compilation, PuppetDB queries, simulation of complex interactions between nodes, Puppet master replacement, and more !")
    (license license:bsd-3)))

haskell-8.6-language-puppet

(define-public haskell-8.6-learn-physics
  (package
    (name "haskell-8.6-learn-physics")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-gloss)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-gnuplot)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-not-gloss)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-spatial-math)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-vector-space)))
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

haskell-8.6-learn-physics

(define-public haskell-8.6-libraft
  (package
    (name "haskell-8.6-libraft")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libraft/libraft-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13wk2dk0hs3ds5sa301v35i4g7frq1d7nj6c2957cbd9xwwyrksc"))))
    (properties `((upstream-name . "libraft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-atomic-write)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-concurrency)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-dejafu)
                  (@ (gnu packages stackage ghc-8.6 stage019) haskell-8.6-ekg)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ekg-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-monad-metrics)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-network-simple)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-postgresql-simple-url)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-repline)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-word8)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages databases) postgresql-14)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/adjoint-io/raft#readme")
    (synopsis "Raft consensus algorithm")
    (description
     "Please see the README on GitHub at <https://github.com/adjoint-io/raft#readme>")
    (license license:bsd-3)))

haskell-8.6-libraft

(define-public haskell-8.6-mmark-ext
  (package
    (name "haskell-8.6-mmark-ext")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mmark-ext/mmark-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s44vznj8hkk7iymnzczbglxnw1q84gmm8q9yiwh0jkiw4kdi91c"))))
    (properties `((upstream-name . "mmark-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "02i6577qislr0qvgmfamcixpxgb7bh68lg18n3vkq6xbnjxdpwpx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-ghc-syntax-highlighter)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-mmark)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-modern-uri)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-skylighting)))
    (home-page "https://github.com/mmark-md/mmark-ext")
    (synopsis "Commonly useful extensions for the MMark markdown processor")
    (description
     "Commonly useful extensions for the MMark markdown processor. Click on
\"Text.MMark.Extension.Common\" to get started.")
    (license license:bsd-3)))

haskell-8.6-mmark-ext

(define-public haskell-8.6-mysql-haskell
  (package
    (name "haskell-8.6-mysql-haskell")
    (version "0.8.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mysql-haskell/mysql-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lg9w9kwjnrx948r24flw0yjwxc8f93ygg45dl2djk4kfxdfnlaz"))))
    (properties `((upstream-name . "mysql-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-binary-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-textual)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-tcp-streams)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-wire-streams)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-word24)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/winterland1989/mysql-haskell")
    (synopsis "pure haskell MySQL driver")
    (description "pure haskell MySQL driver")
    (license license:bsd-3)))

haskell-8.6-mysql-haskell

(define-public haskell-8.6-network-conduit-tls
  (package
    (name "haskell-8.6-network-conduit-tls")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-conduit-tls/network-conduit-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zxdsf7isv3l2g58vsvi8iwlrgf85v7ksa8636kr6ffycbhn1zgc"))))
    (properties `((upstream-name . "network-conduit-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis "Create TLS-aware network code with conduits")
    (description "Uses the tls package for a pure-Haskell implementation.")
    (license license:expat)))

haskell-8.6-network-conduit-tls

(define-public haskell-8.6-pipes-fluid
  (package
    (name "haskell-8.6-pipes-fluid")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-fluid/pipes-fluid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01ig0czixnf5fypnfns2kzna676vd3mr2a52fb9f4cg7yy6qwp8h"))))
    (properties `((upstream-name . "pipes-fluid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-lifted-async)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mmorph)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-pipes-concurrency)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-pipes-misc)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-these)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/louispan/pipes-fluid#readme")
    (synopsis
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (description
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (license license:bsd-3)))

haskell-8.6-pipes-fluid

(define-public haskell-8.6-pipes-network-tls
  (package
    (name "haskell-8.6-pipes-network-tls")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-network-tls/pipes-network-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cmsnvgr3ffjxqn7bwj0ghqsxqd4hnhfdn4di6p8q6np2mmllsd2"))))
    (properties `((upstream-name . "pipes-network-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-network-simple)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-network-simple-tls)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-pipes-network)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-pipes-safe)
                  (@ (gnu packages stackage ghc-8.6 stage018) haskell-8.6-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/k0001/pipes-network-tls")
    (synopsis "TLS-secured network connections support for pipes.")
    (description
     "Use TLS-secured network connections together with the @@pipes@@ ecosystem.

This package is organized using the following namespaces:

* \"Pipes.Network.TCP.TLS\" exports pipes and utilities for using
TLS-secured TCP connections in a streaming fashion.

* \"Pipes.Network.TCP.TLS.Safe\" subsumes \"Pipes.Network.TCP.TLS\",
exporting pipes and functions that allow you to safely establish new
TCP connections within a pipeline using the @@pipes-safe@@ facilities.
You only need to use this module if you want to acquire and release
operating system resources within a pipeline.

See the @@changelog@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.6-pipes-network-tls

(define-public haskell-8.6-polysemy-zoo
  (package
    (name "haskell-8.6-polysemy-zoo")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-zoo/polysemy-zoo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06ggm3qinabwp5bha858anwdvw726wzl738wpgf1kd9mgivbv53w"))))
    (properties `((upstream-name . "polysemy-zoo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-hedis)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-polysemy)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-polysemy-plugin)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/isovector/polysemy-zoo#readme")
    (synopsis
     "Experimental, user-contributed effects and interpreters for polysemy")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/polysemy-zoo#readme>")
    (license license:bsd-3)))

haskell-8.6-polysemy-zoo

(define-public haskell-8.6-require
  (package
    (name "haskell-8.6-require")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/require/require-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0j6dsyqx637b5p8jmk5h4b0qham0m8m74c8b8y1dywm0c5daayca"))))
    (properties `((upstream-name . "require") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-inliterate)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-optparse-generic)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-universum)))
    (home-page "https://github.com/theam/require#readme")
    (synopsis "Scrap your qualified import clutter")
    (description "See <https://theam.github.io/require>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-require

(define-public haskell-8.6-servant-auth-swagger
  (package
    (name "haskell-8.6-servant-auth-swagger")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-servant-auth)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-swagger)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-swagger2)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-swagger/servant-auth compatibility")
    (description
     "This package provides instances that allow generating swagger2 schemas from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.6-servant-auth-swagger

(define-public haskell-8.6-servant-elm
  (package
    (name "haskell-8.6-servant-elm")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-elm/servant-elm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ajgb2srx2wlxn388wcijn7pb6lk48r84qvbbri7b77rbiav3ih2"))))
    (properties `((upstream-name . "servant-elm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-integration")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Diff)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-elm-bridge)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-interpolate)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mockery)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-servant-client)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-servant-foreign)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-typed-process)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/mattjbray/servant-elm#readme")
    (synopsis
     "Automatically derive Elm functions to query servant webservices.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-servant-elm

(define-public haskell-8.6-summoner
  (package
    (name "haskell-8.6-summoner")
    (version "1.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/summoner/summoner-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m08n2ip9rjx06mcwcv636ncicmpxcmhx82i3p4yc5vylibxr57s"))))
    (properties `((upstream-name . "summoner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1fy1d12rq8cqafyr0yvwsnslmmvdhpjigjv2ppvhs4ihgghrrij3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-noprelude)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-gitrev)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-relude)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-shellmet)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tomland)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tree-diff)))
    (home-page "https://github.com/kowainik/summoner")
    (synopsis
     "Tool for scaffolding fully configured batteries-included production-level Haskell projects.")
    (description
     "Tool for scaffolding fully configured batteries-included production-level Haskell projects.
See [README.md](https://github.com/kowainik/summoner#-summoner) for details.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.6-summoner

(define-public haskell-8.6-sv-cassava
  (package
    (name "haskell-8.6-sv-cassava")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sv-cassava/sv-cassava-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1c4wacp7k5sgr5fy73h9if98d08apmcs6p4p3f3fvpqkm8jmf71b"))))
    (properties `((upstream-name . "sv-cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "13414sn9rllq842bz0lv8qzdy6fxv72jbhmk64krrxq2xmw7wkhb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-sv-core)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-validation)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/qfpl/sv")
    (synopsis "Integration to use sv with cassava's parser")
    (description
     "This package provides functions allowing you to use cassava's parser
together with sv-core's decoding.")
    (license license:bsd-3)))

haskell-8.6-sv-cassava

(define-public haskell-8.6-tcp-streams-openssl
  (package
    (name "haskell-8.6-tcp-streams-openssl")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tcp-streams-openssl/tcp-streams-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zka2hmx0659f6w9xnh13i53pfwhky833ifwm63sr3rlly5miry3"))))
    (properties `((upstream-name . "tcp-streams-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-HsOpenSSL-x509-system)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-tcp-streams)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/didi-FP/tcp-streams")
    (synopsis "Tcp streams using openssl for tls support.")
    (description "Tcp streams using openssl for tls support.")
    (license license:bsd-3)))

haskell-8.6-tcp-streams-openssl

(define-public haskell-8.6-threepenny-gui
  (package
    (name "haskell-8.6-threepenny-gui")
    (version "0.8.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/threepenny-gui/threepenny-gui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08jmnyaskbfzwzyghs9ccmq6rdfxcgw0si7p6kc5ppi86gxdr5sl"))))
    (properties `((upstream-name . "threepenny-gui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-f-rebug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-snap-core)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-snap-server)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vault)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-websockets-snap)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://wiki.haskell.org/Threepenny-gui")
    (synopsis "GUI framework that uses the web browser as a display.")
    (description
     "Threepenny-GUI is a GUI framework that uses the web browser as a display.

It's very easy to install because everyone has a web browser installed.

A program written with Threepenny is essentially a small web server that
displays the user interface as a web page to any browser that connects to it.
You can freely manipulate the HTML DOM and handle JavaScript events
from your Haskell code.

Stability forecast: This is an experimental release! Send me your feedback!
Significant API changes are likely in future versions.

NOTE: This library contains examples, but they are not built by default.
To build and install the example, use the @@buildExamples@@ flag like this

@@cabal install threepenny-gui -fbuildExamples@@")
    (license license:bsd-3)))

haskell-8.6-threepenny-gui

(define-public haskell-8.6-wuss
  (package
    (name "haskell-8.6-wuss")
    (version "1.1.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wuss/wuss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i2q96mapld4mnhmy321qyzzizw3k3schhm473qrszdi1yxc837q"))))
    (properties `((upstream-name . "wuss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-connection)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tfausak/wuss#readme")
    (synopsis "Secure WebSocket (WSS) clients")
    (description
     "Wuss is a library that lets you easily create secure WebSocket clients over the WSS protocol. It is a small addition to <https://hackage.haskell.org/package/websockets the websockets package> and is adapted from existing solutions by <https://gist.github.com/jaspervdj/7198388 @@jaspervdj>, <https://gist.github.com/mpickering/f1b7ba3190a4bb5884f3 @@mpickering>, and <https://gist.github.com/elfenlaid/7b5c28065e67e4cf0767 @@elfenlaid>.")
    (license license:expat)))

haskell-8.6-wuss

(define-public haskell-8.6-xml-isogen
  (package
    (name "haskell-8.6-xml-isogen")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-isogen/xml-isogen-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05qa83jzmfqa5yhzgp3n3bxi0dvyy9xdfgq1ymi0wa6xnmxjv0cz"))))
    (properties `((upstream-name . "xml-isogen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage019)
                     haskell-8.6-dom-parser)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage018)
                     haskell-8.6-xml-conduit-writer)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/typeable/xml-isogen")
    (synopsis "Generate XML-isomorphic types")
    (description
     "TemplateHaskell generators for XML-isomorphic data types, including
instances for parsing and rendering. A convenient DSL to define those
types.
This is similar to XSD but is Haskell-specific.")
    (license license:expat)))

haskell-8.6-xml-isogen

