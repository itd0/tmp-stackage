;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage019)
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
(define-public haskell-9.2-Allure
  (package
    (name "haskell-9.2-Allure")
    (version "0.11.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Allure/Allure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mmnn86azcpig1j61mwks2z227sw70lc7hsmi342hprabrccq9b1"))))
    (properties `((upstream-name . "Allure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-with_expensive_assertions" "-fwith_costly_optimizations" "-frelease" "-fsupportnodejs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-LambdaHack)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-enummapset)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-compact)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hsini)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://allureofthestars.com")
    (synopsis "Near-future Sci-Fi roguelike and tactical squad combat game")
    (description
     "Allure of the Stars is a near-future Sci-Fi roguelike
and tactical squad combat game. Binaries and the game manual
are available at the homepage. You can also try the game out
in the browser at <http://allureofthestars.com/play>.

Not a single image in this game. You have to imagine everything
yourself, like with a book (a grown-up book, without pictures).
Once you learn to imagine things, though, you can keep exploring
and mastering the world and making up stories for a long time.

The game is written in Haskell using the LambdaHack roguelike
game engine <http://hackage.haskell.org/package/LambdaHack>.
Please see the changelog file for recent improvements
and the issue tracker for short-term plans. Long term goals
are high replayability and auto-balancing through procedural
content generation and persistent content modification
based on player behaviour. Contributions are welcome.

This is a workaround .cabal file, flattened to eliminate
internal libraries until generating haddocks for them
is fixed. The original .cabal file is in .cabal.bkp file.")
    (license license:agpl3+)))

haskell-9.2-Allure

(define-public haskell-9.2-SVGFonts
  (package
    (name "haskell-9.2-SVGFonts")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-svg)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-cereal-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-xml)))
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

haskell-9.2-SVGFonts

(define-public haskell-9.2-ascii
  (package
    (name "haskell-9.2-ascii")
    (version "1.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ascii/ascii-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rsv9ah0jvf66w3k4smh67wpbm03xl4pdyj8svmdy49hbpihimwi"))))
    (properties `((upstream-name . "ascii") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "00pw1px9ggp6aq9pvimxj9q746b74cgc0pz4rn22q40mdqjadhwl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-ascii-case)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ascii-char)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-ascii-group)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-ascii-numbers)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-ascii-predicates)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-ascii-superset)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-ascii-th)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "The ASCII character set and encoding")
    (description
     "This package provides a variety of ways to work with ASCII text.")
    (license license:asl2.0)))

haskell-9.2-ascii

