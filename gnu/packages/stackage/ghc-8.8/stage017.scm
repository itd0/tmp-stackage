;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage017)
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
(define-public haskell-8.8-active
  (package
    (name "haskell-8.8-active")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://hackage.haskell.org/package/active")
    (synopsis "Abstractions for animation")
    (description
     "\"Active\" abstraction for animated things with finite start and end times.")
    (license license:bsd-3)))

haskell-8.8-active

(define-public haskell-8.8-aeson-picker
  (package
    (name "haskell-8.8-aeson-picker")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)))
    (home-page "https://github.com/ozzzzz/aeson-picker#readme")
    (synopsis "Tiny library to get fields from JSON format")
    (description "Tiny library to get fields from JSON format")
    (license license:bsd-3)))

haskell-8.8-aeson-picker

(define-public haskell-8.8-aeson-yaml
  (package
    (name "haskell-8.8-aeson-yaml")
    (version "1.0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-yaml/aeson-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16rm4jgl4wznsc4nna3vdx186qy3jl71r9y89dgcc7k00qvlxb7y"))))
    (properties `((upstream-name . "aeson-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-binaries")
       #:cabal-revision
       ("1" "1k1wv06fzic9c85c5fl2piang0w1kxi9kzq02hp4chgmbj983jmz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-string-qq)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-discover)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/clovyr/aeson-yaml")
    (synopsis "Output any Aeson value as YAML (pure Haskell library)")
    (description
     "This library exposes functions for encoding any Aeson value as YAML. There
is also support for encoding multiple values into YAML \"documents\".

This library is pure Haskell, and does not depend on C FFI with libyaml. It
is also licensed under the BSD3 license.")
    (license license:bsd-3)))

haskell-8.8-aeson-yaml

(define-public haskell-8.8-apecs
  (package
    (name "haskell-8.8-apecs")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/apecs/apecs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ca9wpp60jslj63q77v55qql46f20jknfqsz7cjmqns41ml5g3q8"))))
    (properties `((upstream-name . "apecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0kb40f09fppfgx7h23fx2ynbqj2n28i360lwjlqhg32mlgvbxi3h")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "Fast Entity-Component-System library for game programming")
    (description
     "apecs is a fast, type-driven Entity-Component-System library for game programming.")
    (license license:bsd-3)))

haskell-8.8-apecs

(define-public haskell-8.8-async-refresh
  (package
    (name "haskell-8.8-async-refresh")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-refresh/async-refresh-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j9llc84f93srw80pyldcglzmssl0l961bzlwsrvbaa84ldhcs6s"))))
    (properties `((upstream-name . "async-refresh") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-formatting)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-lifted-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mtesseract/async-refresh")
    (synopsis
     "Package implementing core logic for refreshing of expiring data.")
    (description
     "This package can be used for refreshing of expiring data according
to a user-provided action. Using callbacks, the user can decide
how she or he would like to be informed about data refreshing.")
    (license license:bsd-3)))

haskell-8.8-async-refresh

(define-public haskell-8.8-aura
  (package
    (name "haskell-8.8-aura")
    (version "3.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aura/aura-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q248qh2wpm0gq07pihw3gshd3ixjdl1l3bf1cpxabn0gjss4hma"))))
    (properties `((upstream-name . "aura") (hidden? . #f)))
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
                     haskell-8.8-algebraic-graphs)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-aur)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-language-bash)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-scheduler)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-typed-process)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-versions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fosskers/aura")
    (synopsis "A secure package manager for Arch Linux and the AUR.")
    (description
     "Aura is a package manager for Arch Linux. It connects to both the
official Arch repostitories and to the AUR, allowing easy control of all
packages on an Arch system. It allows /all/ pacman operations and provides
/new/ custom ones for dealing with AUR packages. This differs from some other
AUR package managers.")
    (license license:gpl3)))

haskell-8.8-aura

(define-public haskell-8.8-avro
  (package
    (name "haskell-8.8-avro")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/avro/avro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1apvqny4dikx5b7yqxs8a4hsxipl5xvz2i3c5bna1faiagxav1i1"))))
    (properties `((upstream-name . "avro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0081mnhn26824rbdsz1n74i9m21yfkh6y4g3v7ksh933dxagyiij")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-HasBigDecimal)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-doctest-discover)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-generic-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
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
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-tf-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-works/avro#readme")
    (synopsis "Avro serialization support for Haskell")
    (description "Avro serialization and deserialization support for Haskell")
    (license license:bsd-3)))

haskell-8.8-avro

(define-public haskell-8.8-aws-cloudfront-signed-cookies
  (package
    (name "haskell-8.8-aws-cloudfront-signed-cookies")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-cloudfront-signed-cookies/aws-cloudfront-signed-cookies-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19kzrmjw3vfv3v1s35fqdvixlxha43sdb29d60fwjkzvg7al9scv"))))
    (properties `((upstream-name . "aws-cloudfront-signed-cookies")
                  (hidden? . #f)))
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
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-asn1-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-cookie)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-pem)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/typeclasses/aws-cloudfront-signed-cookies")
    (synopsis "Generate signed cookies for AWS CloudFront")
    (description
     "One way to [serve private content through AWS CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html) is to use [signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-signed-cookies.html). This package helps you generate signed cookies [using a custom IAM policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-setting-signed-cookie-custom-policy.html) which may include a range of time for which the cookie is valid and an IP address restriction.")
    (license license:expat)))

haskell-8.8-aws-cloudfront-signed-cookies

(define-public haskell-8.8-butcher
  (package
    (name "haskell-8.8-butcher")
    (version "1.3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/butcher/butcher-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06qgqjc8h7dd786wkcwrxpl6bsd66jzywwcnhm52q0cb9678w3qx"))))
    (properties `((upstream-name . "butcher") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c9rhsnzdpnxhs3l7yq6fh8p9lq177fmdn23khcl72n5m6xx64wm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-deque)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage012) haskell-8.8-free)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-multistate)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unsafe)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://github.com/lspitzner/butcher/")
    (synopsis "Chops a command or program invocation into digestable pieces.")
    (description
     "See the <https://github.com/lspitzner/butcher/blob/master/README.md README> (it is properly formatted on github).")
    (license license:bsd-3)))

haskell-8.8-butcher

(define-public haskell-8.8-cabal-debian
  (package
    (name "haskell-8.8-cabal-debian")
    (version "5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-debian/cabal-debian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11imbizfa65fdqydpxvcdv0a80gsd6szzl33b312myw3il2xr5hi"))))
    (properties `((upstream-name . "cabal-debian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-debian)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hsemail)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-newtype-generics)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-pureMD5)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/clinty/cabal-debian")
    (synopsis "Create a Debianization for a Cabal package")
    (description
     "This package supports the generation of a package Debianization (i.e.
the files in the @@debian@@ subdirectory) for a cabal package,
either through a library API or using the cabal-debian executable.
For documentation of the executable, run
@@cabal-debian --help@@, for documentation of the library API follow
the link to the @@Debian.Debianize@@ module below.")
    (license license:bsd-3)))

haskell-8.8-cabal-debian

