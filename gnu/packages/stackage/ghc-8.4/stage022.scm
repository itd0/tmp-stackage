;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage022)
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
(define-public haskell-8.4-LambdaHack
  (package
    (name "haskell-8.4-LambdaHack")
    (version "0.8.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/LambdaHack/LambdaHack-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v07c8v7l8yg111fysl735scsbsl9l6q3vzigy7rv05sjfl276ss"))))
    (properties `((upstream-name . "LambdaHack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-vty" "-f-curses" "-f-gtk" "-f-sdl" "-f-jsaddle" "-f-with_expensive_assertions" "-frelease")
       #:cabal-revision
       ("1" "0ai8mpssjslj34c13p30cvla6j5ldzxiyffa8dlfr17ll0asxsi5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-assert-failure)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-enummapset)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-hsini)
                  (@ (gnu packages stackage ghc-8.4 stage016) haskell-8.4-keys)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-miniutter)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-sdl2)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-sdl2-ttf)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-vector-binary-instances)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib-1.2.12)))
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
no position to guess their particular needs.")
    (license license:bsd-3)))

haskell-8.4-LambdaHack

(define-public haskell-8.4-MusicBrainz
  (package
    (name "haskell-8.4-MusicBrainz")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MusicBrainz/MusicBrainz-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mydq3bjf15ksfrh4lf947ka43i3978q58y2aij3aqd763v2jb16"))))
    (properties `((upstream-name . "MusicBrainz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://floss.scru.org/hMusicBrainz")
    (synopsis "interface to MusicBrainz XML2 and JSON web services")
    (description "interface to MusicBrainz XML2 and JSON web services")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-MusicBrainz

(define-public haskell-8.4-SVGFonts
  (package
    (name "haskell-8.4-SVGFonts")
    (version "1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/SVGFonts/SVGFonts-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k9ili7l9pp5a009jh55vigb917wdnsl6iaz0ggp6d4nw1jwsg6s"))))
    (properties `((upstream-name . "SVGFonts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1w687f4lk4l07wqgldhpg7ycid0fs099x8vrylcxqdgfrzmm04dg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-svg)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cereal-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-xml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/SVGFonts")
    (synopsis "Fonts from the SVG-Font format")
    (description
     "Native font support for the diagrams framework (<http://projects.haskell.org/diagrams/>). Note that this package can be used with any diagrams backend, not just the SVG backend.  The SVG-font format is easy to parse
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

haskell-8.4-SVGFonts

(define-public haskell-8.4-Spock
  (package
    (name "haskell-8.4-Spock")
    (version "0.13.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Spock/Spock-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l0sff6xq99hvcmr2fnsr2x6lbzcpynyjl7n21ycv0l9xgfs6wwa"))))
    (properties `((upstream-name . "Spock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1glpfh1w9zahfwi4nc7kbxd429ni9xwvx3cd880mi3zdixlz4ghn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-Spock-core)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-focus)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-hspec-wai)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hvect)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-list-t)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-reroute)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-stm-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description
     "This toolbox provides everything you need to get a quick start into web hacking with haskell:

* fast routing

* middleware

* json

* sessions

* cookies

* database helper

* csrf-protection

A tutorial is available at <http://www.spock.li/tutorial/ spock.li>")
    (license license:bsd-3)))

haskell-8.4-Spock

(define-public haskell-8.4-amazonka-core
  (package
    (name "haskell-8.4-amazonka-core")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-core/amazonka-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j9x17zhyxrg4ds5pdxfjdb4z7hpzn42cydx34j25h5d9avwbqdg"))))
    (properties `((upstream-name . "amazonka-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-old-locale")
       #:cabal-revision
       ("1" "1jfjn659cr5vldjb40il5dv8h3za06b3gqa52ihsz1znxq2f8r8k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Core data types and functionality for Amazonka libraries.")
    (description
     "Core data types, functionality and serialisation primitives for
Amazonka related Amazon Web Services SDKs.

The external interface of this library is stable with respect to the
downstream Amazonka libraries, only, and as such is not suitable
for use in non-Amazonka projects.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.4-amazonka-core

(define-public haskell-8.4-authenticate
  (package
    (name "haskell-8.4-authenticate")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/authenticate/authenticate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f1gjggfq114h3nrlzg2svm0j5ghp6n9zlgb3fnq2pgpzpdndm9z"))))
    (properties `((upstream-name . "authenticate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("2" "1jlp98agmnqf9rk0dy9gjv40xn3rnxk3cxymld10h092ydx8wnr0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-tagstream-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis "Authentication methods for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate>.")
    (license license:expat)))

haskell-8.4-authenticate

(define-public haskell-8.4-avwx
  (package
    (name "haskell-8.4-avwx")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/avwx/avwx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02pvh2i1f96k3pyrmdb3jv2ia7mcp8q5pw067psr8k2sw329qadl"))))
    (properties `((upstream-name . "avwx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://www.hcesperer.org/posts/2016-09-20-avwx.html")
    (synopsis "Parse aviation weather reports")
    (description "Parse aviation weather reports, currently METARs and TAFs")
    (license license:expat)))

haskell-8.4-avwx

(define-public haskell-8.4-bitcoin-api
  (package
    (name "haskell-8.4-bitcoin-api")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitcoin-api/bitcoin-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c1ydggik4k3vj93bqk53privyblkwhd32jizw25qk5j34axwy69"))))
    (properties `((upstream-name . "bitcoin-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base58string)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-bitcoin-block)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-bitcoin-script)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-bitcoin-tx)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-bitcoin-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hexstring)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-lens-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Provides access to the RPC API of Bitcoin Core")
    (description
     "The Bitcoin Core application provides an HTTP RPC interface for communication.
This library implements access to these functions. It builds on top of the
`bitcoin-tx` and `bitcoin-script`, and as such provides an extremely flexible
environment to create, manipulate and store transactions and custom scripts.")
    (license license:expat)))

haskell-8.4-bitcoin-api

(define-public haskell-8.4-cabal-install
  (package
    (name "haskell-8.4-cabal-install")
    (version "2.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-install/cabal-install-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nd3ch7qr4dpfxhgkcq2lnhvszx2kjgnn1kwb44vk9y5jgfs4mn8"))))
    (properties `((upstream-name . "cabal-install") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-native-dns" "-f-debug-expensive-assertions" "-f-debug-conflict-sets" "-f-debug-tracetree" "-f-lib" "-f-monolithic")
       #:cabal-revision
       ("1" "0f1svlhh4cpj3p5fs9bcjpv15qp291lnvlaxxcw7aib8a1gn3wim")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-echo)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-edit-distance)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hackage-security)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-tar)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.haskell.org/cabal/")
    (synopsis "The command-line interface for Cabal and Hackage.")
    (description
     "The \\'cabal\\' command-line program simplifies the process of managing
Haskell software by automating the fetching, configuration, compilation
and installation of Haskell libraries and programs.

This package only provides an executable and cannot be used as a
library (ignore the module listing below.)")
    (license license:bsd-3)))

haskell-8.4-cabal-install

(define-public haskell-8.4-cabal-rpm
  (package
    (name "haskell-8.4-cabal-rpm")
    (version "0.12.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-rpm/cabal-rpm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1k602v7v87w6xcd9a5m8n5grnjbkyn79rdi9azl7djna0rs129ns"))))
    (properties `((upstream-name . "cabal-rpm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-locale" "-fhttps")
       #:cabal-revision
       ("1" "0wfj9gcygm1c9fy86973ybs8ww8g6fn3l7f5v2kvs28204g8i18g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-simple-cmd)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/juhp/cabal-rpm")
    (synopsis "RPM packaging tool for Haskell Cabal-based packages")
    (description
     "This package provides a RPM packaging tool for Haskell Cabal-based packages.

cabal-rpm has commands to generate a RPM spec file and srpm for a package.
It can rpmbuild packages, yum/dnf install their dependencies, prep packages,
and install them. There are commands to list package dependencies and
missing dependencies. The diff command compares the current spec file
with a freshly generated one, the update command updates the spec file
to latest version from Stackage or Hackage, and the refresh command updates
the spec file to the current cabal-rpm packaging. It also handles Hackage
revisions of packages.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-cabal-rpm

(define-public haskell-8.4-cabal2nix
  (package
    (name "haskell-8.4-cabal2nix")
    (version "2.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal2nix/cabal2nix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10l1k8rilf032v6pchwhxaq53mr0d08h6xkllidc3c7wfkzcx7qj"))))
    (properties `((upstream-name . "cabal2nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-distribution-nixpkgs)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hackage-db)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hopenssl)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-hpack)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-language-nix)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-monad-par)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-tasty-golden)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nixos/cabal2nix#readme")
    (synopsis "Convert Cabal files into Nix build instructions.")
    (description
     "Convert Cabal files into Nix build instructions. Users of Nix can install the
latest version by running:

> nix-env -i cabal2nix")
    (license license:bsd-3)))

haskell-8.4-cabal2nix

(define-public haskell-8.4-cayley-client
  (package
    (name "haskell-8.4-cayley-client")
    (version "0.4.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cayley-client/cayley-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09hrq1k8s8w7rawyn78hjagirs3yrkp79nn7p5w1l8amp27k5cdi"))))
    (properties `((upstream-name . "cayley-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-lens-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/MichelBoucey/cayley-client")
    (synopsis "A Haskell client for the Cayley graph database")
    (description
     "cayley-client implements the RESTful API of the Cayley graph database.")
    (license license:bsd-3)))

haskell-8.4-cayley-client

(define-public haskell-8.4-cisco-spark-api
  (package
    (name "haskell-8.4-cisco-spark-api")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cisco-spark-api/cisco-spark-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i528c0lbk3k30q53p3qy01fq3mdpv0664q49lfvzcxkkjchwmbg"))))
    (properties `((upstream-name . "cisco-spark-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-bitset-word8)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "DEPRECATED in favor of webex-teams-api")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.4-cisco-spark-api

(define-public haskell-8.4-classy-prelude-conduit
  (package
    (name "haskell-8.4-classy-prelude-conduit")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude-conduit/classy-prelude-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "096466cyyxxmg3jpq705xjjc4r7v9b607hgbys8vybjlldkjbvrr"))))
    (properties `((upstream-name . "classy-prelude-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-classy-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "classy-prelude together with conduit functions")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude-conduit>")
    (license license:expat)))

haskell-8.4-classy-prelude-conduit

(define-public haskell-8.4-configuration-tools
  (package
    (name "haskell-8.4-configuration-tools")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configuration-tools/configuration-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ivfz3vjf81dnxqlzp4ij8snw0bfy227b26r3j1vvhc4n1qpxpz0"))))
    (properties `((upstream-name . "configuration-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fremote-configs" "-f-old-transformers")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-warp-tls)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-system)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-validation)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alephcloud/hs-configuration-tools")
    (synopsis "Tools for specifying and parsing configurations")
    (description
     "Tools for specifying and parsing configurations

This package provides a collection of utils on top of the packages
<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>,
<http://hackage.haskell.org/package/aeson aeson>, and
<http://hackage.haskell.org/package/yaml yaml> for configuring libraries and
applications in a convenient and composable way.

The main features are

1. configuration management through integration of command line option
parsing and configuration files and

2. a @@Setup.hs@@ file that generates a @@PkgInfo@@ module for each component
of a package that provides information about the package and the build.

Documentation on how to use this package can be found in the
<https://github.com/alephcloud/hs-configuration-tools/blob/master/README.md README>
and in the API documentation of the modules \"Configuration.Utils\" and
\"Configuration.Utils.Setup\".")
    (license license:expat)))

haskell-8.4-configuration-tools

(define-public haskell-8.4-cryptocompare
  (package
    (name "haskell-8.4-cryptocompare")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptocompare/cryptocompare-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cqnhg1ww79k3f6yisdir1fqiil13niv002p5s2kir9ks5phybni"))))
    (properties `((upstream-name . "cryptocompare") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-MissingH)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/aviaviavi/cryptocompare")
    (synopsis "Haskell wrapper for the cryptocompare API")
    (description
     "Haskell wrapper for the cryptocompare API, a source of information and pricing of different crypto-currencies.")
    (license license:expat)))

haskell-8.4-cryptocompare

(define-public haskell-8.4-curl-runnings
  (package
    (name "haskell-8.4-curl-runnings")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/curl-runnings/curl-runnings-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06dcxwhmzsinmay63m9wnsjsy1cgwyms64c0jicndnc3nhbl0824"))))
    (properties `((upstream-name . "curl-runnings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/aviaviavi/curl-runnings#readme")
    (synopsis "A framework for declaratively writing curl based API tests")
    (description
     "Please see the README on Github at <https://github.com/aviaviavi/curl-runnings#readme>")
    (license license:expat)))

haskell-8.4-curl-runnings

(define-public haskell-8.4-darcs
  (package
    (name "haskell-8.4-darcs")
    (version "2.14.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/darcs/darcs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dfd6bp2wy0aabxx7l93gi3dmq21j970cds424xdy1mgmjcvrpb1"))))
    (properties `((upstream-name . "darcs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcurl" "-f-pkgconfig" "-f-static" "-fterminfo" "-fthreaded" "-fexecutable" "-f-rts" "-foptimize" "-f-warn-as-error")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-FindBin)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-ordlist)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fgl)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-graphviz)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-html)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-mmap)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-regex-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-compat-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-sandi)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-shelly)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-tar)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-zip-archive)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://darcs.net/")
    (synopsis "a distributed, interactive, smart revision control system")
    (description "Darcs is a free, open source revision control
system. It is:

* Distributed: Every user has access to the full
command set, removing boundaries between server and
client or committer and non-committers.

* Interactive: Darcs is easy to learn and efficient to
use because it asks you questions in response to
simple commands, giving you choices in your work
flow. You can choose to record one change in a file,
while ignoring another. As you update from upstream,
you can review each patch name, even the full \"diff\"
for interesting patches.

* Smart: Originally developed by physicist David
Roundy, darcs is based on a unique algebra of
patches.

This smartness lets you respond to changing demands
in ways that would otherwise not be possible. Learn
more about spontaneous branches with darcs.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-darcs

(define-public haskell-8.4-datasets
  (package
    (name "haskell-8.4-datasets")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/datasets/datasets-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fpxk5wv12wyb1zr35mhinkbkmczgzny2903lszjn41n149kk4cs"))))
    (properties `((upstream-name . "datasets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1q96bxn8cjzr3pnygxz1s7bjk40l9kkxji9w4hxjbl3qh1m2i1sw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cassava)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stringsearch)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/diffusionkinetics/open/datasets")
    (synopsis "Classical data sets for statistics and machine learning")
    (description
     "Classical machine learning and statistics datasets from
the UCI Machine Learning Repository and other sources.

The datasets package defines two different kinds of datasets:

* small data sets which are directly (or indirectly with `file-embed`)
embedded in the package as pure values and do not require network or IO to download
the data set. This includes Iris, Anscombe and OldFaithful.

* other data sets which need to be fetched over the network with
`Numeric.Datasets.getDataset` and are cached in a local temporary directory.

> import Numeric.Datasets (getDataset)
> import Numeric.Datasets.Iris (iris)
> import Numeric.Datasets.Abalone (abalone)
>
> main = do
>   -- The Iris data set is embedded
>   print (length iris)
>   print (head iris)
>   -- The Abalone dataset is fetched
>   abas <- getDataset abalone
>   print (length abas)
>   print (head abas)")
    (license license:expat)))

haskell-8.4-datasets

(define-public haskell-8.4-dhall-bash
  (package
    (name "haskell-8.4-dhall-bash")
    (version "1.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-bash/dhall-bash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15xgfglxy5bac93i83pp4pc78yfcwq6ys9vpak9kmklsbr08ynq4"))))
    (properties `((upstream-name . "dhall-bash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-dhall)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-optparse-generic)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-shell-escape)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-bash")
    (synopsis "Compile Dhall to Bash")
    (description
     "Use this package if you want to compile Dhall expressions to Bash.
You can use this package as a library or an executable:

* See the \"Dhall.Bash\" module if you want to use this package as a library

* Use the @@dhall-to-bash@@ if you want an executable

The \"Dhall.Bash\" module also contains instructions for how to use this
package")
    (license license:bsd-3)))

haskell-8.4-dhall-bash

(define-public haskell-8.4-dhall-json
  (package
    (name "haskell-8.4-dhall-json")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-json/dhall-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1npw5x49jrijq6lby5ipnywqvbq67znmbsrfhnk0pi9pz4kixjw3"))))
    (properties `((upstream-name . "dhall-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02zwka1vav66z3528hmhhlsnwmsi0haj4bhp7r57w2j877c25z2h")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-dhall)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-json")
    (synopsis "Compile Dhall to JSON or YAML")
    (description
     "Use this package if you want to compile Dhall expressions to JSON or YAML.
You can use this package as a library or an executable:

* See the \"Dhall.JSON\" module if you want to use this package as a library

* Use the @@dhall-to-json@@ or @@dhall-to-yaml@@ programs from this package if
you want an executable

The \"Dhall.JSON\" module also contains instructions for how to use this
package")
    (license license:bsd-3)))

haskell-8.4-dhall-json

(define-public haskell-8.4-dhall-text
  (package
    (name "haskell-8.4-dhall-text")
    (version "1.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-text/dhall-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1485p4fazh3qcbb9khj1pk4f2gh6p6927sabh6miswczdn78z6sy"))))
    (properties `((upstream-name . "dhall-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-dhall)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-text")
    (synopsis "Template text using Dhall")
    (description
     "This package provides a @@dhall-to-text@@ executable that templates text using
the Dhall configuration language")
    (license license:bsd-3)))

haskell-8.4-dhall-text

(define-public haskell-8.4-diagrams-builder
  (package
    (name "haskell-8.4-diagrams-builder")
    (version "0.8.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-builder/diagrams-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g8anclzfm88nd6z539g5f2h6yfb538hdl59sbiqv0vk1c4sr01s"))))
    (properties `((upstream-name . "diagrams-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cairo" "-f-svg" "-f-ps" "-f-postscript" "-f-rasterific" "-f-pgf")
       #:cabal-revision
       ("1" "0cdnriavw7y0cr12n60vd0hwcyi09vkx5zjr47af3bj00lq1v9hk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-haskell-src-exts-simple)
                  (@ (gnu packages stackage ghc-8.4 stage012) haskell-8.4-hint)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis "hint-based build service for the diagrams graphics EDSL.")
    (description
     "@@diagrams-builder@@ provides backend-agnostic tools for
dynamically turning code into rendered diagrams,
using the @@hint@@ wrapper to the GHC API.  It
supports conditional recompilation using hashing
of diagrams source code, to avoid recompiling
code that has not changed.  It is useful for
creating tools which compile diagrams code
embedded in other documents.  For example, it is
used by the @@BlogLiterately-diagrams@@ package (a
plugin for @@BlogLiterately@@) to compile diagrams
embedded in Markdown-formatted blog posts.

Executables specific to the cairo, SVG, postscript,
and rasterific
backends are included (more executables specific
to other backends may be included in the future).
All take an input file and an expression to
render, and output an image file.  If you want
these executables you must explicitly enable the
@@-fcairo@@, @@-fsvg@@, @@-fpostscript@@, or @@-frasterific@@ flags.

A LaTeX package, @@diagrams-latex.sty@@, is also
provided in the @@latex/@@ directory of the source
distribution, which renders diagrams code found
within @@diagram@@ environments. Note that
@@diagrams-latex.sty@@ is licensed under the GPL.")
    (license license:bsd-3)))

haskell-8.4-diagrams-builder

(define-public haskell-8.4-diagrams-cairo
  (package
    (name "haskell-8.4-diagrams-cairo")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-cairo/diagrams-cairo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n368gv7jjnynp7gfbnaywnd4x65956qqifcxpi3gsy8yi0zsr6z"))))
    (properties `((upstream-name . "diagrams-cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0irrv1mf7lz3n4dy5pz9y6kw00v1rly47g2g6hi95nj6a6hib3z0")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cairo)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-pango)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-statestack)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis "Cairo backend for diagrams drawing EDSL")
    (description "A full-featured backend for rendering
diagrams using the cairo rendering engine.

This ultimately depends on a C library, via
Haskell's FFI, and can be difficult to install on
some platforms. If you are just looking for a
quick way to visualize diagrams, try the
diagrams-svg backend; if you want raster output
like PNG, try the diagrams-rasterific backend; if
you want to embed diagrams in LaTeX documents,
try diagrams-pgf.

* \"Diagrams.Backend.Cairo.CmdLine\" - if you're
just getting started with diagrams, begin here.

* \"Diagrams.Backend.Cairo\" - look at this next.
The general API for the cairo backend.

* \"Diagrams.Backend.Cairo.Internal\" - the
implementation guts of the cairo backend.
Users should normally not need to import this
module.

* \"Diagrams.Backend.Cairo.List\" - render diagrams
to two-dimensional lists of colors (/i.e./
pixels).

* \"Diagrams.Backend.Cairo.Ptr\" - render diagrams
to buffers in memory.")
    (license license:bsd-3)))

haskell-8.4-diagrams-cairo

(define-public haskell-8.4-diagrams-contrib
  (package
    (name "haskell-8.4-diagrams-contrib")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-contrib/diagrams-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01r081rvxkb9i56iqi28zw4054nm62pf9f1szd9i0avmnxxsiyv5"))))
    (properties `((upstream-name . "diagrams-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0mm1mmagx6q8g6dxk1cagqka38z6393ihp0lvf6095prlvidasqs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-circle-packing)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cubicbezier)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-diagrams-solve)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-force-layout)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-linear)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-mfsolve)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-monoid-extras)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mtl-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams/")
    (synopsis "Collection of user contributions to diagrams EDSL")
    (description "A collection of user contributions for diagrams,
an embedded domain-specific language for generation
of vector graphics.")
    (license license:bsd-3)))

haskell-8.4-diagrams-contrib

(define-public haskell-8.4-diagrams-html5
  (package
    (name "haskell-8.4-diagrams-html5")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-html5/diagrams-html5-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vp99ks9ldy91x1jlla0kyg8sq9748k82ql0jsf0jxhimvwd7vp8"))))
    (properties `((upstream-name . "diagrams-html5") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-NumInstances)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-statestack)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-static-canvas)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams/")
    (synopsis "HTML5 canvas backend for diagrams drawing EDSL")
    (description "This package provides a modular backend for rendering
diagrams created with the diagrams EDSL using an
HTML5 canvas.")
    (license license:bsd-3)))

haskell-8.4-diagrams-html5

(define-public haskell-8.4-diagrams-postscript
  (package
    (name "haskell-8.4-diagrams-postscript")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-monoid-extras)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-statestack)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-diagrams-postscript

(define-public haskell-8.4-diagrams-rasterific
  (package
    (name "haskell-8.4-diagrams-rasterific")
    (version "1.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-rasterific/diagrams-rasterific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0raki8c20s40y5xy2ax8y38xl3y40fb9qv95ax3qgnmi46s8fapp"))))
    (properties `((upstream-name . "diagrams-rasterific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-FontyFruity)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-Rasterific)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams/")
    (synopsis "Rasterific backend for diagrams.")
    (description "A full-featured backend for rendering
diagrams using the Rasterific rendering engine.")
    (license license:bsd-3)))

haskell-8.4-diagrams-rasterific

(define-public haskell-8.4-diagrams-svg
  (package
    (name "haskell-8.4-diagrams-svg")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-svg/diagrams-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lnyxx45yawqas7hmvvannwaa3ycf1l9g40lsl2m8sl2ja6vcmal"))))
    (properties `((upstream-name . "diagrams-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "15sn85xaachw4cj56w61bjcwrbf4qmnkfl8mbgdapxi5k0y4f2qv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-monoid-extras)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-svg-builder)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams/")
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

haskell-8.4-diagrams-svg

(define-public haskell-8.4-docker
  (package
    (name "haskell-8.4-docker")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/docker/docker-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0i90nkj1fc4swr6nral2y6raa6mmdz8x40sg47ww42dw18q00fjd"))))
    (properties `((upstream-name . "docker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-filemanip)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-lens-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-tar)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-system)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/denibertovic/docker-hs")
    (synopsis "An API client for docker written in Haskell")
    (description "See API documentation below.")
    (license license:bsd-3)))

haskell-8.4-docker

(define-public haskell-8.4-ekg-wai
  (package
    (name "haskell-8.4-ekg-wai")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ekg-wai/ekg-wai-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sd2fz4l4slizm179x9cskqdvrpf6w4d779kah9hrnk3nqbmklxz"))))
    (properties `((upstream-name . "ekg-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "17kca2wzlcv8nxyq096fv57jfklhz4ibnvf5nqqdszczb03j3dnn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-ekg-core)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-ekg-json)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-app-static)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tvh/ekg-wai")
    (synopsis "Remote monitoring of processes")
    (description
     "This library lets you remotely monitor a running process over HTTP.
It provides a simple way to integrate a monitoring server into any
application.
This is a port of the ekg library to depend on wai instead of snap.")
    (license license:bsd-3)))

haskell-8.4-ekg-wai

(define-public haskell-8.4-eventful-sql-common
  (package
    (name "haskell-8.4-eventful-sql-common")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-sql-common/eventful-sql-common-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g5f6rvb14hi81dby2hdcq444zhv2vl76ql4lsrh9gdmpf6a2vm4"))))
    (properties `((upstream-name . "eventful-sql-common") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1w2qq0p4304zsjkwmqx79azpq5v0ajz5grg740vwkca8qvdvdq91")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-eventful-core)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-persistent-template)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Common library for SQL event stores")
    (description "Common library for SQL event stores")
    (license license:expat)))

haskell-8.4-eventful-sql-common

(define-public haskell-8.4-fb
  (package
    (name "haskell-8.4-fb")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fb/fb-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "05ax0pd9j6c64n48r9q03k5pg2axkmv11cz6azjg7k72cfkp1mm9"))))
    (properties `((upstream-name . "fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash-cryptoapi)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/fb")
    (synopsis "Bindings to Facebook's API.")
    (description
     "This package exports bindings to Facebook's APIs (see
<http://developers.facebook.com/>).  Does not have any external
dependencies and tries to use as little resources (such as
memory, sockets and CPU) as possible by using packages such as
@@aeson@@, @@attoparsec@@, @@bytestring@@, @@conduit@@, @@http-conduit@@,
@@text@@ and others.

While we would like to have a complete binding to Facebook's
API, this package is being developed on demand.  If you need
something that has not been implemented yet, please send a pull
request or file an issue on GitHub
(<https://github.com/psibi/fb/issues>).")
    (license license:bsd-3)))

haskell-8.4-fb

(define-public haskell-8.4-filter-logger
  (package
    (name "haskell-8.4-filter-logger")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filter-logger/filter-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "089gcirir6dwp2p61349dyvgk596cb8vgswkydzpy2lmar01513q"))))
    (properties `((upstream-name . "filter-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-scotty)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-logger)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/caneroj1/filter-logger#readme")
    (synopsis
     "Filterable request logging wai middleware. Change how data is logged and when.")
    (description
     "Composable filters to transform objects and control when they are written to server logs.")
    (license license:expat)))

haskell-8.4-filter-logger

(define-public haskell-8.4-gdax
  (package
    (name "haskell-8.4-gdax")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gdax/gdax-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08b7j5dcs5indpd6gb6pc3aw692jqvm26vfnq12mpssdbv7fzf6y"))))
    (properties `((upstream-name . "gdax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-aeson-casing)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-lens-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-tdfa-text)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-wreq)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-wuss)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/AndrewRademacher/gdax")
    (synopsis "API Wrapping for Coinbase's GDAX exchange.")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-gdax

(define-public haskell-8.4-gi-gobject
  (package
    (name "haskell-8.4-gi-gobject")
    (version "2.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-gobject/gi-gobject-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1bgn4ywx94py0v213iv7mbjjvvy3y7gvpgw4wpn38s2np7al8y65"))))
    (properties `((upstream-name . "gi-gobject") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-glib)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "GObject bindings")
    (description "Bindings for GObject, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-gobject

(define-public haskell-8.4-goggles
  (package
    (name "haskell-8.4-goggles")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/goggles/goggles-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g798gvxyqr08digpb61cvfcwg626iwmz9dqyg32w5vba332akd6"))))
    (properties `((upstream-name . "goggles") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-pem)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-req)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unix-time)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ocramz/goggles")
    (synopsis "Extensible interface to Web APIs")
    (description
     "`goggles` helps with exchanging data with APIs that require authentication. In particular, it handles the details of expiring session tokens, so the user does not have to implement this logic in her program.")
    (license license:bsd-3)))

haskell-8.4-goggles

(define-public haskell-8.4-gravatar
  (package
    (name "haskell-8.4-gravatar")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gravatar/gravatar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mzl08qzwzzhz6bvkz4qnrdnzsgvsmi2lnhzf743yzx4msn00q3g"))))
    (properties `((upstream-name . "gravatar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-pureMD5)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/gravatar")
    (synopsis "Generate Gravatar image URLs")
    (description "Generate Gravatar image URLs")
    (license license:expat)))

haskell-8.4-gravatar

(define-public haskell-8.4-hOpenPGP
  (package
    (name "haskell-8.4-hOpenPGP")
    (version "2.7.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hOpenPGP/hOpenPGP-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fcm87rkf1c94w68ad2zkd3r2pbxzqa82kh3d2ky87rc1wqnia0s"))))
    (properties `((upstream-name . "hOpenPGP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list "-fnetwork-uri")))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-binary-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bzlib)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-incremental-parser)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-ixset-typed)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-nettle)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-newtype)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-openpgp-asciiarmor)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://salsa.debian.org/clint/hOpenPGP")
    (synopsis "native Haskell implementation of OpenPGP (RFC4880)")
    (description
     "native Haskell implementation of OpenPGP (RFC4880), plus Camellia (RFC5581), plus ECC (RFC6637)")
    (license license:expat)))

haskell-8.4-hOpenPGP

(define-public haskell-8.4-handwriting
  (package
    (name "haskell-8.4-handwriting")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/handwriting/handwriting-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1amysm2ds1prp6przgvqknxr3jn72kidqqh4j4s9pwxj35nl06vy"))))
    (properties `((upstream-name . "handwriting") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-lens-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ismailmustafa/handwriting-haskell#readme")
    (synopsis "API Client for the handwriting.io API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-handwriting

(define-public haskell-8.4-haskell-tools-rewrite
  (package
    (name "haskell-8.4-haskell-tools-rewrite")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-tools-rewrite/haskell-tools-rewrite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1az7924bsiapn7g8gj75vdi47alrlly0wnwhcd7p8a24kh1hj055"))))
    (properties `((upstream-name . "haskell-tools-rewrite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-tools-ast)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-haskell-tools-prettyprint)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-references)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/haskell-tools/haskell-tools")
    (synopsis "Facilities for generating new parts of the Haskell-Tools AST")
    (description
     "Contains utility functions to generate parts of the Haskell-Tools AST. Generates these elements to be compatible with the source annotations that are already present on the AST. The package is divided into modules based on which language elements can the given module generate. This packages should be used during the transformations to generate parts of the new AST.")
    (license license:bsd-3)))

haskell-8.4-haskell-tools-rewrite

(define-public haskell-8.4-hedis
  (package
    (name "haskell-8.4-hedis")
    (version "0.10.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hedis/hedis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hbjhccipvg2i1cyinvhlk4jgscam9y5897ib1fh6rc0qwnlblhs"))))
    (properties `((upstream-name . "hedis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "173pryxjnz9mdrfkz2r1rb083g33hqb9y7xcghfcwb1syr9h0da8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-scanner)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/informatikr/hedis")
    (synopsis
     "Client library for the Redis datastore: supports full command set,
pipelining.")
    (description
     "Redis is an open source, advanced key-value store. It is often referred to
as a data structure server since keys can contain strings, hashes, lists,
sets and sorted sets. This library is a Haskell client for the Redis
datastore. Compared to other Haskell client libraries it has some
advantages:

[Compatibility with Latest Stable Redis:] Hedis is intended
to be used with the latest stable version of Redis (currently 3.2).
Most redis commands (<http://redis.io/commands>) are available as
haskell functions, although MONITOR and SYNC are intentionally
omitted. Additionally, a low-level API is
exposed that  makes it easy for the library user to implement further
commands, such as new commands from an experimental Redis version.

[Automatic Optimal Pipelining:] Commands are pipelined
(<http://redis.io/topics/pipelining>) as much as possible without any
work by the user. See
<http://informatikr.com/2012/redis-pipelining.html> for a
technical explanation of automatic optimal pipelining.

[Enforced Pub\\/Sub semantics:] When subscribed to the Redis Pub\\/Sub server
(<http://redis.io/topics/pubsub>), clients are not allowed to issue
commands other than subscribing to or unsubscribing from channels. This
library uses the type system to enforce the correct behavior.

[Connect via TCP or Unix Domain Socket:] TCP sockets are the default way to
connect to a Redis server. For connections to a server on the same
machine, Unix domain sockets offer higher performance than the standard
TCP connection.

For detailed documentation, see the \"Database.Redis\" module.
")
    (license license:bsd-3)))

haskell-8.4-hedis

(define-public haskell-8.4-hoogle
  (package
    (name "haskell-8.4-hoogle")
    (version "5.0.17.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hoogle/hoogle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "174gp41v0krzj37m75pnr3aawyhkbk2wq4q6zk2z3zh0avvvmgk6"))))
    (properties `((upstream-name . "hoogle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("1" "13ilhdmrqhj7ww0xbkd15ycz68gwrm2ph9sy51bavmq85bg1y9ai")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-js-flot)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-js-jquery)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-mmap)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-process-extras)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-storable-tuple)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-tar)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-logger)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-warp-tls)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://hoogle.haskell.org/")
    (synopsis "Haskell API Search")
    (description
     "Hoogle is a Haskell API search engine, which allows you to
search many standard Haskell libraries by either function name,
or by approximate type signature.")
    (license license:bsd-3)))

haskell-8.4-hoogle

(define-public haskell-8.4-http-reverse-proxy
  (package
    (name "haskell-8.4-http-reverse-proxy")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-reverse-proxy/http-reverse-proxy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a6i5njf85b2lhg8m83njagcf09wih5q2irnyb2890s724qr277v"))))
    (properties `((upstream-name . "http-reverse-proxy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-logger)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/http-reverse-proxy")
    (synopsis
     "Reverse proxy HTTP requests, either over raw sockets or with WAI")
    (description
     "Provides a simple means of reverse-proxying HTTP requests. The raw approach uses the same technique as leveraged by keter, whereas the WAI approach performs full request/response parsing via WAI and http-conduit.")
    (license license:bsd-3)))

haskell-8.4-http-reverse-proxy

(define-public haskell-8.4-hw-rankselect
  (package
    (name "haskell-8.4-hw-rankselect")
    (version "0.10.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-rankselect/hw-rankselect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jqlyprb83bnffmq6ck6xpx27mqnmrarn890r2dn8k06asghf7da"))))
    (properties `((upstream-name . "hw-rankselect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rkni89h3sq02y03phb2bgx4yrx4gly9mzan6r4ziph0qayf09wf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-hw-balancedparens)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hw-bits)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hw-prim)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-mmap)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/haskell-works/hw-rankselect#readme")
    (synopsis "Rank-select")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-hw-rankselect

(define-public haskell-8.4-hxt-http
  (package
    (name "haskell-8.4-hxt-http")
    (version "9.1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-http/hxt-http-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02yxvzczv89j518b94wh8m4dsmnymzxgv9158m7w6lqxk41rv8bg"))))
    (properties `((upstream-name . "hxt-http") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "Interface to native Haskell HTTP package HTTP")
    (description
     "Interface to native Haskell HTTP package HTTP.
This package can be used as alternative for the hxt-curl package
for accessing documents via HTTP.

Changes from 9.1.3: Works with ghc-7.10

Changes to 9.1.3: New warnings from ghc-7.4 removed")
    (license license:expat)))

haskell-8.4-hxt-http

(define-public haskell-8.4-hyperloglog
  (package
    (name "haskell-8.4-hyperloglog")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyperloglog/hyperloglog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j0hbzpap3f92kvywsxjahxmqrdj51275jdv0h7f9lf9qby3rf7m"))))
    (properties `((upstream-name . "hyperloglog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-herbie")
       #:cabal-revision
       ("1" "1zh47rrwih6933hhq9vd0ly5s42w0bn196znkg9l8q6r6drl7xsf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-approximate)
                  (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-bits)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cereal-vector)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-reflection)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-safecopy)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-semigroupoids)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-simple-reflect)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-siphash)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-hyperloglog

(define-public haskell-8.4-ihaskell-hvega
  (package
    (name "haskell-8.4-ihaskell-hvega")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ihaskell-hvega/ihaskell-hvega-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dkqw6hs2388jgghpq5xgdsh3gwvv274axj84nawg2blpqf3d4fb"))))
    (properties `((upstream-name . "ihaskell-hvega") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hvega)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-ihaskell)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/DougBurke/hvega")
    (synopsis "IHaskell display instance for hvega types.")
    (description "Support Vega-Lite visualizations in IHaskell notebooks.")
    (license license:bsd-3)))

haskell-8.4-ihaskell-hvega

(define-public haskell-8.4-irc-client
  (package
    (name "haskell-8.4-irc-client")
    (version "1.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-client/irc-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13qc5acpkgd80nazlpac3q2viqp76fhq6qjk7fp5dp1w6bhj9qi7"))))
    (properties `((upstream-name . "irc-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-irc-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-irc-ctcp)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-network-conduit-tls)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stm-chans)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/barrucadu/irc-client")
    (synopsis "An IRC client library.")
    (description
     "An IRC client library built atop
<http://hackage.haskell.org/package/irc-conduit irc-conduit>. Why
another IRC client library, you cry? I didn't really find one that
did what I wanted (specifically, handle connecting to servers and
calling event handlers, possibly with TLS), but which didn't
implement almost a full IRC bot for you. That takes out all the fun!

<http://hackage.haskell.org/package/irc-conduit irc-conduit> and
<http://hackage.haskell.org/package/irc-ctcp irc-ctcp> are my
solution to the first part of that, this is my solution to the
latter. It's a simple IRC client library that does the basics for
you, but isn't an all-singing, all-dancing, fully-featured IRC
/application/. It is a merely a simple library.")
    (license license:expat)))

haskell-8.4-irc-client

(define-public haskell-8.4-kansas-comet
  (package
    (name "haskell-8.4-kansas-comet")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/kansas-comet/kansas-comet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q9rffh6589a5am8mvfzxzwws34vg08rdjxggfabhmg9y9jla6hz"))))
    (properties `((upstream-name . "kansas-comet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("22" "0ii81jv62cbrvj8dpj86m2rs75jjjwnp9kka63y8bvdbacchycvj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-scotty)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/ku-fpg/kansas-comet/")
    (synopsis "A JavaScript push mechanism based on the comet idiom")
    (description "A transport-level remote JavaScript RESTful push mechanism.")
    (license license:bsd-3)))

haskell-8.4-kansas-comet

(define-public haskell-8.4-kawhi
  (package
    (name "haskell-8.4-kawhi")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/kawhi/kawhi-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kx4lbyfh7brfg6vr05xcwa233lzld0pm3isvc4pr8fs7mx3h893"))))
    (properties `((upstream-name . "kawhi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/thunky-monk/kawhi")
    (synopsis "stats.NBA.com library")
    (description "Functions and types for interacting with stats.NBA.com")
    (license license:expat)))

haskell-8.4-kawhi

(define-public haskell-8.4-lambdabot-core
  (package
    (name "haskell-8.4-lambdabot-core")
    (version "5.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lambdabot-core/lambdabot-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cnp0w47fp0s1zlyb0d90xj5ynwfmlnzm5inc5lhbichwgqcwfzk"))))
    (properties `((upstream-name . "lambdabot-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0qv8wzq49vhjl20ar6wh6kslvk3d81y0ybw5vr8xg2gs3h32xi1b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-SafeSemaphore)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-dependent-map)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-dependent-sum)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-dependent-sum-template)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-edit-distance)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hslogger)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-prim-uniq)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-random-fu)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-random-source)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://wiki.haskell.org/Lambdabot")
    (synopsis "Lambdabot core functionality")
    (description "Lambdabot is an IRC bot written over several years by
those on the #haskell IRC channel.

Manage plugins, network connections, configurations
and much more.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-lambdabot-core

(define-public haskell-8.4-learn-physics
  (package
    (name "haskell-8.4-learn-physics")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/learn-physics/learn-physics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nhc53l963fsviw3yqz7yxwbjwxsrp8s4jckffbg6hl8npakhirh"))))
    (properties `((upstream-name . "learn-physics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-gloss)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-gnuplot)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-not-gloss)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-spatial-math)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-vector-space)))
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

haskell-8.4-learn-physics

(define-public haskell-8.4-line
  (package
    (name "haskell-8.4-line")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/line/line-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z36847iamf18b38nz6mcps599cnn17046n61y94g1q7rmfsppx1"))))
    (properties `((upstream-name . "line") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-hspec-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-scotty)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/utatti/line")
    (synopsis "Haskell SDK for the LINE API")
    (description
     "This package exports bindings to LINE APIs.

It provides the following features:

* Internal auth signature validator

* Webhook handled with handler function, WAI application, or Scotty action

* Functions and types for <https://developers.line.me/en/docs/messaging-api/reference/>

For example usages, please see the
<https://github.com/utatti/line/tree/master/examples examples> directory.")
    (license license:bsd-3)))

haskell-8.4-line

(define-public haskell-8.4-mega-sdist
  (package
    (name "haskell-8.4-mega-sdist")
    (version "0.3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mega-sdist/mega-sdist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jhlaww753spj5k2mrzrizcb408265wglc7gycdicnashsxc7qd4"))))
    (properties `((upstream-name . "mega-sdist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-optparse-simple)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-rio)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-rio-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-tar-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/mega-sdist#readme")
    (synopsis "Handles uploading to Hackage from mega repos")
    (description
     "Please see the description on Github at <https://github.com/snoyberg/mega-sdist#readme>")
    (license license:expat)))

haskell-8.4-mega-sdist

(define-public haskell-8.4-mime-mail-ses
  (package
    (name "haskell-8.4-mime-mail-ses")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mime-mail-ses/mime-mail-ses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w6k4cm5yab9dhg7yn6mp7jzk1zdwpnzc6c1xb3vz3rdwp8jjvx7"))))
    (properties `((upstream-name . "mime-mail-ses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-mime-mail)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/mime-mail")
    (synopsis "Send mime-mail messages via Amazon SES")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/mime-mail-ses>.")
    (license license:expat)))

haskell-8.4-mime-mail-ses

(define-public haskell-8.4-minio-hs
  (package
    (name "haskell-8.4-minio-hs")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/minio-hs/minio-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14qhaiki7g09gkakl1irf0a5fnrcaj2x84vvh09g3dfsgybr851i"))))
    (properties `((upstream-name . "minio-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-live-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-ini)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/minio/minio-hs#readme")
    (synopsis "A Minio Haskell Library for Amazon S3 compatible cloud
storage.")
    (description "The Minio Haskell client library provides simple APIs to
access Minio, Amazon S3 and other API compatible cloud
storage servers.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-minio-hs

(define-public haskell-8.4-oeis
  (package
    (name "haskell-8.4-oeis")
    (version "0.3.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/oeis/oeis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13hv0qal024jq52k1rgy3hd9h9s8labkcngr0zk8jpcgi45jqsca"))))
    (properties `((upstream-name . "oeis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("1" "0rb6l3qblay8aiwaznp35gj7vwmhm87y57wvf3babwrh91s88jaj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/oeis")
    (synopsis
     "Interface to the Online Encyclopedia of Integer Sequences (OEIS)")
    (description
     "Interface to the <http://oeis.org/ Online Encyclopedia of Integer Sequences (OEIS)>.")
    (license license:bsd-3)))

haskell-8.4-oeis

(define-public haskell-8.4-pandoc
  (package
    (name "haskell-8.4-pandoc")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pandoc/pandoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dqin92w513l7whg5wdgrngnxsj5mb8gppfvn7kjgyv2pdgpy0zy"))))
    (properties `((upstream-name . "pandoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-static" "-f-embed_data_files" "-f-trypandoc" "-fnetwork-uri")
       #:cabal-revision
       ("2" "05i037qlzh7akshv0ph7lk565x3sl91x227ls9jh71m2hhslyslf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-SHA)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-cmark-gfm)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-doctemplates)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haddock-library)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hslua)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hslua-module-text)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-pandoc-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-skylighting)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-texmath)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-xml)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-zip-archive)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://pandoc.org")
    (synopsis "Conversion between markup formats")
    (description "Pandoc is a Haskell library for converting from one markup
format to another, and a command-line tool that uses
this library. It can read several dialects of Markdown and
(subsets of) HTML, reStructuredText, LaTeX, DocBook, JATS,
MediaWiki markup, TWiki markup, TikiWiki markup, Creole 1.0,
Haddock markup, OPML, Emacs Org-Mode, Emacs Muse, txt2tags,
Vimwiki, Word Docx, ODT, EPUB, FictionBook2, and Textile,
and it can write Markdown, reStructuredText, XHTML, HTML 5,
LaTeX, ConTeXt, DocBook, JATS, OPML, TEI, OpenDocument,
ODT, Word docx, RTF, MediaWiki, DokuWiki, ZimWiki, Textile,
groff man, groff ms, plain text, Emacs Org-Mode, AsciiDoc,
Haddock markup, EPUB (v2 and v3), FictionBook2, InDesign
ICML, Muse, LaTeX beamer slides, PowerPoint, and several
kinds of HTML/JavaScript slide shows (S5, Slidy, Slideous,
DZSlides, reveal.js).

In contrast to most existing tools for converting Markdown
to HTML, pandoc has a modular design: it consists of a set of
readers, which parse text in a given format and produce a
native representation of the document, and a set of writers,
which convert this native representation into a target
format. Thus, adding an input or output format requires
only adding a reader or writer.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-pandoc

(define-public haskell-8.4-persistent-mysql-haskell
  (package
    (name "haskell-8.4-persistent-mysql-haskell")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-mysql-haskell/persistent-mysql-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "012vnfxjqlp352jm5s8glvypgyjligsqfrhb3y0kpzvxlsw4a653"))))
    (properties `((upstream-name . "persistent-mysql-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-mysql-haskell)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-persistent-template)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis
     "A pure haskell backend for the persistent library using MySQL database server.")
    (description
     "This package contains a backend for persistent using the
MySQL database server.  Internally it uses the @@mysql-haskell@@
package in order to access the database. See README.md for more.

This package supports only MySQL 5.1 and above.  However, it
has been tested only on MySQL 5.5.
Only the InnoDB storage engine is officially supported.

Known problems:

* This package does not support statements inside other
statements.")
    (license license:expat)))

haskell-8.4-persistent-mysql-haskell

(define-public haskell-8.4-persistent-sqlite
  (package
    (name "haskell-8.4-persistent-sqlite")
    (version "2.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent-sqlite/persistent-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1chbmvjz46smhgnzhha3bbkhys3fys6dip1jr4v7xp1jf78zbyp6"))))
    (properties `((upstream-name . "persistent-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-systemlib" "-f-use-pkgconfig" "-f-build-sanity-exe" "-ffull-text-search" "-furi-filenames" "-fhave-usleep" "-fjson1")
       #:cabal-revision
       ("1" "10ck5x420iq1mqy51hywbml84q3hhfgd02mscjnpsp0n2g1j3v0j")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-microlens-th)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-persistent-template)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Backend for the persistent library using sqlite3.")
    (description
     "This package includes a thin sqlite3 wrapper based on the direct-sqlite package, as well as the entire C library, so there are no system dependencies.")
    (license license:expat)))

haskell-8.4-persistent-sqlite

(define-public haskell-8.4-pipes-fluid
  (package
    (name "haskell-8.4-pipes-fluid")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-lifted-async)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-pipes-concurrency)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-pipes-misc)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-these)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/louispan/pipes-fluid#readme")
    (synopsis
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (description
     "Reactively combines Producers so that a value is yielded as soon as possible.")
    (license license:bsd-3)))

haskell-8.4-pipes-fluid

(define-public haskell-8.4-rakuten
  (package
    (name "haskell-8.4-rakuten")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rakuten/rakuten-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04qr5rbg0w56nlkama95bavalq3zj24pblbi655vq0vli5ggxgza"))))
    (properties `((upstream-name . "rakuten") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-extensible)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-req)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/matsubara0507/rakuten#readme")
    (synopsis "The Rakuten API in Haskell")
    (description
     "See README at <https://github.com/matsubara0507/rakuten#readme>")
    (license license:expat)))

haskell-8.4-rakuten

(define-public haskell-8.4-ratel-wai
  (package
    (name "haskell-8.4-ratel-wai")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ratel-wai/ratel-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cri461f40xa43kwg3wq5k98irfqypsi97xdk9n60yqhc8msca4m"))))
    (properties `((upstream-name . "ratel-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-ratel)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfausak/ratel-wai#readme")
    (synopsis "Notify Honeybadger about exceptions via a WAI middleware.")
    (description
     "ratel-wai notifies Honeybadger about exceptions via a WAI middleware.")
    (license license:expat)))

haskell-8.4-ratel-wai

(define-public haskell-8.4-req-conduit
  (package
    (name "haskell-8.4-req-conduit")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/req-conduit/req-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "193bv4jp7rrbpb1i9as9s2l978wz5kbz5kvr7ppllif5ppj699qx"))))
    (properties `((upstream-name . "req-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("8" "1md7zajmw87qrx6rvs35yrkbjs3s9nm0akg35jmf7a34xccrr7a7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-req)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req-conduit")
    (synopsis "Conduit helpers for the req HTTP client library")
    (description "Conduit helpers for the req HTTP client library.")
    (license license:bsd-3)))

haskell-8.4-req-conduit

(define-public haskell-8.4-req-url-extra
  (package
    (name "haskell-8.4-req-url-extra")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/req-url-extra/req-url-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "113xsf37kra3k3jhf2wh37rsgphxz24rsn3dy8zw1cwzsim2dpmk"))))
    (properties `((upstream-name . "req-url-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0srj9fcbm9y8ddqgs8wc6caxamhgnic54y8qpxwnqdxrggdfkk67")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-modern-uri)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-req)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/rcook/req-url-extra#readme")
    (synopsis "Provides URI/URL helper functions for use with Req")
    (description
     "This package provides helper functions for use with URIs and URLs in Req.")
    (license license:expat)))

haskell-8.4-req-url-extra

(define-public haskell-8.4-servant-auth-swagger
  (package
    (name "haskell-8.4-servant-auth-swagger")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-servant-auth)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-servant-swagger)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-swagger2)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-swagger/servant-auth compatibility")
    (description
     "This package provides instances that allow generating swagger2 schemas from
<https://hackage.haskell.org/package/servant servant>
APIs that use
<https://hackage.haskell.org/package/servant-auth servant-auth's> @@Auth@@ combinator.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.4-servant-auth-swagger

(define-public haskell-8.4-servant-server
  (package
    (name "haskell-8.4-servant-server")
    (version "0.14.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-server/servant-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fnxmy6k0ml11035ac4x2knvpraxpc0g076wx3a9k013xyqi0h02"))))
    (properties `((upstream-name . "servant-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "028vqbmqkc9gjsk34n74ssi0xfn085v26zdvpixgfi5yd7cvfg03")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-string-conversions)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-app-static)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis
     "A family of combinators for defining webservices APIs and serving them")
    (description
     "A family of combinators for defining webservices APIs and serving them

You can learn about the basics in the <http://haskell-servant.readthedocs.org/en/stable/tutorial/index.html tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>
is a runnable example, with comments, that defines a dummy API and implements
a webserver that serves this API, using this package.

<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.4-servant-server

(define-public haskell-8.4-servius
  (package
    (name "haskell-8.4-servius")
    (version "1.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/servius/servius-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09wbw7lqchpldxgbs580zp5favjcshqmxj5y6lcva36zhlzbdi3j"))))
    (properties `((upstream-name . "servius") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-cmark-gfm)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/servius#readme")
    (synopsis "Warp web server with template rendering")
    (description
     "Please see README.md at https://www.stackage.org/package/servius")
    (license license:expat)))

haskell-8.4-servius

(define-public haskell-8.4-soap-openssl
  (package
    (name "haskell-8.4-soap-openssl")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/soap-openssl/soap-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03w389yhybzvc06gpxigibqga9mr7m41rkg1ki3n686j9xzm8210"))))
    (properties `((upstream-name . "soap-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1nz8h4p94pn2kv65jbdybn9nf5djm9kycbpigk5gbh0ar52zgl4k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-configurator)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-http-client-openssl)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-soap)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://bitbucket.org/dpwiz/haskell-soap")
    (synopsis "TLS-enabled SOAP transport (using openssl bindings)")
    (description
     "TLS-enabled SOAP transport (using openssl bindings)

> main = withOpenSSL $ do
>     -- Initial one-time preparations.
>     settings <- makeSettings (Just (\"client.crt\", \"client.key\"))
>     transport <- initTransportWith settings \"http://example.com/soap/endpoint\" id (iconv \"cp-1251\")
>
>     -- the rest is the same as before...")
    (license license:expat)))

haskell-8.4-soap-openssl

(define-public haskell-8.4-soap-tls
  (package
    (name "haskell-8.4-soap-tls")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-configurator)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-soap)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage015) haskell-8.4-x509)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-x509-store)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.4-soap-tls

(define-public haskell-8.4-textlocal
  (package
    (name "haskell-8.4-textlocal")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/textlocal/textlocal-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11rhrylv8pzsz35i3908d3fhdskmi4wrysxyj31hz4n9f1igym49"))))
    (properties `((upstream-name . "textlocal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unix-time)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/just-chow/textlocal")
    (synopsis "Haskell wrapper for textlocal SMS gateway")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-textlocal

(define-public haskell-8.4-uri-templater
  (package
    (name "haskell-8.4-uri-templater")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-templater/uri-templater-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hj93jgn8xch9bw9fs76qsfqarb15csfy0ddnr1dxcq04vznbri1"))))
    (properties `((upstream-name . "uri-templater") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1fc0agzm3qasslhns64qbyhml31s1akib0mfaj2298iqm8075jyg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-charset)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-parsers)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-trifecta)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uuid-types)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iand675/uri-templater")
    (synopsis "Parsing & Quasiquoting for RFC 6570 URI Templates")
    (description "Parsing & Quasiquoting for RFC 6570 URI Templates")
    (license license:expat)))

haskell-8.4-uri-templater

(define-public haskell-8.4-wai-cli
  (package
    (name "haskell-8.4-wai-cli")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wai-cli/wai-cli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qi84p1x5b0hvsdgd03fn80j3ai0s0svcl340z9fvz6lrgcfnhq6"))))
    (properties `((upstream-name . "wai-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftls")
       #:cabal-revision
       ("1" "06fg5ps7fplabmpnh1xwbsxr6p0yiig223r9gf6kgbzl3aqx25fz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monads-tf)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-options)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-socket-activation)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://codeberg.org/valpackett/wai-cli")
    (synopsis
     "Command line runner for Wai apps (using Warp) with TLS, CGI, socket activation & graceful shutdown")
    (description
     "Command line runner for Wai apps (using Warp) with support for UNIX domain sockets,
TLS (can be turned off with a cabal flag to avoid compiling the TLS library), CGI,
socket activation (systemd-compatible, but see https://codeberg.org/valpackett/soad for a more interesting (and not linux-only) thing than what systemd does),
and graceful shutdown (on TERM signal).")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-wai-cli

(define-public haskell-8.4-wai-middleware-consul
  (package
    (name "haskell-8.4-wai-middleware-consul")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-consul/wai-middleware-consul-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qq7kilp9a4qjja337saqccn250s6mnf3n80sgyg935hy1dmm7fq"))))
    (properties `((upstream-name . "wai-middleware-consul") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-consul-haskell)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-enclosed-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-app-static)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-wai-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fpco/wai-middleware-consul")
    (synopsis "Wai Middleware for Consul")
    (description "Proxies data to/from Consul. Watches for updates.")
    (license license:expat)))

haskell-8.4-wai-middleware-consul

(define-public haskell-8.4-wai-middleware-metrics
  (package
    (name "haskell-8.4-wai-middleware-metrics")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-metrics/wai-middleware-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x7c53lqbf55p3ba6naj9xwjz07k4gf0ql3bjlb6vfph92kqadp7"))))
    (properties `((upstream-name . "wai-middleware-metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-ekg-core)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-scotty)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Helkafen/wai-middleware-metrics")
    (synopsis "A WAI middleware to collect EKG request metrics")
    (description
     "This WAI middleware counts the number of requests, the number of responses by status code and keeps a latency distribution.

It can be added to any WAI-based webserver, such as Yesod, Scotty, Spock and Servant.

The counters are EKG Counters from ekg-core. <https://ocharles.org.uk/blog/posts/2012-12-11-24-day-of-hackage-ekg.html>")
    (license license:bsd-3)))

haskell-8.4-wai-middleware-metrics

(define-public haskell-8.4-wai-websockets
  (package
    (name "haskell-8.4-wai-websockets")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-app-static)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Provide a bridge between WAI and the websockets package.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-websockets>.")
    (license license:expat)))

haskell-8.4-wai-websockets

(define-public haskell-8.4-warp-tls-uid
  (package
    (name "haskell-8.4-warp-tls-uid")
    (version "0.2.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/warp-tls-uid/warp-tls-uid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b3kxpbai9nxqqv9kww4cr1vgaa0cz4fpkd3pfmj0hin10hr6mmq"))))
    (properties `((upstream-name . "warp-tls-uid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-warp-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/YoshikuniJujo/warp-tls-uid#readme")
    (synopsis "set group and user id before running server")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/warp-tls-uid#readme>")
    (license license:bsd-3)))

haskell-8.4-warp-tls-uid

(define-public haskell-8.4-webex-teams-api
  (package
    (name "haskell-8.4-webex-teams-api")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-api/webex-teams-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02x4g10r0rl1g4fbqkj8zxcbz64g8dck4d77f0gswkadsn5y6mkp"))))
    (properties `((upstream-name . "webex-teams-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-bitset-word8)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "A Haskell bindings for Webex Teams API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.4-webex-teams-api

(define-public haskell-8.4-wreq-stringless
  (package
    (name "haskell-8.4-wreq-stringless")
    (version "0.5.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wreq-stringless/wreq-stringless-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgjjybbc4nza1a0af2j8jxscyhlcwdspmvy8zsmcczzcdhx2b2h"))))
    (properties `((upstream-name . "wreq-stringless") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/j-keck/wreq-stringless#readme")
    (synopsis "Simple wrapper to use wreq without Strings")
    (description
     "This library wraps all functions from @@Network.Wreq@@ which expects a 'String'
and replaces the 'String' Type with the \"Network.Wreq.StringLess.StringLike\" Type-Class.

Instances for \"Network.Wreq.StringLess.StringLike\" are given for:

* \"Data.Text\"

* \"Data.Text.Lazy\"

* \"Data.ByteString.UTF8\"

* \"Data.ByteString.Lazy.UTF8\"

So you can use any of this types instead of 'String'.

To use this library, replace your the @@wreq@@ dependency from your @@cabal@@
file with @@wreq-stringless@@ and import \"Network.Wreq.StringLess\" instead
of @@Network.Wreq@@.

The '0.5.9.x' version of this library wraps the '0.5.x.x' version of @@wreq@@.

see <https://github.com/j-keck/wreq-stringless/tree/master/examples> for examples.")
    (license license:expat)))

haskell-8.4-wreq-stringless

(define-public haskell-8.4-xml-isogen
  (package
    (name "haskell-8.4-xml-isogen")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-dom-parser)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-xml-conduit-writer)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/typeable/xml-isogen")
    (synopsis "Generate XML-isomorphic types")
    (description
     "TemplateHaskell generators for XML-isomorphic data types, including
instances for parsing and rendering. A convenient DSL to define those
types.
This is similar to XSD but is Haskell-specific.")
    (license license:expat)))

haskell-8.4-xml-isogen

(define-public haskell-8.4-yesod-alerts
  (package
    (name "haskell-8.4-yesod-alerts")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-alerts/yesod-alerts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vqlkcb2q3wz6hp6ay6gj41vwlmq4x7flfbgq36ygnwwxjkwhllf"))))
    (properties `((upstream-name . "yesod-alerts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-alerts)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/alx741/yesod-alerts#readme")
    (synopsis "Alert messages for the Yesod framework")
    (description "Use the \"alerts\" package with the Yesod framework")
    (license license:bsd-3)))

haskell-8.4-yesod-alerts

(define-public haskell-8.4-yesod-eventsource
  (package
    (name "haskell-8.4-yesod-eventsource")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-eventsource/yesod-eventsource-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12s11q6zga37xyynll7b30gpv02k7jmmzfassshci02y9niyrkkg"))))
    (properties `((upstream-name . "yesod-eventsource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-eventsource)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Server-sent events support for Yesod apps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-eventsource>")
    (license license:expat)))

haskell-8.4-yesod-eventsource

(define-public haskell-8.4-yesod-gitrepo
  (package
    (name "haskell-8.4-yesod-gitrepo")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-gitrepo/yesod-gitrepo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07lqhih9jcb5rdjdkjsrg7s9l5f3y9lrsxa1rc1c8gxw0v2nfg5h"))))
    (properties `((upstream-name . "yesod-gitrepo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/yesod-gitrepo#readme")
    (synopsis "Host content provided by a Git repo")
    (description
     "Please see the README and generated docs at <https://www.stackage.org/package/yesod-gitrepo>")
    (license license:expat)))

haskell-8.4-yesod-gitrepo

(define-public haskell-8.4-yesod-gitrev
  (package
    (name "haskell-8.4-yesod-gitrev")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-gitrev/yesod-gitrev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lp0zraj6015bl8pcgi9b9w4d1yf0lb4awy25jv5xrcrc173g7yz"))))
    (properties `((upstream-name . "yesod-gitrev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1b0df34lz569gnwbbz0p20dml6bi2nbva9wfdsxyvva0dhvxjaz5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-gitrev)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/DanBurton/yesod-gitrev")
    (synopsis "A subsite for displaying git information.")
    (description "")
    (license license:bsd-3)))

haskell-8.4-yesod-gitrev

(define-public haskell-8.4-yesod-newsfeed
  (package
    (name "haskell-8.4-yesod-newsfeed")
    (version "1.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-newsfeed/yesod-newsfeed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05cnyz9g76hnfmhqfav16mghr0x42fqnz1zi0ki4bjkl5mcrf2vd"))))
    (properties `((upstream-name . "yesod-newsfeed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Helper functions and data types for producing News feeds.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-newsfeed>")
    (license license:expat)))

haskell-8.4-yesod-newsfeed

(define-public haskell-8.4-yesod-sitemap
  (package
    (name "haskell-8.4-yesod-sitemap")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Generate XML sitemaps.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-sitemap>")
    (license license:expat)))

haskell-8.4-yesod-sitemap

(define-public haskell-8.4-yesod-test
  (package
    (name "haskell-8.4-yesod-test")
    (version "1.6.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-test/yesod-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "080m46nbjblna2b9gq8j4ngqsv0r5ww06p1v8cj3ia1qiqgjygsj"))))
    (properties `((upstream-name . "yesod-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-html-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-xml-types)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com")
    (synopsis "integration testing for WAI/Yesod Applications")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-test>")
    (license license:expat)))

haskell-8.4-yesod-test