(define-public haskell-9.2-atom-conduit
  (package
    (name "haskell-9.2-atom-conduit")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/atom-conduit/atom-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fbvs522x9ldpmp1qr57vsanbdhqfi4m4cs2gk3pm5vmnnqqpqb4"))))
    (properties `((upstream-name . "atom-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-generic-random)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hlint)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pretty-simple)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-refined)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-timerep)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/atom-conduit")
    (synopsis
     "Streaming parser/renderer for the Atom 1.0 standard (RFC 4287).")
    (description "Cf README.")
    (license (license "FSDG-compatible" "CC0_1_0" ""))))

haskell-9.2-atom-conduit

(define-public haskell-9.2-auto-update
  (package
    (name "haskell-9.2-auto-update")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-retry)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "Efficiently run periodic, on-demand actions")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/auto-update>.")
    (license license:expat)))

haskell-9.2-auto-update

(define-public haskell-9.2-bcp47
  (package
    (name "haskell-9.2-bcp47")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bcp47/bcp47-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0k226jmpv6fnifbmbgdfvbj375an5g7bzzlcvfa1n5x65512ibp2"))))
    (properties `((upstream-name . "bcp47") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-country)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-generic-arbitrary)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-iso639)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/bcp47#readme")
    (synopsis "Language tags as specified by BCP 47")
    (description
     "/Language tags for use in cases where it is desirable to indicate the/
/language used in an information object./

/ - /<https://tools.ietf.org/html/bcp47>

This package exposes a language tag data type 'BCP47' and a 'Trie' data
structure for collecting and querying information that varies based on
language tag.

> import Data.BCP47 (en, enGB, sw)
> import Data.BCP47.Trie (Trie, fromList, lookup)
>
> color :: Trie Text
> color = fromList [(en, \"color\"), (sw, \"rangi\")]
>
> main = do
>   print $ match en color -- Just \"color\"
>   print $ match enGB color -- Nothing
>   print $ lookup enGB color -- Just \"color\"")
    (license license:expat)))

haskell-9.2-bcp47

(define-public haskell-9.2-core-telemetry
  (package
    (name "haskell-9.2-core-telemetry")
    (version "0.2.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-telemetry/core-telemetry-"
                    version ".tar.gz"))
              (sha256
               (base32
                "148ij7rdnjh4fl84b8r20vffm0564afj101zn7xkji653fv1ha0s"))))
    (properties `((upstream-name . "core-telemetry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-core-data)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-core-program)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-core-text)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-streams)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-io-streams)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-network-info)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis "Advanced telemetry")
    (description
     "This is part of a library to help build command-line programs, both tools and
longer-running daemons.

This package in particular adds helpers for recording telemetry for
subsequent analysis. You can instrument your code with tracing and spans,
and also emit events carrying arbitrary metadata. Backends are provided for
structured logs, sending traces to observability services, or even just
outputting the telemetry to console.

See \"Core.Telemetry.Observability\" to get started.")
    (license license:expat)))

haskell-9.2-core-telemetry

(define-public haskell-9.2-cursor-brick
  (package
    (name "haskell-9.2-cursor-brick")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cursor-brick/cursor-brick-"
                    version ".tar.gz"))
              (sha256
               (base32
                "108pmv6f8y3szrh3n96dyl7hsfr6qim8axikf82dgs1fd2nx61vw"))))
    (properties `((upstream-name . "cursor-brick") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-brick)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-cursor)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/cursor-brick#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/cursor-brick#readme>")
    (license license:expat)))

haskell-9.2-cursor-brick