(define-public haskell-8.8-clash-lib
  (package
    (name "haskell-8.8-clash-lib")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-lib/clash-lib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "14xi0llzm6f3ymlcfwq67d16ggdkqxrxkvr6rwmykxrca3j1b6r3"))))
    (properties `((upstream-name . "clash-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-debug" "-f-history" "-funittests")
       #:cabal-revision
       ("1" "15pvhd19yq2m1c2n33iawxngmpc6d0jfsh02038j8fbpzx68p7bw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-clash-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-concurrent-supply)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-errors)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.8 stage007) haskell-8.8-hint)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-interpolate)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-parsers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-reducers)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-terminal-size)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-text-show)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-trifecta)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vector-binary-instances)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://clash-lang.org/")
    (synopsis "CAES Language for Synchronous Hardware - As a Library")
    (description
     "Clash is a functional hardware description language that borrows both its
syntax and semantics from the functional programming language Haskell. The
Clash compiler transforms these high-level descriptions to low-level
synthesizable VHDL, Verilog, or SystemVerilog.

Features of Clash:

* Strongly typed, but with a very high degree of type inference, enabling both
safe and fast prototyping using concise descriptions.

* Interactive REPL: load your designs in an interpreter and easily test all
your component without needing to setup a test bench.

* Higher-order functions, with type inference, result in designs that are
fully parametric by default.

* Synchronous sequential circuit design based on streams of values, called
@@Signal@@s, lead to natural descriptions of feedback loops.

* Support for multiple clock domains, with type safe clock domain crossing.


This package provides:

* The CoreHW internal language: SystemF + Letrec + Case-decomposition

* The normalisation process that brings CoreHW in a normal form that can be
converted to a netlist

* Blackbox/Primitive Handling


Front-ends (for: parsing, typecheck, etc.) are provided by separate packages:

* <https://hackage.haskell.org/package/clash-ghc GHC/Haskell Frontend>

* <https://github.com/christiaanb/Idris-dev Idris Frontend>


Prelude library: <https://hackage.haskell.org/package/clash-prelude>")
    (license license:bsd-2)))

haskell-8.8-clash-lib

(define-public haskell-8.8-codec-rpm
  (package
    (name "haskell-8.8-codec-rpm")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-attoparsec-binary)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-cpio-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-lzma-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/weldr/codec-rpm")
    (synopsis "A library for manipulating RPM files")
    (description
     "This module provides a library for reading RPM files and converting them
into useful data structures.  There is currently no way to operate in
reverse - that is, for building an RPM file out of a data structure.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-codec-rpm

(define-public haskell-8.8-composable-associations-aeson
  (package
    (name "haskell-8.8-composable-associations-aeson")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-composable-associations)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/SamProtas/composable-associations#readme")
    (synopsis
     "Aeson ToJSON/FromJSON implementation for the types of composable-associations")
    (description
     "This library provides the orphan instances implementation JSON serialization for the types in
composiable-associations, as well as any other Aeson-specific implementation details.")
    (license license:bsd-3)))

haskell-8.8-composable-associations-aeson

(define-public haskell-8.8-conduit-algorithms
  (package
    (name "haskell-8.8-conduit-algorithms")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-bzlib-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-zstd)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-lzma-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-pqueue)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-stm-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/luispedro/conduit-algorithms#readme")
    (synopsis "Conduit-based algorithms")
    (description
     "Algorithms on Conduits, including higher level asynchronous processing and some other utilities.")
    (license license:expat)))

haskell-8.8-conduit-algorithms

(define-public haskell-8.8-datadog
  (package
    (name "haskell-8.8-datadog")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/datadog/datadog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15vbx09f2l250wlmk1wcnfrdmma81dghmy5gbyc6z7s8aqf9vib6"))))
    (properties `((upstream-name . "datadog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1427mp2sjq3n3w16266012lvqzajvn5sh63dlw2rzncscy8102nf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-auto-update)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-buffer-builder)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/iand675/datadog")
    (synopsis
     "Datadog client for Haskell. Supports both the HTTP API and StatsD.")
    (description "")
    (license license:expat)))

haskell-8.8-datadog

(define-public haskell-8.8-dbus
  (package
    (name "haskell-8.8-dbus")
    (version "1.2.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dbus/dbus-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0iyfnkxcnm1vl379ry88fqxgn2y8q6ilsvpic6ciassnyv5pcbrv"))))
    (properties `((upstream-name . "dbus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
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
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-th-lift)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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
&#x20;
&#x20;   -- Request a list of connected clients from the bus
&#x20;   reply <- call_ client (methodCall \\\"\\/org\\/freedesktop\\/DBus\\\" \\\"org.freedesktop.DBus\\\" \\\"ListNames\\\")
&#x20;       &#x7b; methodCallDestination = Just \\\"org.freedesktop.DBus\\\"
&#x20;       &#x7d;
&#x20;
&#x20;   -- org.freedesktop.DBus.ListNames() returns a single value, which is
&#x20;   -- a list of names (here represented as [String])
&#x20;   let Just names = fromVariant (methodReturnBody reply !! 0)
&#x20;
&#x20;   -- Print each name on a line, sorted so reserved names are below
&#x20;   -- temporary names.
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

haskell-8.8-dbus

(define-public haskell-8.8-declarative
  (package
    (name "haskell-8.8-declarative")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/declarative/declarative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "021rhdhj2sji316mkm1fw679w7xb9n51x9pslmj21427q127ycw3"))))
    (properties `((upstream-name . "declarative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-hasty-hamiltonian)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-kan-extensions)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-mcmc-types)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-mighty-metropolis)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-mwc-probability)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-speedy-slice)))
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

haskell-8.8-declarative

(define-public haskell-8.8-dhall
  (package
    (name "haskell-8.8-dhall")
    (version "1.32.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dhall/dhall-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1imj0bh5365pdizvjbw2wqz0g9hakigf1zm4fr6379qdchxpp90p"))))
    (properties `((upstream-name . "dhall") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith-http" "-f-cross")
       #:cabal-revision
       ("4" "17mq04cla4367gb14g8jlzywgg5m3dbz02xxqm6ynyf9k8dnnr2x")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-atomic-write)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-cborg)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-cborg-json)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-contravariant)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-fix)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-dotgen)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-either)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-foldl)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-generic-random)
                  (@ (gnu packages stackage ghc-8.8 stage007) haskell-8.8-half)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-lens-family-core)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-mockery)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-parsers)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-pretty-simple)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-repline)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-serialise)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-special-values)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-spoon)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-text-manipulate)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-turtle)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-uri-encode)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/dhall")
    (synopsis "A configuration language guaranteed to terminate")
    (description
     "Dhall is an explicitly typed configuration language that is not Turing
complete.  Despite being Turing incomplete, Dhall is a real programming
language with a type-checker and evaluator.

Use this library to parse, type-check, evaluate, and pretty-print the Dhall
configuration language.  This package also includes an executable which
type-checks a Dhall file and reduces the file to a fully evaluated normal
form.

Read \"Dhall.Tutorial\" to learn how to use this library")
    (license license:bsd-3)))

haskell-8.8-dhall

(define-public haskell-8.8-diagrams-core
  (package
    (name "haskell-8.8-diagrams-core")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-adjunctions)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-distributive)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-dual-tree)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-monoid-extras)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://projects.haskell.org/diagrams")
    (synopsis "Core libraries for diagrams EDSL")
    (description "The core modules underlying diagrams,
an embedded domain-specific language
for compositional, declarative drawing.")
    (license license:bsd-3)))

haskell-8.8-diagrams-core

(define-public haskell-8.8-distribution-nixpkgs
  (package
    (name "haskell-8.8-distribution-nixpkgs")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distribution-nixpkgs/distribution-nixpkgs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1113qizh931inpim0ajfwihcvlp26n1l4bf36v0jakd34k70mm8g"))))
    (properties `((upstream-name . "distribution-nixpkgs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-language-nix)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://github.com/peti/distribution-nixpkgs")
    (synopsis "Types and functions to manipulate the Nixpkgs distribution")
    (description
     "Types and functions to represent, query, and manipulate the Nixpkgs distribution.")
    (license license:bsd-3)))

haskell-8.8-distribution-nixpkgs

(define-public haskell-8.8-dotenv
  (package
    (name "haskell-8.8-dotenv")
    (version "0.8.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dotenv/dotenv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11x7aiflf45rdbbzk33pg8v2x5a4bnbhi6845bi3wpgq7y27210v"))))
    (properties `((upstream-name . "dotenv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-static" "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
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

haskell-8.8-dotenv

(define-public haskell-8.8-egison
  (package
    (name "haskell-8.8-egison")
    (version "4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/egison/egison-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0wav3cbp8yxkx9ajhcfqws9y1xhs36gw01spwi7x7s4l6x7fkqlm"))))
    (properties `((upstream-name . "egison") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ghc-paths)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-haskeline)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-mini-egison)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://www.egison.org")
    (synopsis
     "Programming language with non-linear pattern-matching against non-free data")
    (description
     "An interpreter for Egison, a **pattern-matching-oriented**, purely functional programming language.
We can directly represent pattern-matching against lists, multisets, sets, trees, graphs and any kind of data types.

We can find Egison programs in @@lib@@ and @@sample@@ directories.
This package also include Emacs Lisp file @@elisp/egison-mode.el@@.

We can do non-linear pattern-matching against non-free data types in Egison.
An non-free data type is a data type whose data have no canonical form, a standard way to represent that object.
It enables us to write elegant programs.

/Twin Primes/

We can use pattern-matching for enumeration.
The following code enumerates all twin primes from the infinite list of prime numbers with pattern-matching!

<<https://raw.githubusercontent.com/egison/egison/master/images/twin-primes-w700.png>>

/Poker Hands/

The following code is the program that determines poker-hands written in Egison.
All hands are expressed in a single pattern.

<<https://raw.githubusercontent.com/egison/egison/master/images/poker-hands-w700.png>>

/Mahjong/

We can write a pattern even against mahjong tiles.
We modularize patterns to represent complex mahjong hands.

<<https://raw.githubusercontent.com/egison/egison/master/images/mahjong-w700.png>>

/Graphs/

We can pattern-match against graphs.
We can write program to solve the travelling salesman problem in a single pattern-matching expression.

<<https://raw.githubusercontent.com/egison/egison/master/images/salesman-w700.png>>

Aren't thsese exciting?
We can run these demonstrations on our website!
Please view and try more demonstrations!

<http://www.egison.org>

Egison makes programming dramatically simple.
Please enjoy Egison!")
    (license license:expat)))

