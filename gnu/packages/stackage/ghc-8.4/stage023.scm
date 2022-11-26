;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage023)
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
(define-public haskell-8.4-Allure
  (package
    (name "haskell-8.4-Allure")
    (version "0.8.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Allure/Allure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yzqiidc8qbjlpgs2d3jkikzggyd7ajq7i7l1dgwqv6sh4r030vb"))))
    (properties `((upstream-name . "Allure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-LambdaHack)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-enummapset)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://allureofthestars.com")
    (synopsis "Near-future Sci-Fi roguelike and tactical squad game")
    (description
     "Allure of the Stars is a near-future Sci-Fi roguelike
and tactical squad game. Binaries and the game manual
are available at homepage, where you can also
try the game out in the browser at
<http://allureofthestars.com/play>.
(It runs fastest on Chrome. Keyboard commands and savefiles
are supported only on recent enough versions of browsers.
Mouse should work everywhere.)

Not a single picture in this game. You have to imagine everything
yourself, like with a book (a grown-up book, without pictures).
Once you learn to imagine things, though, you can keep exploring
and mastering the world and making up stories for a long time.

The game is written in Haskell using the LambdaHack roguelike
game engine <http://hackage.haskell.org/package/LambdaHack>.
Please see the changelog file for recent improvements
and the issue tracker for short-term plans. Long term goals
are high replayability and auto-balancing through procedural
content generation and persistent content modification
based on player behaviour. Contributions are welcome.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-Allure

(define-public haskell-8.4-HandsomeSoup
  (package
    (name "haskell-8.4-HandsomeSoup")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HandsomeSoup/HandsomeSoup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yzfrvivvxwlaiqwbjx27rxwq9mmnnpb512vwklzw7nyzg9xmqha"))))
    (properties `((upstream-name . "HandsomeSoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-HTTP)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006) haskell-8.4-hxt)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-hxt-http)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/egonSchiele/HandsomeSoup")
    (synopsis "Work with HTML more easily in HXT")
    (description
     "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/HandsomeSoup")
    (license license:bsd-3)))

haskell-8.4-HandsomeSoup