(define-public haskell-9.2-deque
  (package
    (name "haskell-9.2-deque")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/deque/deque-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1x0rjdqgf4kwgpyisx618waz6r9gki3ivav9m4biysyc04hdhinn"))))
    (properties `((upstream-name . "deque") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-strict-list)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/deque")
    (synopsis "Double-ended queues")
    (description
     "Strict and lazy implementations of Double-Ended Queue (aka Dequeue or Deque)
based on head-tail linked list.")
    (license license:expat)))

haskell-9.2-deque

(define-public haskell-9.2-diagrams-builder
  (package
    (name "haskell-9.2-diagrams-builder")
    (version "0.8.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-builder/diagrams-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dz617kfkvjf3f2zbphkdx1scglcjj162qsfk9xj7slbapnj918m"))))
    (properties `((upstream-name . "diagrams-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cairo" "-f-svg" "-f-ps" "-f-postscript" "-f-rasterific" "-f-pgf")
       #:cabal-revision
       ("5" "0h1wk2b256fv9h5h2r43rqia6n4i3fapsizflrhw2bfyqf0kw736")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-orphans)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-exts-simple)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-hint)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://diagrams.github.io/")
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

haskell-9.2-diagrams-builder

(define-public haskell-9.2-diagrams-cairo
  (package
    (name "haskell-9.2-diagrams-cairo")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-cairo/diagrams-cairo-"
                    version ".tar.gz"))
              (sha256
               (base32
                "094vavgsfn7hxn2h7phvmx82wdhw51vqqv29p8hsvmijf1gxa7c1"))))
    (properties `((upstream-name . "diagrams-cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "094l4p8kwqbpdrgmkpy93znljl94la7spkmsd2v3lrc8c4i7r022")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-cairo)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-pango)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-statestack)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://diagrams.github.io")
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

haskell-9.2-diagrams-cairo

(define-public haskell-9.2-diagrams-contrib
  (package
    (name "haskell-9.2-diagrams-contrib")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-circle-packing)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-cubicbezier)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-diagrams-solve)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-force-layout)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-mfsolve)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-monoid-extras)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mtl-compat)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://diagrams.github.io/")
    (synopsis "Collection of user contributions to diagrams EDSL")
    (description "A collection of user contributions for diagrams,
an embedded domain-specific language for generation
of vector graphics.")
    (license license:bsd-3)))

haskell-9.2-diagrams-contrib

(define-public haskell-9.2-diagrams-postscript
  (package
    (name "haskell-9.2-diagrams-postscript")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-monoid-extras)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-statestack)))
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

haskell-9.2-diagrams-postscript

(define-public haskell-9.2-diagrams-rasterific
  (package
    (name "haskell-9.2-diagrams-rasterific")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-FontyFruity)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-Rasterific)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://projects.haskell.org/diagrams/")
    (synopsis "Rasterific backend for diagrams.")
    (description "A full-featured backend for rendering
diagrams using the Rasterific rendering engine.")
    (license license:bsd-3)))

haskell-9.2-diagrams-rasterific

(define-public haskell-9.2-diagrams-svg
  (package
    (name "haskell-9.2-diagrams-svg")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-diagrams-core)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-diagrams-lib)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-monoid-extras)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-svg-builder)))
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

haskell-9.2-diagrams-svg

(define-public haskell-9.2-domain-core
  (package
    (name "haskell-9.2-domain-core")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/domain-core/domain-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wpi5qks29ij8m1s6x3kc66dw706xn28l6vlwfrccqw77603g85a"))))
    (properties `((upstream-name . "domain-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-template-haskell-compat-v0208)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-th-lego)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/domain-core")
    (synopsis "Low-level API of \"domain\"")
    (description "Use this package for defining extensions to \\\"domain\\\".
Primarily derivers.")
    (license license:expat)))

haskell-9.2-domain-core

(define-public haskell-9.2-dublincore-xml-conduit
  (package
    (name "haskell-9.2-dublincore-xml-conduit")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dublincore-xml-conduit/dublincore-xml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17jzyj49j88xwsz54higi81a6v8kvb8i338n5416z1ni475qsynl"))))
    (properties `((upstream-name . "dublincore-xml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("1" "1rljgmi4jb6yhigfy394jb64q5f5qx7i1g68pw6zgq9ziz91p321")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hlint)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-timerep)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/k0ral/dublincore-xml-conduit")
    (synopsis
     "XML streaming parser/renderer for the Dublin Core standard elements.")
    (description "Cf README file.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-dublincore-xml-conduit

(define-public haskell-9.2-genvalidity-sydtest-aeson
  (package
    (name "haskell-9.2-genvalidity-sydtest-aeson")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-aeson/genvalidity-sydtest-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n8n07h5v7gwpfrfd8f4jir3d2331licmv78ih0i0qxwr87grv02"))))
    (properties `((upstream-name . "genvalidity-sydtest-aeson")
                  (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-genvalidity-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for aeson-related instances in sydtest")
    (description "")
    (license license:expat)))

haskell-9.2-genvalidity-sydtest-aeson

(define-public haskell-9.2-genvalidity-sydtest-hashable
  (package
    (name "haskell-9.2-genvalidity-sydtest-hashable")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-hashable/genvalidity-sydtest-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05482ynm19k9wj0hvvlfimvdng1wkl35409lp1r6vj02b7ml4i2z"))))
    (properties `((upstream-name . "genvalidity-sydtest-hashable")
                  (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances for sydtest")
    (description "Standard spec's for Hashable instances for sydtest")
    (license license:expat)))

haskell-9.2-genvalidity-sydtest-hashable

(define-public haskell-9.2-genvalidity-sydtest-lens
  (package
    (name "haskell-9.2-genvalidity-sydtest-lens")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-sydtest-lens/genvalidity-sydtest-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yvgbyhbf8mbqy6hil8g1zk1l0zgjnrw3y3cydnqvvbvka5h7jm9"))))
    (properties `((upstream-name . "genvalidity-sydtest-lens") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for lens for sydtest")
    (description "Standard spec's for lens (van Laarhoven encoding)")
    (license license:expat)))

haskell-9.2-genvalidity-sydtest-lens

(define-public haskell-9.2-gi-atk
  (package
    (name "haskell-9.2-gi-atk")
    (version "2.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-atk/gi-atk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x3qwz8576c1m2y6sxjjzxi0q5x47lbaawipsiaiimk51x4p4div"))))
    (properties `((upstream-name . "gi-atk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) atk)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
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
    (synopsis "Atk bindings")
    (description "Bindings for Atk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-atk

(define-public haskell-9.2-gi-dbusmenu
  (package
    (name "haskell-9.2-gi-dbusmenu")
    (version "0.4.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-dbusmenu/gi-dbusmenu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06mzjyn1l97n171c92kvsnhhz2fs1pz48n1bwk1b58wnjdrhhscd"))))
    (properties `((upstream-name . "gi-dbusmenu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages gtk) libdbusmenu)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Dbusmenu bindings")
    (description "Bindings for libdbusmenu, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-dbusmenu

(define-public haskell-9.2-gi-gio
  (package
    (name "haskell-9.2-gi-gio")
    (version "2.0.30")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gio/gi-gio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "186a8bk2s94awnq4w50w2msdjs08a1mknxb2417qpwzc5yy1f9q3"))))
    (properties `((upstream-name . "gi-gio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
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
    (synopsis "Gio bindings")
    (description "Bindings for Gio, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-gio

(define-public haskell-9.2-gi-graphene
  (package
    (name "haskell-9.2-gi-graphene")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-graphene/gi-graphene-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0633cf1n4lzrh0v5ksip4y4qizahyi3cv2njsg0bix802c4pd8rs"))))
    (properties `((upstream-name . "gi-graphene") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) graphene)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
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
    (synopsis "Graphene bindings")
    (description "Bindings for Graphene, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-graphene

(define-public haskell-9.2-gi-harfbuzz
  (package
    (name "haskell-9.2-gi-harfbuzz")
    (version "0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-harfbuzz/gi-harfbuzz-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05w123b1w3bjbaj0wq82b51bx4vnfbb6qcsd94svbhxgi705sjfx"))))
    (properties `((upstream-name . "gi-harfbuzz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) harfbuzz-5)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-freetype2)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
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
    (synopsis "HarfBuzz bindings")
    (description "Bindings for HarfBuzz, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-harfbuzz

(define-public haskell-9.2-gi-javascriptcore
  (package
    (name "haskell-9.2-gi-javascriptcore")
    (version "4.0.25")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-javascriptcore/gi-javascriptcore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dcg3c9df2gg6vqrv7ai18lnxw6zlwn6qyn2k10p4d4h0dpq9ck8"))))
    (properties `((upstream-name . "gi-javascriptcore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-gi-glib)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-gi-gobject)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages webkit) webkitgtk)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "JavaScriptCore bindings")
    (description "Bindings for JavaScriptCore, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-javascriptcore

(define-public haskell-9.2-hgeometry-combinatorial
  (package
    (name "haskell-9.2-hgeometry-combinatorial")
    (version "0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hgeometry-combinatorial/hgeometry-combinatorial-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18gzhdjnpx6wxm9im8anfcbrkzm1xs4vg3zshjprjfjpnb2i4z0x"))))
    (properties `((upstream-name . "hgeometry-combinatorial") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-data-clist)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-fingertree)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-nonempty-vector)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-vector-builder)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-vector-circular)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-vinyl)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-witherable)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://fstaals.net/software/hgeometry")
    (synopsis "Data structures, and Data types.")
    (description
     "The Non-geometric data types and algorithms used in HGeometry.")
    (license license:bsd-3)))

haskell-9.2-hgeometry-combinatorial

(define-public haskell-9.2-hledger-ui
  (package
    (name "haskell-9.2-hledger-ui")
    (version "1.27.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-ui/hledger-ui-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1srzlz0mdcp0259k0vsc8xkisd9l59s30j1k1x9bnsn179n8bi22"))))
    (properties `((upstream-name . "hledger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-breakpoint)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-brick)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-doclayout)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-fsnotify)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-hledger)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hledger-lib)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-microlens-platform)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-text-zipper)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-vty)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hledger.org")
    (synopsis
     "Curses-style terminal interface for the hledger accounting system")
    (description
     "A simple curses-style terminal user interface for the hledger accounting system.
It can be a more convenient way to browse your accounts than the CLI.
This package currently does not support Microsoft Windows, except in WSL.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-hledger-ui

(define-public haskell-9.2-hw-bits
  (package
    (name "haskell-9.2-hw-bits")
    (version "0.7.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-bits/hw-bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1swzr6lz2394p454mqvvgx2fyc1gdm4p9qvv54zyjd67mnhylkq8"))))
    (properties `((upstream-name . "hw-bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsse42")
       #:cabal-revision
       ("2" "1qv1pcy3sfcvpq3wfvimiv2wyy729yk97hswsrh40hlmrws18k2m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-bitvec)
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
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-int)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hw-string-parse)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-bits#readme")
    (synopsis "Bit manipulation")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-bits

(define-public haskell-9.2-hw-fingertree
  (package
    (name "haskell-9.2-hw-fingertree")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-fingertree/hw-fingertree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aljn5c2gblvrbn1f7iwvcm2fa2dsnl497wb0g8y7rz6jzk7g06f"))))
    (properties `((upstream-name . "hw-fingertree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "00h2vzzncfwyaa0krgsffcmy2gdb0637i9zjdlsz88mdlhynqhp3")))
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
                     haskell-9.2-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-fingertree#readme")
    (synopsis "Generic finger-tree structure, with example instances")
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

haskell-9.2-hw-fingertree

(define-public haskell-9.2-hw-json-simd
  (package
    (name "haskell-9.2-hw-json-simd")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-simd/hw-json-simd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03g2gwmkp6v7b0vf4x8bh4qk91ghr0av5x3c9paj3rp3igycccd6"))))
    (properties `((upstream-name . "hw-json-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-c2hs)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-json-simd#readme")
    (synopsis "SIMD-based JSON semi-indexer")
    (description
     "Please see the README on GitHub at <https://github.com/haskell-works/hw-json-simd#readme>")
    (license license:bsd-3)))

haskell-9.2-hw-json-simd

(define-public haskell-9.2-hw-parser
  (package
    (name "haskell-9.2-hw-parser")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-parser/hw-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zsbw725mw3fn4814qricqanbvx1kgbnqvgwijqgfv8jz7yf5gxa"))))
    (properties `((upstream-name . "hw-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1kiak3rgwd62xs2a6lwg638jk45i172i6cja3xjxx8ph15aaq1p7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
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
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-hw-prim)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-parser#readme")
    (synopsis "Simple parser support")
    (description "Simple parser support. Please see README.md")
    (license license:bsd-3)))

haskell-9.2-hw-parser

(define-public haskell-9.2-jsonifier
  (package
    (name "haskell-9.2-jsonifier")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/jsonifier/jsonifier-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0swv5xmns2qqkmb8wc0f9gsbrs81ghfp8jvq0lr7fgam3cbzaibr"))))
    (properties `((upstream-name . "jsonifier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-numeric-limits)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-ptr-poker)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/jsonifier")
    (synopsis "Fast and simple JSON encoding toolkit")
    (description
     "Minimalistic library for encoding JSON directly to strict bytestring,
which is up to 3x faster than \\\"aeson\\\".
.
For introduction, benchmark results and demo please skip to Readme.")
    (license license:expat)))

haskell-9.2-jsonifier

(define-public haskell-9.2-language-avro
  (package
    (name "haskell-9.2-language-avro")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-avro/language-avro-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x7279nk306pc9db8bav6aj5g36g338mzjnhkgl21dqxh1qb43rx"))))
    (properties `((upstream-name . "language-avro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018) haskell-9.2-avro)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/kutyel/avro-parser-haskell#readme")
    (synopsis "Language definition and parser for AVRO files.")
    (description
     "Parser for the AVRO language specification, see README.md for more details.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-language-avro

(define-public haskell-9.2-logstash
  (package
    (name "haskell-9.2-logstash")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/logstash/logstash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17s7529mcvpm7pqjz5d980ra70z41zk0k52l6ps1p1zfi5p4niys"))))
    (properties `((upstream-name . "logstash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-resource-pool)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-retry)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stm-chans)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-tls)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unbounded-delays)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/logstash#readme")
    (synopsis "Logstash client library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>")
    (license license:expat)))

haskell-9.2-logstash

(define-public haskell-9.2-mmark-ext
  (package
    (name "haskell-9.2-mmark-ext")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mmark-ext/mmark-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1dy3xnzpbbnp03k3r04q8y10pcj2r708dk8bff0pxzkvypm75g88"))))
    (properties `((upstream-name . "mmark-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "0kz0389rrjd4wy6a5m89w7a4pcd4765kah7rwa7i649l8h5a5asm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ghc-syntax-highlighter)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-mmark)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-modern-uri)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-skylighting)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mmark-md/mmark-ext")
    (synopsis "Commonly useful extensions for the MMark markdown processor")
    (description
     "Commonly useful extensions for the MMark markdown processor. Click on
\"Text.MMark.Extension.Common\" to get started.")
    (license license:bsd-3)))

haskell-9.2-mmark-ext

(define-public haskell-9.2-network-wait
  (package
    (name "haskell-9.2-network-wait")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-wait/network-wait-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g3fvpf91q31gbmla9r3zwm8n3r3v4n1dmznjhwc7wssfmk2jdh0"))))
    (properties `((upstream-name . "network-wait") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-postgres" "-f-redis")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-simple)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-retry)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/network-wait#readme")
    (synopsis
     "Lightweight library for waiting on networked services to become available.")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/network-wait#readme>")
    (license license:expat)))

haskell-9.2-network-wait

(define-public haskell-9.2-nvim-hs-ghcid
  (package
    (name "haskell-9.2-nvim-hs-ghcid")
    (version "2.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nvim-hs-ghcid/nvim-hs-ghcid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vx1hj5x6xzxy305qm7ax74b85440hl7wbr39501xz1yanvz5i1i"))))
    (properties `((upstream-name . "nvim-hs-ghcid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-ghcid)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-nvim-hs)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-nvim-hs-contrib)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/saep/nvim-hs-ghcid")
    (synopsis "Neovim plugin that runs ghcid to update the quickfix list")
    (description "This plugin uses the nvim-hs plugin backend for neovim and
fills the quickfix list on file-saves with the errors and
warnings that ghcid determines.

The only limitation for this tool is that it needs a .cabal
file to work.

This plugin provides 3 commands:

@@:GhcidStart@@ will prompt you for the configuration you
want to use. It should guess a reasonable option based on
the files present in your project directory and so you will
just have to press enter all the time. If you provide a
bang, these questions will not be asked.

@@:GhcidStop@@ stops the current ghcid process.

@@:GhcidRestart@@ combines the two previous commands.

Simply import the @@plugin@@ definition from \"Neovim.Ghcid\"
and add it to your plugin list.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-nvim-hs-ghcid

(define-public haskell-9.2-one-liner
  (package
    (name "haskell-9.2-one-liner")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/one-liner/one-liner-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09gdivd38disddxs42179vmgca0yzk5dfm6ygicgl5l25qbizrfh"))))
    (properties `((upstream-name . "one-liner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1n6d74s0x91qi4fi6wv5yggjb1nvwk0ir580mkf67bca2x6f1cqn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-linear-base)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sjoerdvisscher/one-liner")
    (synopsis "Constraint-based generics")
    (description "Write short and concise generic instances of type classes.
one-liner is particularly useful for writing default
implementations of type class methods.")
    (license license:bsd-3)))

haskell-9.2-one-liner

(define-public haskell-9.2-opml-conduit
  (package
    (name "haskell-9.2-opml-conduit")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opml-conduit/opml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "012cnq24dhsiz6dfm23i1kac2pya50x2gj42cvcdhr8navz7czcb"))))
    (properties `((upstream-name . "opml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-conduit-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hlint)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-microlens-th)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-monoid-subclasses)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-refined)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-timerep)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-uri-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/k0ral/opml-conduit")
    (synopsis "Streaming parser/renderer for the OPML 2.0 format.")
    (description
     "This library implements the OPML 2.0 standard (<http://dev.opml.org/spec2.html>) as a 'conduit' parser/renderer.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-opml-conduit

(define-public haskell-9.2-postgres-options
  (package
    (name "haskell-9.2-postgres-options")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgres-options/postgres-options-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dfr15bg77117y27rr1kvbxcsyh36ha30c8rgiqd15y7pjd4apy4"))))
    (properties `((upstream-name . "postgres-options") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-generic-monoid)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-uri-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jfischoff/postgres-options#readme")
    (synopsis "An Options type representing options for postgres connections")
    (description
     "This package exports an Options type representing options for postgres connections")
    (license license:bsd-3)))

haskell-9.2-postgres-options

(define-public haskell-9.2-primitive-extras
  (package
    (name "haskell-9.2-primitive-extras")
    (version "0.10.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-extras/primitive-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xmigva8lss9h18q0a63mc9sridny40nyzkizr2vmgm5d9qniqjs"))))
    (properties `((upstream-name . "primitive-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-deferred-folds)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-focus)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-list-t)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
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
    (home-page "https://github.com/metrix-ai/primitive-extras")
    (synopsis "Extras for the \"primitive\" library")
    (description "")
    (license license:expat)))

haskell-9.2-primitive-extras

(define-public haskell-9.2-ptr
  (package
    (name "haskell-9.2-ptr")
    (version "0.16.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ptr/ptr-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "047f4j89mhy18p4ga0322nln61xx5bvlfiqg6aiywrm2k95gsblh"))))
    (properties `((upstream-name . "ptr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-strict-list)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/ptr")
    (synopsis "Experimental abstractions for operations on pointers")
    (description
     "Collection of experimental abstractions over pointer operations.")
    (license license:expat)))

haskell-9.2-ptr

(define-public haskell-9.2-registry-hedgehog
  (package
    (name "haskell-9.2-registry-hedgehog")
    (version "0.7.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/registry-hedgehog/registry-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07lynkbwcjjlhh7v7rxa7s1b3m3vh1lfamdq4iwqy8b54p7fybs5"))))
    (properties `((upstream-name . "registry-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-mmorph)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-multimap)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-protolude)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-registry)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-discover)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-tasty-th)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-universum)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/registry-hedgehog")
    (synopsis "utilities to work with Hedgehog generators and `registry`")
    (description
     "This library provides some functions to extract generators from a \"Registry\" and make stateful modifications of that Registry to precisely control the generation of data")
    (license license:expat)))

haskell-9.2-registry-hedgehog

(define-public haskell-9.2-req
  (package
    (name "haskell-9.2-req")
    (version "3.13.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/req/req-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1igs75bj57vs1fwpxj1765l6zkqd4r3p2gbwp6cv2l37drfxjck4"))))
    (properties `((upstream-name . "req") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0izg1pj2jbpdlg9i9g30i5h4rcshkawh5zdhlkq1n9xfgc6jqv2v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-authenticate-oauth)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-blaze-builder)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-connection)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-modern-uri)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-retry)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mrkkrp/req")
    (synopsis "HTTP client library")
    (description "HTTP client library.")
    (license license:bsd-3)))

haskell-9.2-req

(define-public haskell-9.2-rhbzquery
  (package
    (name "haskell-9.2-rhbzquery")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rhbzquery/rhbzquery-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00175smanmcr6k8b83kj7mif47jggxn0pvy64yjc4ikpbw822c2q"))))
    (properties `((upstream-name . "rhbzquery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
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
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-rhbzquery-notests)
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

haskell-9.2-rhbzquery

(define-public haskell-9.2-safe-coloured-text-layout-gen
  (package
    (name "haskell-9.2-safe-coloured-text-layout-gen")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safe-coloured-text-layout-gen/safe-coloured-text-layout-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v4in8zl689j47jwac0z1k3rnnsc54qdclrbzja9aa364bmczzv8"))))
    (properties `((upstream-name . "safe-coloured-text-layout-gen")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-genvalidity)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-genvalidity-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-safe-coloured-text-gen)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-safe-coloured-text-layout)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-sydtest-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/safe-coloured-text#readme")
    (synopsis "")
    (description "Generators for types in safe-coloured-text-layout")
    (license license:expat)))

haskell-9.2-safe-coloured-text-layout-gen

(define-public haskell-9.2-subcategories
  (package
    (name "haskell-9.2-subcategories")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/subcategories/subcategories-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qxiccv9xpl6ms8j9lfvl8jps9gr979ya441fghy1jvfza0fxd1x"))))
    (properties `((upstream-name . "subcategories") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pointed)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-reflection)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semialign)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-these)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-vector-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/konn/subcategories#readme")
    (synopsis "Subcategories induced by class constraints")
    (description
     "Please see the README on GitHub at <https://github.com/konn/subcategories#readme>")
    (license license:bsd-3)))

haskell-9.2-subcategories

(define-public haskell-9.2-sydtest-hedis
  (package
    (name "haskell-9.2-sydtest-hedis")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-hedis/sydtest-hedis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y31aqn4ra92arq054amhkcxxng0wsngv59ngwn05gc5jv6whi9j"))))
    (properties `((upstream-name . "sydtest-hedis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsydtest_integration_tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hedis)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-port-utils)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-sydtest-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An hedis companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-hedis

(define-public haskell-9.2-sydtest-rabbitmq
  (package
    (name "haskell-9.2-sydtest-rabbitmq")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-rabbitmq/sydtest-rabbitmq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ra32y2w7hirjmaz67myq26waccznkl7gqmdnwdd93n6n1h1gb9p"))))
    (properties `((upstream-name . "sydtest-rabbitmq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsydtest_integration_tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-amqp)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-port-utils)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-sydtest)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-sydtest-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "An rabbitmq companion library for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest-rabbitmq

(define-public haskell-9.2-text-builder-dev
  (package
    (name "haskell-9.2-text-builder-dev")
    (version "0.3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-builder-dev/text-builder-dev-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bsm4yl22mpzggcnh908ccw9mvg3prckydwxxqa4rfj4k8hy4x7m"))))
    (properties `((upstream-name . "text-builder-dev") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-deferred-folds)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-isomorphism-class)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage017)
                     haskell-9.2-rerebase)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/text-builder-dev")
    (synopsis "Edge of developments for \"text-builder\"")
    (description "This is a development version of \\\"text-builder\\\".
All experimentation and feature development happens here.
The API can change drastically.
For a more stable API use \\\"text-builder\\\",
which is now just a wrapper over this package.")
    (license license:expat)))

haskell-9.2-text-builder-dev

(define-public haskell-9.2-uri-bytestring-aeson
  (package
    (name "haskell-9.2-uri-bytestring-aeson")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring-aeson/uri-bytestring-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02bm5r0i1anwy3wv2xdfhnsmmgllv5vs7npy01fpmp91x7dcqak1"))))
    (properties `((upstream-name . "uri-bytestring-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-uri-bytestring)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/reactormonk/uri-bytestring-aeson")
    (synopsis "Aeson instances for URI Bytestring")
    (description "")
    (license license:bsd-3)))

haskell-9.2-uri-bytestring-aeson

(define-public haskell-9.2-vector-extras
  (package
    (name "haskell-9.2-vector-extras")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-extras/vector-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xnz733p9p66693hb31fmq2cfsy2rwyw1b0915p7y5my1d8dxyzi"))))
    (properties `((upstream-name . "vector-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage018)
                     haskell-9.2-deferred-folds)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-foldl)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/metrix-ai/vector-extras")
    (synopsis "Utilities for the \"vector\" library")
    (description "This library is in an experimental state.
Users should be prepared for frequent updates.")
    (license license:expat)))

haskell-9.2-vector-extras