haskell-8.8-egison

(define-public haskell-8.8-eventful-test-helpers
  (package
    (name "haskell-8.8-eventful-test-helpers")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventful-test-helpers/eventful-test-helpers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q5z9rf5hxwpsyvm28hfnkr72zfsg7h5kz648bass9irvq69v7x9"))))
    (properties `((upstream-name . "eventful-test-helpers") (hidden? . #f)))
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
                     haskell-8.8-aeson-casing)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-eventful-core)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Common module used for eventful tests")
    (description "Common module used for eventful tests")
    (license license:expat)))

haskell-8.8-eventful-test-helpers

(define-public haskell-8.8-eventstore
  (package
    (name "haskell-8.8-eventstore")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eventstore/eventstore-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d8lai7ra0r8mlfwnyvf9bhx7n4y9qzvj1sc96x3fh8xf79qd8mj"))))
    (properties `((upstream-name . "eventstore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-dns)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-dotnet-timespan)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-fast-logger)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-interpolate)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-lifted-async)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-lifted-base)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-mono-traversable)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-protobuf)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-stm-chans)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/YoEight/eventstore")
    (synopsis "EventStore TCP Client")
    (description "EventStore TCP Client <https://eventstore.com>")
    (license license:bsd-3)))

haskell-8.8-eventstore

(define-public haskell-8.8-fakedata
  (package
    (name "haskell-8.8-fakedata")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fakedata/fakedata-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qqc0hq7lg1s5fpflmnalcsy0043vqd8iiblwa6lvm45h7af8ii2"))))
    (properties `((upstream-name . "fakedata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/psibi/fakedata#readme")
    (synopsis "Library for producing fake data")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata#readme>")
    (license license:bsd-3)))

haskell-8.8-fakedata

(define-public haskell-8.8-feed
  (package
    (name "haskell-8.8-feed")
    (version "1.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/feed/feed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0fdylvbrjlshgx398xpxx3y7mnrmpi1l2534mcv299afpm91yqcj"))))
    (properties `((upstream-name . "feed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0wlffsawz87ks8zf686q01qvcwzi3352l45f1yww5w063ih6j7ld")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-old-time)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.8-feed

(define-public haskell-8.8-filecache
  (package
    (name "haskell-8.8-filecache")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-strict-base-types)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)))
    (home-page "http://lpuppet.banquise.net/")
    (synopsis "A cache system associating values to files.")
    (description
     "A cache system, that works by associating computation results with file names. When the files are modified, the cache entries are discarded.")
    (license license:bsd-3)))

haskell-8.8-filecache

(define-public haskell-8.8-force-layout
  (package
    (name "haskell-8.8-force-layout")
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
       ("9" "0271sh8py8lm6amwxyr4dic20cji5hq1iixmikq0kmijg1095wkp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)))
    (home-page "https://hackage.haskell.org/package/force-layout")
    (synopsis "Simple force-directed layout")
    (description "Simulation engine for doing simple force-based layout,
/e.g./ for trees or graphs.  See the diagrams-contrib package
for usage examples.")
    (license license:bsd-3)))

haskell-8.8-force-layout

(define-public haskell-8.8-frontmatter
  (package
    (name "haskell-8.8-frontmatter")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/yamadapc/haskell-frontmatter")
    (synopsis "Parses frontmatter as used in Jekyll markdown files.")
    (description "Parses frontmatter as used in Jekyll markdown files.

Provides a parser that'll parse the frontmatter only and
one that'll execute a YAML parser on it, so that it's a
YAML frontmatter parser.")
    (license license:expat)))

haskell-8.8-frontmatter

(define-public haskell-8.8-genvalidity-typed-uuid
  (package
    (name "haskell-8.8-genvalidity-typed-uuid")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-typed-uuid/genvalidity-typed-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16h2y11mn2p11pgqkabip0xgwfx1am8s9ja8qikz27jb87x1q410"))))
    (properties `((upstream-name . "genvalidity-typed-uuid") (hidden? . #f)))
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
                     haskell-8.8-genvalidity)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-typed-uuid)))
    (home-page "https://github.com/NorfairKing/typed-uuid#readme")
    (synopsis "Generators for Phantom-Typed version of UUID")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>")
    (license license:expat)))

haskell-8.8-genvalidity-typed-uuid

(define-public haskell-8.8-geojson
  (package
    (name "haskell-8.8-geojson")
    (version "4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/geojson/geojson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0csbg4pdh686bxk689968bi94njx78iv1sm5g6lp915pg6cfnd66"))))
    (properties `((upstream-name . "geojson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ry2z0hwacbdwpxjbz1zfwc24094776xqshqdkq23r2gfgyy3m3k")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-validation)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/zellige/hs-geojson")
    (synopsis "A thin GeoJSON Layer above the aeson library")
    (description
     "A thin GeoJSON Layer above the aeson library.

It currently conforms to version 1.0 of the GeoJSON spec which can be found here:

<https://tools.ietf.org/html/rfc7946>")
    (license license:bsd-3)))

haskell-8.8-geojson

(define-public haskell-8.8-ginger
  (package
    (name "haskell-8.8-ginger")
    (version "0.10.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ginger/ginger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0579ajr1rng0bd0pml69f6yz4aykvk8zcni0p7ck628qx4jzxihx"))))
    (properties `((upstream-name . "ginger") (hidden? . #f)))
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
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://ginger.tobiasdammers.nl/")
    (synopsis "An implementation of the Jinja2 template language in Haskell")
    (description "Ginger is Jinja, minus the most blatant pythonisms. Wants
to be feature complete, but isn't quite there yet.")
    (license license:expat)))

haskell-8.8-ginger

(define-public haskell-8.8-hamtsolo
  (package
    (name "haskell-8.8-hamtsolo")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-attoparsec-binary)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-gitrev)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-stm-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tfc/hamtsolo#readme")
    (synopsis "Intel AMT serial-over-lan (SOL) client")
    (description "hamtsolo lets you connect to Intel computers with enabled
AMT and establish a serial-over-lan (SOL) connection.")
    (license license:bsd-3)))

haskell-8.8-hamtsolo

(define-public haskell-8.8-hapistrano
  (package
    (name "haskell-8.8-hapistrano")
    (version "0.4.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hapistrano/hapistrano-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ylahq6hnyzyhh4fb2d21fwisq8a8x5rij6zrzvhcapnir2vkrn0"))))
    (properties `((upstream-name . "hapistrano") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev" "-f-static")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-formatting)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-gitrev)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-path-io)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-silently)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-typed-process)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
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

haskell-8.8-hapistrano

(define-public haskell-8.8-haskell-gi
  (package
    (name "haskell-8.8-haskell-gi")
    (version "0.23.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-gi/haskell-gi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jvl9b229b43pcnp9fadkls7ym9laqyjcdzwxzdc4j2mpchysva8"))))
    (properties `((upstream-name . "haskell-gi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xdg-basedir)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis
     "Generate Haskell bindings for GObject Introspection capable libraries")
    (description
     "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably
Gtk+, but many other libraries in the GObject ecosystem provide introspection data too.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.8-haskell-gi

(define-public haskell-8.8-haskell-lsp
  (package
    (name "haskell-8.8-haskell-lsp")
    (version "0.22.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-lsp/haskell-lsp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mh2b3dza633plxp370zhvml50kfx4szk4hrzmcfm6aij2di2l0w"))))
    (properties `((upstream-name . "haskell-lsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")
       #:cabal-revision
       ("1" "08qv5is4mgfdmh9cg5km9w4nwlygnsjzhjmpwd83hn7s56dhf1w8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-haskell-lsp-types)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-rope-utf16-splay)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-sorted-list)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/alanz/haskell-lsp")
    (synopsis "Haskell library for the Microsoft Language Server Protocol")
    (description "An implementation of the types, and basic message server to
allow language implementors to support the Language Server
Protocol for their specific language.

An example of this is for Haskell via the Haskell IDE
Engine, at https://github.com/haskell/haskell-ide-engine")
    (license license:expat)))

haskell-8.8-haskell-lsp

(define-public haskell-8.8-hie-bios
  (package
    (name "haskell-8.8-hie-bios")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hie-bios/hie-bios-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b6kll3w8g0nb1ijz8kw39dmiksyaq30nk5b5gmdgjdycz5hp9vm"))))
    (properties `((upstream-name . "hie-bios") (hidden? . #f)))
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
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-temporary)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mpickering/hie-bios")
    (synopsis "Set up a GHC API session")
    (description
     "Set up a GHC API session and obtain flags required to compile a source file")
    (license license:bsd-3)))

haskell-8.8-hie-bios

(define-public haskell-8.8-hinfo
  (package
    (name "haskell-8.8-hinfo")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/ChristopherDavenport/hinfo#readme")
    (synopsis "Command Line App With Info on your Haskell App")
    (description
     "Please see the README on GitHub at <https://github.com/ChristopherDavenport/hinfo#readme>")
    (license license:bsd-3)))

haskell-8.8-hinfo

(define-public haskell-8.8-hledger-ui
  (package
    (name "haskell-8.8-hledger-ui")
    (version "1.18.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-ui/hledger-ui-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ggfz93f14znnjzkznzblsdk6iqbwwj2yxzx5rgsr0xcjzm8gx64"))))
    (properties `((upstream-name . "hledger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fthreaded")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-brick)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-fsnotify)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-hledger)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hledger-lib)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-microlens-platform)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pretty-show)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-text-zipper)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-vty)))
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

haskell-8.8-hledger-ui

(define-public haskell-8.8-hlint
  (package
    (name "haskell-8.8-hlint")
    (version "3.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hlint/hlint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kbzj3qw3rr4yb2x50q79abckh6fvadbzqidbzkbydqqm0yhqhnx"))))
    (properties `((upstream-name . "hlint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fthreaded" "-fgpl" "-f-ghc-lib" "-f-hsyaml")
       #:cabal-revision
       ("1" "0klv0p4fxsa02497pbjhzp5zjjbsshahl16dp8xgiycdkcrr11sa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-cpphs)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-filepattern)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-ghc-lib-parser-ex)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hscolour)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-refact)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-uniplate)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/ndmitchell/hlint#readme")
    (synopsis "Source code suggestions")
    (description "HLint gives suggestions on how to improve your source code.")
    (license license:bsd-3)))

haskell-8.8-hlint

(define-public haskell-8.8-hpack
  (package
    (name "haskell-8.8-hpack")
    (version "0.34.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hpack/hpack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gwqmv3p3g9551n405bxrwm7a5ysx3q72q04k5qmicb3mxwwxnff"))))
    (properties `((upstream-name . "hpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1zm3qc9yhzyyh6068vn8pdpdwklv8d1m9kxbvcblv1xbcf23bwdp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-bifunctors)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-infer-license)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/sol/hpack#readme")
    (synopsis "A modern format for Haskell packages")
    (description "See README at <https://github.com/sol/hpack#readme>")
    (license license:expat)))