(define-public haskell-8.4-IPv6DB
  (package
    (name "haskell-8.4-IPv6DB")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/IPv6DB/IPv6DB-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06240z3nbjkf0rgwhvajjw28lckgpsfz5nbzzdqyfzgyg2r4wdcn"))))
    (properties `((upstream-name . "IPv6DB") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-IPv6Addr)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-hedis)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-logger)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://ipv6db.cybervisible.com")
    (synopsis "A RESTful microService for IPv6-related data")
    (description "IPv6DB is a RESTful microservice using Redis as backend
to store lists of IPv6 addresses and attach to each of
them any valuable data in a schema-free valid JSON value.
Each resource can be permanent or TTLed.")
    (license license:bsd-3)))

haskell-8.4-IPv6DB

(define-public haskell-8.4-amazonka
  (package
    (name "haskell-8.4-amazonka")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka/amazonka-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07647x7lq9kaq6bqh38rvdiajji4ks6s7nvxv2xi4v4lhwn8j89p"))))
    (properties `((upstream-name . "amazonka") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage008) haskell-8.4-ini)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-retry)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
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

haskell-8.4-amazonka

(define-public haskell-8.4-amazonka-test
  (package
    (name "haskell-8.4-amazonka-test")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-test/amazonka-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a6xfp97hijhqmhj9nv4aqax08ry8y809jpjhyj2819p01wvga26"))))
    (properties `((upstream-name . "amazonka-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-amazonka-core)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-groom)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
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

haskell-8.4-amazonka-test

(define-public haskell-8.4-bhoogle
  (package
    (name "haskell-8.4-bhoogle")
    (version "0.1.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bhoogle/bhoogle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gig9w1k1w2kw6y3wx6ckmc7kamwwzzq7mbaxil0rmb5ms0p1rf9"))))
    (properties `((upstream-name . "bhoogle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0jwfw2xa55ysfxyzp5n2pf2vq753iagpmvg9xnj69nv6ly9whfp7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-brick)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-hoogle)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-typed-process)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-vty)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/andrevdm/bhoogle#readme")
    (synopsis "Simple terminal GUI for local hoogle.")
    (description
     "bhoogle is a terminal GUI layer over local hoogle. It provides search ahead and sub-string filtering in addition to the usual type-search.")
    (license license:bsd-3)))

haskell-8.4-bhoogle

(define-public haskell-8.4-bitcoin-api-extra
  (package
    (name "haskell-8.4-bitcoin-api-extra")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitcoin-api-extra/bitcoin-api-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z6pppjgq6sy4q78k176pnr6y3lq369brqf0pg90v0qggl0cc8y4"))))
    (properties `((upstream-name . "bitcoin-api-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-bitcoin-api)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-bitcoin-block)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-bitcoin-tx)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-stm-chans)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-stm-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Higher level constructs on top of the bitcoin-api package")
    (description
     "Where `bitcoin-api` focusses solely on interacting with the Bitcoin Core client,
this library attempts to provide higher level constructs on top of that API.
It provides a collection of algorithms and useful interfaces for communicating
with Bitcoin.")
    (license license:expat)))

haskell-8.4-bitcoin-api-extra

(define-public haskell-8.4-blank-canvas
  (package
    (name "haskell-8.4-blank-canvas")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blank-canvas/blank-canvas-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d10ngvsgi2hz6xick59rkq1wzfbsgckply2jmg6gz9mf3zj97bk"))))
    (properties `((upstream-name . "blank-canvas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "15gcxvbbb0pjnw6wh4jvc4xqvv1gr493h2s9yclf81vfg7bry24w")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-kansas-comet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mime-types)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-scotty)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-shake)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-text-show)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ku-fpg/blank-canvas/wiki")
    (synopsis "HTML5 Canvas Graphics Library")
    (description
     "@@blank-canvas@@ is a Haskell binding to the complete
<https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API HTML5 Canvas API>.
@@blank-canvas@@ allows Haskell users to write, in Haskell,
interactive images onto their web browsers. @@blank-canvas@@
gives the user a single full-window canvas, and provides
many well-documented functions for rendering
images.

@@
&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;
module Main where
import Graphics.Blank                     -- import the blank canvas

main = blankCanvas 3000 $ \\\\ context -> do -- start blank canvas on port 3000
&#32;&#32;send context $ do                       -- send commands to this specific context
&#32;&#32;&#32;&#32;moveTo(50,50)
&#32;&#32;&#32;&#32;lineTo(200,100)
&#32;&#32;&#32;&#32;lineWidth 10
&#32;&#32;&#32;&#32;strokeStyle \\\"red\\\"
&#32;&#32;&#32;&#32;stroke()                              -- this draws the ink into the canvas
@@

<<https://github.com/ku-fpg/blank-canvas/wiki/images/Red_Line.png>>

For more details, read the <https://github.com/ku-fpg/blank-canvas/wiki blank-canvas wiki>.
")
    (license license:bsd-3)))

haskell-8.4-blank-canvas

(define-public haskell-8.4-chart-unit
  (package
    (name "haskell-8.4-chart-unit")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chart-unit/chart-unit-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03mjp806mw0qw3wc9fx5x04cj17cdznr22fki8yzk37jm7rr7y4p"))))
    (properties `((upstream-name . "chart-unit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-SVGFonts)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-colour)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-diagrams-svg)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-foldl)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-formatting)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-generic-lens)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-linear)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-numhask)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-numhask-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-numhask-range)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-palette)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-svg-builder)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tonyday567/chart-unit#readme")
    (synopsis "Native haskell charts.")
    (description
     "<<https://tonyday567.github.io/other/mainExample.svg>>

chart-unit is a native haskell charting library designed:

- as a chart DSL and algebra

- towards a minimalist look and feel

- to provide a set of default values that are robust across different data and physical chart scales

- around provision of a small but core set of chart types.

See <https://tonyday567.github.io/chart-unit/index.html chart-unit> for a chart gallery.")
    (license license:bsd-3)))

haskell-8.4-chart-unit

(define-public haskell-8.4-chatwork
  (package
    (name "haskell-8.4-chatwork")
    (version "0.1.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/chatwork/chatwork-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nb9xhzf8apllbl75883nd3bz50mvfpf5zzkpwjw7lyg7mk82pkm"))))
    (properties `((upstream-name . "chatwork") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-aeson-casing)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-connection)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-req)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/matsubara0507/chatwork#readme")
    (synopsis "The ChatWork API in Haskell")
    (description
     "See README at <https://github.com/matsubara0507/chatwork#readme>")
    (license license:expat)))

haskell-8.4-chatwork

(define-public haskell-8.4-diagrams
  (package
    (name "haskell-8.4-diagrams")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams/diagrams-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fcik4vwm2zah5m3yf6p1dlf0vbs7h1jri77zfwl731bd3xgc246"))))
    (properties `((upstream-name . "diagrams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cairo" "-f-gtk" "-fsvg" "-f-ps" "-f-postscript" "-f-rasterific" "-f-canvas")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-diagrams-contrib)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-diagrams-core)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-diagrams-svg)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis
     "Embedded domain-specific language for declarative vector graphics")
    (description
     "Diagrams is a full-featured framework and embedded domain-specific langauge for creating
declarative vector graphics and animations.

This package is just a convenient wrapper
around the @@diagrams-core@@, @@diagrams-lib@@ and
@@diagrams-contrib@@ packages, so they can be
installed with a single @@cabal install diagrams@@
command.

The package also comes with flags to enable six
different backends.
A Haskell-native SVG
backend (the @@diagrams-svg@@ package)
can be selected with @@-fsvg@@. This
flag is enabled by default, so if you do /not/
want the SVG backend, you must explicitly
disable it with @@-f-svg@@.  The SVG backend does not
yet quite support all the features of the cairo
backend: text alignment and embedded images are
the two main missing features at this point, and
of course it can only produce SVG images. It is,
however, much easier to install, so it is the
out-of-the-box default.

There is also a cairo backend (the
@@diagrams-cairo@@ package) which can be selected
with the @@-fcairo@@ flag. It is fully-featured and
can produce PNG, PS, PDF, SVG, or animated
GIF output; however,
due to its dependencies it can be difficult to
install on some platforms (notably OS X).

In addition, there is a GTK backend based on the
cairo backend, for rendering diagrams directly to
GTK windows. You can enable it with the @@-fgtk@@ flag.

The Haskell-native postscript
backend (the @@diagrams-postscript@@ package)
can be selected with the @@-fpostscript@@ flag.  The only
feature it does not support is transparency.

There is a Rasterific backend which is
also Haskell-native (the @@diagrams-rasterific@@
package) which can be selected with the @@-frasterific@@
flag. This is a fully featured backend with the ability
to produce PNG, JPG, TIFF, BMP and animated GIF output.

Finally there is a Canvas backend, also haskell native,
which can be selected with the @@-fcanvas@@ flag. This
backend allows users to write interactive images onto
their web browsers.

For more information, including a gallery of
examples, tutorial, and user manual, see the
diagrams website:
<http://projects.haskell.org/diagrams>.  For
help, join the @@#diagrams@@ IRC channel on
Freenode or the mailing list:
<http://groups.google.com/group/diagrams-discuss>.")
    (license license:bsd-3)))

haskell-8.4-diagrams

(define-public haskell-8.4-diagrams-gtk
  (package
    (name "haskell-8.4-diagrams-gtk")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-gtk/diagrams-gtk-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sga2wwkircjgryd4pn9i0wvvcnh3qnhpxas32crpdq939idwsxn"))))
    (properties `((upstream-name . "diagrams-gtk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1w6xykrsfmhanzy7rdrnfzsc3ny9d28kqz9sla4dygm3gay5509q")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-cairo)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-diagrams-cairo)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-gtk)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://projects.haskell.org/diagrams/")
    (synopsis "Backend for rendering diagrams directly to GTK windows")
    (description "An optional add-on to the diagrams-cairo package
which allows rendering diagrams directly to GTK windows.")
    (license license:bsd-3)))

haskell-8.4-diagrams-gtk

(define-public haskell-8.4-eventful-sqlite
  (package
    (name "haskell-8.4-eventful-sqlite")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-sqlite/eventful-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vyz8401n63gqwgl1fa9dw1ar1dgki4hy6ably8lh2hzpl7fmfy0"))))
    (properties `((upstream-name . "eventful-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-eventful-core)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-eventful-sql-common)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-eventful-test-helpers)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "SQLite implementations for eventful")
    (description "SQLite implementations for eventful")
    (license license:expat)))

haskell-8.4-eventful-sqlite

(define-public haskell-8.4-gi-atk
  (package
    (name "haskell-8.4-gi-atk")
    (version "2.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-atk/gi-atk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vmzby12nvbrka6f44pr1pjwccl0p6s984pxvibajzp72x2knxc9"))))
    (properties `((upstream-name . "gi-atk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages gtk) atk)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-glib)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-gi-gobject)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Atk bindings")
    (description "Bindings for Atk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-atk

(define-public haskell-8.4-gi-gio
  (package
    (name "haskell-8.4-gi-gio")
    (version "2.0.18")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gio/gi-gio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h7liqxf63wmhjzgbjshv7pa4fx743jpvkphn5yyjkc0bnfcvsqk"))))
    (properties `((upstream-name . "gi-gio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-glib)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-gi-gobject)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gio bindings")
    (description "Bindings for Gio, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-gio

(define-public haskell-8.4-gi-javascriptcore
  (package
    (name "haskell-8.4-gi-javascriptcore")
    (version "4.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-javascriptcore/gi-javascriptcore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kihq9sp42k2k9j8qrwgja62i5pzwhc1z1yy6h19n56aikddfc2z"))))
    (properties `((upstream-name . "gi-javascriptcore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-glib)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-gi-gobject)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages webkit) webkitgtk-next)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "JavaScriptCore bindings")
    (description "Bindings for JavaScriptCore, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-javascriptcore

(define-public haskell-8.4-gi-pango
  (package
    (name "haskell-8.4-gi-pango")
    (version "1.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-pango/gi-pango-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x3q1q4ww1v6v42p1wcaghxsja8cigqaqvklkfg4gxyp2f2cdg57"))))
    (properties `((upstream-name . "gi-pango") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-gi-glib)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-gi-gobject)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-gi)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-haskell-gi-overloading)
                  (@ (gnu packages gtk) pango-1.90)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Pango bindings")
    (description "Bindings for Pango, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-gi-pango

(define-public haskell-8.4-github-release
  (package
    (name "haskell-8.4-github-release")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/github-release/github-release-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14jb82gybm2zwri05bqxsibwr29lhghcaj3n0171nbndqs0dyl0y"))))
    (properties `((upstream-name . "github-release") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mime-types)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-optparse-generic)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-uri-templater)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tfausak/github-release#readme")
    (synopsis "Upload files to GitHub releases.")
    (description "GitHub Release uploads files to GitHub releases.")
    (license license:expat)))

haskell-8.4-github-release

(define-public haskell-8.4-haskell-tools-refactor
  (package
    (name "haskell-8.4-haskell-tools-refactor")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-tools-refactor/haskell-tools-refactor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12gkmji62kvnqjih9845hmsdj2f52hvmqgrz7s5wclpn3b5fhczq"))))
    (properties `((upstream-name . "haskell-tools-refactor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ghc-paths)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-haskell-tools-ast)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-haskell-tools-backend-ghc)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-haskell-tools-prettyprint)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-haskell-tools-rewrite)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-references)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "https://github.com/haskell-tools/haskell-tools")
    (synopsis "Refactoring Tool for Haskell")
    (description
     "Contains a set of refactorings based on the Haskell-Tools framework to easily transform a Haskell program. For the descriptions of the implemented refactorings, see the homepage.")
    (license license:bsd-3)))

haskell-8.4-haskell-tools-refactor

(define-public haskell-8.4-hledger-api
  (package
    (name "haskell-8.4-hledger-api")
    (version "1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-api/hledger-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1axcpipq6m4r9bh2633j7l88pc4ax8ycb2q0wivhfq2dp1pbylbf"))))
    (properties `((upstream-name . "hledger-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-Decimal)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-docopt)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-hledger)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hledger-lib)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-microlens-platform)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-servant-swagger)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-swagger2)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://hledger.org")
    (synopsis "Web API server for the hledger accounting tool")
    (description
     "This is a simple web API server for hledger data.
It comes with a series of simple client-side web app examples.

hledger is a cross-platform program for tracking money, time, or
any other commodity, using double-entry accounting and a simple,
editable file format. It is inspired by and largely compatible
with ledger(1).  hledger provides command-line, curses and web
interfaces, and aims to be a reliable, practical tool for daily
use.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-hledger-api

(define-public haskell-8.4-hopenpgp-tools
  (package
    (name "haskell-8.4-hopenpgp-tools")
    (version "0.21.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hopenpgp-tools/hopenpgp-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13064b3ybjsa78gw1dhykl24l1ccqxsdq773zwb95ccz3v4dy65l"))))
    (properties `((upstream-name . "hopenpgp-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-binary-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-crypto-pubkey)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fgl)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-graphviz)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-hOpenPGP)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-ixset-typed)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-monad-loops)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-openpgp-asciiarmor)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-prettyprinter-convert-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://salsa.debian.org/clint/hOpenPGP")
    (synopsis "hOpenPGP-based command-line tools")
    (description
     "command-line tools for performing some OpenPGP-related operations")
    (license (license "FSDG-compatible" "AGPL" ""))))

haskell-8.4-hopenpgp-tools

(define-public haskell-8.4-hw-json
  (package
    (name "haskell-8.4-hw-json")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-json/hw-json-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1na1xcgnnig27cv1v773jr7mv5izv8n1dnf6k3irw9rml3l213mv"))))
    (properties `((upstream-name . "hw-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0ygq95nx4sb70l5kfxlsj6rf2b3ry84ixby567n0jk1g0zks3z7s")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-criterion)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-hw-balancedparens)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hw-bits)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-hw-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hw-diagnostics)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-hw-mquery)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-hw-parser)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hw-prim)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-mmap)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)))
    (home-page "http://github.com/haskell-works/hw-json#readme")
    (synopsis "Memory efficient JSON parser")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-hw-json

(define-public haskell-8.4-hw-succinct
  (package
    (name "haskell-8.4-hw-succinct")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-succinct/hw-succinct-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ns96y77r7pa7pv6p7v24m0w2xw7451skcl9y2z3r8zp3y65fb00"))))
    (properties `((upstream-name . "hw-succinct") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-hw-balancedparens)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hw-bits)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hw-prim)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-mmap)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)))
    (home-page "http://github.com/haskell-works/hw-succinct#readme")
    (synopsis "Succint datastructures")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-hw-succinct

(define-public haskell-8.4-hw-xml
  (package
    (name "haskell-8.4-hw-xml")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hw-xml/hw-xml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15vycayfmykds6dka0kw106fjk2wg3qgifk698fwkj1i4chsia97"))))
    (properties `((upstream-name . "hw-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-hw-balancedparens)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hw-bits)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-hw-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-hw-parser)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hw-prim)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-hw-rankselect)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-word8)))
    (home-page "http://github.com/haskell-works/hw-xml#readme")
    (synopsis "Conduits for tokenizing streams.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.4-hw-xml

(define-public haskell-8.4-hworker
  (package
    (name "haskell-8.4-hworker")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hworker/hworker-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "079z4ahnbwibhy15jm3ymfzbfxgwy7f2l1raq06sp47ip16wrjrl"))))
    (properties `((upstream-name . "hworker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0w2bpvfr68n2qipvr8gc5096dain3g2536m4n9kqx1fahf12mwy5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-hedis)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/dbp/hworker")
    (synopsis "A reliable at-least-once job queue built on top of redis.")
    (description "See README.")
    (license license:isc)))

haskell-8.4-hworker

(define-public haskell-8.4-lambdabot-irc-plugins
  (package
    (name "haskell-8.4-lambdabot-irc-plugins")
    (version "5.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lambdabot-irc-plugins/lambdabot-irc-plugins-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kscksdqjysk9amxwb1xjh475pbwq22mf9as5kqwn72c8s75ngaf"))))
    (properties `((upstream-name . "lambdabot-irc-plugins") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-SafeSemaphore)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-lambdabot-core)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://wiki.haskell.org/Lambdabot")
    (synopsis "IRC plugins for lambdabot.")
    (description "Lambdabot is an IRC bot written over several years by
those on the #haskell IRC channel.

Provided plugins:

[irc] Lets lambdabot connect to IRC.

[localtime] Check user's local time.

[log] Log IRC channels.

[topic] Modify channel topics.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-lambdabot-irc-plugins

(define-public haskell-8.4-magicbane
  (package
    (name "haskell-8.4-magicbane")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/magicbane/magicbane-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jg6mhi046gdp0mhwzx2n40dv2ysrj8mkif6krb4vg3mdwh39lr0"))))
    (properties `((upstream-name . "magicbane") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rcrds0kvrv4j4282d7m9fg252dqlzb722wvzxzfp02sn977d8aa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-aeson-qq)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-has)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-ekg-core)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-ekg-wai)
                  (@ (gnu packages stackage ghc-8.4 stage010) haskell-8.4-envy)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-fast-logger)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-link-header)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-monad-metrics)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-refined)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-rio)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-rio-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-string-conversions)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unliftio-core)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-wai-cli)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-wai-middleware-metrics)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://codeberg.org/valpackett/magicbane")
    (synopsis
     "A web framework that integrates Servant, RIO, EKG, fast-logger, wai-cli…")
    (description
     "Inspired by Dropwizard, Magicbane provides a packaged framework for developing web services using the best available libraries, including Servant, RIO, Aeson, EKG/monad-metrics, fast-logger, wai-cli and others.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-magicbane

(define-public haskell-8.4-mapquest-api
  (package
    (name "haskell-8.4-mapquest-api")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mapquest-api/mapquest-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11bvba2yyif31srkpwc8hzgfks4528l4v2m9jgvyh5hqp4hr4cs3"))))
    (properties `((upstream-name . "mapquest-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-goggles)
                  (@ (gnu packages stackage ghc-8.4 stage021) haskell-8.4-req)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ocramz/mapquest-api")
    (synopsis "Bindings to the MapQuest API")
    (description
     "This library provides a high-level interface to the MapQuest API. Currently only the \"geocoding\" API (street address to coordinates) is provided, but the functionality is straightforward to extend.")
    (license license:bsd-3)))

haskell-8.4-mapquest-api

(define-public haskell-8.4-microformats2-parser
  (package
    (name "haskell-8.4-microformats2-parser")
    (version "1.0.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microformats2-parser/microformats2-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lxbw825yg16nmflf93l1sy6mxa3dnd7a5mdalc034brsnf1vish"))))
    (properties `((upstream-name . "microformats2-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03g9mj15p1cxm2ia04ilj2w770lr7v4w9xv6xmhw617ypwbj4s8z")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-aeson-qq)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-either)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-errors)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-html-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-lens-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-options)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-pcre-heavy)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-scotty)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-wai-cli)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-xml-lens)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://codeberg.org/valpackett/microformats2-parser")
    (synopsis "A Microformats 2 parser.")
    (description
     "A parser for Microformats 2 (http://microformats.org/wiki/microformats2), a simple way to describe structured information in HTML.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-microformats2-parser

(define-public haskell-8.4-pandoc-citeproc
  (package
    (name "haskell-8.4-pandoc-citeproc")
    (version "0.14.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-citeproc/pandoc-citeproc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04cdx0b9k3xk2ss97vws21pydxcwxffsgh7xrqrnwwc3v7jn80fz"))))
    (properties `((upstream-name . "pandoc-citeproc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbibutils" "-f-embed_data_files" "-f-unicode_collation" "-f-test_citeproc" "-f-debug" "-f-static")
       #:cabal-revision
       ("1" "0gb6v8n7f7qpxbg0bh1cdq2w670zncby869igdx47f55rb8m88mq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-hs-bibutils)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-pandoc)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-pandoc-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-rfc5051)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-setenv)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-xml-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jgm/pandoc-citeproc")
    (synopsis "Supports using pandoc with citeproc")
    (description "The pandoc-citeproc library exports functions for
using the citeproc system with pandoc.  It relies on
citeproc-hs, a library for rendering
bibliographic reference citations into a variety
of styles using a macro language called Citation
Style Language (CSL). More details on CSL can be
found here: <http://citationstyles.org/>.

Currently this package includes a heavily revised
copy of the citeproc-hs code. When citeproc-hs is
updated to be compatible, this package will simply
depend on citeproc-hs.

This package also contains an executable: pandoc-citeproc,
which works as a pandoc filter, and
also has a mode for converting bibliographic databases
a YAML format suitable for inclusion in pandoc YAML
metadata.")
    (license license:bsd-3)))

haskell-8.4-pandoc-citeproc

(define-public haskell-8.4-servant-JuicyPixels
  (package
    (name "haskell-8.4-servant-JuicyPixels")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-JuicyPixels/servant-JuicyPixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10crrcrxap7751wifbc28kr1kv0rjvrx3wlnkajgv3xpr05g00kv"))))
    (properties `((upstream-name . "servant-JuicyPixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "185ym0ac6gx7f98pd92ykc1ib305lswzjzvykly4ij9vk85jn0ax")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tvh/servant-JuicyPixels")
    (synopsis "Servant support for JuicyPixels")
    (description
     "Provides content types for image types supported by JuicyPixels")
    (license license:bsd-3)))

haskell-8.4-servant-JuicyPixels

(define-public haskell-8.4-servant-auth-server
  (package
    (name "haskell-8.4-servant-auth-server")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-server/servant-auth-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "196dcnh1ycb23x6wb5m1p3iy8bws2grlx5i9mnnsav9n95yf15n9"))))
    (properties `((upstream-name . "servant-auth-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0l35r80yf1i3hjwls9cvhmzrjkgxfs103qcb1m650y77w1h3xr9p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-jose)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-monad-time)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-servant-auth)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-server/servant-auth compatibility")
    (description
     "This package provides the required instances for using the @@Auth@@ combinator
in your 'servant' server.

Both cookie- and token- (REST API) based authentication is provided.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.4-servant-auth-server

(define-public haskell-8.4-servant-checked-exceptions
  (package
    (name "haskell-8.4-servant-checked-exceptions")
    (version "2.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-checked-exceptions/servant-checked-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "127nav7z2zkgfgzpjjprqb6s55mbdj9z2p05knjx3mangs2q5wm7"))))
    (properties `((upstream-name . "servant-checked-exceptions")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")
       #:cabal-revision
       ("1" "0h18x8gimmczgml4rj74kx3463pwrsyxl2vnd13ra5hj0q44d683")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-hspec-wai)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-natural-transformation)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-profunctors)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-servant-checked-exceptions-core)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-servant-client)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-servant-client-core)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-servant-docs)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage015)
                     haskell-8.4-world-peace)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/servant-checked-exceptions")
    (synopsis "Checked exceptions for Servant APIs.")
    (description
     "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.")
    (license license:bsd-3)))

haskell-8.4-servant-checked-exceptions

(define-public haskell-8.4-servant-dhall
  (package
    (name "haskell-8.4-servant-dhall")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-dhall/servant-dhall-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yriifnflvh4f0vv2mrfv6qw0cv35isrq03q4h43g096ml2wl3ll"))))
    (properties `((upstream-name . "servant-dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "13mq4pwffxqpjirb6rfhzd2xqhm0xyycl98h6kf4j0ic38g3saz1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-dhall)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant Dhall content-type")
    (description
     "Servant Dhall bindings.

Provides @@MimeRender@@ and @@MimeUnrender@@ instances.
So you can accept and return Dhall expressions.

/Note:/ Reading (and evaluating) Dhall expressions from untrusted sources is a security risk.")
    (license license:bsd-3)))

haskell-8.4-servant-dhall

(define-public haskell-8.4-servant-exceptions
  (package
    (name "haskell-8.4-servant-exceptions")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-exceptions/servant-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qdb6ins7l0ryyrmg9j5pw428rlhkmzpbq5jqawfn01j8vf9yav5"))))
    (properties `((upstream-name . "servant-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/ch1bo/servant-exceptions#readme")
    (synopsis "")
    (description "Extensible exceptions for servant APIs")
    (license license:bsd-3)))

haskell-8.4-servant-exceptions

(define-public haskell-8.4-servant-github-webhook
  (package
    (name "haskell-8.4-servant-github-webhook")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-github-webhook/servant-github-webhook-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v6gd7swhl58x3sqbb5cmn5ac6x1p5mg7jqbwk9ny9bzggz9pglb"))))
    (properties `((upstream-name . "servant-github-webhook") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-github)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-github-webhooks)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-string-conversions)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tsani/servant-github-webhook")
    (synopsis "Servant combinators to facilitate writing GitHub webhooks.")
    (description
     "This package provides servant combinators that make writing safe GitHub
webhooks very simple.

It features automatic verification of the digital signatures provided by
GitHub in the webhook HTTP requests as well as route dispatching based on
repository event type.")
    (license license:expat)))

haskell-8.4-servant-github-webhook

(define-public haskell-8.4-servant-js
  (package
    (name "haskell-8.4-servant-js")
    (version "0.9.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-js/servant-js-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1p37520x85rg7rnhazby0x6qas2sh5d79gygmaa5f7jalhkyrq02"))))
    (properties `((upstream-name . "servant-js") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("3" "0j5kmqzhkyb1wmvyxz0r20473myzp9bqcdgjbi8i4k1lfvcjsigq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-charset)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-lens)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-servant-foreign)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis
     "Automatically derive javascript functions to query servant webservices.")
    (description
     "Automatically derive javascript functions to query servant webservices.

Supports deriving functions using vanilla javascript AJAX requests, Angulari, Axios or JQuery.

You can find an example <https://github.com/haskell-servant/servant-js/blob/master/servant-js/examples/counter.hs here>
which serves the generated javascript to a webpage that allows you to trigger
webservice calls.

<https://github.com/haskell-servant/servant-js/blob/master/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.4-servant-js

(define-public haskell-8.4-servant-lucid
  (package
    (name "haskell-8.4-servant-lucid")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-lucid/servant-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0g8icz12ydyxyv710fhixswdphiri0b44pw5p0dr21cvwbaxawb6"))))
    (properties `((upstream-name . "servant-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0jna96jy6nmhk6w5zxdd3qn3vlrnhnvh4s3f2bqkn3c0had5py7d")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-lucid)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant support for lucid")
    (description
     "Servant support for lucid.

'HTML' content type which will use `ToHtml` class.

Lucid.Servant uses `Link` rather than `Text` for safe 'href' attributes.")
    (license license:bsd-3)))

haskell-8.4-servant-lucid

(define-public haskell-8.4-servant-mock
  (package
    (name "haskell-8.4-servant-mock")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-mock/servant-mock-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1705fw63lrzw79w1ypcdlf35d8qxx247q8isiqh28wzmc4j3kmnr"))))
    (properties `((upstream-name . "servant-mock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")
       #:cabal-revision
       ("3" "13sbgnzr0yfrbrbvzc6v66lxrgvg3pb7h9alvmg77kmm95gmx8mm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-hspec-wai)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Derive a mock server for free from your servant API types")
    (description
     "Derive a mock server for free from your servant API types

See the @@Servant.Mock@@ module for the documentation and an example.")
    (license license:bsd-3)))

haskell-8.4-servant-mock

(define-public haskell-8.4-servant-static-th
  (package
    (name "haskell-8.4-servant-static-th")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-static-th/servant-static-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06vl8a9h5gzmfazj390fmxp6p4bwfdszqjdwnpivv03m80lh3v2v"))))
    (properties `((upstream-name . "servant-static-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005) haskell-8.4-Glob)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage014)
                     haskell-8.4-hspec-wai)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-servant-blaze)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/servant-static-th")
    (synopsis "Embed a directory of static files in your Servant server")
    (description
     "Please see <https://github.com/cdepillabout/servant-static-th#readme README.md>.")
    (license license:bsd-3)))

haskell-8.4-servant-static-th

(define-public haskell-8.4-servant-streaming-server
  (package
    (name "haskell-8.4-servant-streaming-server")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-streaming-server/servant-streaming-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lsh3x6hkbk7p095pkp7ld0m54xlkw0101x6nrxhjvhmw13aiq66"))))
    (properties `((upstream-name . "servant-streaming-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1xfx22a83xwq2bzv7gm3z9drd5hiq6wz7yyvfpjz1c2dcicwflvm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-pipes-http)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-servant-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-streaming-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-streaming-wai)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "http://github.com/plow-technologies/servant-streaming-server#readme")
    (synopsis "Server instances for the 'servant-streaming' package.")
    (description
     "This package defines instances that allow using the 'StreamBody' and 'StreamResponse' combinators in 'servant' servers.")
    (license license:bsd-3)))

haskell-8.4-servant-streaming-server

(define-public haskell-8.4-servant-swagger-ui-core
  (package
    (name "haskell-8.4-servant-swagger-ui-core")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui-core/servant-swagger-ui-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05lnm9p86rd9rxsz7f1zm5vkqzjcq2fd8an7c8y5fk4kxj6rydxb"))))
    (properties `((upstream-name . "servant-swagger-ui-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fservant-0-5")
       #:cabal-revision
       ("1" "10p5yjzvfdn764mszlsx49kb55ygzi5m2mq32l9m91imvj1926b1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-servant-blaze)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-swagger2)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui core components")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

See servant-swagger-ui, servant-swagger-ui-jensoleg or
servant-swagger-ui-redoc for \"concrete\" implementations.")
    (license license:bsd-3)))

haskell-8.4-servant-swagger-ui-core

(define-public haskell-8.4-servant-tracing
  (package
    (name "haskell-8.4-servant-tracing")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-tracing/servant-tracing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qpamaf3ydfb8197iz2prjh9nxwxi03cdfsp3jl28rhbqrc2xpry"))))
    (properties `((upstream-name . "servant-tracing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-http-api-data)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "https://github.com/ChrisCoffey/haskell-opentracing-light#readme")
    (synopsis "")
    (description
     "Please see the README on Github at <https://github.com/ChrisCoffey/haskell-opentracing-light#readme>")
    (license license:expat)))

haskell-8.4-servant-tracing

(define-public haskell-8.4-servant-websockets
  (package
    (name "haskell-8.4-servant-websockets")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-websockets/servant-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l8a5zc6wiwdfxv2kirb7kxky4zwj71rcrrg1zh07gc3vf4lqf33"))))
    (properties `((upstream-name . "servant-websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-wai-websockets)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/moesenle/servant-websockets#readme")
    (synopsis "Small library providing WebSocket endpoints for servant.")
    (description "Small library providing WebSocket endpoints for servant.")
    (license license:bsd-3)))

haskell-8.4-servant-websockets

(define-public haskell-8.4-servant-yaml
  (package
    (name "haskell-8.4-servant-yaml")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-yaml/servant-yaml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "011jxvr2i65bf0kmdn0sxkqgfz628a0sfhzphr1rqsmh8sqdj5y9"))))
    (properties `((upstream-name . "servant-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("22" "1mi52j2c7960k0qmxqd7238yxgbccb0xgfj3ahh0zfckficn9bk7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-http-media)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-servant)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-servant-server)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-yaml#readme")
    (synopsis "Servant support for yaml")
    (description "Servant support for yaml.")
    (license license:bsd-3)))

haskell-8.4-servant-yaml

(define-public haskell-8.4-stack
  (package
    (name "haskell-8.4-stack")
    (version "1.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stack/stack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17rjc9fz1hn56jz4bnhhm50h5x71r69jizlw6dx7kfvm57hg5i0r"))))
    (properties `((upstream-name . "stack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-disable-git-info" "-f-hide-dependency-versions" "-f-integration-tests" "-f-static" "-f-supported-build")
       #:cabal-revision
       ("10" "1985lm9m6pm9mi4h4m2nrn9v2rnnfh14slcnqgyxy6k934xqvg35")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-annotated-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bindings-uname)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-echo)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-filelock)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-gitrev)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hackage-security)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-hpack)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mintty)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-monad-logger)
                  (@ (gnu packages stackage ghc-8.4 stage016)
                     haskell-8.4-mono-traversable)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-mustache)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-open-browser)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-optparse-simple)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-path)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-path-io)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-persistent-template)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-project-template)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-regex-applicative-text)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-retry)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-rio)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-store)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-store-core)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-tar)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-text-metrics)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-th-reify-many)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-tls)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-typed-process)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-zip-archive)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskellstack.org")
    (synopsis "The Haskell Tool Stack")
    (description
     "Please see the README.md for usage information, and the wiki on Github for more details.  Also, note that the API for the library is not currently stable, and may change significantly, even between minor releases. It is currently only intended for use by the executable.")
    (license license:bsd-3)))

