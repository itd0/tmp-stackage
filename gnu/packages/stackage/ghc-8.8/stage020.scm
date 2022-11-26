;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage020)
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
(define-public haskell-8.8-Allure
  (package
    (name "haskell-8.8-Allure")
    (version "0.9.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Allure/Allure-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cl1r3rcbkj8q290l3q5xva7lkh444s49xz8bm8sbgrk0q3zx041"))))
    (properties `((upstream-name . "Allure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsupportnodejs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-LambdaHack)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-enummapset)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-compact)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://allureofthestars.com")
    (synopsis "Near-future Sci-Fi roguelike and tactical squad combat game")
    (description
     "Allure of the Stars is a near-future Sci-Fi roguelike
and tactical squad combat game. Binaries and the game manual
are available at the homepage, where you can also
try the game out in the browser:
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
based on player behaviour. Contributions are welcome.

This is a workaround .cabal file, flattened to eliminated
internal libraries until generating haddocks for them
is fixed. The original .cabal file is stored in the github repo.")
    (license license:agpl3+)))

haskell-8.8-Allure

(define-public haskell-8.8-Chart-diagrams
  (package
    (name "haskell-8.8-Chart-diagrams")
    (version "1.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Chart-diagrams/Chart-diagrams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "075yzq50jpakgq6lb3anr660jydm68ry0di33icdacbdymq8avwn"))))
    (properties `((upstream-name . "Chart-diagrams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "048hlb1517q9qf8pkbi6479qghpn2n9krq6h2ci0z81v1p7mcv9y")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-Chart)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-SVGFonts)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-colour)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-diagrams-core)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-diagrams-postscript)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-diagrams-svg)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-operational)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-svg-builder)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/timbod7/haskell-chart/wiki")
    (synopsis "Diagrams backend for Charts.")
    (description "Diagrams backend for Charts.")
    (license license:bsd-3)))

haskell-8.8-Chart-diagrams