haskell-8.8-hpack

(define-public haskell-8.8-hpc-lcov
  (package
    (name "haskell-8.8-hpc-lcov")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hpc-lcov/hpc-lcov-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01ws5y2vavgm7151dcabw3jwny1prrnzn5b04q76m5gc6a36wivl"))))
    (properties `((upstream-name . "hpc-lcov") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0mds8q19pqxgrmyzgzrc01zb6wf7gx5cjl8brvw7ljkyrb2n2lya")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-path-io)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-tasty-golden)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/LeapYear/hpc-lcov#readme")
    (synopsis "Convert HPC output into LCOV format")
    (description "Convert HPC output into LCOV format.")
    (license license:bsd-3)))

haskell-8.8-hpc-lcov

(define-public haskell-8.8-hreader-lens
  (package
    (name "haskell-8.8-hreader-lens")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hreader)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-hset)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-action)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)))
    (home-page "http://github.com/dredozubov/hreader-lens")
    (synopsis "Optics for hreader package")
    (description "")
    (license license:expat)))

haskell-8.8-hreader-lens

(define-public haskell-8.8-hsebaysdk
  (package
    (name "haskell-8.8-hsebaysdk")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsebaysdk/hsebaysdk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0y1q667j0caqqaf57yjvcyyifvzpm4iwxk3y7awnp4c3ihf0ayb3"))))
    (properties `((upstream-name . "hsebaysdk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/creichert/hsebaysdk")
    (synopsis "Haskell eBay SDK")
    (description "eBay API wrapper in Haskell.
See the git repository for example usages.")
    (license license:bsd-3)))

haskell-8.8-hsebaysdk

(define-public haskell-8.8-hspec-golden-aeson
  (package
    (name "haskell-8.8-hspec-golden-aeson")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-quickcheck-arbitrary-adt)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-silently)))
    (home-page
     "https://github.com/plow-technologies/hspec-golden-aeson#readme")
    (synopsis "Use tests to monitor changes in Aeson serialization")
    (description "Use tests to monitor changes in Aeson serialization")
    (license license:bsd-3)))

haskell-8.8-hspec-golden-aeson

(define-public haskell-8.8-html-conduit
  (package
    (name "haskell-8.8-html-conduit")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/xml")
    (synopsis "Parse HTML documents using xml-conduit datatypes.")
    (description
     "This package uses tagstream-conduit for its parser. It automatically balances mismatched tags, so that there shouldn't be any parse failures. It does not handle a full HTML document rendering, such as adding missing html and head tags. Note that, since version 1.3.1, it uses an inlined copy of tagstream-conduit with entity decoding bugfixes applied.")
    (license license:expat)))

haskell-8.8-html-conduit