haskell-8.4-stack

(define-public haskell-8.4-wai-middleware-crowd
  (package
    (name "haskell-8.4-wai-middleware-crowd")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-crowd/wai-middleware-crowd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n5h4s3b2fdn2j0pl32bsdbf6wyyf2ms8qsbcs9r0wp7dhdbcdhi"))))
    (properties `((upstream-name . "wai-middleware-crowd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qvh92p9s80kmzg5w7rga54kfqbwcrkkv5p03pd92px04j2h5lbm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-authenticate)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-clientsession)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-gitrev)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vault)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-app-static)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/wai-middleware-crowd")
    (synopsis
     "Middleware and utilities for using Atlassian Crowd authentication")
    (description "See README")
    (license license:expat)))

haskell-8.4-wai-middleware-crowd

(define-public haskell-8.4-wai-transformers
  (package
    (name "haskell-8.4-wai-transformers")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-transformers/wai-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14l5ihyvg2n0kmmkxy0r5mx1jk3p5jhv1vynsnnrb2md1g4318qp"))))
    (properties `((upstream-name . "wai-transformers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extractable-singleton)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control-aligned)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-wai-websockets)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/athanclark/wai-transformers#readme")
    (synopsis "")
    (description
     "Please see the README on Github at <https://git.localcooking.com/tooling/wai-transformers#readme>")
    (license license:bsd-3)))

haskell-8.4-wai-transformers

(define-public haskell-8.4-webex-teams-conduit
  (package
    (name "haskell-8.4-webex-teams-conduit")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-conduit/webex-teams-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p9ffj3qm84c7m4w5bfpn53vcs96p7gdlyk87mjmc9h9i6v7sz0d"))))
    (properties `((upstream-name . "webex-teams-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
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
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Conduit wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.4-webex-teams-conduit

(define-public haskell-8.4-webex-teams-pipes
  (package
    (name "haskell-8.4-webex-teams-pipes")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webex-teams-pipes/webex-teams-pipes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "001ilf2yj6q8rqcagjlh28rad191jyjjr1cpk6cf84v66isdbykp"))))
    (properties `((upstream-name . "webex-teams-pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
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
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-webex-teams-api)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nshimaza/webex-teams-api#readme")
    (synopsis "Pipes wrapper of Webex Teams List API")
    (description
     "Please see the README on Github at <https://github.com/nshimaza/webex-teams-api#readme>")
    (license license:expat)))

haskell-8.4-webex-teams-pipes

(define-public haskell-8.4-yesod-bin
  (package
    (name "haskell-8.4-yesod-bin")
    (version "1.6.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-bin/yesod-bin-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1p5f6bl4gynm47m1xg1x1xh9nz913i83iprh2xd207359idjknz4"))))
    (properties `((upstream-name . "yesod-bin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1iw9m3z6m4n9dlwamf1kwr7pp2wpk6awf1m63zjkgw5j4vwxlcpg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage018)
                     haskell-8.4-conduit-extra)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-fsnotify)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-http-reverse-proxy)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-project-template)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-say)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-shakespeare)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-tar)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage020) haskell-8.4-warp)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-warp-tls)
                  (@ (gnu packages stackage ghc-8.4 stage018) haskell-8.4-yaml)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "The yesod helper executable.")
    (description "See README.md for more information")
    (license license:expat)))

haskell-8.4-yesod-bin

(define-public haskell-8.4-yesod-fb
  (package
    (name "haskell-8.4-yesod-fb")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-fb/yesod-fb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ns113f2ylim1b3r2dgwgc65yfy6qxjh9miqfz2fx29fq4250dyy"))))
    (properties `((upstream-name . "yesod-fb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage022) haskell-8.4-fb)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-http-client-tls)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-http-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/psibi/yesod-fb")
    (synopsis "Useful glue functions between the fb library and Yesod.")
    (description "This package contains useful glue functions between the fb
package (<http://hackage.haskell.org/package/fb>) and Yesod.
These functions can't be included on the fb package itself
because it should not depend on Yesod.")
    (license license:bsd-3)))

haskell-8.4-yesod-fb

(define-public haskell-8.4-yesod-persistent
  (package
    (name "haskell-8.4-yesod-persistent")
    (version "1.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-persistent/yesod-persistent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kxxm43d64lp4p7kmmpc9c0rany9nblf5dd1424m8wg3105cr2kl"))))
    (properties `((upstream-name . "yesod-persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage020)
                     haskell-8.4-persistent)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-persistent-template)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Some helpers for using Persistent from Yesod.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-persistent>")
    (license license:expat)))

haskell-8.4-yesod-persistent

(define-public haskell-8.4-yesod-static
  (package
    (name "haskell-8.4-yesod-static")
    (version "1.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-static/yesod-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jd0ryfr2vyrwasyvbqmc6j4ngv1lgz78w427f169l7gyl1firxb"))))
    (properties `((upstream-name . "yesod-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage019)
                     haskell-8.4-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-css-text)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-hjsmin)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mime-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-wai-app-static)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Static file serving subsite for Yesod Web Framework.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-static>")
    (license license:expat)))

haskell-8.4-yesod-static

(define-public haskell-8.4-yesod-websockets
  (package
    (name "haskell-8.4-yesod-websockets")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-websockets/yesod-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k41qglb5fdzykyfpml4w74cg2m95ggm2jrnqy7bkj2l0fm4gjc6"))))
    (properties `((upstream-name . "yesod-websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage017)
                     haskell-8.4-conduit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)
                  (@ (gnu packages stackage ghc-8.4 stage022)
                     haskell-8.4-wai-websockets)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-websockets)
                  (@ (gnu packages stackage ghc-8.4 stage021)
                     haskell-8.4-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/yesodweb/yesod")
    (synopsis "WebSockets support for Yesod")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-websockets>")
    (license license:expat)))

haskell-8.4-yesod-websockets