(define-public haskell-8.8-amazonka-apigateway
  (package
    (name "haskell-8.8-amazonka-apigateway")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-apigateway/amazonka-apigateway-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11gkml1xp2h5j9idgk84h6nlz2fvszrrn9hmqjm4b76hj3a3v11v"))))
    (properties `((upstream-name . "amazonka-apigateway") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon API Gateway SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.APIGateway\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-apigateway

(define-public haskell-8.8-amazonka-application-autoscaling
  (package
    (name "haskell-8.8-amazonka-application-autoscaling")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-application-autoscaling/amazonka-application-autoscaling-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11njiad7rzx2vbzr6m3qwrvzqaplnp6h1zkd92mcc16chaial3ns"))))
    (properties `((upstream-name . "amazonka-application-autoscaling")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Application Auto Scaling SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ApplicationAutoScaling\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-application-autoscaling

(define-public haskell-8.8-amazonka-appstream
  (package
    (name "haskell-8.8-amazonka-appstream")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-appstream/amazonka-appstream-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1308gj35ibv54asgwng2rxsvwyz5gmcnfigikm1ib950a33zli36"))))
    (properties `((upstream-name . "amazonka-appstream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon AppStream SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.AppStream\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-appstream

(define-public haskell-8.8-amazonka-athena
  (package
    (name "haskell-8.8-amazonka-athena")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-athena/amazonka-athena-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17avw47p6jkfbwgr4hlv0kx10xbjgm2rfpdj26whjzwv1mpy83ip"))))
    (properties `((upstream-name . "amazonka-athena") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Athena SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Athena\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-athena

(define-public haskell-8.8-amazonka-autoscaling
  (package
    (name "haskell-8.8-amazonka-autoscaling")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-autoscaling/amazonka-autoscaling-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0569mjl9k4v0z740vhaz665zy5s3jzrvp562n4j6mkim9p0svd1g"))))
    (properties `((upstream-name . "amazonka-autoscaling") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Auto Scaling SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.AutoScaling\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-autoscaling

(define-public haskell-8.8-amazonka-budgets
  (package
    (name "haskell-8.8-amazonka-budgets")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-budgets/amazonka-budgets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wv25m25dnwsv3r8njjjg4ffy8d3r1xw5q56adhpifir0j2j1aw4"))))
    (properties `((upstream-name . "amazonka-budgets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Budgets SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Budgets\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-budgets

(define-public haskell-8.8-amazonka-certificatemanager
  (package
    (name "haskell-8.8-amazonka-certificatemanager")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-certificatemanager/amazonka-certificatemanager-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wlyd1wn11ngq5pbh3mcg1acknsycyc9j41l7miwir5swxkpngc3"))))
    (properties `((upstream-name . "amazonka-certificatemanager")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Certificate Manager SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CertificateManager\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-certificatemanager

(define-public haskell-8.8-amazonka-cloudformation
  (package
    (name "haskell-8.8-amazonka-cloudformation")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudformation/amazonka-cloudformation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j5gsgswcflfrmry777drc7f7619azr1qffdz636y2vb8nsyl8z8"))))
    (properties `((upstream-name . "amazonka-cloudformation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudFormation SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudFormation\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cloudformation

(define-public haskell-8.8-amazonka-cloudfront
  (package
    (name "haskell-8.8-amazonka-cloudfront")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudfront/amazonka-cloudfront-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yd7vx90wnjid99gq4vypxfmgqjrfa4ws2s7x77qx1rl1pxh0ncc"))))
    (properties `((upstream-name . "amazonka-cloudfront") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudFront SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudFront\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cloudfront

(define-public haskell-8.8-amazonka-cloudhsm
  (package
    (name "haskell-8.8-amazonka-cloudhsm")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudhsm/amazonka-cloudhsm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06d0w3h3njblqjh95crf6gslkdcjx29g1h66f6z0gqikrwiy5prl"))))
    (properties `((upstream-name . "amazonka-cloudhsm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudHSM SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudHSM\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cloudhsm

(define-public haskell-8.8-amazonka-cloudsearch
  (package
    (name "haskell-8.8-amazonka-cloudsearch")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudsearch/amazonka-cloudsearch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p3srndrj4kgwwz9021mfh91za8qgrhf4hzk02nva6awdp114j6h"))))
    (properties `((upstream-name . "amazonka-cloudsearch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudSearch SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudSearch\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cloudsearch

(define-public haskell-8.8-amazonka-cloudsearch-domains
  (package
    (name "haskell-8.8-amazonka-cloudsearch-domains")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudsearch-domains/amazonka-cloudsearch-domains-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07xihv4bay6vz9pw89y3issfmi7iicryzi1wh22sxw3qb1jnq6q4"))))
    (properties `((upstream-name . "amazonka-cloudsearch-domains")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudSearch Domain SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudSearchDomains\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cloudsearch-domains

(define-public haskell-8.8-amazonka-cloudtrail
  (package
    (name "haskell-8.8-amazonka-cloudtrail")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudtrail/amazonka-cloudtrail-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1abx1xp75fdnavxwxi2ak5gk3b2vc2380znv3mi28s72l8aprk2m"))))
    (properties `((upstream-name . "amazonka-cloudtrail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudTrail SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudTrail\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cloudtrail

(define-public haskell-8.8-amazonka-cloudwatch
  (package
    (name "haskell-8.8-amazonka-cloudwatch")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudwatch/amazonka-cloudwatch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v9j950qlfhy4dz77kq0329877050lpwaqi5h5s00kxiqwbvcmjf"))))
    (properties `((upstream-name . "amazonka-cloudwatch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudWatch SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudWatch\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cloudwatch

(define-public haskell-8.8-amazonka-cloudwatch-events
  (package
    (name "haskell-8.8-amazonka-cloudwatch-events")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudwatch-events/amazonka-cloudwatch-events-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ikn7z6fp648qi5ch664wnym6v1mcq37khxw7fwfnfqnir13sclb"))))
    (properties `((upstream-name . "amazonka-cloudwatch-events")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudWatch Events SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudWatchEvents\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cloudwatch-events

(define-public haskell-8.8-amazonka-cloudwatch-logs
  (package
    (name "haskell-8.8-amazonka-cloudwatch-logs")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cloudwatch-logs/amazonka-cloudwatch-logs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "146llix63givxlry48la1m5c28q9008bmpfmbj3x5mwrgjxxxpv1"))))
    (properties `((upstream-name . "amazonka-cloudwatch-logs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CloudWatch Logs SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CloudWatchLogs\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cloudwatch-logs

(define-public haskell-8.8-amazonka-codebuild
  (package
    (name "haskell-8.8-amazonka-codebuild")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codebuild/amazonka-codebuild-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c56766yz3dj1zq643503mphdw7kb82kfn63ldi6f7i6dc5yyx8k"))))
    (properties `((upstream-name . "amazonka-codebuild") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CodeBuild SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CodeBuild\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-codebuild

(define-public haskell-8.8-amazonka-codecommit
  (package
    (name "haskell-8.8-amazonka-codecommit")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codecommit/amazonka-codecommit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cq73pd93la058sgpcvhmrqc5r4splh5x9w571fxrilmc08a6fdn"))))
    (properties `((upstream-name . "amazonka-codecommit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CodeCommit SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CodeCommit\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-codecommit

(define-public haskell-8.8-amazonka-codedeploy
  (package
    (name "haskell-8.8-amazonka-codedeploy")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codedeploy/amazonka-codedeploy-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yjlbcbzfp72621sj458b2lv35rf8fcr88ljb47mrp7ihb86zzrx"))))
    (properties `((upstream-name . "amazonka-codedeploy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CodeDeploy SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CodeDeploy\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-codedeploy

(define-public haskell-8.8-amazonka-codepipeline
  (package
    (name "haskell-8.8-amazonka-codepipeline")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-codepipeline/amazonka-codepipeline-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jb5775n31yhbqahv8jiiz5i1qzvq5rls3f1jf35wnwjvzzzz85z"))))
    (properties `((upstream-name . "amazonka-codepipeline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon CodePipeline SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CodePipeline\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-codepipeline

(define-public haskell-8.8-amazonka-cognito-identity
  (package
    (name "haskell-8.8-amazonka-cognito-identity")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cognito-identity/amazonka-cognito-identity-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0142kq7hfdala7bl9l1d5s0rkf50zz89qm6m0f3mpfp4iiaphxxr"))))
    (properties `((upstream-name . "amazonka-cognito-identity")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Cognito Identity SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CognitoIdentity\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cognito-identity

(define-public haskell-8.8-amazonka-cognito-idp
  (package
    (name "haskell-8.8-amazonka-cognito-idp")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cognito-idp/amazonka-cognito-idp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06zhx3rajqf0llc5xvyp9nd77pb0h5mfv8f83kbp9696yi7c6qnz"))))
    (properties `((upstream-name . "amazonka-cognito-idp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Cognito Identity Provider SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CognitoIdentityProvider\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cognito-idp

(define-public haskell-8.8-amazonka-cognito-sync
  (package
    (name "haskell-8.8-amazonka-cognito-sync")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-cognito-sync/amazonka-cognito-sync-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qyvj02y7c0lvw5axr50l22pvmzj8l6c8ivdlf6myrdmfb8gjj70"))))
    (properties `((upstream-name . "amazonka-cognito-sync") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Cognito Sync SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.CognitoSync\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-cognito-sync

(define-public haskell-8.8-amazonka-config
  (package
    (name "haskell-8.8-amazonka-config")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-config/amazonka-config-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d38y292gwq7ix0gvrkznc7007jlr8an2wzrxn0rjca0f24vldpz"))))
    (properties `((upstream-name . "amazonka-config") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Config SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Config\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-config

(define-public haskell-8.8-amazonka-datapipeline
  (package
    (name "haskell-8.8-amazonka-datapipeline")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-datapipeline/amazonka-datapipeline-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08mig2diwr6ryyvin3w9rj3w37lm02v85c3bhnz5k7649s255xvb"))))
    (properties `((upstream-name . "amazonka-datapipeline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Data Pipeline SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DataPipeline\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-datapipeline

(define-public haskell-8.8-amazonka-devicefarm
  (package
    (name "haskell-8.8-amazonka-devicefarm")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-devicefarm/amazonka-devicefarm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v43k8vyal9zi91yad3518jlr5qj975l27hbdri7q7w9iax5pn5y"))))
    (properties `((upstream-name . "amazonka-devicefarm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Device Farm SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DeviceFarm\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-devicefarm

(define-public haskell-8.8-amazonka-directconnect
  (package
    (name "haskell-8.8-amazonka-directconnect")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-directconnect/amazonka-directconnect-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nq4zax36am2y5p51g4giqln26nbjyykgprqa6z1hl8ls659jqfw"))))
    (properties `((upstream-name . "amazonka-directconnect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Direct Connect SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DirectConnect\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-directconnect

(define-public haskell-8.8-amazonka-discovery
  (package
    (name "haskell-8.8-amazonka-discovery")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-discovery/amazonka-discovery-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17a47yhqy7hs9vhj0iwby14irh732j2d00sm7zh3xpvipwrckaq2"))))
    (properties `((upstream-name . "amazonka-discovery") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Application Discovery Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Discovery\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-discovery

(define-public haskell-8.8-amazonka-dms
  (package
    (name "haskell-8.8-amazonka-dms")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-dms/amazonka-dms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11zdwcl0cz7fpamc7a9smg6qjnkc3a77l1g8k9q5y0yprhbzcycc"))))
    (properties `((upstream-name . "amazonka-dms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Database Migration Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DMS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-dms

(define-public haskell-8.8-amazonka-ds
  (package
    (name "haskell-8.8-amazonka-ds")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ds/amazonka-ds-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zy8sr49ls5qzijr7phsbc5xmxsc4hqc1dwrzkm5cmc69abhfj7v"))))
    (properties `((upstream-name . "amazonka-ds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Directory Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DirectoryService\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-ds

(define-public haskell-8.8-amazonka-dynamodb
  (package
    (name "haskell-8.8-amazonka-dynamodb")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-dynamodb/amazonka-dynamodb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10hxbkq15l2hcyjjspi3kf05m3294ywk51vw82j3c1pii1n4h804"))))
    (properties `((upstream-name . "amazonka-dynamodb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon DynamoDB SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DynamoDB\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-dynamodb

(define-public haskell-8.8-amazonka-dynamodb-streams
  (package
    (name "haskell-8.8-amazonka-dynamodb-streams")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-dynamodb-streams/amazonka-dynamodb-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nfr9sqiirxb9a8j6ix2l1mhyrwx061q4h7lr57ar7arj9lanbgy"))))
    (properties `((upstream-name . "amazonka-dynamodb-streams")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon DynamoDB Streams SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.DynamoDBStreams\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-dynamodb-streams

(define-public haskell-8.8-amazonka-ecr
  (package
    (name "haskell-8.8-amazonka-ecr")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ecr/amazonka-ecr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n3kdkmmwasqg7gkhmszkhvzsfp90mjlhfwx02v12gpn83b5s39d"))))
    (properties `((upstream-name . "amazonka-ecr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon EC2 Container Registry SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ECR\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-ecr

(define-public haskell-8.8-amazonka-ecs
  (package
    (name "haskell-8.8-amazonka-ecs")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ecs/amazonka-ecs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fhv3b62anx1zlspmdi5l44qgsk4xd7s0p2vxczvzf82mcli21sm"))))
    (properties `((upstream-name . "amazonka-ecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon EC2 Container Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ECS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-ecs

(define-public haskell-8.8-amazonka-efs
  (package
    (name "haskell-8.8-amazonka-efs")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-efs/amazonka-efs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "135isr1khawf2ap3ba791aynlm74hay7jddhrf6vsfscn1z087kl"))))
    (properties `((upstream-name . "amazonka-efs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic File System SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.EFS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-efs

(define-public haskell-8.8-amazonka-elasticache
  (package
    (name "haskell-8.8-amazonka-elasticache")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elasticache/amazonka-elasticache-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q7bzr3xcc78163md6i1gzxhbqrb98x8clisp9vynhvw5vh8lbad"))))
    (properties `((upstream-name . "amazonka-elasticache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon ElastiCache SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ElastiCache\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-elasticache

(define-public haskell-8.8-amazonka-elasticbeanstalk
  (package
    (name "haskell-8.8-amazonka-elasticbeanstalk")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elasticbeanstalk/amazonka-elasticbeanstalk-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sczhwhckhgyf3dbmp0hnaikqkym94kyndyqzpsl9m8p0blgkm1a"))))
    (properties `((upstream-name . "amazonka-elasticbeanstalk")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic Beanstalk SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ElasticBeanstalk\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-elasticbeanstalk

(define-public haskell-8.8-amazonka-elasticsearch
  (package
    (name "haskell-8.8-amazonka-elasticsearch")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elasticsearch/amazonka-elasticsearch-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04ya0s83gakhbkpgimmgjax09caww8y7cx1nm1j02fminifivycy"))))
    (properties `((upstream-name . "amazonka-elasticsearch") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elasticsearch Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ElasticSearch\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-elasticsearch

(define-public haskell-8.8-amazonka-elastictranscoder
  (package
    (name "haskell-8.8-amazonka-elastictranscoder")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elastictranscoder/amazonka-elastictranscoder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nzvjzb91jka0wiimvjh5hlfqw92bsn16m1dvgnk315p7pgfg06z"))))
    (properties `((upstream-name . "amazonka-elastictranscoder")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic Transcoder SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ElasticTranscoder\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-elastictranscoder

(define-public haskell-8.8-amazonka-elb
  (package
    (name "haskell-8.8-amazonka-elb")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elb/amazonka-elb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "178hpbk35vbc6lrmpjkdc57d8961bbv8nqn1bajxm65q3nwfqpjv"))))
    (properties `((upstream-name . "amazonka-elb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic Load Balancing SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ELB\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-elb

(define-public haskell-8.8-amazonka-elbv2
  (package
    (name "haskell-8.8-amazonka-elbv2")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-elbv2/amazonka-elbv2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ybv5wwfn0cnd3qwk7r343jihq6m0h15f6xr2a2yxjs8wizr0h37"))))
    (properties `((upstream-name . "amazonka-elbv2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic Load Balancing SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ELBv2\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-elbv2

(define-public haskell-8.8-amazonka-emr
  (package
    (name "haskell-8.8-amazonka-emr")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-emr/amazonka-emr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g475pn0sxf4widb2xqpsm4awvqj6glpdj3ryyqhp7i38wvcg4sb"))))
    (properties `((upstream-name . "amazonka-emr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Elastic MapReduce SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.EMR\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-emr

(define-public haskell-8.8-amazonka-gamelift
  (package
    (name "haskell-8.8-amazonka-gamelift")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-gamelift/amazonka-gamelift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cp3w3xi5icwh9ss168hsz49rq0d4wqns8kbx1aar7lchm85bj69"))))
    (properties `((upstream-name . "amazonka-gamelift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon GameLift SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.GameLift\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-gamelift

(define-public haskell-8.8-amazonka-glacier
  (package
    (name "haskell-8.8-amazonka-glacier")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-glacier/amazonka-glacier-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11q8ajyx8nf9lc7wr7vwpg1gvp4wwb83zyv17cdpr60g7mrwymav"))))
    (properties `((upstream-name . "amazonka-glacier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Glacier SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Glacier\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-glacier

(define-public haskell-8.8-amazonka-glue
  (package
    (name "haskell-8.8-amazonka-glue")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-glue/amazonka-glue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17z8bcgahxw7apanj9nm9srj47dxwshmkwm828jm49wpkcvk0akb"))))
    (properties `((upstream-name . "amazonka-glue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Glue SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Glue\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-glue

(define-public haskell-8.8-amazonka-health
  (package
    (name "haskell-8.8-amazonka-health")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-health/amazonka-health-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xs6fsl7z8qq40vi79nasfxwlxxm2ljpzh4c1b77v6q1mkak7dd2"))))
    (properties `((upstream-name . "amazonka-health") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Health APIs and Notifications SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.AWSHealth\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-health

(define-public haskell-8.8-amazonka-iam
  (package
    (name "haskell-8.8-amazonka-iam")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-iam/amazonka-iam-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mz7qdk19n3cs9iy5sf7h4g7a7sfimbb4lrk992f9ykmmyj0cl8x"))))
    (properties `((upstream-name . "amazonka-iam") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Identity and Access Management SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.IAM\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-iam

(define-public haskell-8.8-amazonka-importexport
  (package
    (name "haskell-8.8-amazonka-importexport")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-importexport/amazonka-importexport-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13nxssqayp917g2ynmvva2mk0dqd724f891jx4z0cnlxrja2856f"))))
    (properties `((upstream-name . "amazonka-importexport") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Import/Export SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ImportExport\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-importexport

(define-public haskell-8.8-amazonka-inspector
  (package
    (name "haskell-8.8-amazonka-inspector")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-inspector/amazonka-inspector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x5nxw2nb64ahjw4hy8lp7w32mqsq0zj0skj116pa4yf6p1v7d38"))))
    (properties `((upstream-name . "amazonka-inspector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Inspector SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Inspector\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-inspector

(define-public haskell-8.8-amazonka-iot
  (package
    (name "haskell-8.8-amazonka-iot")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-iot/amazonka-iot-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10y65lma8m8cyz753r3pkaayqfyhxs8103y63v0dardrvci3jxji"))))
    (properties `((upstream-name . "amazonka-iot") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon IoT SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.IoT\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-iot

(define-public haskell-8.8-amazonka-iot-dataplane
  (package
    (name "haskell-8.8-amazonka-iot-dataplane")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-iot-dataplane/amazonka-iot-dataplane-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j0bqaw6nc3nhq6wbm1jlm7kdkf497xnba4yxk3q27gbx5zzjhvv"))))
    (properties `((upstream-name . "amazonka-iot-dataplane") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon IoT Data Plane SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.IoTData\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-iot-dataplane

(define-public haskell-8.8-amazonka-kinesis
  (package
    (name "haskell-8.8-amazonka-kinesis")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kinesis/amazonka-kinesis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rsipc64ia9hwcvw5bn0055bisq04kihnhzb4wzfvbgrzgrxrqsz"))))
    (properties `((upstream-name . "amazonka-kinesis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Kinesis SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Kinesis\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-kinesis

(define-public haskell-8.8-amazonka-kinesis-analytics
  (package
    (name "haskell-8.8-amazonka-kinesis-analytics")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kinesis-analytics/amazonka-kinesis-analytics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16bf0sqyrgphhbqi8lxzmgb818m7yajmdcwmzgz3w99zzad9qn5g"))))
    (properties `((upstream-name . "amazonka-kinesis-analytics")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Kinesis Analytics SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.KinesisAnalytics\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-kinesis-analytics

(define-public haskell-8.8-amazonka-kinesis-firehose
  (package
    (name "haskell-8.8-amazonka-kinesis-firehose")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kinesis-firehose/amazonka-kinesis-firehose-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bc7d36zs3b0nx2889hpnk45fcrn3dknn2c6gg19wk1k7zz0p8g4"))))
    (properties `((upstream-name . "amazonka-kinesis-firehose")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Kinesis Firehose SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Firehose\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-kinesis-firehose

(define-public haskell-8.8-amazonka-kms
  (package
    (name "haskell-8.8-amazonka-kms")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-kms/amazonka-kms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11b2jnfdj2z3v65cbwwryr35n9pjf488mrs90j2prx6ijb1kwcvd"))))
    (properties `((upstream-name . "amazonka-kms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Key Management Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.KMS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-kms

(define-public haskell-8.8-amazonka-lambda
  (package
    (name "haskell-8.8-amazonka-lambda")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-lambda/amazonka-lambda-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18yc1wk7dbyxjdqkdyp1hi45i8vc95imaj0xfr29yq5dbkqmyawp"))))
    (properties `((upstream-name . "amazonka-lambda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Lambda SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Lambda\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-lambda

(define-public haskell-8.8-amazonka-lightsail
  (package
    (name "haskell-8.8-amazonka-lightsail")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-lightsail/amazonka-lightsail-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07lknfz41jc4vjd76ql32h6bbbhpb82wafj7w3ifwnxaz2h8wrvw"))))
    (properties `((upstream-name . "amazonka-lightsail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Lightsail SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Lightsail\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-lightsail

(define-public haskell-8.8-amazonka-marketplace-analytics
  (package
    (name "haskell-8.8-amazonka-marketplace-analytics")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-marketplace-analytics/amazonka-marketplace-analytics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z8kl946ssilj4vb50a5pv21kyfd0fp1bs3l3xyxjc1ynypq5xbg"))))
    (properties `((upstream-name . "amazonka-marketplace-analytics")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Marketplace Commerce Analytics SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.MarketplaceAnalytics\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-marketplace-analytics

(define-public haskell-8.8-amazonka-marketplace-metering
  (package
    (name "haskell-8.8-amazonka-marketplace-metering")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-marketplace-metering/amazonka-marketplace-metering-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dshx2nyhsywmx491cvzfcr3dz847q7mjdj9zwli9f6kzgldp2wj"))))
    (properties `((upstream-name . "amazonka-marketplace-metering")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Marketplace Metering SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.MarketplaceMetering\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-marketplace-metering

(define-public haskell-8.8-amazonka-ml
  (package
    (name "haskell-8.8-amazonka-ml")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ml/amazonka-ml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wmqlx4k17m3zywkj39z3fv6jbmhhz9w7ax1g465gzizcswc1ixq"))))
    (properties `((upstream-name . "amazonka-ml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Machine Learning SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.MachineLearning\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-ml

(define-public haskell-8.8-amazonka-opsworks
  (package
    (name "haskell-8.8-amazonka-opsworks")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-opsworks/amazonka-opsworks-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15magxqrylyxdkqa5xyihq00nfh4pv0g7wl6gp9smvg5svq1c5qa"))))
    (properties `((upstream-name . "amazonka-opsworks") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon OpsWorks SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.OpsWorks\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-opsworks

(define-public haskell-8.8-amazonka-opsworks-cm
  (package
    (name "haskell-8.8-amazonka-opsworks-cm")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-opsworks-cm/amazonka-opsworks-cm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mya7swx8x4p7wz17p62jn8ixw4xi72w6691r4ay5gphl81pi1ai"))))
    (properties `((upstream-name . "amazonka-opsworks-cm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon OpsWorks for Chef Automate SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.OpsWorksCM\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-opsworks-cm

(define-public haskell-8.8-amazonka-pinpoint
  (package
    (name "haskell-8.8-amazonka-pinpoint")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-pinpoint/amazonka-pinpoint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11zw2xkn39c75frqpm67x2qpb63xzl25633ny0b3rbdpak8w4f5a"))))
    (properties `((upstream-name . "amazonka-pinpoint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Pinpoint SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Pinpoint\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-pinpoint

(define-public haskell-8.8-amazonka-polly
  (package
    (name "haskell-8.8-amazonka-polly")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-polly/amazonka-polly-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vyckykw1in9qlz824k4zmn9xixlf2ak479vfcb1p872ri2pb25h"))))
    (properties `((upstream-name . "amazonka-polly") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Polly SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Polly\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-polly

(define-public haskell-8.8-amazonka-rds
  (package
    (name "haskell-8.8-amazonka-rds")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-rds/amazonka-rds-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08cl73fczrf94k5z92w2cpf3ngrcqhb6xiygbh3vv4wh6l541lpw"))))
    (properties `((upstream-name . "amazonka-rds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Relational Database Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.RDS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-rds

(define-public haskell-8.8-amazonka-redshift
  (package
    (name "haskell-8.8-amazonka-redshift")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-redshift/amazonka-redshift-"
                    version ".tar.gz"))
              (sha256
               (base32
                "051281bgr65xsyac3vy1zbjs3v3avw4f2wk1743cqdjnarg8bsl7"))))
    (properties `((upstream-name . "amazonka-redshift") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Redshift SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Redshift\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-redshift

(define-public haskell-8.8-amazonka-rekognition
  (package
    (name "haskell-8.8-amazonka-rekognition")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-rekognition/amazonka-rekognition-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y7qm7k9y9w0lm09qpzi5p1jld3i78x0pr446q37li15m3pgn81y"))))
    (properties `((upstream-name . "amazonka-rekognition") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Rekognition SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Rekognition\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-rekognition

(define-public haskell-8.8-amazonka-route53
  (package
    (name "haskell-8.8-amazonka-route53")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-route53/amazonka-route53-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wspqzdz0i07b4jg80w9vbzmd12pzv7l5dpjnhk2mvbdbgd44r3w"))))
    (properties `((upstream-name . "amazonka-route53") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Route 53 SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Route53\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-route53

(define-public haskell-8.8-amazonka-route53-domains
  (package
    (name "haskell-8.8-amazonka-route53-domains")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-route53-domains/amazonka-route53-domains-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s529dzwf92scjwbvyvrcfcs9ma1yvcgrwla79fj74f38mscsarc"))))
    (properties `((upstream-name . "amazonka-route53-domains") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Route 53 Domains SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Route53Domains\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-route53-domains

(define-public haskell-8.8-amazonka-s3
  (package
    (name "haskell-8.8-amazonka-s3")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-s3/amazonka-s3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a3y2q3xmb249giwjvsgva26ky315bnsii6s9gqvhd5g9q9b1827"))))
    (properties `((upstream-name . "amazonka-s3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Storage Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.S3\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-s3

(define-public haskell-8.8-amazonka-sdb
  (package
    (name "haskell-8.8-amazonka-sdb")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sdb/amazonka-sdb-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yiap66yqkr453dgkn9q74xmc1g6afqj6ghnhp795lf35igmid2k"))))
    (properties `((upstream-name . "amazonka-sdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon SimpleDB SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SDB\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-sdb

(define-public haskell-8.8-amazonka-servicecatalog
  (package
    (name "haskell-8.8-amazonka-servicecatalog")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-servicecatalog/amazonka-servicecatalog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jzm0xsn52qh9ihjn73wgnkil6gnrxvp97x7d881nzyvg5yavmml"))))
    (properties `((upstream-name . "amazonka-servicecatalog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Service Catalog SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.ServiceCatalog\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-servicecatalog

(define-public haskell-8.8-amazonka-ses
  (package
    (name "haskell-8.8-amazonka-ses")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ses/amazonka-ses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s7c2jvg8y2vi7lzy3wgp352xnf0bfnc36l6g771279l61nmfk05"))))
    (properties `((upstream-name . "amazonka-ses") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Email Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SES\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-ses

(define-public haskell-8.8-amazonka-shield
  (package
    (name "haskell-8.8-amazonka-shield")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-shield/amazonka-shield-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06bml09gg5pq8vsj145jwbqpmbx6n07yx0ds030yhmahxyl732hv"))))
    (properties `((upstream-name . "amazonka-shield") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Shield SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Shield\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-shield

(define-public haskell-8.8-amazonka-sms
  (package
    (name "haskell-8.8-amazonka-sms")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sms/amazonka-sms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11ab1f09l7p33mvbgrxl5j09z6higs37a5v9d07hh94lvr5l7syn"))))
    (properties `((upstream-name . "amazonka-sms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Server Migration Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SMS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-sms

(define-public haskell-8.8-amazonka-snowball
  (package
    (name "haskell-8.8-amazonka-snowball")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-snowball/amazonka-snowball-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lvw8ym5xlxjiyflg1xr2cqcvf4flamwpd6pgqzbnwzdkyv1zha8"))))
    (properties `((upstream-name . "amazonka-snowball") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Import/Export Snowball SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Snowball\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-snowball

(define-public haskell-8.8-amazonka-sns
  (package
    (name "haskell-8.8-amazonka-sns")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sns/amazonka-sns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dg72gkb3graaq2bh0dbpd4mx8scmx6zrk9q77rwzpxd80yab66v"))))
    (properties `((upstream-name . "amazonka-sns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Notification Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SNS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-sns

(define-public haskell-8.8-amazonka-sqs
  (package
    (name "haskell-8.8-amazonka-sqs")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sqs/amazonka-sqs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m2313w5z0mdzhqdx7qkd6k9k5bxbb4dalg37v9jmbsidza7s1pf"))))
    (properties `((upstream-name . "amazonka-sqs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Queue Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SQS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-sqs

(define-public haskell-8.8-amazonka-ssm
  (package
    (name "haskell-8.8-amazonka-ssm")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-ssm/amazonka-ssm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bxh7hqsm2jfxza4dr2cami39sc2wzkck4yzqp7pk3ds3xggybcm"))))
    (properties `((upstream-name . "amazonka-ssm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Systems Manager (SSM) SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SSM\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-ssm

(define-public haskell-8.8-amazonka-stepfunctions
  (package
    (name "haskell-8.8-amazonka-stepfunctions")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-stepfunctions/amazonka-stepfunctions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04yhgmbj129kaj6dxl6ck9clai551j5kmfnwck6nbfpq3mi7dbv0"))))
    (properties `((upstream-name . "amazonka-stepfunctions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Step Functions SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.StepFunctions\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-stepfunctions

(define-public haskell-8.8-amazonka-storagegateway
  (package
    (name "haskell-8.8-amazonka-storagegateway")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-storagegateway/amazonka-storagegateway-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gvyh6qjfcr3ndv17rcjxnsa13dghwdd420cnc8xsafq54qbah8h"))))
    (properties `((upstream-name . "amazonka-storagegateway") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Storage Gateway SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.StorageGateway\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-storagegateway

(define-public haskell-8.8-amazonka-sts
  (package
    (name "haskell-8.8-amazonka-sts")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-sts/amazonka-sts-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fcg3hg88427h9fgqpxwa599gh19i1lc2wfjlf554cg92jxn88zf"))))
    (properties `((upstream-name . "amazonka-sts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Security Token Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.STS\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-sts

(define-public haskell-8.8-amazonka-support
  (package
    (name "haskell-8.8-amazonka-support")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-support/amazonka-support-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fhrqwbv84np82nddkxxp7bkws2830yb3pz52nwng800vpahsbas"))))
    (properties `((upstream-name . "amazonka-support") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Support SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.Support\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-support

(define-public haskell-8.8-amazonka-swf
  (package
    (name "haskell-8.8-amazonka-swf")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-swf/amazonka-swf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jklp28c7kanlkl6mciam2gj6b6w25fs7aidf83ndr3z9xqfd73v"))))
    (properties `((upstream-name . "amazonka-swf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon Simple Workflow Service SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.SWF\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-swf

(define-public haskell-8.8-amazonka-waf
  (package
    (name "haskell-8.8-amazonka-waf")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-waf/amazonka-waf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sjian917kc7vzq34sbd4cifx5qwf9lkkrvhbsl1z2aqv0bzbhj5"))))
    (properties `((upstream-name . "amazonka-waf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon WAF SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.WAF\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-waf

(define-public haskell-8.8-amazonka-workspaces
  (package
    (name "haskell-8.8-amazonka-workspaces")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-workspaces/amazonka-workspaces-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1grpbka4baw81qz4sds52ag4nj4ial6kbjii11yrkyc6i9dki2g5"))))
    (properties `((upstream-name . "amazonka-workspaces") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon WorkSpaces SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.WorkSpaces\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-workspaces

(define-public haskell-8.8-amazonka-xray
  (package
    (name "haskell-8.8-amazonka-xray")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/amazonka-xray/amazonka-xray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03fhlls2n1cih0z4fcs1bcsr1d97qnllcknq90dqmmr9fmmg131l"))))
    (properties `((upstream-name . "amazonka-xray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka-test)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/brendanhay/amazonka")
    (synopsis "Amazon X-Ray SDK.")
    (description
     "The types from this library are intended to be used with
<http://hackage.haskell.org/package/amazonka amazonka>, which provides
mechanisms for specifying AuthN/AuthZ information, sending requests,
and receiving responses.

Lenses are used for constructing and manipulating types,
due to the depth of nesting of AWS types and transparency regarding
de/serialisation into more palatable Haskell values.
The provided lenses should be compatible with any of the major lens libraries
such as <http://hackage.haskell.org/package/lens lens> or
<http://hackage.haskell.org/package/lens-family-core lens-family-core>.

See \"Network.AWS.XRay\" or <https://aws.amazon.com/documentation/ the AWS documentation>
to get started.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.8-amazonka-xray

(define-public haskell-8.8-antiope-core
  (package
    (name "haskell-8.8-antiope-core")
    (version "7.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/antiope-core/antiope-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bzyahw9i098riqlmhymbk0zjg4iz95r0c4mpsrc811wyqdi7f65"))))
    (properties `((upstream-name . "antiope-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-aeson-lens)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-generic-lens)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/arbor/antiope#readme")
    (synopsis
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>")
    (description
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>.")
    (license license:expat)))

haskell-8.8-antiope-core

(define-public haskell-8.8-antiope-messages
  (package
    (name "haskell-8.8-antiope-messages")
    (version "7.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/antiope-messages/antiope-messages-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kajbd0f81jamk7cg97zkm9z89m0zlsfklhbfarg3rgiaq28ss2v"))))
    (properties `((upstream-name . "antiope-messages") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-amazonka)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-amazonka-core)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-generic-lens)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-monad-loops)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/arbor/antiope#readme")
    (synopsis
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>")
    (description
     "Please see the README on Github at <https://github.com/arbor/antiope#readme>.")
    (license license:expat)))

haskell-8.8-antiope-messages

(define-public haskell-8.8-diagrams
  (package
    (name "haskell-8.8-diagrams")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-diagrams-contrib)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-diagrams-core)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-diagrams-lib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-diagrams-svg)))
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

haskell-8.8-diagrams

(define-public haskell-8.8-gi-atk
  (package
    (name "haskell-8.8-gi-atk")
    (version "2.0.21")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-atk/gi-atk-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0npcz82l5ssbrgzr99a94nlirmfdy9z5p2k0nrk7357bawpiv7sk"))))
    (properties `((upstream-name . "gi-atk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages gtk) atk)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-gobject)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Atk bindings")
    (description "Bindings for Atk, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-atk

(define-public haskell-8.8-gi-dbusmenu
  (package
    (name "haskell-8.8-gi-dbusmenu")
    (version "0.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-dbusmenu/gi-dbusmenu-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0av2628vylmkk566f2zbzbwygni4rawrk14yamc6m9s9rsw2scf9"))))
    (properties `((upstream-name . "gi-dbusmenu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-gobject)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages gtk) libdbusmenu)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Dbusmenu bindings")
    (description "Bindings for libdbusmenu, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-dbusmenu

(define-public haskell-8.8-gi-gio
  (package
    (name "haskell-8.8-gi-gio")
    (version "2.0.26")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-gio/gi-gio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0a75azw25aww3pbhmjpvqn2w3qr430c4s8kk70xf87af0nlv21sp"))))
    (properties `((upstream-name . "gi-gio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-gobject)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Gio bindings")
    (description "Bindings for Gio, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-gio

(define-public haskell-8.8-gi-graphene
  (package
    (name "haskell-8.8-gi-graphene")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-graphene/gi-graphene-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04aiq9zqjxaky48j57nakx0alhc9j1g6ydki7fww7r4jajmf6pjv"))))
    (properties `((upstream-name . "gi-graphene") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages gtk) graphene)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-gobject)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Graphene bindings")
    (description "Bindings for Graphene, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-graphene

(define-public haskell-8.8-gi-pango
  (package
    (name "haskell-8.8-gi-pango")
    (version "1.0.22")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-pango/gi-pango-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09dz13wai7cyp24vhc6wxyyg2g89dsqq40r80j56xgpyvfki8yf2"))))
    (properties `((upstream-name . "gi-pango") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-gi-glib)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-gi-gobject)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-haskell-gi)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskell-gi-overloading)
                  (@ (gnu packages gtk) pango-1.90)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "Pango bindings")
    (description "Bindings for Pango, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-gi-pango

(define-public haskell-8.8-hasql-optparse-applicative
  (package
    (name "haskell-8.8-hasql-optparse-applicative")
    (version "0.3.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasql-optparse-applicative/hasql-optparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16k6k2qp8avnlsidyjk458lags2633789wvvwdy4xgmiqs1riqr9"))))
    (properties `((upstream-name . "hasql-optparse-applicative")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hasql)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-hasql-pool)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/sannsyn/hasql-optparse-applicative ")
    (synopsis "\"optparse-applicative\" parsers for \"hasql\"")
    (description "")
    (license license:expat)))

haskell-8.8-hasql-optparse-applicative

(define-public haskell-8.8-hoauth2
  (package
    (name "haskell-8.8-hoauth2")
    (version "1.14.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hoauth2/hoauth2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0szcg4bvzs8djmq5k47czyk7hv9nassahd0ngd127hcab5afmbxk"))))
    (properties `((upstream-name . "hoauth2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-mustache)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-scotty)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-uri-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-uri-bytestring-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-wai-middleware-static)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/freizl/hoauth2")
    (synopsis "Haskell OAuth2 authentication client")
    (description
     "Haskell OAuth2 authentication client. Tested with the following services:

* AzureAD: <https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-protocols-oauth-code>

* Google: <https://developers.google.com/accounts/docs/OAuth2WebServer>

* Github: <http://developer.github.com/v3/oauth/>

* Facebook: <http://developers.facebook.com/docs/facebook-login/>

* Fitbit: <http://dev.fitbit.com/docs/oauth2/>

* StackExchange: <https://api.stackexchange.com/docs/authentication>

* DropBox: <https://www.dropbox.com/developers/reference/oauth-guide>

* Weibo: <http://open.weibo.com/wiki/Oauth2>

* Douban: <http://developers.douban.com/wiki/?title=oauth2>")
    (license license:bsd-3)))

haskell-8.8-hoauth2

(define-public haskell-8.8-hopenpgp-tools
  (package
    (name "haskell-8.8-hopenpgp-tools")
    (version "0.23.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hopenpgp-tools/hopenpgp-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hjh6avcd24czd5dv0kr78hkv8k48i3lgcxiahnfjaqwirmg5wix"))))
    (properties `((upstream-name . "hopenpgp-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-alex)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-binary-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-errors)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fgl)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-graphviz)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-hOpenPGP)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-happy)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-ixset-typed)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-monad-loops)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-openpgp-asciiarmor)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-prettyprinter-convert-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://salsa.debian.org/clint/hOpenPGP-tools")
    (synopsis "hOpenPGP-based command-line tools")
    (description
     "command-line tools for performing some OpenPGP-related operations")
    (license license:agpl3+)))

haskell-8.8-hopenpgp-tools

(define-public haskell-8.8-line
  (package
    (name "haskell-8.8-line")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hspec-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-scotty)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.8-line

(define-public haskell-8.8-pandoc
  (package
    (name "haskell-8.8-pandoc")
    (version "2.9.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pandoc/pandoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0myz7firqkx4k0vrsd62j443gvm2pk09bi69c8qdbdzq5hvkavf2"))))
    (properties `((upstream-name . "pandoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-static" "-f-embed_data_files" "-f-trypandoc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-HTTP)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-HsYAML)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-SHA)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-noprelude)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-cmark-gfm)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-doclayout)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctemplates)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-emojis)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haddock-library)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-hslua)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-hslua-module-system)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hslua-module-text)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-ipynb)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-jira-wiki-markup)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pandoc-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-skylighting)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-skylighting-core)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-texmath)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-text-conversions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-zip-archive)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://pandoc.org")
    (synopsis "Conversion between markup formats")
    (description "Pandoc is a Haskell library for converting from one markup
format to another, and a command-line tool that uses
this library. It can read several dialects of Markdown and
(subsets of) HTML, reStructuredText, LaTeX, DocBook, JATS,
MediaWiki markup, DokuWiki markup, TWiki markup,
TikiWiki markup, Jira markup, Creole 1.0, Haddock markup,
OPML, Emacs Org-Mode, Emacs Muse, txt2tags, ipynb (Jupyter
notebooks), Vimwiki, Word Docx, ODT, EPUB, FictionBook2,
roff man, Textile, and CSV, and it can write Markdown,
reStructuredText, XHTML, HTML 5, LaTeX, ConTeXt, DocBook,
JATS, OPML, TEI, OpenDocument, ODT, Word docx,
PowerPoint pptx, RTF, MediaWiki, DokuWiki, XWiki,
ZimWiki, Textile, Jira, roff man, roff ms, plain text,
Emacs Org-Mode, AsciiDoc, Haddock markup,
EPUB (v2 and v3), ipynb, FictionBook2,
InDesign ICML, Muse, LaTeX beamer slides,
and several kinds of HTML/JavaScript slide shows
(S5, Slidy, Slideous, DZSlides, reveal.js).

In contrast to most existing tools for converting Markdown
to HTML, pandoc has a modular design: it consists of a set of
readers, which parse text in a given format and produce a
native representation of the document, and a set of writers,
which convert this native representation into a target
format. Thus, adding an input or output format requires
only adding a reader or writer.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-pandoc

(define-public haskell-8.8-pantry
  (package
    (name "haskell-8.8-pantry")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pantry/pantry-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13rrd64qn96r9w623lns4cngalc2c0p2z1xzc0wv35kr3psnxwb4"))))
    (properties `((upstream-name . "pantry") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1b0vf551kl4nshhrm8g4k0mbflkyzj6dq7nlj05djd30y92k28rm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-casa-client)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-casa-types)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-digest)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-filelock)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-generic-deriving)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-hackage-security)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-hpack)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-http-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-http-download)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-path-io)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-sqlite)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-persistent-template)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-rio-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-rio-prettyprint)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-tar-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-text-metrics)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-zip-archive)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/commercialhaskell/pantry#readme")
    (synopsis "Content addressable Haskell package management")
    (description
     "Please see the README on Github at <https://github.com/commercialhaskell/pantry#readme>")
    (license license:bsd-3)))

haskell-8.8-pantry

(define-public haskell-8.8-postgrest
  (package
    (name "haskell-8.8-postgrest")
    (version "7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgrest/postgrest-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03iya4w39qp25ms8m58mw6pvlriw80h6rdg1cb7az7353m2ndzys"))))
    (properties `((upstream-name . "postgrest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-ci")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-HTTP)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-Ranged-sets)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-auto-update)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-cassava)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-configurator-pg)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-cookie)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-either)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-gitrev)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hasql)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-hasql-pool)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-hasql-transaction)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-heredoc)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-interpolatedstring-perl6)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-jose)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-protolude)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-retry)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-swagger2)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-wai-cors)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-wai-middleware-static)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages databases) postgresql-14)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://postgrest.org")
    (synopsis "REST API for any Postgres database")
    (description
     "Reads the schema of a PostgreSQL database and creates RESTful routes
for the tables and views, supporting all HTTP verbs that security
permits.")
    (license license:expat)))

haskell-8.8-postgrest

(define-public haskell-8.8-servant-JuicyPixels
  (package
    (name "haskell-8.8-servant-JuicyPixels")
    (version "0.3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-JuicyPixels/servant-JuicyPixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lhxb6z8xypx48k8hwzqpp92qww8wxbp3a1ggik4dfrcxkcklmlx"))))
    (properties `((upstream-name . "servant-JuicyPixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tvh/servant-JuicyPixels")
    (synopsis "Servant support for JuicyPixels")
    (description
     "Provides content types for image types supported by JuicyPixels")
    (license license:bsd-3)))

haskell-8.8-servant-JuicyPixels

(define-public haskell-8.8-servant-auth-server
  (package
    (name "haskell-8.8-servant-auth-server")
    (version "0.4.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth-server/servant-auth-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10kcxdh9ba37jra6brrg11rzmx16jmwsk0yib92l0s3mkqp9was6"))))
    (properties `((upstream-name . "servant-auth-server") (hidden? . #f)))
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
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-cookie)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-entropy)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-jose)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-monad-time)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-servant-auth)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/haskell-servant/servant-auth#readme")
    (synopsis "servant-server/servant-auth compatibility")
    (description
     "This package provides the required instances for using the @@Auth@@ combinator
in your 'servant' server.

Both cookie- and token- (REST API) based authentication is provided.

For a quick overview of the usage, see the <http://github.com/haskell-servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-8.8-servant-auth-server

(define-public haskell-8.8-servant-checked-exceptions
  (package
    (name "haskell-8.8-servant-checked-exceptions")
    (version "2.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-checked-exceptions/servant-checked-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1shbnrjk2d0lq9nskl95jkfgr4ad79nx4k87zjg4c4m6m09nf5bh"))))
    (properties `((upstream-name . "servant-checked-exceptions")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hspec-wai)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-checked-exceptions-core)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-client-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-world-peace)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/servant-checked-exceptions")
    (synopsis "Checked exceptions for Servant APIs.")
    (description
     "Please see <https://github.com/cdepillabout/servant-checked-exceptions#readme README.md>.")
    (license license:bsd-3)))

haskell-8.8-servant-checked-exceptions

(define-public haskell-8.8-servant-conduit
  (package
    (name "haskell-8.8-servant-conduit")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-conduit/servant-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vy3ihypb0zm2yd16rq120qw3898i3c0mahh2jysssv65g0avdwp"))))
    (properties `((upstream-name . "servant-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1rcxn2m95zvxqvjbagk9gmwcyvx9wanhxmafwar4y4p15mvzd8d1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for conduit.")
    (description
     "Servant Stream support for conduit.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'ConduitT'.")
    (license license:bsd-3)))

haskell-8.8-servant-conduit

(define-public haskell-8.8-servant-errors
  (package
    (name "haskell-8.8-servant-errors")
    (version "0.1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-errors/servant-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qap8wbchpl48aigwqgxrgb6v3d6h80fpxq319c399pwrrkzyh9v"))))
    (properties `((upstream-name . "servant-errors") (hidden? . #f)))
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
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-string-conversions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/epicallan/servant-errors")
    (synopsis "Servant Errors wai-middlware")
    (description
     "A Wai middleware that uniformly structures errors with in a servant application. The library assumes all HTTP responses with status code greater than 200 and without an HTTP content type are error responses. This assumption is derived from servant server error handling implementation.")
    (license license:expat)))

haskell-8.8-servant-errors

(define-public haskell-8.8-servant-js
  (package
    (name "haskell-8.8-servant-js")
    (version "0.9.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-js/servant-js-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15n5s3i491cxjxj70wa8yhpipaz47q46s04l4ysc64wgijlnm8xy"))))
    (properties `((upstream-name . "servant-js") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")
       #:cabal-revision
       ("3" "1i8ngrrdnql03hlv07wfwbswfwm6zfj66n3byg647hcl71q67ppc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-charset)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-foreign)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
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

haskell-8.8-servant-js

(define-public haskell-8.8-servant-lucid
  (package
    (name "haskell-8.8-servant-lucid")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-lucid/servant-lucid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xamwcijd03cynml5c2hr577qairybyrqd90ixyb1a94lql6agbf"))))
    (properties `((upstream-name . "servant-lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "10j29y9zjflh88csvn7zi4pm8jr9dxsglin94wypjrhcwy7yj1ic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant support for lucid")
    (description
     "Servant support for lucid.

'HTML' content type which will use `ToHtml` class.

Lucid.Servant uses `Link` rather than `Text` for safe 'href' attributes.")
    (license license:bsd-3)))

haskell-8.8-servant-lucid

(define-public haskell-8.8-servant-machines
  (package
    (name "haskell-8.8-servant-machines")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-machines/servant-machines-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k8abcc72s5bzcf2vmjkxxjnhk45rww6hr3l93msm2510hi6gda4"))))
    (properties `((upstream-name . "servant-machines") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0231278v3vs5ca3cx43711kzfbhqj2s7g67zcwrj39ly8i9kxm2n")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-machines)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for machines")
    (description
     "Servant Stream support for machines.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'MachineT'.")
    (license license:bsd-3)))

haskell-8.8-servant-machines

(define-public haskell-8.8-servant-mock
  (package
    (name "haskell-8.8-servant-mock")
    (version "0.8.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-mock/servant-mock-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10bvqwyp5ca53k47a1xfbihdv22gjlj97spr1bn5plf5vlk70m5f"))))
    (properties `((upstream-name . "servant-mock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexample")
       #:cabal-revision
       ("3" "1137vz9xm8iwj6x8h1q1yify6c1lahy0dxj6hpbhgi4s3mqkhm2g")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-bytestring-conversion)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hspec-wai)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Derive a mock server for free from your servant API types")
    (description
     "Derive a mock server for free from your servant API types

See the @@Servant.Mock@@ module for the documentation and an example.")
    (license license:bsd-3)))

haskell-8.8-servant-mock

(define-public haskell-8.8-servant-pipes
  (package
    (name "haskell-8.8-servant-pipes")
    (version "0.15.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-pipes/servant-pipes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r5irq09j64iapi5n9mzsph984r5f7cyr6zz4sw3xqh648dmf75h"))))
    (properties `((upstream-name . "servant-pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-pipes-safe)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Servant Stream support for pipes")
    (description
     "Servant Stream support for pipes.

Provides 'ToSourceIO' and 'FromSourceIO' instances for 'Proxy' and 'SafeT'.")
    (license license:bsd-3)))

haskell-8.8-servant-pipes

(define-public haskell-8.8-servant-rawm
  (package
    (name "haskell-8.8-servant-rawm")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-rawm/servant-rawm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "013d89zmlmwwwhgyc57xbzsd4phz347if5y6iz93wrw4lbvc341d"))))
    (properties `((upstream-name . "servant-rawm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-servant-client)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-client-core)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-docs)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-wai-app-static)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/servant-rawm")
    (synopsis "Embed a raw 'Application' in a Servant API")
    (description
     "Please see <https://github.com/cdepillabout/servant-rawm#readme README.md>.")
    (license license:bsd-3)))

haskell-8.8-servant-rawm

(define-public haskell-8.8-servant-static-th
  (package
    (name "haskell-8.8-servant-static-th")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-static-th/servant-static-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xmikym19kq912apmh6zcdjzbz23mhn580pvsy5ll35ylqziaflk"))))
    (properties `((upstream-name . "servant-static-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-hspec-wai)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-blaze)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/servant-static-th")
    (synopsis "Embed a directory of static files in your Servant server")
    (description
     "Please see <https://github.com/cdepillabout/servant-static-th#readme README.md>.")
    (license license:bsd-3)))

haskell-8.8-servant-static-th

(define-public haskell-8.8-servant-subscriber
  (package
    (name "haskell-8.8-servant-subscriber")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-subscriber/servant-subscriber-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c1g6jx36n5n5qjw82854vkbg7mavmrj7vz97vc1zzk5w54wsj8k"))))
    (properties `((upstream-name . "servant-subscriber") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwebsockets_0_11")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-purescript-bridge)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-foreign)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-wai-websockets)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/eskimor/servant-subscriber#readme")
    (synopsis "When REST is not enough ...")
    (description
     "WebSocket based extension for your servant REST API which allows users to subscribe to change events.")
    (license license:bsd-3)))

haskell-8.8-servant-subscriber

(define-public haskell-8.8-servant-swagger-ui-core
  (package
    (name "haskell-8.8-servant-swagger-ui-core")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger-ui-core/servant-swagger-ui-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05vi74kgsf3yhkbw9cjl1zxs5swhh9jib6bwqf1h11cg0nr5i8ab"))))
    (properties `((upstream-name . "servant-swagger-ui-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-servant-blaze)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-swagger2)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-wai-app-static)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-swagger-ui")
    (synopsis "Servant swagger ui core components")
    (description
     "Provide embedded swagger UI for servant and swagger (i.e. servant-swagger)

See servant-swagger-ui, servant-swagger-ui-jensoleg or
servant-swagger-ui-redoc for \"concrete\" implementations.")
    (license license:bsd-3)))

haskell-8.8-servant-swagger-ui-core

(define-public haskell-8.8-servant-websockets
  (package
    (name "haskell-8.8-servant-websockets")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-websockets/servant-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xs3psnmihxm37lgamn4i8lff75yb9rvsjnav7c959h1b9fjn9n4"))))
    (properties `((upstream-name . "servant-websockets") (hidden? . #f)))
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
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-wai-websockets)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/moesenle/servant-websockets#readme")
    (synopsis "Small library providing WebSocket endpoints for servant.")
    (description "Small library providing WebSocket endpoints for servant.")
    (license license:bsd-3)))

haskell-8.8-servant-websockets

(define-public haskell-8.8-servant-yaml
  (package
    (name "haskell-8.8-servant-yaml")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-yaml/servant-yaml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00gnbdlcq6cvmhsga8h0csd35pnfib038rqlhm445l4wa0cp8m01"))))
    (properties `((upstream-name . "servant-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0k9jg3vf0p1332243mji4lzm3lk3frsmxxlz6lgg68rwh3baz6f0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-servant-server)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage017) haskell-8.8-warp)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-servant/servant-yaml#readme")
    (synopsis "Servant support for yaml")
    (description "Servant support for yaml.")
    (license license:bsd-3)))

haskell-8.8-servant-yaml

(define-public haskell-8.8-yesod-form
  (package
    (name "haskell-8.8-yesod-form")
    (version "1.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-form/yesod-form-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0mny71dyp6cp5akyp5wvmrhmip5rkqi8ibdn3lipvmajx9h58r5d"))))
    (properties `((upstream-name . "yesod-form") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-email-validate)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-persistent)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-xss-sanitize)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-yesod-persistent)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Form handling support for Yesod Web Framework")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-form>.  Third-party packages which you can find useful: <http://hackage.haskell.org/package/yesod-form-richtext yesod-form-richtext> - richtext form fields (currntly it provides only Summernote support).")
    (license license:expat)))

haskell-8.8-yesod-form

(define-public haskell-8.8-yesod-static
  (package
    (name "haskell-8.8-yesod-static")
    (version "1.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-static/yesod-static-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18f5hm9ncvkzl8bkn39cg841z0k5iqs5w45afsyk9y6k98pjd54p"))))
    (properties `((upstream-name . "yesod-static") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-cryptonite-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-css-text)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-hjsmin)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mime-types)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-wai-app-static)
                  (@ (gnu packages stackage ghc-8.8 stage017)
                     haskell-8.8-wai-extra)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-yesod-test)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Static file serving subsite for Yesod Web Framework.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-static>")
    (license license:expat)))

haskell-8.8-yesod-static

(define-public haskell-8.8-yesod-websockets
  (package
    (name "haskell-8.8-yesod-websockets")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yesod-websockets/yesod-websockets-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k206l84g25xml8yg4q7i62x5aydxq2hni2fk2cc36dlvl0rgih1"))))
    (properties `((upstream-name . "yesod-websockets") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage019)
                     haskell-8.8-wai-websockets)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)
                  (@ (gnu packages stackage ghc-8.8 stage018)
                     haskell-8.8-yesod-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/yesodweb/yesod")
    (synopsis "WebSockets support for Yesod")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/yesod-websockets>")
    (license license:expat)))

haskell-8.8-yesod-websockets