(define-public haskell-8.8-http-client-overrides
  (package
    (name "haskell-8.8-http-client-overrides")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-overrides/http-client-overrides-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15asl6xksr7qmjbm64my3h1x3sx7558vdidx7zlkl8lf1k0w0kcl"))))
    (properties `((upstream-name . "http-client-overrides") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/robbiemcmichael/http-client-overrides")
    (synopsis "HTTP client overrides")
    (description
     "A library for applying overrides to 'ManagerSettings' when using the
<http://hackage.haskell.org/package/http-client http-client> library.")
    (license license:bsd-3)))

haskell-8.8-http-client-overrides

(define-public haskell-8.8-http-conduit
  (package
    (name "haskell-8.8-http-conduit")
    (version "2.3.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-conduit/http-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mbaasmxx90gzfirwn8lmjpwj34gf1dk9y3m9mm88rzmy3s6czbb"))))
    (properties `((upstream-name . "http-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-faeson")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/http-conduit")
    (synopsis "HTTP client package with conduit interface and HTTPS support.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-conduit>.")
    (license license:bsd-3)))

haskell-8.8-http-conduit

(define-public haskell-8.8-hw-balancedparens
  (package
    (name "haskell-8.8-hw-balancedparens")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-balancedparens/hw-balancedparens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16v36fj5aawnx6glarzljl3yb93zkn06ij5cg40zba5rp8jhpg7z"))))
    (properties `((upstream-name . "hw-balancedparens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0hw0qqkabv0i4zmr7436pl1xn9izxcm4p9flv2k697zyhqdaccik")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-generic-lens)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-hedgehog)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-hw-bits)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-hw-excess)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-hw-fingertree)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hw-int)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hw-prim)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-mmap)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages multiprecision) gmp)))
    (home-page "http://github.com/haskell-works/hw-balancedparens#readme")
    (synopsis "Balanced parentheses")
    (description "Balanced parentheses.")
    (license license:bsd-3)))

haskell-8.8-hw-balancedparens

(define-public haskell-8.8-irc-conduit
  (package
    (name "haskell-8.8-irc-conduit")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/irc-conduit/irc-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0asaddcbdcnbp0bbhvzaq5514nw2l1cp1gac3jbn4mh7brgfwjc1"))))
    (properties `((upstream-name . "irc-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-irc)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-irc-ctcp)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-network-conduit-tls)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-profunctors)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-tls)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/barrucadu/irc-conduit")
    (synopsis "Streaming IRC message library using conduits.")
    (description
     "IRC messages consist of an optional identifying prefix, a command
name, and a list of arguments. The <http://hackage.haskell.org/package/irc irc>
package provides a low-level decoding and encoding scheme for
messages in terms of ByteStrings, but using this relies on matching
names of commands as strings, and unpacking this decoded structure
yourself. This package takes it a little further, providing an ADT
for IRC messages and sources, and conduits which attempt to decode
and encode messages appropriately.

In addition to providing conduits for automatically handling
streaming messages, there are also helper functions for connecting
to an IRC server and hooking up conduits to the socket.")
    (license license:expat)))

haskell-8.8-irc-conduit

(define-public haskell-8.8-jose
  (package
    (name "haskell-8.8-jose")
    (version "0.8.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jose/jose-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14cbdah9khw8z876c1fn26asp1xa3azn7hh7a04chznmqagnmbmj"))))
    (properties `((upstream-name . "jose") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demos")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-concise)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-monad-time)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-pem)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)))
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
    (license license:asl2.0)))

haskell-8.8-jose

(define-public haskell-8.8-json-rpc
  (package
    (name "haskell-8.8-json-rpc")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/json-rpc/json-rpc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0168hk5sqrxily51m0vlwvarmz59h79520y1ivbf6g38hxm8m60g"))))
    (properties `((upstream-name . "json-rpc") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-stm-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jprupp/json-rpc.git#readme")
    (synopsis "Fully-featured JSON-RPC 2.0 library")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/json-rpc#readme>")
    (license license:expat)))

haskell-8.8-json-rpc

(define-public haskell-8.8-junit-xml
  (package
    (name "haskell-8.8-junit-xml")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/junit-xml/junit-xml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sm738irwvmdnn8cvf0rnvp8s5gmr0ih241l27sasqq18nra2v04"))))
    (properties `((upstream-name . "junit-xml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-tasty-golden)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jwoudenberg/junit-xml#readme")
    (synopsis "Producing JUnit-style XML test reports.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/junit-xml>.")
    (license license:bsd-3)))

haskell-8.8-junit-xml

(define-public haskell-8.8-jwt
  (package
    (name "haskell-8.8-jwt")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-tasty-th)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://bitbucket.org/puffnfresh/haskell-jwt")
    (synopsis "JSON Web Token (JWT) decoding and encoding")
    (description
     "JSON Web Token (JWT) is a compact URL-safe means of representing claims to be transferred between two parties.

To get started, see the documentation for the \"Web.JWT\" module.")
    (license license:expat)))

haskell-8.8-jwt

(define-public haskell-8.8-koofr-client
  (package
    (name "haskell-8.8-koofr-client")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/koofr-client/koofr-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bz7akd7sssn1gzqfvr0y343771zk7dn1n3as0m93wg4ifpz1dia"))))
    (properties `((upstream-name . "koofr-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qaipcg9n93z0za2a8jy3mv73a3q2b1dv98v2g5wwcv1qx7rvvhv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/edofic/koofr-api-hs                       ")
    (synopsis "Client to Koofr API")
    (description
     "Koofr is a storage as a service provider located in Europe. See https://koofr.eu for more info. This is an API wrapper that simplifies working with files.
Filesystem roots are called mounts and cannot be manipulated through api.
The API is contained in a type class in order to allow mocking. Mock runner and wider API coverage coming soon.")
    (license license:expat)))

haskell-8.8-koofr-client

(define-public haskell-8.8-markdown
  (package
    (name "haskell-8.8-markdown")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-blaze-markup)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/markdown")
    (synopsis "Convert Markdown to HTML, with XSS protection")
    (description
     "This library leverages existing high-performance libraries (attoparsec, blaze-html, text, and conduit), and should integrate well with existing codebases.")
    (license license:bsd-3)))

haskell-8.8-markdown

(define-public haskell-8.8-medea
  (package
    (name "haskell-8.8-medea")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/medea/medea-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s5ra1a9p8yj2ddwlz58i1ajd7dmxz9rxrdckfmajpzgq9vyskpl"))))
    (properties `((upstream-name . "medea") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ick6yjqdk7wg75fzd496r1nyzhphzpz21lcalpicd34bkbzk6dd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-algebraic-graphs)
                  (@ (gnu packages stackage ghc-8.8 stage012) haskell-8.8-free)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-ghc)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-nonempty-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-vector-instances)))
    (home-page "https://github.com/juspay/medea")
    (synopsis "A schema language for JSON.")
    (description
     "A reference implementation of a schema language, together with a conformance
suite and a specification.")
    (license license:expat)))

haskell-8.8-medea

(define-public haskell-8.8-mmark
  (package
    (name "haskell-8.8-mmark")
    (version "0.0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mmark/mmark-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wwszzba6fvg0r4q5z2dzashim0nkaxzx4rmjl216kdi08jkp7mm"))))
    (properties `((upstream-name . "mmark") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "1ffa76pz544pa3s764lnc38rdmfccyn8z6zn1w76pqb01p0f9k9p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-email-validate)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-foldl)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-html-entity-map)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-lucid)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-modern-uri)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parser-combinators)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-text-metrics)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/mmark-md/mmark")
    (synopsis "Strict markdown processor for writers")
    (description "Strict markdown processor for writers.")
    (license license:bsd-3)))

haskell-8.8-mmark

(define-public haskell-8.8-monad-logger-json
  (package
    (name "haskell-8.8-monad-logger-json")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-json/monad-logger-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ap98487lwgvgrrxkjskga86ckbv6rhn2n6pzp403343xx51r1qh"))))
    (properties `((upstream-name . "monad-logger-json") (hidden? . #f)))
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
                     haskell-8.8-monad-logger)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/fpco/monad-logger-json")
    (synopsis "JSON-friendly Logging APIs")
    (description "Convienence functions for logging ToJSON with monad-logger")
    (license license:expat)))

haskell-8.8-monad-logger-json

(define-public haskell-8.8-monad-logger-prefix
  (package
    (name "haskell-8.8-monad-logger-prefix")
    (version "0.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger-prefix/monad-logger-prefix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00gsp7mhvqvfbdh75lgr73j5adw3hd4cp969h241gaw892z3qvws"))))
    (properties `((upstream-name . "monad-logger-prefix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0vrksfi4l7djn8z0kbknidp8g1kcahy938f9dmp27fkydwrjv14i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/parsonsmatt/monad-logger-prefix#readme")
    (synopsis "Add prefixes to your monad-logger output")
    (description
     "Add prefixes to your monad-logger output. See README for more info.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-monad-logger-prefix

(define-public haskell-8.8-mono-traversable-instances
  (package
    (name "haskell-8.8-mono-traversable-instances")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mono-traversable-instances/mono-traversable-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fnkz8dlfz0bl7mx2p5y96w91zdhdvnzx1a9a8zlfxz06mwarhgb"))))
    (properties `((upstream-name . "mono-traversable-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-dlist-instances)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-mono-traversable)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-semigroupoids)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-vector-instances)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Extra typeclass instances for mono-traversable")
    (description
     "See docs and README at <http://www.stackage.org/package/mono-traversable-instance>")
    (license license:expat)))

haskell-8.8-mono-traversable-instances

(define-public haskell-8.8-mono-traversable-keys
  (package
    (name "haskell-8.8-mono-traversable-keys")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage013) haskell-8.8-keys)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-mono-traversable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-vector-instances)))
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

haskell-8.8-mono-traversable-keys

(define-public haskell-8.8-nqe
  (package
    (name "haskell-8.8-nqe")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nqe/nqe-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0wg9cfzgj36dj77m521pqcliqd43i3j6i1bvqgvb8npmzqijag7q"))))
    (properties `((upstream-name . "nqe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-stm-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unique)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/xenog/nqe#readme")
    (synopsis "Concurrency library in the style of Erlang/OTP")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/nqe#readme>")
    (license license:expat)))

haskell-8.8-nqe

(define-public haskell-8.8-opensource
  (package
    (name "haskell-8.8-opensource")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opensource/opensource-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10jlgk1rbpz5h1mbknq0i71k0n4ppp3yd498i7p2l79a9gi6pwqy"))))
    (properties `((upstream-name . "opensource") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-transformers_compat")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://api.opensource.org/")
    (synopsis "Haskell API Wrapper for the Open Source License API")
    (description
     "The Open Source API contains metadata regarding OSI Approved Licenses, and crosswalks that help with using and integrating this information with external sources. This library is designed to interact with that API so that users can simply build applications that are license-aware.")
    (license license:expat)))

haskell-8.8-opensource

(define-public haskell-8.8-opentelemetry-extra
  (package
    (name "haskell-8.8-opentelemetry-extra")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/opentelemetry-extra/opentelemetry-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qr2pz08n7kqx5jcyxhfwrsqlw7lbkkjbrm0fdj5mxykwznqidb8"))))
    (properties `((upstream-name . "opentelemetry-extra") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ghc-events)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-opentelemetry)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-splitmix)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-discover)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-text-show)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-typed-process)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/opentelemetry-extra")
    (synopsis "")
    (description "The OpenTelemetry Haskell Client https://opentelemetry.io")
    (license license:asl2.0)))

haskell-8.8-opentelemetry-extra

(define-public haskell-8.8-persistent
  (package
    (name "haskell-8.8-persistent")
    (version "2.10.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent/persistent-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18d9x12v4zldyzjm35gxzlcljqrmgpr1501zwdayy1h6iy7lbfb8"))))
    (properties `((upstream-name . "persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-nooverlap")
       #:cabal-revision
       ("1" "0a7zkjcf1l7chf7cy95fg86pxfxlwlm8qqw3d7y03z8dkgapbwfq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-fast-logger)
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
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-silently)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-unliftio)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Type-safe, multi-backend data serialization.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent>.")
    (license license:expat)))

haskell-8.8-persistent

(define-public haskell-8.8-pipes-http
  (package
    (name "haskell-8.8-pipes-http")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-http/pipes-http-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00579dpb7mh8nli5gfr100w0mrn6nvqhbj50qzxc2m5cvw4gncd2"))))
    (properties `((upstream-name . "pipes-http") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1pyxrq9m8c1v747c9bk75z418cyivhf8mbgdgfj9g2dvcf6zaq5w")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-pipes)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/pipes-http")
    (synopsis "HTTP client with pipes interface")
    (description
     "@@pipes-http@@ is a @@pipes@@ wrapper around the @@http-client@@ library")
    (license license:bsd-3)))

haskell-8.8-pipes-http

(define-public haskell-8.8-planb-token-introspection
  (package
    (name "haskell-8.8-planb-token-introspection")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/planb-token-introspection/planb-token-introspection-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rgjvxs1bb6qz02g2y8b4cldmgn05kfzjbb81ny57724yv60xyp7"))))
    (properties `((upstream-name . "planb-token-introspection")
                  (hidden? . #f)))
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
                     haskell-8.8-aeson-casing)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page
     "https://github.com/mtesseract/planb-token-introspection#readme")
    (synopsis "Token Introspection for PlanB")
    (description "This package provides token introspection functionality
for the PlanB token provider.")
    (license license:bsd-3)))

haskell-8.8-planb-token-introspection

(define-public haskell-8.8-postgresql-binary
  (package
    (name "haskell-8.8-postgresql-binary")
    (version "0.12.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-binary/postgresql-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zkhwl8g141p1zgnbxjhh0r6wgvzlpwdbvyl80z31fdxd5v29bv8"))))
    (properties `((upstream-name . "postgresql-binary") (hidden? . #f)))
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
                     haskell-8.8-base-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-binary-parser)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-loch-th)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-network-ip)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-placeholders)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/nikita-volkov/postgresql-binary ")
    (synopsis "Encoders and decoders for the PostgreSQL's binary format")
    (description "An API for dealing with PostgreSQL's binary data format.

It can be used to implement performant bindings to Postgres.
E.g., <http://hackage.haskell.org/package/hasql \"hasql\">
is based on this library.

It supports all Postgres versions starting from 8.3
and is tested against 8.3, 9.3 and 9.5
with the @@integer_datetimes@@ setting off and on.")
    (license license:expat)))

haskell-8.8-postgresql-binary

(define-public haskell-8.8-qchas
  (package
    (name "haskell-8.8-qchas")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hmatrix)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/ardeleanasm/qchas#readme")
    (synopsis "A library for implementing Quantum Algorithms")
    (description
     "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.")
    (license license:bsd-3)))

haskell-8.8-qchas

(define-public haskell-8.8-rainbox
  (package
    (name "haskell-8.8-rainbox")
    (version "0.26.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rainbox/rainbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07hh904p0mlc3iww184849yps80kwrhdna9nr840m2qyd81m37d1"))))
    (properties `((upstream-name . "rainbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-rainbow)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)))
    (home-page "https://www.github.com/massysett/rainbox")
    (synopsis "Two-dimensional box pretty printing, with colors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.8-rainbox

(define-public haskell-8.8-ratel
  (package
    (name "haskell-8.8-ratel")
    (version "1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ratel/ratel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00xhs04jrrbi1n2sx86v4pd3sggyk2682s3zxfmhb16zysh3hdx2"))))
    (properties `((upstream-name . "ratel") (hidden? . #f)))
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
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/ratel")
    (synopsis "Notify Honeybadger about exceptions.")
    (description "Ratel notifies Honeybadger about exceptions.")
    (license license:expat)))

haskell-8.8-ratel

(define-public haskell-8.8-req
  (package
    (name "haskell-8.8-req")
    (version "3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/req/req-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1r6fkhn99v6vil8khd23pdai3j6wgn724cy00q5x20fn3jz88ksw"))))
    (properties `((upstream-name . "req") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-authenticate-oauth)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-blaze-builder)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-connection)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-api-data)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-modern-uri)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-retry)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/req")
    (synopsis
     "Easy-to-use, type-safe, expandable, high-level HTTP client library")
    (description
     "Easy-to-use, type-safe, expandable, high-level HTTP client library.")
    (license license:bsd-3)))

haskell-8.8-req

(define-public haskell-8.8-rio-orphans
  (package
    (name "haskell-8.8-rio-orphans")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-orphans/rio-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0klbshdsv3gq3l7g1d6gq2wxdqjlqxbnwk1lbg5dpbz7yrnjr3by"))))
    (properties `((upstream-name . "rio-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-fast-logger)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-monad-logger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/commercialhaskell/rio#readme")
    (synopsis "Orphan instances for the RIO type in the rio package")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/rio-orphans>")
    (license license:expat)))

haskell-8.8-rio-orphans

(define-public haskell-8.8-safecopy
  (package
    (name "haskell-8.8-safecopy")
    (version "0.10.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safecopy/safecopy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0y2jpykad7inzndw4azb2wdp4zp3smjax95sdcxycw5x88rxdra1"))))
    (properties `((upstream-name . "safecopy") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-generic-data)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-action)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-old-time)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/acid-state/safecopy")
    (synopsis "Binary serialization with version control.")
    (description
     "An extension to Data.Serialize with built-in version control.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.8-safecopy

(define-public haskell-8.8-sbp
  (package
    (name "haskell-8.8-sbp")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-basic-prelude)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-binary-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cmdargs)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-conduit-extra)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-monad-loops)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.8-sbp

(define-public haskell-8.8-scalpel
  (package
    (name "haskell-8.8-scalpel")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/scalpel/scalpel-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04hhvk0yjxha3yg6n9fxivrz97hpjjiiblnj0bvs5myax1ggkjch"))))
    (properties `((upstream-name . "scalpel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-scalpel-core)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fimad/scalpel")
    (synopsis "A high level web scraping library for Haskell.")
    (description
     "Scalpel is a web scraping library inspired by libraries like Parsec and
Perl's Web::Scraper Scalpel builds on top of TagSoup to provide a
declarative and monadic interface.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-scalpel

(define-public haskell-8.8-sdl2
  (package
    (name "haskell-8.8-sdl2")
    (version "2.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sdl2/sdl2-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "08l24cb92spnx3bn26bj0z2cszpsawhaa9vvhblvsr3d6z76065q"))))
    (properties `((upstream-name . "sdl2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-opengl-example" "-f-no-linear")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-StateVar)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
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

haskell-8.8-sdl2

(define-public haskell-8.8-servant-blaze
  (package
    (name "haskell-8.8-servant-blaze")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-blaze/servant-blaze-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08fvy904mz5xjqda702kq4ch25m3nda1yhpp4g7i62j0jmxs2ji6"))))
    (properties `((upstream-name . "servant-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y38lzmh5jr3bix0cqrcx9zkjdr1598hz7rvpnm827qw0ln3cmra")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-blaze-html)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Blaze-html support for servant")
    (description "Servant support for blaze-html

'HTML' content type which will use `ToMarkup` class.")
    (license license:bsd-3)))

haskell-8.8-servant-blaze

(define-public haskell-8.8-servant-cassava
  (package
    (name "haskell-8.8-servant-cassava")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-cassava)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://haskell-servant.readthedocs.org/")
    (synopsis "Servant CSV content-type for cassava")
    (description "Servant CSV content-type for cassava.")
    (license license:bsd-3)))

haskell-8.8-servant-cassava

(define-public haskell-8.8-servant-client-core
  (package
    (name "haskell-8.8-servant-client-core")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage012) haskell-8.8-free)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Core functionality and class for client function generation for servant APIs")
    (description
     "This library provides backend-agnostic generation of client functions. For
more information, see the README.")
    (license license:bsd-3)))

haskell-8.8-servant-client-core

(define-public haskell-8.8-servant-docs
  (package
    (name "haskell-8.8-servant-docs")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-string-conversions)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-universe-base)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://docs.servant.dev/")
    (synopsis "generate API docs for your servant webservice")
    (description
     "Library for generating API docs from a servant API definition.

Runnable example <https://github.com/haskell-servant/servant/blob/master/servant-docs/example/greet.hs here>.

<https://github.com/haskell-servant/servant/blob/master/servant-docs/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.8-servant-docs

(define-public haskell-8.8-servant-docs-simple
  (package
    (name "haskell-8.8-servant-docs-simple")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-docs-simple/servant-docs-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r9lq4vv88fvh8dfw5z7kxsw57vr7877gixwjfmsy5q1yam91d9d"))))
    (properties `((upstream-name . "servant-docs-simple") (hidden? . #f)))
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
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-hspec-core)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "https://github.com/Holmusk/servant-docs-simple")
    (synopsis "Generate endpoints overview for Servant API")
    (description
     "This library uses [Data.Typeable](http://hackage.haskell.org/package/base-4.12.0.0/docs/Data-Typeable.html)
to generate documentation for [Servant](https://hackage.haskell.org/package/servant) API types.
It relies on the `typeRep` of Servant's combinators and other datatypes used in
the API to generate the documentation.")
    (license license:expat)))

haskell-8.8-servant-docs-simple

(define-public haskell-8.8-servant-foreign
  (package
    (name "haskell-8.8-servant-foreign")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-servant)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Helpers for generating clients for servant APIs in any programming language")
    (description
     "Helper types and functions for generating client functions for servant APIs in any programming language

This package provides types and functions that collect all the data needed to generate client functions in the programming language of your choice. This effectively means you only have to write the code that \"pretty-prints\" this data as some code in your target language.

See the servant-js package for an example

<https://github.com/haskell-servant/servant/blob/master/servant-foreign/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.8-servant-foreign

(define-public haskell-8.8-serversession-frontend-wai
  (package
    (name "haskell-8.8-serversession-frontend-wai")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serversession-frontend-wai/serversession-frontend-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rxifhjirhmhk1x14m6lvpv6dl32g179i4i3xi3dq59r7l716j0b"))))
    (properties `((upstream-name . "serversession-frontend-wai")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-cookie)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-path-pieces)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-serversession)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vault)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-wai-session)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "wai-session bindings for serversession.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-wai>")
    (license license:expat)))

haskell-8.8-serversession-frontend-wai

(define-public haskell-8.8-shake-plus
  (package
    (name "haskell-8.8-shake-plus")
    (version "0.1.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-plus/shake-plus-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jp0b593162y2m9mxrh4fhgvjiwyxx4zk5spmr46aby5hhrgdwcr"))))
    (properties `((upstream-name . "shake-plus") (hidden? . #f)))
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
                     haskell-8.8-comonad)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage008) haskell-8.8-rio)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-shake)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-within)))
    (home-page "https://gitlab.com/shake-plus/shake-plus")
    (synopsis "Re-export of Shake using well-typed paths and ReaderT.")
    (description
     "Re-export of Shake using well-typed paths and ReaderT. You can thread logging through your Shake Actions, and better keep track of source and output folders using the Within type.")
    (license license:expat)))

haskell-8.8-shake-plus

(define-public haskell-8.8-sized
  (package
    (name "haskell-8.8-sized")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sized/sized-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s1j9riv0kms1hgyhv69nwvh44xa831jk20xlnwq1byw6mbalna9"))))
    (properties `((upstream-name . "sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-ListLike)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-constraints)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-equational-reasoning)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-mono-traversable)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-singletons)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-type-natural)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/sized")
    (synopsis "Sized sequence data-types")
    (description
     "A wrapper to make length-parametrized data-type from ListLike data-types.")
    (license license:bsd-3)))

haskell-8.8-sized

(define-public haskell-8.8-skews
  (package
    (name "haskell-8.8-skews")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/skews/skews-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rwliykb87mvkpajzkx1fh4qlh7fgh6y5z5np1jrdi0rv3ki7hsn"))))
    (properties `((upstream-name . "skews") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-deque)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-websockets)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/iij-ii/direct-hs/tree/master/skews")
    (synopsis "A very quick-and-dirty WebSocket server.")
    (description
     "A very quick-and-dirty WebSocket server. Intended for use with unit tests.")
    (license license:bsd-3)))

haskell-8.8-skews

(define-public haskell-8.8-smoothie
  (package
    (name "haskell-8.8-smoothie")
    (version "0.4.2.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smoothie/smoothie-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jljw2ggfzmfds14zp00qwkqfmrd0f4fwfpdiz4qzwl6zvd07d8c"))))
    (properties `((upstream-name . "smoothie") (hidden? . #f)))
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
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/phaazon/smoothie")
    (synopsis "Smooth curves via several interpolation modes")
    (description "This package exports several splines you can use
to interpolate points in between. It includes instances for
<https://hackage.haskell.org/package/aeson aeson> so that
you can quickly store the splines and restore them.")
    (license license:bsd-3)))

haskell-8.8-smoothie

(define-public haskell-8.8-spatial-math
  (package
    (name "haskell-8.8-spatial-math")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-TypeCompose)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)))
    (home-page "https://hackage.haskell.org/package/spatial-math")
    (synopsis
     "3d math including quaternions/euler angles/dcms and utility functions")
    (description
     "This is a port of my 'mathlib' C library: `https://github.com/ghorn/mathlib`")
    (license license:bsd-3)))

haskell-8.8-spatial-math

(define-public haskell-8.8-stache
  (package
    (name "haskell-8.8-stache")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stache/stache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06pn7pm5vgk9f4bsh3m29cik514nv5w655ip04k7p5jv9xgmn4ld"))))
    (properties `((upstream-name . "stache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("2" "1a25mwi1x3yqq9clm9gz0dibpnppznbx392ixfwc21hnngn7kxsp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/stackbuilders/stache")
    (synopsis "Mustache templates for Haskell")
    (description "Mustache templates for Haskell.")
    (license license:bsd-3)))

haskell-8.8-stache

(define-public haskell-8.8-strive
  (package
    (name "haskell-8.8-strive")
    (version "5.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/strive/strive-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fdwmcpgfw7maw4lf4mw3qs8fiwxdsv518xjjmrp5w3hfjdlqgmz"))))
    (properties `((upstream-name . "strive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-gpolyline)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-markdown-unlit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/strive")
    (synopsis "A client for the Strava V3 API.")
    (description "Strive is a client for the Strava V3 API.")
    (license license:expat)))

haskell-8.8-strive

(define-public haskell-8.8-summoner-tui
  (package
    (name "haskell-8.8-summoner-tui")
    (version "2.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/summoner-tui/summoner-tui-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09rc3yyngma602yyd7bmc6cix9rcwmanfphcxnsv8m1cswjhz14z"))))
    (properties `((upstream-name . "summoner-tui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-brick)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-colourista)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-microlens-th)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-relude)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-summoner)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-validation-selective)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-vty)))
    (home-page "https://github.com/kowainik/summoner")
    (synopsis
     "Tool for scaffolding fully configured batteries-included production-level Haskell projects using TUI.")
    (description
     "Tool for scaffolding fully configured batteries-included production-level Haskell projects using TUI.
See [README.md](https://github.com/kowainik/summoner#-summoner) for details.")
    (license license:mpl2.0)))

haskell-8.8-summoner-tui

(define-public haskell-8.8-svg-tree
  (package
    (name "haskell-8.8-svg-tree")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-linear)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-xml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.8-svg-tree

(define-public haskell-8.8-swagger2
  (package
    (name "haskell-8.8-swagger2")
    (version "2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/swagger2/swagger2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ywj4536daz43vrxibqn271gq96bzkawx3qcwbm547315jfd4fqf"))))
    (properties `((upstream-name . "swagger2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-cookie)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-generics-sop)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-http-media)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-optics-core)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-optics-th)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-uuid-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/GetShopTV/swagger2")
    (synopsis "Swagger 2.0 data model")
    (description
     "This library is intended to be used for decoding and encoding Swagger 2.0 API
specifications as well as manipulating them.

The original Swagger 2.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-8.8-swagger2

(define-public haskell-8.8-ua-parser
  (package
    (name "haskell-8.8-ua-parser")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-file-embed)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-pcre-light)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ua-parser")
    (synopsis
     "A library for parsing User-Agent strings, official Haskell port of ua-parser")
    (description
     "Please refer to the git/github README on the project for example usage.")
    (license license:bsd-3)))

haskell-8.8-ua-parser

(define-public haskell-8.8-wai-extra
  (package
    (name "haskell-8.8-wai-extra")
    (version "3.0.32")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-extra/wai-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1676mvyamlrkfsvdnrxj0cd2bl40b8lp4nrcpn67mnjxfs7qflh0"))))
    (properties `((upstream-name . "wai-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")
       #:cabal-revision
       ("1" "1bmagv0ix9p9xdbq2z6ivnpxw9gi5yi8c0zwwcdnggdfi8y2myv4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-cookie)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-fast-logger)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http2)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-iproute)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-resourcet)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vault)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-wai-logger)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-word8)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "Provides some basic WAI handlers and middleware.")
    (description
     "Provides basic WAI handler and middleware functionality:

* WAI Testing Framework

Hspec testing facilities and helpers for WAI.

* Event Source/Event Stream

Send server events to the client. Compatible with the JavaScript
EventSource API.

* Accept Override

Override the Accept header in a request. Special handling for the
_accept query parameter (which is used throughout WAI override the
Accept header).

* Add Headers

WAI Middleware for adding arbitrary headers to an HTTP request.

* Clean Path

Clean a request path to a canonical form.

* GZip Compression

Negotiate HTTP payload gzip compression.

* HTTP Basic Authentication

WAI Basic Authentication Middleware which uses Authorization header.

* JSONP

\\\"JSON with Padding\\\" middleware. Automatic wrapping of JSON
responses to convert into JSONP.

* Method Override / Post

Allows overriding of the HTTP request method via the _method query string
parameter.

* Request Logging

Request logging middleware for development and production environments

* Request Rewrite

Rewrite request path info based on a custom conversion rules.

* Stream Files

Convert ResponseFile type responses into ResponseStream type.

* Virtual Host

Redirect incoming requests to a new host based on custom rules.


API docs and the README are available at <http://www.stackage.org/package/wai-extra>.")
    (license license:expat)))

haskell-8.8-wai-extra

(define-public haskell-8.8-warp
  (package
    (name "haskell-8.8-warp")
    (version "3.3.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/warp/warp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yqgfx7bsjk97dxcrqwddfhi8mdw0q6cbgs5abaxqjlxh3rhihdx"))))
    (properties `((upstream-name . "warp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-network-bytestring" "-fallow-sendfilefd" "-f-warp-debug")
       #:cabal-revision
       ("1" "1l7mbvp6wj821llgpqif4nqi07l1kasc96h24rw4ky45qml5zbdz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-auto-update)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-bsb-http-chunked)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-http-date)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http2)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-iproute)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-simple-sendfile)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage013)
                     haskell-8.8-time-manager)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unix-compat)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-vault)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-wai)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-word8)
                  (@ (gnu packages stackage ghc-8.8 stage010) haskell-8.8-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "A fast, light-weight web server for WAI applications.")
    (description "HTTP\\/1.0, HTTP\\/1.1 and HTTP\\/2 are supported.
For HTTP\\/2,  Warp supports direct and ALPN (in TLS)
but not upgrade.
API docs and the README are available at
<http://www.stackage.org/package/warp>.")
    (license license:expat)))

haskell-8.8-warp

(define-public haskell-8.8-wreq
  (package
    (name "haskell-8.8-wreq")
    (version "0.5.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wreq/wreq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16xls71aby6jqc1frhwnlfvz1iwj1ms0rw9xzif02sn84470gn36"))))
    (properties `((upstream-name . "wreq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fdoctest" "-f-aws" "-f-httpbin" "-f-developer")
       #:cabal-revision
       ("1" "0gz674sb266hv6si9l79c3bv7n2nbssl1262c24in79sk27887gb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-authenticate-oauth)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-cryptonite)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage015)
                     haskell-8.8-http-client)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-http-client-tls)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-http-types)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-lens-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-mime-types)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-psqueues)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.serpentine.com/wreq")
    (synopsis "An easy-to-use HTTP client library.")
    (description
     "
A web client library that is designed for ease of use.

Tutorial: <http://www.serpentine.com/wreq/tutorial.html>

Features include:

* Simple but powerful `lens`-based API

* A solid test suite, and built on reliable libraries like
http-client and lens

* Session handling includes connection keep-alive and pooling, and
cookie persistence

* Automatic response body decompression

* Powerful multipart form and file upload handling

* Support for JSON requests and responses, including navigation of
schema-less responses

* Basic and OAuth2 bearer authentication

* Early TLS support via the tls package")
    (license license:bsd-3)))

haskell-8.8-wreq

(define-public haskell-8.8-xlsx
  (package
    (name "haskell-8.8-xlsx")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xlsx/xlsx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kjfnp24nc97qqla1z65wzy59cch336pjncz1kdfakmgv27mv38a"))))
    (properties `((upstream-name . "xlsx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-microlens")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Diff)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-binary-search)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-errors)
                  (@ (gnu packages stackage ghc-8.8 stage014)
                     haskell-8.8-extra)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-groom)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-xeno)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-zip-archive)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.8-xlsx

(define-public haskell-8.8-xml-conduit-writer
  (package
    (name "haskell-8.8-xml-conduit-writer")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-xml-types)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.8-xml-conduit-writer

(define-public haskell-8.8-xml-hamlet
  (package
    (name "haskell-8.8-xml-hamlet")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage009)
                     haskell-8.8-shakespeare)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Hamlet-style quasiquoter for XML content")
    (description "Hamlet-style quasiquoter for XML content")
    (license license:bsd-3)))

