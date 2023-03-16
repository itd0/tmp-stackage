;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage018)
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
(define-public haskell-8.6-active
  (package
    (name "haskell-8.6-active")
    (version "0.2.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/active/active-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x3b4ln6csa554qls28wbxvclkbdz3yi60i1m0q5ing0cs16fifz"))))
    (properties `((upstream-name . "active") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01j431dkl3ax98g974v6mgxv9xha4c0hlpjqq5fvh7l8lyjan676")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/active")
    (synopsis "Abstractions for animation")
    (description
     "\"Active\" abstraction for animated things with finite start and end times.")
    (license license:bsd-3)))

haskell-8.6-active

(define-public haskell-8.6-advent-of-code-api
  (package
    (name "haskell-8.6-advent-of-code-api")
    (version "0.1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/advent-of-code-api/advent-of-code-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ma9x8dxvhrgxg55bcf6l1d5w1mnmplav2yisnyrgs5034jqpm7l"))))
    (properties `((upstream-name . "advent-of-code-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-curl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-finite-typelits)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-uri-encode)))
    (propagated-inputs (list (@ (gnu packages curl) curl)))
    (home-page "https://github.com/mstksg/advent-of-code-api#readme")
    (synopsis "Advent of Code REST API bindings")
    (description
     "Haskell bindings for Advent of Code REST API.  Please use responsibly!
See README.md or \"Advent\" module for an introduction and tutorial.

Requires libcurl.")
    (license license:bsd-3)))

haskell-8.6-advent-of-code-api

(define-public haskell-8.6-aeson-picker
  (package
    (name "haskell-8.6-aeson-picker")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-picker/aeson-picker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05lw6fd8xk9s37iz8pvznqh4vj856ayc75ha9iw1w82zxzv87pwp"))))
    (properties `((upstream-name . "aeson-picker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)))
    (home-page "https://github.com/ozzzzz/aeson-picker#readme")
    (synopsis "Tiny library to get fields from JSON format")
    (description "Tiny library to get fields from JSON format")
    (license license:bsd-3)))

haskell-8.6-aeson-picker

(define-public haskell-8.6-apecs
  (package
    (name "haskell-8.6-apecs")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/apecs/apecs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g9fvyhsbriz0c5l3xyaba7yds2iqwkrrrlfvihdr8mr1cx5mw3n"))))
    (properties `((upstream-name . "apecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0shjggv0isrdcxqs66idaxdrrp9pb4w0micja7rhaib6z0h781j2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "Fast Entity-Component-System library for game programming")
    (description
     "apecs is a fast, type-driven Entity-Component-System library for game programming.")
    (license license:bsd-3)))

haskell-8.6-apecs

(define-public haskell-8.6-authenticate-oauth
  (package
    (name "haskell-8.6-authenticate-oauth")
    (version "1.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/authenticate-oauth/authenticate-oauth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hry1zbi7gbyfi94w9cyg6m7ii7xm68jnsph63zxdj2s4ns0ylp0"))))
    (properties `((upstream-name . "authenticate-oauth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "08i6mmk2jqlrd1aksjx02arly7dfpkwc0dwxpr7hs4rbxajbckyr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-RSA)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-SHA)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yesodweb/authenticate")
    (synopsis
     "Library to authenticate with OAuth for Haskell web applications.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/authenticate-oauth>.")
    (license license:bsd-3)))

haskell-8.6-authenticate-oauth

(define-public haskell-8.6-avers-api
  (package
    (name "haskell-8.6-avers-api")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/avers-api/avers-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gjs5msyhd23m8kij3j8r3chy875rcqjwi938124kb6idybna5sw"))))
    (properties `((upstream-name . "avers-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-avers)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/wereHamster/avers-api")
    (synopsis "Types describing the core and extended Avers APIs")
    (description "Types describing the core and extended Avers APIs")
    (license license:expat)))

haskell-8.6-avers-api

(define-public haskell-8.6-avro
  (package
    (name "haskell-8.6-avro")
    (version "0.4.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/avro/avro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "127w8pny2ah05wa44khqs53vdyh54jlxvihxhpqk94wx8ggg00vx"))))
    (properties `((upstream-name . "avro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-ftemplatehaskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-doctest-discover)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-fail)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-tf-random)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-works/avro#readme")
    (synopsis "Avro serialization support for Haskell")
    (description "Avro serialization and deserialization support for Haskell")
    (license license:bsd-3)))

haskell-8.6-avro

(define-public haskell-8.6-avwx
  (package
    (name "haskell-8.6-avwx")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)))
    (home-page "https://www.hcesperer.org/posts/2016-09-20-avwx.html")
    (synopsis "Parse aviation weather reports")
    (description "Parse aviation weather reports, currently METARs and TAFs")
    (license license:expat)))

haskell-8.6-avwx

(define-public haskell-8.6-aws-cloudfront-signed-cookies
  (package
    (name "haskell-8.6-aws-cloudfront-signed-cookies")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-cloudfront-signed-cookies/aws-cloudfront-signed-cookies-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yk40n6gjs72pyi6yjwhqj0dngqc4b74rpg0ji61852nbb0snl28"))))
    (properties `((upstream-name . "aws-cloudfront-signed-cookies")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1v0bbyskwbawfhaji3s63hjrzwsi2bb7l8g6yxdp02bp6zb92757")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-asn1-types)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/typeclasses/aws-cloudfront-signed-cookies")
    (synopsis "Generate signed cookies for AWS CloudFront")
    (description
     "One way to [serve private content through AWS CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html) is to use [signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-signed-cookies.html). This package helps you generate signed cookies [using a custom IAM policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-setting-signed-cookie-custom-policy.html) which may include a range of time for which the cookie is valid and an IP address restriction.")
    (license license:expat)))

haskell-8.6-aws-cloudfront-signed-cookies

(define-public haskell-8.6-aws-lambda-haskell-runtime
  (package
    (name "haskell-8.6-aws-lambda-haskell-runtime")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-lambda-haskell-runtime/aws-lambda-haskell-runtime-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ycqwmpgqzdb8kz3w6yzf44id32pc3vin1w3j0klzzg2k51l4nnr"))))
    (properties `((upstream-name . "aws-lambda-haskell-runtime")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-path-io)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-safe-exceptions-checked)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/theam/aws-lambda-haskell-runtime#readme")
    (synopsis "Haskell runtime for AWS Lambda")
    (description
     "Please see the README on GitHub at <https://github.com/theam/aws-lambda-haskell-runtime#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-aws-lambda-haskell-runtime

(define-public haskell-8.6-beam-migrate
  (package
    (name "haskell-8.6-beam-migrate")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-migrate/beam-migrate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12c5yibargwrw9z806bik7rly9njq0qa60gsqlh8pbzaaji5fknf"))))
    (properties `((upstream-name . "beam-migrate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-beam-core)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-dependent-map)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dependent-sum)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-pqueue)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://travis.athougies.net/projects/beam.html")
    (synopsis "SQL DDL support and migrations support library for Beam")
    (description
     "This package provides type classes to allow backends to implement
SQL DDL support for beam. This allows you to use beam syntax to
write type-safe schema generation code.
The package also provides features to introspect beam schemas,
and support for automatic generation of migrations in SQL and
Haskell formats.
This is mostly a low-level support library. Most often, this
library is used to write tooling to support DDL manipulation in
your project, or to enable migrations support in beam backends.
For a more turnkey solution for database migrations, consider
the <http://hackage.haskell.org/package/beam-migrate-cli beam-migrate>
command line tool. This provides out-of-the-box support for migrations,
schema change management, and version control, based on the features
provided in this library.")
    (license license:expat)))

haskell-8.6-beam-migrate

(define-public haskell-8.6-beam-mysql
  (package
    (name "haskell-8.6-beam-mysql")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-mysql/beam-mysql-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14h0cfzzfbdh18impfvlz3ba3ycig5g7adv17h2ag1x6yyx5h259"))))
    (properties `((upstream-name . "beam-mysql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-beam-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-mysql)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tathougies/beam-mysql")
    (synopsis "Connection layer between beam and MySQL/MariaDB")
    (description
     "Beam driver for MySQL or MariaDB databases, two popular open-source databases.
Supports most beam features, but does not yet have support for \"beam-migrate\".")
    (license license:expat)))

haskell-8.6-beam-mysql

(define-public haskell-8.6-bitcoin-block
  (package
    (name "haskell-8.6-bitcoin-block")
    (version "0.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitcoin-block/bitcoin-block-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nkx86fwv65x9vz6ni6qgz61afnvcifw2g92bnwdli8hww7prxfp"))))
    (properties `((upstream-name . "bitcoin-block") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-bitcoin-tx)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-bitcoin-types)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-hexstring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-largeword)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://www.leonmergen.com/opensource.html")
    (synopsis "Utility functions for manipulating bitcoin blocks")
    (description "This library provides functionality for parsing, inspecting,
hashing and serialization of bitcoin blocks.")
    (license license:expat)))

haskell-8.6-bitcoin-block

(define-public haskell-8.6-board-games
  (package
    (name "haskell-8.6-board-games")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/board-games/board-games-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ylwibyl0j1v0bdrpfnjhdm431npagavxzgi2l5sp0scgpkcyyx7"))))
    (properties `((upstream-name . "board-games") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbuildexamples" "-fsplitbase")
       #:cabal-revision
       ("1" "0rb5bqjg6r8p2v2wfdhivsbgbn55acdjsj6hcy6bv5w50qmg1l6c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-cgi)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-enummapset)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-html)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-httpd-shed)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-empty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/games/")
    (synopsis "Three games for inclusion in a web server")
    (description "Three games that might run as CGI script in a web server:
Connect Four, Rows&Columns, Mastermind

Check running versions at
<http://www.henning-thielemann.de/VierGewinnt> and
<http://www.henning-thielemann.de/ZeilenSpalten>.

You can build an example web server by installing with

> cabal install board-games -fbuildExamples

Then start the server with

> ./dist/build/board-games/board-games

and play the games in your browser at the URL
<http://localhost:8080/>.

Currently the games use German texts.
I wanted to use gettext, but this is not thread-safe.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-board-games

(define-public haskell-8.6-boring
  (package
    (name "haskell-8.6-boring")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/boring/boring-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0978dq53rpb7clz1ydjm6x38nrx0vkp3safqcbjp2kq6jlaz29jr"))))
    (properties `((upstream-name . "boring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1d7xl2dxm4v33j1bd5450x1mh86x8kb24qjvad8nk98dmgf63ah2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-dec)
                  (@ (gnu packages stackage ghc-8.6 stage006) haskell-8.6-fin)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-generics-sop)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-singleton-bool)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-streams)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-vec)))
    (home-page "https://github.com/phadej/boring")
    (synopsis "Boring and Absurd types")
    (description
     "* @@Boring@@ types are isomorphic to @@()@@.

* @@Absurd@@ types are isomorphic to @@Void@@.

See [What does () mean in Haskell -answer by Conor McBride](https://stackoverflow.com/questions/33112439/what-does-mean-in-haskell/33115522#33115522)")
    (license license:bsd-3)))

haskell-8.6-boring

(define-public haskell-8.6-butcher
  (package
    (name "haskell-8.6-butcher")
    (version "1.3.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/butcher/butcher-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lpicayq9k59m2ydz989xsypr653xwhp6mmhlp7nmjzk6jwpq5q5"))))
    (properties `((upstream-name . "butcher") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1751sllw8s81x3s1dhilbr5lqnv9cpdqiv17c8by466aa6304dxa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-deque)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-multistate)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unsafe)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "https://github.com/lspitzner/butcher/")
    (synopsis "Chops a command or program invocation into digestable pieces.")
    (description
     "See the <https://github.com/lspitzner/butcher/blob/master/README.md README> (it is properly formatted on github).")
    (license license:bsd-3)))

haskell-8.6-butcher

(define-public haskell-8.6-c2hs
  (package
    (name "haskell-8.6-c2hs")
    (version "0.28.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/c2hs/c2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nplgxfin139x12sb656f5870rpdclrhzi8mq8pry035qld15pci"))))
    (properties `((upstream-name . "c2hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase3" "-f-regression")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-language-c)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-shelly)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://github.com/haskell/c2hs")
    (synopsis "C->Haskell FFI tool that gives some cross-language type safety")
    (description
     "C->Haskell assists in the development of Haskell bindings to C
libraries. It extracts interface information from C header
files and generates Haskell code with foreign imports and
marshaling. Unlike writing foreign imports by hand (or using
hsc2hs), this ensures that C functions are imported with the
correct Haskell types.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-c2hs

(define-public haskell-8.6-cabal-install
  (package
    (name "haskell-8.6-cabal-install")
    (version "2.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-install/cabal-install-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b91rcs00wr5mf55c6xl8hrxmymlq72w71qm5r0q4j869asv5g39"))))
    (properties `((upstream-name . "cabal-install") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-native-dns" "-f-debug-expensive-assertions" "-f-debug-conflict-sets" "-f-debug-tracetree")
       #:cabal-revision
       ("3" "1mnm6mfrgavq3blvkm3wz45pqrj10apjihg1g9cds58qp19m9r1h")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-echo)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-edit-distance)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hackage-security)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-tar)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-zip-archive)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.haskell.org/cabal/")
    (synopsis "The command-line interface for Cabal and Hackage.")
    (description
     "The \\'cabal\\' command-line program simplifies the process of managing
Haskell software by automating the fetching, configuration, compilation
and installation of Haskell libraries and programs.")
    (license license:bsd-3)))

haskell-8.6-cabal-install

(define-public haskell-8.6-cheapskate
  (package
    (name "haskell-8.6-cheapskate")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cheapskate/cheapskate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17n6laihqrjn62l8qw4565nf77zkvrl68bjmc3vzr4ckqfblhdzd"))))
    (properties `((upstream-name . "cheapskate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dingus")
       #:cabal-revision
       ("1" "15hdlp062gv8x7giwcfbj1kfmhpj1bg7y2w4wr2yl436haxkrbmq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xss-sanitize)))
    (home-page "http://github.com/jgm/cheapskate")
    (synopsis "Experimental markdown processor.")
    (description "This is an experimental Markdown processor in pure
Haskell.  It aims to process Markdown efficiently and in
the most forgiving possible way.  It is designed to deal
with any input, including garbage, with linear
performance.  Output is sanitized by default for
protection against XSS attacks.

Several markdown extensions are implemented, including
fenced code blocks, significant list start numbers, and
autolinked URLs.  See README.markdown for details.")
    (license license:bsd-3)))

haskell-8.6-cheapskate

(define-public haskell-8.6-co-log
  (package
    (name "haskell-8.6-co-log")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/co-log/co-log-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0rrxgc3qs10lj94d0v42fd6979znvmzxd7dmffp2lxpzmnymnsha"))))
    (properties `((upstream-name . "co-log") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0z2456b49k0qfd4fzvbwndvdvnwfvsmhyxd5gmbiz7l7b458dq3s")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-chronos)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-co-log-core)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-typerep-map)))
    (home-page "https://github.com/kowainik/co-log")
    (synopsis "Composable Contravariant Comonadic Logging Library")
    (description
     "The default implementation of logging based on [co-log-core](http://hackage.haskell.org/package/co-log-core).

The ideas behind this package are described in the following blog post:

* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)")
    (license license:mpl2.0)))

haskell-8.6-co-log

(define-public haskell-8.6-codec-rpm
  (package
    (name "haskell-8.6-codec-rpm")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/codec-rpm/codec-rpm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15sbxns2p3fcc5gc8kf2jmjich6rnrimfl9rdjshi6y7ilvqhjx3"))))
    (properties `((upstream-name . "codec-rpm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-attoparsec-binary)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-cpio-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-lzma-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/weldr/codec-rpm")
    (synopsis "A library for manipulating RPM files")
    (description
     "This module provides a library for reading RPM files and converting them
into useful data structures.  There is currently no way to operate in
reverse - that is, for building an RPM file out of a data structure.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-codec-rpm

(define-public haskell-8.6-composable-associations-aeson
  (package
    (name "haskell-8.6-composable-associations-aeson")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composable-associations-aeson/composable-associations-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kragi8wfd30yxrndxka5p3bivj1qi8svljcdkqnji32dpnm9myv"))))
    (properties `((upstream-name . "composable-associations-aeson")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-composable-associations)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "https://github.com/SamProtas/composable-associations#readme")
    (synopsis
     "Aeson ToJSON/FromJSON implementation for the types of composable-associations")
    (description
     "This library provides the orphan instances implementation JSON serialization for the types in
composiable-associations, as well as any other Aeson-specific implementation details.")
    (license license:bsd-3)))

haskell-8.6-composable-associations-aeson

(define-public haskell-8.6-conduit-algorithms
  (package
    (name "haskell-8.6-conduit-algorithms")
    (version "0.0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-algorithms/conduit-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c1jwz30kkvimx7lb61782yk0kyfamrf5bqc3g1h7g51lk8bbv9i"))))
    (properties `((upstream-name . "conduit-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-bzlib-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-conduit-zstd)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-lzma-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-pqueue)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-stm-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-test-framework-th)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/luispedro/conduit-algorithms#readme")
    (synopsis "Conduit-based algorithms")
    (description
     "Algorithms on Conduits, including higher level asynchronous processing and some other utilities.")
    (license license:expat)))

haskell-8.6-conduit-algorithms

(define-public haskell-8.6-dbus
  (package
    (name "haskell-8.6-dbus")
    (version "1.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dbus/dbus-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ypkjlw9fn65g7p28kb3p82glk7qs7p7vyffccw7qxa3z57s12w5"))))
    (properties `((upstream-name . "dbus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-th-lift)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/rblaze/haskell-dbus#readme")
    (synopsis "A client library for the D-Bus IPC system.")
    (description
     "D-Bus is a simple, message-based protocol for inter-process
communication, which allows applications to interact with other parts of
the machine and the user's session using remote procedure calls.

D-Bus is a essential part of the modern Linux desktop, where it replaces
earlier protocols such as CORBA and DCOP.

This library is an implementation of the D-Bus protocol in Haskell. It
can be used to add D-Bus support to Haskell applications, without the
awkward interfaces common to foreign bindings.

Example: connect to the session bus, and get a list of active names.

@@
&#x7b;-\\# LANGUAGE OverloadedStrings \\#-&#x7d;

import Data.List (sort)
import DBus
import DBus.Client

main = do
&#x20;   client <- connectSession
&#x20;   //
&#x20;   \\-- Request a list of connected clients from the bus
&#x20;   reply <- call_ client (methodCall \\\"\\/org\\/freedesktop\\/DBus\\\" \\\"org.freedesktop.DBus\\\" \\\"ListNames\\\")
&#x20;       &#x7b; methodCallDestination = Just \\\"org.freedesktop.DBus\\\"
&#x20;       &#x7d;
&#x20;   //
&#x20;   \\-- org.freedesktop.DBus.ListNames() returns a single value, which is
&#x20;   \\-- a list of names (here represented as [String])
&#x20;   let Just names = fromVariant (methodReturnBody reply !! 0)
&#x20;   //
&#x20;   \\-- Print each name on a line, sorted so reserved names are below
&#x20;   \\-- temporary names.
&#x20;   mapM_ putStrLn (sort names)
@@

>$ ghc --make list-names.hs
>$ ./list-names
>:1.0
>:1.1
>:1.10
>:1.106
>:1.109
>:1.110
>ca.desrt.dconf
>org.freedesktop.DBus
>org.freedesktop.Notifications
>org.freedesktop.secrets
>org.gnome.ScreenSaver")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-dbus

(define-public haskell-8.6-debug
  (package
    (name "haskell-8.6-debug")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/debug/debug-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0j4jskz8zq2ww81mfarshi5g2m6xfivgl26grkhcacqq6k3483rk"))))
    (properties `((upstream-name . "debug") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011) haskell-8.6-Hoed)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-libgraph)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-open-browser)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-prettyprinter-compat-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/ndmitchell/debug")
    (synopsis "Simple trace-based debugger")
    (description
     "An easy to use debugger for viewing function calls and intermediate variables.
To use, annotate the function under test, run the code, and view the generated web page.
Full usage instructions are at \"Debug\".")
    (license license:bsd-3)))

haskell-8.6-debug

(define-public haskell-8.6-declarative
  (package
    (name "haskell-8.6-declarative")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/declarative/declarative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "014spawd3wgasrlfaz0zcz0qf1cnhr9nxm71lzcxjgi8n1gcza0y"))))
    (properties `((upstream-name . "declarative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hasty-hamiltonian)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mcmc-types)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-mighty-metropolis)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-mwc-probability)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-speedy-slice)))
    (home-page "http://github.com/jtobin/declarative")
    (synopsis "DIY Markov Chains.")
    (description
     "This package presents a simple combinator language for Markov transition
operators that are useful in MCMC.

Any transition operators sharing the same stationary distribution and obeying
the Markov and reversibility properties can be combined in a couple of ways,
such that the resulting operator preserves the stationary distribution and
desirable properties amenable for MCMC.

We can deterministically concatenate operators end-to-end, or sample from
a collection of them according to some probability distribution.  See
<http://www.stat.umn.edu/geyer/f05/8931/n1998.pdf Geyer, 2005> for details.

A useful strategy is to hedge one's 'sampling risk' by occasionally
interleaving a computationally-expensive transition (such as a gradient-based
algorithm like Hamiltonian Monte Carlo or NUTS) with cheap Metropolis
transitions.

> transition = frequency [
>     (9, metropolis 1.0)
>   , (1, hamiltonian 0.05 20)
>   ]

Alternatively: sample consecutively using the same algorithm, but over a
range of different proposal distributions.

> transition = concatAllT [
>     slice 0.5
>   , slice 1.0
>   , slice 2.0
>   ]

Or just mix and match and see what happens!

> transition =
>   sampleT
>     (sampleT (metropolis 0.5) (slice 0.1))
>     (sampleT (hamiltonian 0.01 20) (metropolis 2.0))

Check the test suite for example usage.")
    (license license:expat)))

haskell-8.6-declarative

(define-public haskell-8.6-diagrams-core
  (package
    (name "haskell-8.6-diagrams-core")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-core/diagrams-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qgb43vy23g4fxh3nmxfq6jyp34imqvkhgflaa6rz0iq6d60gl43"))))
    (properties `((upstream-name . "diagrams-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0w8mpy0z8kmx4l7cg8sgc1hyixysjfqffdgmnxy5p04airjlbpj7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-adjunctions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-dual-tree)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-monoid-extras)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis "Core libraries for diagrams EDSL")
    (description "The core modules underlying diagrams,
an embedded domain-specific language
for compositional, declarative drawing.")
    (license license:bsd-3)))

haskell-8.6-diagrams-core

(define-public haskell-8.6-distribution-nixpkgs
  (package
    (name "haskell-8.6-distribution-nixpkgs")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distribution-nixpkgs/distribution-nixpkgs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0123plf001136q5gd9brq6vhpnx7db6gixx5sagp5l8jd2qpb244"))))
    (properties `((upstream-name . "distribution-nixpkgs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-language-nix)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (home-page "https://github.com/peti/distribution-nixpkgs#readme")
    (synopsis "Types and functions to manipulate the Nixpkgs distribution")
    (description
     "Types and functions to represent, query, and manipulate the Nixpkgs distribution.")
    (license license:bsd-3)))

haskell-8.6-distribution-nixpkgs

(define-public haskell-8.6-dotenv
  (package
    (name "haskell-8.6-dotenv")
    (version "0.8.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dotenv/dotenv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05dqa91zmxkzkz1dcpx2jxkzhdr4f51gw0qql47da9bllavl0jj4"))))
    (properties `((upstream-name . "dotenv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/stackbuilders/dotenv-hs")
    (synopsis "Loads environment variables from dotenv files")
    (description
     "
In most applications,
<http://12factor.net/config configuration should be separated from code>.
While it usually works well to keep configuration in the
environment, there are cases where you may want to store
configuration in a file outside of version control.

\"Dotenv\" files have become popular for storing configuration,
especially in development and test environments. In
<https://github.com/bkeepers/dotenv Ruby>,
<https://github.com/theskumar/python-dotenv Python> and
<https://www.npmjs.com/package/dotenv Javascript> there are libraries
to facilitate loading of configuration options from configuration
files. This library loads configuration to environment variables for
programs written in Haskell.

To use, call `loadFile` from your application:

> import Control.Monad (void)
> import Configuration.Dotenv
> void $ loadFile defaultConfig

This package also includes an executable that can be used
to inspect the results of applying one or more Dotenv files
to the environment, or for invoking your executables with
an environment after one or more Dotenv files is applied.

See the <https://github.com/stackbuilders/dotenv-hs Github>
page for more information on this package.")
    (license license:expat)))

haskell-8.6-dotenv

(define-public haskell-8.6-epub-metadata
  (package
    (name "haskell-8.6-epub-metadata")
    (version "4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/epub-metadata/epub-metadata-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j839h7894l8hf846zmx0vx640ii3rgswr3jin690djrvwa3kbhr"))))
    (properties `((upstream-name . "epub-metadata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-hxt)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-regex-compat-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-zip-archive)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://hub.darcs.net/dino/epub-metadata")
    (synopsis "Library for parsing epub document metadata")
    (description
     "Library for parsing and manipulating epub document metadata. Supports epub versions 2 and 3.
This library was constructed by studying the IDPF specifications for epub documents found here <http://www.idpf.org/epub/20/spec/OPF_2.0.1_draft.htm> and here <http://www.idpf.org/epub/30/spec/epub30-publications.html>")
    (license license:bsd-3)))

haskell-8.6-epub-metadata

(define-public haskell-8.6-fakedata
  (package
    (name "haskell-8.6-fakedata")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fakedata/fakedata-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11gsshxd23inh6lb3rbs0fkmh83ivffxdlcqrxsfi0ymdmzha3rr"))))
    (properties `((upstream-name . "fakedata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/psibi/fakedata#readme")
    (synopsis "Library for producing fake data")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata#readme>")
    (license license:bsd-3)))

haskell-8.6-fakedata

(define-public haskell-8.6-feed
  (package
    (name "haskell-8.6-feed")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/feed/feed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "004lwdng4slj6yl8mgscr3cgj0zzc8hzkf4450dby2l6cardg4w0"))))
    (properties `((upstream-name . "feed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/bergmark/feed")
    (synopsis "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.")
    (description
     "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.

To help working with the multiple feed formats we've
ended up with, this set of modules provides parsers,
pretty printers and some utility code for querying
and just generally working with a concrete representation
of feeds in Haskell.

See here for an example of how to create an Atom feed:
<https://github.com/bergmark/feed/blob/master/tests/Example/CreateAtom.hs>

For basic reading and editing of feeds, consult
the documentation of the Text.Feed.* hierarchy.")
    (license license:bsd-3)))

haskell-8.6-feed

(define-public haskell-8.6-force-layout
  (package
    (name "haskell-8.6-force-layout")
    (version "0.4.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/force-layout/force-layout-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17956k3mab2xhrmfy7fj5gh08h43yjlsryi5acjhnkmin5arhwpp"))))
    (properties `((upstream-name . "force-layout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("10" "1mcs51d1a3klzy938wq0gcbx7ln49g940zhajmflxq6imy5h5kwa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)))
    (home-page "https://hackage.haskell.org/package/force-layout")
    (synopsis "Simple force-directed layout")
    (description "Simulation engine for doing simple force-based layout,
/e.g./ for trees or graphs.  See the diagrams-contrib package
for usage examples.")
    (license license:bsd-3)))

haskell-8.6-force-layout

(define-public haskell-8.6-frontmatter
  (package
    (name "haskell-8.6-frontmatter")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/frontmatter/frontmatter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17dr2g1rywai80hx2v51ljwjpsn6m1jgg6lb4gq9fwq9snq9gsv6"))))
    (properties `((upstream-name . "frontmatter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/yamadapc/haskell-frontmatter")
    (synopsis "Parses frontmatter as used in Jekyll markdown files.")
    (description "Parses frontmatter as used in Jekyll markdown files.

Provides a parser that'll parse the frontmatter only and
one that'll execute a YAML parser on it, so that it's a
YAML frontmatter parser.")
    (license license:expat)))

haskell-8.6-frontmatter

(define-public haskell-8.6-fsnotify
  (package
    (name "haskell-8.6-fsnotify")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fsnotify/fsnotify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19bdbz9wb9jvln6yg6qm0hz0w84bypvkxf0wjhgrgd52f9gidlny"))))
    (properties `((upstream-name . "fsnotify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "12m0y5583plk9pikvwqy1rc0yyvicxf8j5nz0nwxb4grsgfqrv7v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hinotify)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-shelly)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)))
    (home-page "https://github.com/haskell-fswatch/hfsnotify")
    (synopsis "Cross platform library for file change notification.")
    (description "Cross platform library for file creation, modification,
and deletion notification. This library builds upon
existing libraries for platform-specific Windows, Mac,
and Linux filesystem event notification.")
    (license license:bsd-3)))

haskell-8.6-fsnotify

(define-public haskell-8.6-ginger
  (package
    (name "haskell-8.6-ginger")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ginger/ginger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qlsqbkxwyc4hi8228l0mgiylnc0q9i02i46043m1390mdmp34qz"))))
    (properties `((upstream-name . "ginger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://ginger.tobiasdammers.nl/")
    (synopsis "An implementation of the Jinja2 template language in Haskell")
    (description "Ginger is Jinja, minus the most blatant pythonisms. Wants
to be feature complete, but isn't quite there yet.")
    (license license:expat)))

haskell-8.6-ginger

(define-public haskell-8.6-gingersnap
  (package
    (name "haskell-8.6-gingersnap")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gingersnap/gingersnap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10lcs2p14rk1l280h3xkywbagy82cp2yy4zgs8l531hyqfzrsl01"))))
    (properties `((upstream-name . "gingersnap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-microspec)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-snap-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/gingersnap")
    (synopsis
     "Consistent and safe JSON APIs with snap-core and (by default) postgresql-simple")
    (description
     "Straightforward JSON API tools and idioms for snap-core and datastore access
(by default PostgreSQL via postgresql-simple), that provide:

- Safe access to pools of DB connections (preventing connection leaks)
- Simple and consistent JSON responses for successes and failures
(including unexpected failures)
- An optional read-only/maintenance mode for keeping services up during
e.g. database migrations

See the README for a tutorial and example use.")
    (license license:bsd-3)))

haskell-8.6-gingersnap

(define-public haskell-8.6-glazier
  (package
    (name "haskell-8.6-glazier")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/glazier/glazier-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "193igffdh2sdb8sharv7ycxj0daxii2x2n0c53kbz6cbwi865ig9"))))
    (properties `((upstream-name . "glazier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-alternators)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-data-diverse)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-data-diverse-lens)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (home-page "https://github.com/louispan/glazier#readme")
    (synopsis "Extensible effects using ContT, State and variants.")
    (description
     "Interpreting commmands with extensible effects using Cont/Concur monad, State, and variants.")
    (license license:bsd-3)))

haskell-8.6-glazier

(define-public haskell-8.6-gravatar
  (package
    (name "haskell-8.6-gravatar")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-pureMD5)))
    (home-page "https://hackage.haskell.org/package/gravatar")
    (synopsis "Generate Gravatar image URLs")
    (description "Generate Gravatar image URLs")
    (license license:expat)))

haskell-8.6-gravatar

(define-public haskell-8.6-groundhog-th
  (package
    (name "haskell-8.6-groundhog-th")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog-th/groundhog-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bpxvprsxd66k951yjlvpbpzni2f0s94ypkad698a2iyccb2slzk"))))
    (properties `((upstream-name . "groundhog-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-groundhog)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-libyaml)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://hackage.haskell.org/package/groundhog-th")
    (synopsis "Type-safe datatype-database mapping library.")
    (description
     "This library helps to generate instances for Groundhog datatypes.")
    (license license:bsd-3)))

haskell-8.6-groundhog-th

(define-public haskell-8.6-hamtsolo
  (package
    (name "haskell-8.6-hamtsolo")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hamtsolo/hamtsolo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dbhpdfmbs6ydin2p75wqia9lcrw82gfv3kx8659gnw2ll3dmpnh"))))
    (properties `((upstream-name . "hamtsolo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-attoparsec-binary)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-gitrev)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-stm-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/tfc/hamtsolo#readme")
    (synopsis "Intel AMT serial-over-lan (SOL) client")
    (description "hamtsolo lets you connect to Intel computers with enabled
AMT and establish a serial-over-lan (SOL) connection.")
    (license license:bsd-3)))

haskell-8.6-hamtsolo

(define-public haskell-8.6-hapistrano
  (package
    (name "haskell-8.6-hapistrano")
    (version "0.3.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hapistrano/hapistrano-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kw98zcqp6b4j0i2nbd487i2icq12r3sqi8w9gjjqj5fhzsa7sja"))))
    (properties `((upstream-name . "hapistrano") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev" "-f-static")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-formatting)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-gitrev)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-path-io)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-silently)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-typed-process)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/stackbuilders/hapistrano")
    (synopsis "A deployment library for Haskell applications")
    (description
     "
Hapistrano makes it easy to reliably deploy Haskell applications
to a server.

Following popular libraries like Ruby's <http://capistranorb.com/
Capistrano>, Hapistrano does the work of building the application
with dependencies into a distinct folder, and then atomically moves
a symlink to the latest complete build.

This allows for atomic switchovers to new application code after the
build is complete. Rollback is even simpler, since Hapistrano can
just point the `current` symlink to the previous release.

See <https://github.com/stackbuilders/hapistrano the project readme on GitHub>
for more information.
")
    (license license:expat)))

haskell-8.6-hapistrano

(define-public haskell-8.6-haskell-gi
  (package
    (name "haskell-8.6-haskell-gi")
    (version "0.23.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-gi/haskell-gi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04d2lxmbbq7g0yrc5rz9n7zscza9g63vvbz0qv3427y7hbq1xn4a"))))
    (properties `((upstream-name . "haskell-gi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xdg-basedir)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis
     "Generate Haskell bindings for GObject Introspection capable libraries")
    (description
     "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably
Gtk+, but many other libraries in the GObject ecosystem provide introspection data too.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-haskell-gi

(define-public haskell-8.6-haskell-lsp
  (package
    (name "haskell-8.6-haskell-lsp")
    (version "0.15.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-lsp/haskell-lsp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "111c0hdlpnj979p3avlhswziyc6vh6apij5b2nhhi8wlfhqwrpcg"))))
    (properties `((upstream-name . "haskell-lsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")
       #:cabal-revision
       ("1" "1y1f2zjd7dd0j6xpqbjr9gsnwhhc4881m0xdgil4p28icrxwmcdg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-haskell-lsp-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hslogger)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-rope-utf16-splay)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-sorted-list)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/alanz/haskell-lsp")
    (synopsis "Haskell library for the Microsoft Language Server Protocol")
    (description "An implementation of the types, and basic message server to
allow language implementors to support the Language Server
Protocol for their specific language.

An example of this is for Haskell via the Haskell IDE
Engine, at https://github.com//haskell-ide-engine")
    (license license:expat)))

haskell-8.6-haskell-lsp

(define-public haskell-8.6-hasql
  (package
    (name "haskell-8.6-hasql")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hasql/hasql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qypisbyyk9xq3g0av4vphi4k9r0jm8c16crc5wbqvalxaxrj2wc"))))
    (properties `((upstream-name . "hasql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-contravariant-extras)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hashtables)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-loch-th)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-placeholders)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-text-builder)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/nikita-volkov/hasql")
    (synopsis "An efficient PostgreSQL driver with a flexible mapping API")
    (description
     "Root of the \\\"hasql\\\" ecosystem.
For details and tutorials see
<https://github.com/nikita-volkov/hasql the readme>.

The API comes free from all kinds of exceptions. All error-reporting is explicit and is presented using the 'Either' type.")
    (license license:expat)))

haskell-8.6-hasql

(define-public haskell-8.6-haxr
  (package
    (name "haskell-8.6-haxr")
    (version "3000.11.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/haxr/haxr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pyf0wjifsvsnx7zzhbn8ps0n578r0p89p2ib0nx1rsi2f1x21i5"))))
    (properties `((upstream-name . "haxr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HaXml)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-streams)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mtl-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.haskell.org/haskellwiki/HaXR")
    (synopsis "XML-RPC client and server library.")
    (description "HaXR is a library for writing XML-RPC
client and server applications in Haskell.")
    (license license:bsd-3)))

haskell-8.6-haxr

(define-public haskell-8.6-hedgehog-fn
  (package
    (name "haskell-8.6-hedgehog-fn")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-fn/hedgehog-fn-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05drd7jsz54kgwxr5z9vifmql6xif7ma7878qddw2nss5s6wa2qp"))))
    (properties `((upstream-name . "hedgehog-fn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-examples")
       #:cabal-revision
       ("2" "1x7n1r640mc6b4s6pfk96157y3r2z4mcx4i3lbq1k04cnzivd5n2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)))
    (home-page "https://github.com/qfpl/hedgehog-fn")
    (synopsis "Function generation for `hedgehog`")
    (description
     "Generating shrinkable, showable functions with `hedgehog`. See
`Hedgehog.Function` for example usages.")
    (license license:bsd-3)))

haskell-8.6-hedgehog-fn

(define-public haskell-8.6-hedn
  (package
    (name "haskell-8.6-hedn")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hedn/hedn-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16yi4x6g27zabgqwd4xckp5zibxq882919mmyyr95g56r7pm8v1j"))))
    (properties `((upstream-name . "hedn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1wr3zv0bj1714y1ip40va34zysmypicd6qp0l50bg9wj2db0misz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-deriving-compat)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://hackage.haskell.org/package/hedn")
    (synopsis "EDN parsing and encoding")
    (description
     "A EDN parsing and encoding library.

Based on \"specs\" published at <https://github.com/edn-format/edn>.")
    (license license:bsd-3)))

haskell-8.6-hedn

(define-public haskell-8.6-hinfo
  (package
    (name "haskell-8.6-hinfo")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hinfo/hinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04q4camvpfhgqmph4xpilwin9z5ig2v2mwhz2gz8wmgzyqxfbklv"))))
    (properties `((upstream-name . "hinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/ChristopherDavenport/hinfo#readme")
    (synopsis "Command Line App With Info on your Haskell App")
    (description
     "Please see the README on GitHub at <https://github.com/ChristopherDavenport/hinfo#readme>")
    (license license:bsd-3)))

haskell-8.6-hinfo

(define-public haskell-8.6-hlint
  (package
    (name "haskell-8.6-hlint")
    (version "2.1.26")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hlint/hlint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16zkkpbfrd69853cdqf597fva969lirfc86b039i9zd7ghlrcayc"))))
    (properties `((upstream-name . "hlint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fthreaded" "-fgpl")
       #:cabal-revision
       ("1" "15lrjljxzzv2svz5vhnp96zvqqp9769gvlxgyjpqvaf6dfzsv7c4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-cpphs)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-exts-util)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hscolour)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-refact)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/ndmitchell/hlint#readme")
    (synopsis "Source code suggestions")
    (description "HLint gives suggestions on how to improve your source code.")
    (license license:bsd-3)))

haskell-8.6-hlint

(define-public haskell-8.6-hmatrix-vector-sized
  (package
    (name "haskell-8.6-hmatrix-vector-sized")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-vector-sized/hmatrix-vector-sized-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15crzx0cmhmrv2y2gg53x6rzmvawzwgck82c6v6xf49lp02svmj8"))))
    (properties `((upstream-name . "hmatrix-vector-sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-vector-sized)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/mstksg/hmatrix-vector-sized#readme")
    (synopsis "Conversions between hmatrix and vector-sized types")
    (description
     "Conversions between statically sized types in hmatrix and vector-sized.

See README on Github <https://github.com/mstksg/hmatrix-vector-sized#readme>")
    (license license:bsd-3)))

haskell-8.6-hmatrix-vector-sized

(define-public haskell-8.6-hreader-lens
  (package
    (name "haskell-8.6-hreader-lens")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hreader-lens/hreader-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l02fplf2gjns869rhlwzglg08gl8cpjciv9fh05rg74dhn0m3s0"))))
    (properties `((upstream-name . "hreader-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hreader)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-hset)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-action)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)))
    (home-page "http://github.com/dredozubov/hreader-lens")
    (synopsis "Optics for hreader package")
    (description "")
    (license license:expat)))

haskell-8.6-hreader-lens

(define-public haskell-8.6-hschema-prettyprinter
  (package
    (name "haskell-8.6-hschema-prettyprinter")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hschema-prettyprinter/hschema-prettyprinter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vkzq32k9wg1bnam18llzr7r3aihlwsjyxigb87vhngpfghrzwpg"))))
    (properties `((upstream-name . "hschema-prettyprinter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hschema)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-natural-transformation)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/alonsodomin/haskell-schema#readme")
    (synopsis "Describe schemas for your Haskell data types.")
    (description
     "Please see the README on GitHub at <https://github.com/alonsodomin/haskell-schema#readme>")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-hschema-prettyprinter

(define-public haskell-8.6-hschema-quickcheck
  (package
    (name "haskell-8.6-hschema-quickcheck")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hschema-quickcheck/hschema-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rd9fnn6rybxhwny59rk767ckdi6i1b47v0xxhsxkbfwrnmfsjmr"))))
    (properties `((upstream-name . "hschema-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hschema)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-natural-transformation)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/alonsodomin/haskell-schema#readme")
    (synopsis "Describe schemas for your Haskell data types.")
    (description
     "Please see the README on GitHub at <https://github.com/alonsodomin/haskell-schema#readme>")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-hschema-quickcheck

(define-public haskell-8.6-hsebaysdk
  (package
    (name "haskell-8.6-hsebaysdk")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsebaysdk/hsebaysdk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00c9vwlmx4i2a436ajznv1bwaqj5lgq05gpc928vn59v27gx0f07"))))
    (properties `((upstream-name . "hsebaysdk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/creichert/hsebaysdk")
    (synopsis "Haskell eBay SDK")
    (description "eBay API wrapper in Haskell.
See the git repository for example usages.")
    (license license:bsd-3)))

haskell-8.6-hsebaysdk

(define-public haskell-8.6-hspec-golden-aeson
  (package
    (name "haskell-8.6-hspec-golden-aeson")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-golden-aeson/hspec-golden-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18jc992dhln1v5sfg8yjfsm2i5c7c38ph3bxrjxgc9bl7fzcsk0i"))))
    (properties `((upstream-name . "hspec-golden-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-core)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-quickcheck-arbitrary-adt)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-silently)))
    (home-page
     "https://github.com/plow-technologies/hspec-golden-aeson#readme")
    (synopsis "Use tests to monitor changes in Aeson serialization")
    (description "Use tests to monitor changes in Aeson serialization")
    (license license:bsd-3)))

haskell-8.6-hspec-golden-aeson

(define-public haskell-8.6-html-conduit
  (package
    (name "haskell-8.6-html-conduit")
    (version "1.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-conduit/html-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "196c8zcnjp1pc5qvqxd8arx3xkw0a90rvg9mmiw2l4zwnx65709n"))))
    (properties `((upstream-name . "html-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/xml")
    (synopsis "Parse HTML documents using xml-conduit datatypes.")
    (description
     "This package uses tagstream-conduit for its parser. It automatically balances mismatched tags, so that there shouldn't be any parse failures. It does not handle a full HTML document rendering, such as adding missing html and head tags. Note that, since version 1.3.1, it uses an inlined copy of tagstream-conduit with entity decoding bugfixes applied.")
    (license license:expat)))

haskell-8.6-html-conduit

(define-public haskell-8.6-hw-hedgehog
  (package
    (name "haskell-8.6-hw-hedgehog")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-hedgehog/hw-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wnfgmybccznrm2i6rrkg87mwxqng9y115wsbf4r40y6pica7kbi"))))
    (properties `((upstream-name . "hw-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/haskell-works/hw-hedgehog#readme")
    (synopsis "Extra hedgehog functionality")
    (description "Extra hedgehog functionality.")
    (license license:bsd-3)))

haskell-8.6-hw-hedgehog

(define-public haskell-8.6-hw-hspec-hedgehog
  (package
    (name "haskell-8.6-hw-hspec-hedgehog")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-hspec-hedgehog/hw-hspec-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rfcz7fq7gp8xxlax8l1vfr88h9sh50ghs1iihy9jqv135d1dbky"))))
    (properties `((upstream-name . "hw-hspec-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)))
    (home-page "https://github.com/haskell-works/hw-hspec-hedgehog#readme")
    (synopsis "Interoperability between hspec and hedgehog")
    (description "Interoperability between hspec and hedgehog.")
    (license license:bsd-3)))

haskell-8.6-hw-hspec-hedgehog

(define-public haskell-8.6-hxt-css
  (package
    (name "haskell-8.6-hxt-css")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hxt-css/hxt-css-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dv5xy0rhcs08zyfnmf752h026r2kfg9905d482xy8srblagqi02"))))
    (properties `((upstream-name . "hxt-css") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-hxt)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (home-page "https://github.com/redneb/hxt-css")
    (synopsis "CSS selectors for HXT")
    (description
     "This package makes it possible to easily traverse (X)HTML/XML documents
using CSS selectors. It supports all CSS level 3 selectors except the
ones that do not make sense outside a web browser (e.g. such as @@:hover@@
or @@::first-letter@@). Also, there is no support for namespaced selectors.")
    (license license:bsd-3)))

haskell-8.6-hxt-css

(define-public haskell-8.6-hxt-curl
  (package
    (name "haskell-8.6-hxt-curl")
    (version "9.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-curl/hxt-curl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sn5ngzz5qszdb3anbpqbjdijz29gmrwjrg9vsmrqsdqz65wrhfd"))))
    (properties `((upstream-name . "hxt-curl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-curl)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-hxt)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (propagated-inputs (list (@ (gnu packages curl) curl)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "LibCurl interface for HXT")
    (description "LibCurl interface for HXT")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-hxt-curl

(define-public haskell-8.6-hxt-expat
  (package
    (name "haskell-8.6-hxt-expat")
    (version "9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-expat/hxt-expat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mi2f2i31nqjqzwl82iypm1qngrpxp7lz506pjgqfbn840yc9n8h"))))
    (properties `((upstream-name . "hxt-expat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-hexpat)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-hxt)))
    (propagated-inputs (list (@ (gnu packages xml) expat)))
    (home-page "http://www.fh-wedel.de/~si/HXmlToolbox/index.html")
    (synopsis "Expat parser for HXT")
    (description "The Expat interface for the HXT.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-hxt-expat

(define-public haskell-8.6-hxt-http
  (package
    (name "haskell-8.6-hxt-http")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-hxt)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "Interface to native Haskell HTTP package HTTP")
    (description
     "Interface to native Haskell HTTP package HTTP.
This package can be used as alternative for the hxt-curl package
for accessing documents via HTTP.

Changes from 9.1.3: Works with ghc-7.10

Changes to 9.1.3: New warnings from ghc-7.4 removed")
    (license license:expat)))

haskell-8.6-hxt-http

(define-public haskell-8.6-hxt-tagsoup
  (package
    (name "haskell-8.6-hxt-tagsoup")
    (version "9.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-tagsoup/hxt-tagsoup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10xj8jqxazfxzazc1ln9w2blp67rafbwdi87ba7arw5ccc6jjyyp"))))
    (properties `((upstream-name . "hxt-tagsoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-hxt)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hxt-charproperties)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-hxt-unicode)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "TagSoup parser for HXT")
    (description "The Tagsoup interface for the HXT lazy HTML parser.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-hxt-tagsoup

(define-public haskell-8.6-hyraxAbif
  (package
    (name "haskell-8.6-hyraxAbif")
    (version "0.2.3.21")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyraxAbif/hyraxAbif-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ghhfv8gzs9sg13nj3mhqd24zbrkjj1dgsjz3sql6276kpa1p2kc"))))
    (properties `((upstream-name . "hyraxAbif") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "12ka2k7z7yg3jbx6ya409flyqpl6i29hcf445dicbp1jpra2d70f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hscolour)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pretty-show)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-protolude)))
    (home-page "https://github.com/hyraxbio/hyraxAbif/#readme")
    (synopsis "Modules for parsing, generating and manipulating AB1 files.")
    (description
     "This library provides functionality for parsing, modifying, writing and generating ABIF files
<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEwAAABuCAMAAAC6LQUkAAAALVBMVEXA5+7/////53c9q1oVFhbCPzifzLVrv4RGguPX39ZFTluGhX6Ks/DSg1zdvnNa6pLqAAADlklEQVRo3u3XjZKjIAwAYD3+BIH3f9wjBCSJtnUd2725qeO6rtWvMSToTn9uXKYvdhXLSmXxSTLG8GPlQD2e8NN+eNVah0QwpZT7I68044LOb6SpJIShcUkMU+zCDGGltD+WTdu2qIuz5hz0iMwp5/h9JhFVizbVu0/j44wx0ZwplTMPDQJIeYcZAHG7JUwMQIXULrTtChpuX9vJATDI29oxB9nfDcF+ODOElVpwNDKKqbbsc5T3Q4xp61jLWdiwrFQdAXqfuVyUd1iqSqYJCFUbmMMbZPeZDuoMGQxw+5ZeZx1rIfHxTPv8b7XK62bt1ncKuoI9WuYLyxf7Yl/si/0+Bk9NiS1lkafDefIYPE/+ScwD5s9gInUenv1eYoFjFt4OLMemJR5g7ggLZ7B4BrO3Y/YCZu/FbFn5sVWvZX2BRcDiBczBSe6t2DS9FcPz+LGgrb2IeX+IhU9iy2nMe4ZBl4tOL1gpteU1pk9is8Rg/pFzUMX0bRj+/D+YP8A8Yn7D7AE2ITaJ6ayOqJhoa3kQzNVa41ipsfhhzCJmfxeziFkxA8HmORYPMds2O2zdMPcYixcw28J7GwbvEBxz92K+DSmbG9uQfgpbFnhSn8F8a4OGYVsKLAAWlquYEti6ao6pA0wjpi9gY0uns779GAbPw5swfOq8wnzHfMNaUfDm7NgkZiAxB7VxDE8xqFn4wleY7Zj9Tay1OOv01uL4a5vO9lidjmk/ncQsCbBhAbFwE1bnKYq5jjkxafTUPcKWQ8yTcXgL5ke50dKnLbD0SW8Rk4bAdMf0M6xPLYvsJt5P7f3nVmx+heE5HDPGmFswyFXDvJg0Wu7oKJIWwAaoLTARzJuUjHcUC2RUH2HhEMsml5VgdmD2GdbaJEzkHaiEVYIj70E/xSJpTcRIc/b/53CHGqQF4mgTipXsz8b8GBuVzbA0z+kK1oc8jtbMiOXRT/1ffUzeA2w5xIozz0V8gqlDbBulhWLQYhzzpOBY4Y+9cIApBfmHERj9pAemn2BbYgPB0h6je+cxr1bEklmVF62JMbJMbUMRaWKnjtX8Y9KsaAAcClb3rruR5iL2/BuDtWeMsqLMcJdhW5ALDX8ZGO4VzInKwCD5LNb3j7CeMkyazH/d58+kVnIx0PAxaR6rrCfNi5TVKDnWbjlqPZFvjNiZZmAtaSRl9Q/+htHkQGaxudWvM/0u4T6NEynDcTfnF70tD074C7p1S5o4ju7XAAAAAElFTkSuQmCC>>

Any AB1 file conforming to the standard at <http://www6.appliedbiosystems.com/support/software_community/ABIF_File_Format.pdf> should be supported.

This library also support generating a minimal ABIF file from a FASTA input sequence.

A basic terminal application that can dump and generate AB1s is included. See <https://github.com/hyraxbio/hyraxAbif/blob/master/app/Main.hs>

See

* \"Hyrax.Abif.Generate\" for generate ABIF files from FASTA inputs
* \"Hyrax.Abif.Read\" for parsing ABIF files
* \"Hyrax.Abif.Write\" for creating/updating ABIF files
* \"Hyrax.Abif\" for the core types
* \"Examples\" for examples")
    (license license:bsd-3)))

haskell-8.6-hyraxAbif

(define-public haskell-8.6-influxdb
  (package
    (name "haskell-8.6-influxdb")
    (version "1.7.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/influxdb/influxdb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01rjbavv9b4gay4bvmxxljvps591xvp7lrx68658xkjwfi2phzhs"))))
    (properties `((upstream-name . "influxdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-mwc-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-optional-args)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/maoe/influxdb-haskell")
    (synopsis "Haskell client library for InfluxDB")
    (description "@@influxdb@@ is a Haskell client library for InfluxDB.

See \"Database.InfluxDB\" for a quick start guide.")
    (license license:bsd-3)))

haskell-8.6-influxdb

(define-public haskell-8.6-jose
  (package
    (name "haskell-8.6-jose")
    (version "0.8.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jose/jose-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kv2kmws9kwymx8pm6j8nnlk1d8pwv22hw2ka2kwlipjvmb7mld4"))))
    (properties `((upstream-name . "jose") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demos")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-concise)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-monad-time)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/frasertweedale/hs-jose")
    (synopsis
     "Javascript Object Signing and Encryption and JSON Web Token library")
    (description
     "
An implementation of the Javascript Object Signing and Encryption
(JOSE) and JSON Web Token (JWT; RFC 7519) formats.

The JSON Web Signature (JWS; RFC 7515) implementation is complete.

EdDSA signatures (RFC 8037) are supported (Ed25519 only).

JWK Thumbprint (RFC 7638) is supported (requires /aeson/ >= 0.10).

JSON Web Encryption (JWE; RFC 7516) is not yet implemented.

The __ECDSA implementation is vulnerable to timing attacks__ and
should only be used for verification.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-jose

(define-public haskell-8.6-json-autotype
  (package
    (name "haskell-8.6-json-autotype")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-autotype/json-autotype-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nir4nx4wchl10zs753a3ayg9lgixg2ap3liwz9xpz191c8rkbka"))))
    (properties `((upstream-name . "json-autotype") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-GenericPretty)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-json-alt)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/mgajda/json-autotype")
    (synopsis "Automatic type declaration for JSON input data")
    (description
     "Generates datatype declarations with Aeson's `FromJSON` instances
from a set of example \".json\" files.

To get started you need to install the package,
and run \"json-autotype\" binary on an input \".json\" file.
That will generate a new Aeson-based JSON parser.

\"$ json-autotype input.json -o JSONTypes.hs\"

Feel free to tweak the by changing types of the fields
- any field type that is instance of `FromJSON` should work.

You may immediately test the parser by calling it as a script:

\"$ runghc JSONTypes.hs input.json\"

One can now use multiple input files to generate better type description.

Now with Elm code generation support!
(If you want your favourite programming language supported too -
name your price and mail the author.)

See introduction on  <https://github.com/mgajda/json-autotype>
for details.")
    (license license:bsd-3)))

haskell-8.6-json-autotype

(define-public haskell-8.6-jwt
  (package
    (name "haskell-8.6-jwt")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jwt/jwt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1a1fqmqfm2ajq75mq2x6la8jb2g5hzl4dk8cgx9xsrikp8c7n75w"))))
    (properties `((upstream-name . "jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ld5dh4x3sb28416bk3k39k46vmx1s7agk17v7cb5cxam4hj3c1c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tasty-th)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://bitbucket.org/puffnfresh/haskell-jwt")
    (synopsis "JSON Web Token (JWT) decoding and encoding")
    (description
     "JSON Web Token (JWT) is a compact URL-safe means of representing claims to be transferred between two parties.

To get started, see the documentation for the \"Web.JWT\" module.")
    (license license:expat)))

haskell-8.6-jwt

(define-public haskell-8.6-lambdabot-core
  (package
    (name "haskell-8.6-lambdabot-core")
    (version "5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lambdabot-core/lambdabot-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wh87wwb8hk3hn2lmdqi1hv77qbdmwqcwjslichygmvac8fjhjss"))))
    (properties `((upstream-name . "lambdabot-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "19x4i9gr210kdqmzrg02kzgp0vfkgv707qnlxwwizhgd5wzlbbjq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-SafeSemaphore)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-dependent-map)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dependent-sum)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-dependent-sum-template)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-edit-distance)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-haskeline)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hslogger)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-network-bsd)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-prim-uniq)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-random-fu)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-random-source)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://wiki.haskell.org/Lambdabot")
    (synopsis "Lambdabot core functionality")
    (description "Lambdabot is an IRC bot written over several years by
those on the #haskell IRC channel.

Manage plugins, network connections, configurations
and much more.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-lambdabot-core

(define-public haskell-8.6-loc
  (package
    (name "haskell-8.6-loc")
    (version "0.1.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/loc/loc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1xdqnqr4wy3xw9vyfkf6c8xsq74nryhb8z31grcwpn6ppdgzyqy2"))))
    (properties `((upstream-name . "loc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)))
    (home-page "https://github.com/chris-martin/loc")
    (synopsis
     "Types representing line and column positions and ranges in text files.")
    (description
     "The package name /loc/ stands for “location” and is also an allusion to the
acronym for “lines of code”.

The @@Loc@@ type represents a caret position in a text file, the @@Span@@ type
is a nonempty range between two @@Loc@@s, and the @@Area@@ type is a set of
non-touching @@Span@@s.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-loc

(define-public haskell-8.6-lxd-client-config
  (package
    (name "haskell-8.6-lxd-client-config")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lxd-client-config/lxd-client-config-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kxg42hrgq5w38v1zsq8v9x0ky83c02k8rx2qcyazh7bkg4m4f4h"))))
    (properties `((upstream-name . "lxd-client-config") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/hverr/haskell-lxd-client-config#readme")
    (synopsis "Read the configuration file of the standard LXD client.")
    (description
     "This package can read the configuration file of the standard LXD client.

It can for example extract information about the configured LXD remotes on
your system.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-lxd-client-config

(define-public haskell-8.6-machines-binary
  (package
    (name "haskell-8.6-machines-binary")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines-binary/machines-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lh6q99xfmxl53gkxlrbjh1pfbkff8faxr9fycks98cfcmnlbzv0"))))
    (properties `((upstream-name . "machines-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-machines)))
    (home-page "http://github.com/aloiscochard/machines-binary")
    (synopsis "Binary utilities for the machines library")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-machines-binary

(define-public haskell-8.6-machines-io
  (package
    (name "haskell-8.6-machines-io")
    (version "0.2.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines-io/machines-io-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m7mm3s7inyiy07w8idgwb99k2a9cd1768hkm7ygryllkrg9smsd"))))
    (properties `((upstream-name . "machines-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-chunked-data)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-machines)))
    (home-page "http://github.com/aloiscochard/machines-io")
    (synopsis "IO utilities for the machines library")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-machines-io

(define-public haskell-8.6-markdown
  (package
    (name "haskell-8.6-markdown")
    (version "0.1.17.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markdown/markdown-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m7xf3r7wvpzdj2zic90w5b6adnjb6mjq9mycbnzcjibpr1fgqy2"))))
    (properties `((upstream-name . "markdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-blaze-markup)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/markdown")
    (synopsis "Convert Markdown to HTML, with XSS protection")
    (description
     "This library leverages existing high-performance libraries (attoparsec, blaze-html, text, and conduit), and should integrate well with existing codebases.")
    (license license:bsd-3)))

haskell-8.6-markdown

(define-public haskell-8.6-mmark
  (package
    (name "haskell-8.6-mmark")
    (version "0.0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmark/mmark-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0apc582ck0g5ih0rpcljsfvss646ng62bjm37nj5z6k48symh16n"))))
    (properties `((upstream-name . "mmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-email-validate)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-html-entity-map)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-lucid)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-modern-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-metrics)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/mmark-md/mmark")
    (synopsis "Strict markdown processor for writers")
    (description "Strict markdown processor for writers.")
    (license license:bsd-3)))

haskell-8.6-mmark

(define-public haskell-8.6-mono-traversable-instances
  (package
    (name "haskell-8.6-mono-traversable-instances")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable-instances/mono-traversable-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zh81hvqnracil2nvkx14xzwv9vavsnx739acp6gycdyrs5jpzxm"))))
    (properties `((upstream-name . "mono-traversable-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-dlist-instances)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-vector-instances)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Extra typeclass instances for mono-traversable")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.6-mono-traversable-instances

(define-public haskell-8.6-mono-traversable-keys
  (package
    (name "haskell-8.6-mono-traversable-keys")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable-keys/mono-traversable-keys-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xyl4n0ydfqrjydm2g62r1zl36bdvvp8nbxbqkbai1z24a9r51dw"))))
    (properties `((upstream-name . "mono-traversable-keys") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-keys)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-vector-instances)))
    (home-page
     "https://github.com/recursion-ninja/mono-traversable-keys#readme")
    (synopsis
     "Type-classes for interacting with monomorphic containers with a key")
    (description
     "This is the extension of two other popular packages,
<http://hackage.haskell.org/package/mono-traversable mono-traversable> and
<http://hackage.haskell.org/package/keys keys>,
designed to provided the functionality of the @@keys@@ package to the monomorphic
containers enhanced by the @@mono-traversable@@ package.")
    (license license:bsd-3)))

haskell-8.6-mono-traversable-keys

(define-public haskell-8.6-mustache
  (package
    (name "haskell-8.6-mustache")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mustache/mustache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0j5kzlirirnj2lscxgc6r9j0if8s3pvxswjblma6yxpw6qyzk2xc"))))
    (properties `((upstream-name . "mustache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1rvndrbv7gn04mrs8mzhymk5r9qp84rb0ccqh9i0kpwjs9cw00yd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-either)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-th-lift)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/JustusAdam/mustache")
    (synopsis "A mustache template parser library.")
    (description
     "Allows parsing and rendering template files with mustache markup. See the
mustache <http://mustache.github.io/mustache.5.html language reference>.

Implements the mustache spec version 1.1.3.

/Note/: Versions including and beyond 0.4 are compatible with ghc 7.8 again.")
    (license license:bsd-3)))

haskell-8.6-mustache

(define-public haskell-8.6-nqe
  (package
    (name "haskell-8.6-nqe")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nqe/nqe-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1l0dydhcqmgf6bamy29sgry8sjirvw3khzjkhpjlb12zl2y75xxd"))))
    (properties `((upstream-name . "nqe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-stm-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unique)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/xenog/nqe#readme")
    (synopsis "Concurrency library in the style of Erlang/OTP")
    (description
     "Minimalistic actor library inspired by Erlang/OTP with support for supervisor hierarchies and asynchronous messages, as well as abstractions for synchronous communication and easy management of TCP connections.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-nqe

(define-public haskell-8.6-nvim-hs-contrib
  (package
    (name "haskell-8.6-nvim-hs-contrib")
    (version "2.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nvim-hs-contrib/nvim-hs-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xqwvvhs2bpa146dnf4nkihx9lk9flwj3fyar2d4fchdfyszrbzr"))))
    (properties `((upstream-name . "nvim-hs-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-messagepack)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-nvim-hs)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/neovimhaskell/nvim-hs-contrib")
    (synopsis "Haskell plugin backend for neovim")
    (description "Library for nvim-hs.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-nvim-hs-contrib

(define-public haskell-8.6-oeis
  (package
    (name "haskell-8.6-oeis")
    (version "0.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/oeis/oeis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0aa5i0328k8pf0y439b95c3ipv70lfabvv55jp64pwb9kx6p5ymv"))))
    (properties `((upstream-name . "oeis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://hackage.haskell.org/package/oeis")
    (synopsis
     "Interface to the Online Encyclopedia of Integer Sequences (OEIS)")
    (description
     "Interface to the <http://oeis.org/ Online Encyclopedia of Integer Sequences (OEIS)>.")
    (license license:bsd-3)))

haskell-8.6-oeis

(define-public haskell-8.6-partial-semigroup
  (package
    (name "haskell-8.6-partial-semigroup")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/partial-semigroup/partial-semigroup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n0nr7yprkg9ca86yd1w8d42zqjjdf6k7bbk818kfwbh72csxl0q"))))
    (properties `((upstream-name . "partial-semigroup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsemigroup-in-base" "-fenable-hedgehog" "-fenable-doctest")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)))
    (home-page "https://github.com/chris-martin/partial-semigroup")
    (synopsis "A partial binary associative operator")
    (description
     "A partial semigroup is like a semigroup, but the operator
is partial. We represent this in Haskell as a total function
@@(<>?) :: a -> a -> Maybe a@@.

The
<https://hackage.haskell.org/package/partial-semigroup-hedgehog partial-semigroup-hedgehog>
companion package provides support for checking the partial
semigroup associativity axiom using the
<https://hackage.haskell.org/package/hedgehog hedgehog>
package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-partial-semigroup

(define-public haskell-8.6-pg-harness-client
  (package
    (name "haskell-8.6-pg-harness-client")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pg-harness-client/pg-harness-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06gqra5q20sc13slh5vz95bi1vq0ai43qfh7npcyv258zwv40qnh"))))
    (properties `((upstream-name . "pg-harness-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)))
    (home-page "https://github.com/BardurArantsson/pg-harness")
    (synopsis "Client library for pg-harness-server")
    (description
     "Client library for <https://hackage.haskell.org/package/pg-harness-server pg-harness-server>
for conveniently creating temporary PostgreSQL databases for use in tests.")
    (license license:bsd-2)))

haskell-8.6-pg-harness-client

(define-public haskell-8.6-pipes-category
  (package
    (name "haskell-8.6-pipes-category")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-category/pipes-category-"
                    version ".tar.gz"))
              (sha256
               (base32
                "008733qffml0cqgalacrl1r8sdz08rbsz4n2pd5j9xrbxn4xh4a7"))))
    (properties `((upstream-name . "pipes-category") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-pipes-extras)))
    (home-page "https://github.com/louispan/pipes-category#readme")
    (synopsis
     "Allows instances for Category, Arrow and ArrowChoice for Pipes.")
    (description
     "Allows Category, Arrow, and ArrowChoice instances for Pipes.Pipe, using newtype wrapper 'Shaft'")
    (license license:bsd-3)))

haskell-8.6-pipes-category

(define-public haskell-8.6-postgresql-schema
  (package
    (name "haskell-8.6-postgresql-schema")
    (version "0.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-schema/postgresql-schema-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wnmhh8pzs9hzsmqkvr89jbdbbd1j87fnly2c80rsd7wr5qcrpkk"))))
    (properties `((upstream-name . "postgresql-schema") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-basic-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-shelly)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/mfine/postgresql-schema")
    (synopsis "PostgreSQL Schema Management")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.6-postgresql-schema

(define-public haskell-8.6-pusher-http-haskell
  (package
    (name "haskell-8.6-pusher-http-haskell")
    (version "1.5.1.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pusher-http-haskell/pusher-http-haskell-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02r6w64ll7gka1zgvv6yqalbzpjmw0rx2ji84fmbnk0f7c1793sq"))))
    (properties `((upstream-name . "pusher-http-haskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/WillSewell/pusher-http-haskell")
    (synopsis "Haskell client library for the Pusher HTTP API")
    (description "Functions that correspond to endpoints of the Pusher HTTP
API. Messages can be triggered, and information about the
channel can be queried. Additionally there are functions
for authenticating users of private and presence channels.")
    (license license:expat)))

haskell-8.6-pusher-http-haskell

(define-public haskell-8.6-qchas
  (package
    (name "haskell-8.6-qchas")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/qchas/qchas-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g966915j17ijpyz7klxc0j0rflbxkj0a49vf57z5xfllv8l1wx9"))))
    (properties `((upstream-name . "qchas") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-hmatrix)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/ardeleanasm/qchas#readme")
    (synopsis "A library for implementing Quantum Algorithms")
    (description
     "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.")
    (license license:bsd-3)))

haskell-8.6-qchas

(define-public haskell-8.6-safecopy
  (package
    (name "haskell-8.6-safecopy")
    (version "0.9.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safecopy/safecopy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "020z2cdarpy8crz6b871lprgacwi6zsmmwml35ban93hdfjv2zbq"))))
    (properties `((upstream-name . "safecopy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "060yxbk2fy5gddnpf6kxppc9fwkhiyldm39bj7873wggnpdc2xds")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-action)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/acid-state/safecopy")
    (synopsis "Binary serialization with version control.")
    (description
     "An extension to Data.Serialize with built-in version control.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-safecopy

(define-public haskell-8.6-sbp
  (package
    (name "haskell-8.6-sbp")
    (version "2.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sbp/sbp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "03d2wa73lg5l417c39di742x5x00bjjbqp7wkyr2vkpy04ilqvii"))))
    (properties `((upstream-name . "sbp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-basic-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-binary-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-lens-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/swift-nav/libsbp")
    (synopsis "SwiftNav's SBP Library")
    (description
     "Haskell bindings for Swift Navigation Binary Protocol (SBP), a fast,
simple, and minimal binary protocol for communicating with Swift
devices. It is the native binary protocol used by the Piksi GPS
receiver to transmit solutions, observations, status and debugging
messages, as well as receive messages from the host operating
system, such as differential corrections and the almanac.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.6-sbp

(define-public haskell-8.6-sdl2
  (package
    (name "haskell-8.6-sdl2")
    (version "2.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sdl2/sdl2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "087df61fsmfsdc7pdn6sgsp5lf20nampa41illszii5jfr13s7gw"))))
    (properties `((upstream-name . "sdl2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-opengl-example" "-f-no-linear")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-StateVar)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2")
    (synopsis
     "Both high- and low-level bindings to the SDL library (version 2.0.6+).")
    (description
     "This package contains bindings to the SDL 2 library, in both high- and
low-level forms:

The 'SDL' namespace contains high-level bindings, where enumerations are split
into sum types, and we perform automatic error-checking.

The 'SDL.Raw' namespace contains an almost 1-1 translation of the C API into
Haskell FFI calls. As such, this does not contain sum types nor error
checking. Thus this namespace is suitable for building your own abstraction
over SDL, but is not recommended for day-to-day programming.

Read \"SDL\" for a getting started guide.")
    (license license:bsd-3)))

haskell-8.6-sdl2

(define-public haskell-8.6-servant-blaze
  (package
    (name "haskell-8.6-servant-blaze")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-blaze/servant-blaze-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pfnpc6m7i8knndc1734fbzpfgmvdcpkd8cj0jyw139b70siz63r"))))
    (properties `((upstream-name . "servant-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0pn9ca2jmx71clz0j9nlz1lwmr2xv39zqfda10al11am9mc4j8n4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Blaze-html support for servant")
    (description "Servant support for blaze-html

'HTML' content type which will use `ToMarkup` class.")
    (license license:bsd-3)))

haskell-8.6-servant-blaze

(define-public haskell-8.6-servant-cassava
  (package
    (name "haskell-8.6-servant-cassava")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-cassava/servant-cassava-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03jnyghwa5kjbl5j55njmp7as92flw91zs9cgdvb4jrsdy85sb4v"))))
    (properties `((upstream-name . "servant-cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0n4nbm0axa9qd805jb3gja2p2fiwvhjpvdi5rhlwh4shm9crppcy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant CSV content-type for cassava")
    (description "Servant CSV content-type for cassava.")
    (license license:bsd-3)))

haskell-8.6-servant-cassava

(define-public haskell-8.6-servant-client-core
  (package
    (name "haskell-8.6-servant-client-core")
    (version "0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client-core/servant-client-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cvv9a7z6ahwjp433c4sxa9i1ifabbih63bx71r9gvqzl85pb3dz"))))
    (properties `((upstream-name . "servant-client-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "172diqnz0ddvlfznfjk0k1l02f1mb11i1dkzr6rizdmhb66qpqil")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Core functionality and class for client function generation for servant APIs")
    (description
     "This library provides backend-agnostic generation of client functions. For
more information, see the README.")
    (license license:bsd-3)))

haskell-8.6-servant-client-core

(define-public haskell-8.6-servant-docs
  (package
    (name "haskell-8.6-servant-docs")
    (version "0.11.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-docs/servant-docs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z35rr55mxwi761pmqy176liglms443ynk0sjh8v8hcyfciymq0d"))))
    (properties `((upstream-name . "servant-docs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-string-conversions)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-universe-base)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "http://docs.servant.dev/")
    (synopsis "generate API docs for your servant webservice")
    (description
     "Library for generating API docs from a servant API definition.

Runnable example <https://github.com/haskell-servant/servant/blob/master/servant-docs/example/greet.hs here>.

<https://github.com/haskell-servant/servant/blob/master/servant-docs/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.6-servant-docs

(define-public haskell-8.6-servant-foreign
  (package
    (name "haskell-8.6-servant-foreign")
    (version "0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-foreign/servant-foreign-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wxx9drycam46vcmf3kxp2lq1drlpxb1b6fxbxyb6dd7349py6gi"))))
    (properties `((upstream-name . "servant-foreign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0axz78g0vhasq5cvqg1lq0b2qanmb768f1bvzbfx58rn6arwflnj")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Helpers for generating clients for servant APIs in any programming language")
    (description
     "Helper types and functions for generating client functions for servant APIs in any programming language

This package provides types and functions that collect all the data needed to generate client functions in the programming language of your choice. This effectively means you only have to write the code that \"pretty-prints\" this data as some code in your target language.

See the servant-js package for an example

<https://github.com/haskell-servant/servant/blob/master/servant-foreign/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.6-servant-foreign

(define-public haskell-8.6-servant-xml
  (package
    (name "haskell-8.6-servant-xml")
    (version "1.0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-xml/servant-xml-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jzzw4bwjcnax53xx8yjfldd21zgbvynpagf1ikxpzq3sgqhdl2x"))))
    (properties `((upstream-name . "servant-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-servant)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-xmlbf)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xmlbf-xeno)))
    (home-page "https://github.com/fosskers/servant-xml")
    (synopsis "Servant support for the XML Content-Type")
    (description
     "Servant support for the Content-Type of /application\\/xml/. Anything with 'ToXml' and 'FromXml' instances can be automatically marshalled.")
    (license license:bsd-3)))

haskell-8.6-servant-xml

(define-public haskell-8.6-ses-html
  (package
    (name "haskell-8.6-ses-html")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ses-html/ses-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13x0m3i8gs0rapshniwxhzwz0311fzan7k87s6ink3jk7gh6xxyg"))))
    (properties `((upstream-name . "ses-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-cryptohash)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-streams)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ses-html")
    (synopsis
     "Send HTML formatted emails using Amazon's SES REST API with blaze")
    (description
     "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell")
    (license license:bsd-3)))

haskell-8.6-ses-html

(define-public haskell-8.6-show-prettyprint
  (package
    (name "haskell-8.6-show-prettyprint")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/show-prettyprint/show-prettyprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "030dzprz07ib41f8pg2409zdxymvkk8jq4m0vczvgaajq3gghkdk"))))
    (properties `((upstream-name . "show-prettyprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1sfspc1a5nhwap6mwx1wn75ar8csb2kx8r0rpampdrpk427idvzs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-prettyprinter)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-trifecta)))
    (home-page "https://github.com/quchen/show-prettyprint#readme")
    (synopsis "Robust prettyprinter for output of auto-generated Show
instances")
    (description "See README.md")
    (license license:bsd-3)))

haskell-8.6-show-prettyprint

(define-public haskell-8.6-skews
  (package
    (name "haskell-8.6-skews")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/skews/skews-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xw9zlv7f77048c47kc3kymwxv9whg286d270n9d1k52c0df8h0p"))))
    (properties `((upstream-name . "skews") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-deque)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-websockets)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/skews")
    (synopsis "A very quick-and-dirty WebSocket server.")
    (description
     "A very quick-and-dirty WebSocket server. Intended for use with unit tests.")
    (license license:bsd-3)))

haskell-8.6-skews

(define-public haskell-8.6-skylighting-core
  (package
    (name "haskell-8.6-skylighting-core")
    (version "0.8.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-core/skylighting-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hdchivb4af9w7v5v7lrwfwawd3kcwmpzk69m1vkkm3pis8lcr1s"))))
    (properties `((upstream-name . "skylighting-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-f-system-pcre")
       #:cabal-revision
       ("2" "0rf3z883r4nkp86ljrb863ga239bwsklq89zm4ngn3hcdsmk39dw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-colour)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-hxt)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-regex-base)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "syntax highlighting library")
    (description "Skylighting is a syntax highlighting library.
It derives its tokenizers from XML syntax
definitions used by KDE's KSyntaxHighlighting
framework, so any syntax supported by that
framework can be added. An optional command-line
program is provided.
Skylighting is intended to be the successor to
highlighting-kate.
This package provides the core highlighting
functionality under a permissive license. It also
bundles XML parser definitions licensed under the
GPL.")
    (license license:bsd-3)))

haskell-8.6-skylighting-core

(define-public haskell-8.6-smoothie
  (package
    (name "haskell-8.6-smoothie")
    (version "0.4.2.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smoothie/smoothie-" version
                    ".tar.gz"))
              (sha256
               (base32
                "059r2igvqidganwn0d907f6zv9h7ggwa6hgaaxh2car3kyi7425l"))))
    (properties `((upstream-name . "smoothie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/phaazon/smoothie")
    (synopsis "Smooth curves via several interpolation modes")
    (description "This package exports several splines you can use
to interpolate points in between. It includes instances for
<https://hackage.haskell.org/package/aeson aeson> so that
you can quickly store the splines and restore them.")
    (license license:bsd-3)))

haskell-8.6-smoothie

(define-public haskell-8.6-snap-blaze
  (package
    (name "haskell-8.6-snap-blaze")
    (version "0.2.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-blaze/snap-blaze-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hc8k0cviq7ayjymsfr435bnfw35pa4f80i7x4ypn2539fykavmk"))))
    (properties `((upstream-name . "snap-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-blaze-html)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-snap-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jaspervdj/snap-blaze")
    (synopsis "blaze-html integration for Snap")
    (description "blaze-html integration for Snap")
    (license license:bsd-3)))

haskell-8.6-snap-blaze

(define-public haskell-8.6-snap-server
  (package
    (name "haskell-8.6-snap-server")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-server/snap-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lw475wp0lnrbgc3jcfif3qjjc3pmrh2k74d8cgpnc1304g6a2s5"))))
    (properties `((upstream-name . "snap-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-openssl" "-f-build-pong" "-f-build-testserver" "-f-debug")
       #:cabal-revision
       ("3" "1xma33r1by1q79qqbb70lwf4d846qlqs0f22rzrd3cdzkzcf9qf5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-common)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-streams)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-io-streams)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-io-streams-haproxy)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-snap-core)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-threads)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unix-compat)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://snapframework.com/")
    (synopsis "A web server for the Snap Framework")
    (description
     "Snap is a simple and fast web development framework and server written in
Haskell. For more information or to download the latest version, you can
visit the Snap project website at <http://snapframework.com/>.

The Snap HTTP server is a high performance web server library written in
Haskell. Together with the @@snap-core@@ library upon which it depends, it
provides a clean and efficient Haskell programming interface to the HTTP
protocol.")
    (license license:bsd-3)))

haskell-8.6-snap-server

(define-public haskell-8.6-spatial-math
  (package
    (name "haskell-8.6-spatial-math")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/spatial-math/spatial-math-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0454q9laaasdqrd74cjcxfcl5z7jcfvnzpdg81gl58y2ay8z4769"))))
    (properties `((upstream-name . "spatial-math") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-TypeCompose)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/spatial-math")
    (synopsis
     "3d math including quaternions/euler angles/dcms and utility functions")
    (description
     "This is a port of my 'mathlib' C library: `https://github.com/ghorn/mathlib`")
    (license license:bsd-3)))

haskell-8.6-spatial-math

(define-public haskell-8.6-stache
  (package
    (name "haskell-8.6-stache")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stache/stache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0awyh8zjvly18s4gnqy4970fj1hr4zpb38lisfy6px42m38g17vk"))))
    (properties `((upstream-name . "stache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "1y1wff5mdcin3wc9pbj3agsircrf1pxjjm8j90n8g40l7acnf63c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/stackbuilders/stache")
    (synopsis "Mustache templates for Haskell")
    (description "Mustache templates for Haskell.")
    (license license:bsd-3)))

haskell-8.6-stache

(define-public haskell-8.6-svg-tree
  (package
    (name "haskell-8.6-svg-tree")
    (version "0.6.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/svg-tree/svg-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hhs2w6fmd1m6768p1bfhj6vi4br4ray0g9f1hv8g19pqgip3r2c"))))
    (properties `((upstream-name . "svg-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "12askkxmrzjkssnfa8m6xmdwdxk6v3z26jc63jcgb3q8snxb0hg1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-linear)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-xml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/svg-tree")
    (synopsis "SVG file loader and serializer")
    (description
     "svg-tree provides types representing a SVG document,
and allows to load and save it.

The types definition are aimed at rendering,
so they are rather comple. For simpler SVG document building,
look after `lucid-svg`.

To render an svg document you can use the `rasterific-svg` package")
    (license license:bsd-3)))

haskell-8.6-svg-tree

(define-public haskell-8.6-swagger2
  (package
    (name "haskell-8.6-swagger2")
    (version "2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/swagger2/swagger2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0m08l7nz53h6ix6xgzynnh3cf6l61437da9swdbsz8avx0rq2wci"))))
    (properties `((upstream-name . "swagger2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02qlfsgqc5jmc616xn30hn213dwhsqlkrrk2pa6774f0dcn8rpiz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-generics-sop)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-http-media)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/GetShopTV/swagger2")
    (synopsis "Swagger 2.0 data model")
    (description
     "This library is intended to be used for decoding and encoding Swagger 2.0 API
specifications as well as manipulating them.

The original Swagger 2.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-8.6-swagger2

(define-public haskell-8.6-tagstream-conduit
  (package
    (name "haskell-8.6-tagstream-conduit")
    (version "0.5.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagstream-conduit/tagstream-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1arlf7qil9bzcqykda8yyrnncm29jsfjvz5kbcdrbbhqpbqfi5mj"))))
    (properties `((upstream-name . "tagstream-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-blaze-builder)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-extra)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/yihuang/tagstream-conduit")
    (synopsis "streamlined html tag parser")
    (description
     "Tag-stream is a library for parsing HTML//XML to a token stream.
It can parse unstructured and malformed HTML from the web.
It also provides an Enumeratee which can parse streamline html, which means it consumes constant memory.
You can start from the `tests/Tests.hs` module to see what it can do.")
    (license license:bsd-3)))

haskell-8.6-tagstream-conduit

(define-public haskell-8.6-tasty-hedgehog
  (package
    (name "haskell-8.6-tasty-hedgehog")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hedgehog/tasty-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vsv3m6brhshpqm8qixz97m7h0nx67cj6ira4cngbk7mf5rqylv5"))))
    (properties `((upstream-name . "tasty-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "12s7jgz14j32h62mgs4qbypqlpwjly1bk2hgrwqi9w3cjsskqk88")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)))
    (home-page "https://github.com/qfpl/tasty-hedgehog")
    (synopsis "Integration for tasty and hedgehog.")
    (description
     "Integrates the <https://hackage.haskell.org/package/hedgehog hedgehog testing library> with the <https://hackage.haskell.org/package/tasty tasty testing framework>.")
    (license license:bsd-3)))

haskell-8.6-tasty-hedgehog

(define-public haskell-8.6-template-toolkit
  (package
    (name "haskell-8.6-template-toolkit")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/template-toolkit/template-toolkit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nqsgfqj28d6qqc4639d8paqb8d9fw5kpijggbmxdnaqd64xc4p1"))))
    (properties `((upstream-name . "template-toolkit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hashtables)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-pcre-utils)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-uri-encode)))
    (home-page "https://github.com/kobargh/template-toolkit#readme")
    (synopsis "Template Toolkit implementation for Haskell")
    (description
     "Template Toolkit is a template processing system originally written in Perl by Andy Wardley.
This haskell implementation includes such features as:
scalar, array, hash variables, variable interpolation,
conditional directives,
loops and loop controls,
external templates and internal blocks processing,
many virtual methods and filters,
templates caching.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-template-toolkit

(define-public haskell-8.6-tls
  (package
    (name "haskell-8.6-tls")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tls/tls-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1y083724mym28n6xfaz7pcc7zqxdhjpaxpbvzxfbs25qq2px3smv"))))
    (properties `((upstream-name . "tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcompat" "-fnetwork" "-f-hans")
       #:cabal-revision
       ("2" "0ywdxc73lmfbrdkbv0ldzwx82hmqnzqk452xqaxr8x1n99q1s5jq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-asn1-types)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-hourglass)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-x509-store)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-tls")
    (synopsis "TLS/SSL protocol native implementation (Server and Client)")
    (description
     "Native Haskell TLS and SSL protocol implementation for server and client.

This provides a high-level implementation of a sensitive security protocol,
eliminating a common set of security issues through the use of the advanced
type system, high level constructions and common Haskell features.

Currently implement the SSL3.0, TLS1.0, TLS1.1 and TLS1.2 protocol,
and support RSA and Ephemeral (Elliptic curve and regular) Diffie Hellman key exchanges,
and many extensions.

Some debug tools linked with tls, are available through the
<http://hackage.haskell.org/package/tls-debug/>.")
    (license license:bsd-3)))

haskell-8.6-tls

(define-public haskell-8.6-tracing
  (package
    (name "haskell-8.6-tracing")
    (version "0.0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tracing/tracing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l0sh9rmbysjysh169902hzx86dahiffgss8wnac8vcz95kc5qjb"))))
    (properties `((upstream-name . "tracing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-ip)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mtth/tracing")
    (synopsis "Distributed tracing")
    (description
     "An OpenTracing-compliant, simple, and extensible distributed tracing library.")
    (license license:bsd-3)))

haskell-8.6-tracing

(define-public haskell-8.6-ua-parser
  (package
    (name "haskell-8.6-ua-parser")
    (version "0.7.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ua-parser/ua-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "091lks0jpp0m4wg56i03ih3n0n7kvs2fm511vcnypmwskflkkk0z"))))
    (properties `((upstream-name . "ua-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-pcre-light)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ua-parser")
    (synopsis
     "A library for parsing User-Agent strings, official Haskell port of ua-parser")
    (description
     "Please refer to the git/github README on the project for example usage.")
    (license license:bsd-3)))

haskell-8.6-ua-parser

(define-public haskell-8.6-uri-templater
  (package
    (name "haskell-8.6-uri-templater")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-HTTP)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-charset)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-trifecta)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-uuid-types)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/iand675/uri-templater")
    (synopsis "Parsing & Quasiquoting for RFC 6570 URI Templates")
    (description "Parsing & Quasiquoting for RFC 6570 URI Templates")
    (license license:expat)))

haskell-8.6-uri-templater

(define-public haskell-8.6-validation
  (package
    (name "haskell-8.6-validation")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validation/validation-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1acj7mh3581ks405xswxw6667z7y1y0slisg6jvp6chc191ji9l5"))))
    (properties `((upstream-name . "validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rrjg9z399k6pb55nv85mlr5bkmdqbjwkvl1cy7ydccdx6ks4syp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-hedgehog)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)))
    (home-page "https://github.com/qfpl/validation")
    (synopsis "A data-type like Either but with an accumulating Applicative")
    (description
     "<<http://i.imgur.com/uZnp9ke.png>>

A data-type like Either but with differing properties and type-class
instances.

Library support is provided for this different representation, include
`lens`-related functions for converting between each and abstracting over their
similarities.

* `Validation`

The `Validation` data type is isomorphic to `Either`, but has an instance
of `Applicative` that accumulates on the error side. That is to say, if two
(or more) errors are encountered, they are appended using a `Semigroup`
operation.

As a consequence of this `Applicative` instance, there is no corresponding
`Bind` or `Monad` instance. `Validation` is an example of, \"An applicative
functor that is not a monad.\"")
    (license license:bsd-3)))

haskell-8.6-validation

(define-public haskell-8.6-wai-slack-middleware
  (package
    (name "haskell-8.6-wai-slack-middleware")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-slack-middleware/wai-slack-middleware-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l2pd61vxnfjdjzkvmwqfgf07a3nir3mnbr8qw2nzqa767s84i6i"))))
    (properties `((upstream-name . "wai-slack-middleware") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/wai-slack-middleware#readme")
    (synopsis "A Slack middleware for WAI")
    (description "Logs the request information into Slack through webhook from
a WAI application.")
    (license license:bsd-3)))

haskell-8.6-wai-slack-middleware

(define-public haskell-8.6-webdriver
  (package
    (name "haskell-8.6-webdriver")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webdriver/webdriver-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w6z95swrz5ijmcxh0x3i521kpxqfp6pxgqfqwix7fc4jy450n8k"))))
    (properties `((upstream-name . "webdriver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-developer")
       #:cabal-revision
       ("1" "04bl53yr1144a3nv9avqjvhl20q0qc5gik6p7cd2naz3i5hfvid1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-directory-tree)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-http-client)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-zip-archive)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/kallisti-dev/hs-webdriver")
    (synopsis "a Haskell client for the Selenium WebDriver protocol")
    (description
     "A Selenium WebDriver client for Haskell.
You can use it to automate browser sessions
for testing, system administration, etc.

For more information about Selenium itself, see
<http://seleniumhq.org/>

To find out what's been changed in this version and others,
see the change log at
<https://github.com/kallisti-dev/hs-webdriver/blob/master/CHANGELOG.md>")
    (license license:bsd-3)))

haskell-8.6-webdriver

(define-public haskell-8.6-weeder
  (package
    (name "haskell-8.6-weeder")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/weeder/weeder-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ylwq1087x6ppn5y5krvl6q6fxcln58y8fwbah3ygp0cpgm4w816"))))
    (properties `((upstream-name . "weeder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-foundation)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage017) haskell-8.6-yaml)))
    (home-page "https://github.com/ndmitchell/weeder#readme")
    (synopsis "Detect dead code")
    (description
     "Find redundant package dependencies or redundant module exports.")
    (license license:bsd-3)))

haskell-8.6-weeder

(define-public haskell-8.6-wordpress-auth
  (package
    (name "haskell-8.6-wordpress-auth")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wordpress-auth/wordpress-auth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "150rri8lrl6j3f9q7wc34ajg06rakgk8a5npzz7vdap64994wy5c"))))
    (properties `((upstream-name . "wordpress-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-md5)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-hs-php-session)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-uri-encode)))
    (home-page "https://github.com/prikhi/wordpress-auth#readme")
    (synopsis
     "Validate Wordpress Cookies & Nonces; Build Wordpress Hashes & Salts")
    (description
     "This package is used for validating Cookie data & Nonces from Wordpress.

You may find it useful if you're trying to serve a Haskell application alongside a Wordpress site. By validating the Cookies set by Wordpress, you can access the currently logged-in Wordpress user in Haskell without having to devise a Wordpress-to-Haskell authentication scheme.

It includes a generalized authentication function, as well as various helpers, validators, & hashers if you'd like to build a custom authentication process.

Servant users may want to just use the @@servant-auth-wordpress@@ package.")
    (license license:bsd-3)))

haskell-8.6-wordpress-auth

(define-public haskell-8.6-xlsx
  (package
    (name "haskell-8.6-xlsx")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xlsx/xlsx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00qigyz4nc23abawapxhw0sgmj9c5qplkkvyv6xxffanx9kh8mmj"))))
    (properties `((upstream-name . "xlsx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Diff)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-binary-search)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-groom)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-network-uri)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-old-locale)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-xeno)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-zip-archive)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/qrilka/xlsx")
    (synopsis "Simple and incomplete Excel file parser/writer")
    (description
     "This library can help you to get some data read and written in Office
Open XML xlsx format. Small subset of xlsx format is supported.

For examples look into \"Codec.Xlsx\".

Format is covered by ECMA-376 standard:
<http://www.ecma-international.org/publications/standards/Ecma-376.htm>

4th edition of the standard with the transitional schema is used for this library.")
    (license license:expat)))

haskell-8.6-xlsx

(define-public haskell-8.6-xml-conduit-parse
  (package
    (name "haskell-8.6-xml-conduit-parse")
    (version "0.3.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit-parse/xml-conduit-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0233jcpv7lzan2hh6siw2rrjkjp4f5i1kkpjpdfija01f8by3an1"))))
    (properties `((upstream-name . "xml-conduit-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("1" "0jnnr4z3c6rq2dz0ldiic5zwkrp36igf6gip11qrm9ss2pk9khbl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage016)
                     haskell-8.6-conduit-parse)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/k0ral/xml-conduit-parse")
    (synopsis "Streaming XML parser based on conduits.")
    (description
     "This library provides an alternative, hopefully higher-level implementation for the parsing part of @@xml-conduit@@.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-xml-conduit-parse

(define-public haskell-8.6-xml-conduit-writer
  (package
    (name "haskell-8.6-xml-conduit-writer")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit-writer/xml-conduit-writer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n5fk6sj5grcfz51psbf8h4z40hd4dk8zpk870c6ipm2s9dc1488"))))
    (properties `((upstream-name . "xml-conduit-writer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://bitbucket.org/dpwiz/xml-conduit-writer")
    (synopsis "Warm and fuzzy creation of XML documents.")
    (description "“It can scarcely be denied that the supreme goal of
all theory is to make the irreducible basic elements
as simple and as few as possible without having to
surrender the adequate representation of a single
datum of experience.” ­— Albert Einstein

Check out more examples in test/Main.hs and
look at the results with --enable-tests.")
    (license license:expat)))

haskell-8.6-xml-conduit-writer

(define-public haskell-8.6-xml-hamlet
  (package
    (name "haskell-8.6-xml-hamlet")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-hamlet/xml-hamlet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jrhcjy7ww59dafg857f2g2df1fw2jmbwcs1q379ph0pc5rxj3lj"))))
    (properties `((upstream-name . "xml-hamlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-shakespeare)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Hamlet-style quasiquoter for XML content")
    (description "Hamlet-style quasiquoter for XML content")
    (license license:bsd-3)))

haskell-8.6-xml-hamlet

(define-public haskell-8.6-xml-indexed-cursor
  (package
    (name "haskell-8.6-xml-indexed-cursor")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-indexed-cursor/xml-indexed-cursor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0x6slq1av9id5ph7ysg0g467knkcbvp0g0jr7x8w334ffgy25mj6"))))
    (properties `((upstream-name . "xml-indexed-cursor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/xml-indexed-cursor")
    (synopsis
     "Indexed XML cursors similar to 'Text.XML.Cursor' from xml-conduit")
    (description
     "Please see <https://github.com/cdepillabout/xml-indexed-cursor#readme README.md>.")
    (license license:bsd-3)))

haskell-8.6-xml-indexed-cursor

(define-public haskell-8.6-xml-lens
  (package
    (name "haskell-8.6-xml-lens")
    (version "0.1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-lens/xml-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1s5ivi3caz56g5yyg3pharshs3wcygcssjx1sm9aw4mv3ylz3msd"))))
    (properties `((upstream-name . "xml-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1phba1j6ggxfsq4ivhd5wibzw1b9hwppqmgichyj3xg9z3widmnl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-case-insensitive)
                  (@ (gnu packages stackage ghc-8.6 stage016) haskell-8.6-lens)
                  (@ (gnu packages stackage ghc-8.6 stage017)
                     haskell-8.6-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fumieval/xml-lens")
    (synopsis "Lenses, traversals, and prisms for xml-conduit")
    (description "Lens-based DOM selector")
    (license license:bsd-3)))

haskell-8.6-xml-lens