haskell-8.8-xml-hamlet

(define-public haskell-8.8-xml-indexed-cursor
  (package
    (name "haskell-8.8-xml-indexed-cursor")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage004) haskell-8.8-Glob)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-data-default)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.8 stage004)
                     haskell-8.8-tasty-notests)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/xml-indexed-cursor")
    (synopsis
     "Indexed XML cursors similar to 'Text.XML.Cursor' from xml-conduit")
    (description
     "Please see <https://github.com/cdepillabout/xml-indexed-cursor#readme README.md>.")
    (license license:bsd-3)))

haskell-8.8-xml-indexed-cursor

(define-public haskell-8.8-xml-lens
  (package
    (name "haskell-8.8-xml-lens")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-lens/xml-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jvi8xcsvwzvh44karnsp9br6bfn59s5vhizwycg4fi7ljhm8fm3"))))
    (properties `((upstream-name . "xml-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0agp2gpzzgrpy831cj47r8fi91r0s68a7bl8fqvbb1ya7jfadfll")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage015) haskell-8.8-lens)
                  (@ (gnu packages stackage ghc-8.8 stage016)
                     haskell-8.8-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fumieval/xml-lens")
    (synopsis "Lenses, traversals, and prisms for xml-conduit")
    (description "Lens-based DOM selector")
    (license license:bsd-3)))

haskell-8.8-xml-lens

(define-public haskell-8.8-yamlparse-applicative
  (package
    (name "haskell-8.8-yamlparse-applicative")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yamlparse-applicative/yamlparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bzf3kbhccxzg88amyk3ys3bwfi99fhmfa843sxn53nrbgphdw09"))))
    (properties `((upstream-name . "yamlparse-applicative") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.8 stage012)
                     haskell-8.8-genvalidity-aeson)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-containers)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-text)
                  (@ (gnu packages stackage ghc-8.8 stage011)
                     haskell-8.8-genvalidity-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage006)
                     haskell-8.8-hspec)
                  (@ (gnu packages stackage ghc-8.8 stage005)
                     haskell-8.8-hspec-discover)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage009) haskell-8.8-path)
                  (@ (gnu packages stackage ghc-8.8 stage010)
                     haskell-8.8-path-io)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage007)
                     haskell-8.8-validity)
                  (@ (gnu packages stackage ghc-8.8 stage008)
                     haskell-8.8-validity-text)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages stackage ghc-8.8 stage016) haskell-8.8-yaml)))
    (home-page "https://github.com/NorfairKing/yamlparse-applicative#readme")
    (synopsis "Declaritive configuration parsing with free docs")
    (description "See https://github.com/NorfairKing/yamlparse-applicative")
    (license license:expat)))

haskell-8.8-yamlparse-applicative

