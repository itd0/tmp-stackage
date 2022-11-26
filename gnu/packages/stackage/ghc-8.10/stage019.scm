;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage019)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.10))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.10-aeson-picker
  (package
    (name "haskell-8.10-aeson-picker")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)))
    (home-page "https://github.com/ozzzzz/aeson-picker#readme")
    (synopsis "Tiny library to get fields from JSON format")
    (description "Tiny library to get fields from JSON format")
    (license license:bsd-3)))

haskell-8.10-aeson-picker

(define-public haskell-8.10-aeson-with
  (package
    (name "haskell-8.10-aeson-with")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-with/aeson-with-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zj8jjsq26i6k8m3zfszpjxnnkar3gmvdw1adl9rxlgha2v5kfz8"))))
    (properties `((upstream-name . "aeson-with") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1li326p1vvgfs54pai7xswssj67j58prr40pqzhmlgs8v193q175")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/aeson-with")
    (synopsis "withXField combinators for aeson")
    (description
     "withXField combinators for adding fields to an existing JSON value.")
    (license license:expat)))

haskell-8.10-aeson-with

(define-public haskell-8.10-aeson-yaml
  (package
    (name "haskell-8.10-aeson-yaml")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-yaml/aeson-yaml-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06x1l0a0dvzf8n2xmqny5qpsgdsl03xlh2z9x7wdxiykl8p4xd24"))))
    (properties `((upstream-name . "aeson-yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-binaries")
       #:cabal-revision
       ("3" "11srm7kkslnicqvbk728kzpy58am8rz680f7l6axn2nfh5ykx8n6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-string-qq)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/clovyr/aeson-yaml")
    (synopsis "Output any Aeson value as YAML (pure Haskell library)")
    (description
     "This library exposes functions for encoding any Aeson value as YAML. There
is also support for encoding multiple values into YAML \"documents\".

This library is pure Haskell, and does not depend on C FFI with libyaml. It
is also licensed under the BSD3 license.")
    (license license:bsd-3)))

haskell-8.10-aeson-yaml

(define-public haskell-8.10-apecs
  (package
    (name "haskell-8.10-apecs")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/apecs/apecs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h4pdfh6c2cc9w13crn90rlllykv2axjfmxb74ji2l9m17m4w4vy"))))
    (properties `((upstream-name . "apecs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1n0sz1230fp65dv462ss15yma6g1dxxlamj7idgl3kg9gdwv70sn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "Fast Entity-Component-System library for game programming")
    (description
     "apecs is a fast, type-driven Entity-Component-System library for game programming.")
    (license license:bsd-3)))

haskell-8.10-apecs

(define-public haskell-8.10-async-refresh
  (package
    (name "haskell-8.10-async-refresh")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-formatting)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-lifted-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mtesseract/async-refresh")
    (synopsis
     "Package implementing core logic for refreshing of expiring data.")
    (description
     "This package can be used for refreshing of expiring data according
to a user-provided action. Using callbacks, the user can decide
how she or he would like to be informed about data refreshing.")
    (license license:bsd-3)))

haskell-8.10-async-refresh

(define-public haskell-8.10-avro
  (package
    (name "haskell-8.10-avro")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-HasBigDecimal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-generic-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-tf-random)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-works/avro#readme")
    (synopsis "Avro serialization support for Haskell")
    (description "Avro serialization and deserialization support for Haskell")
    (license license:bsd-3)))

haskell-8.10-avro

(define-public haskell-8.10-aws-cloudfront-signed-cookies
  (package
    (name "haskell-8.10-aws-cloudfront-signed-cookies")
    (version "0.2.0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-cloudfront-signed-cookies/aws-cloudfront-signed-cookies-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mzsg6wfzgiippl8kw54m16i1m7zxwfqfwx3wbb3m372pg4h9sza"))))
    (properties `((upstream-name . "aws-cloudfront-signed-cookies")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1d9zsm2y08mzgr25wk3bf1laz918vbjvrfh7kc56r1naiqqprj74")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-asn1-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-neat-interpolation)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-pem)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/aws-cloudfront-signed-cookies")
    (synopsis "Generate signed cookies for AWS CloudFront")
    (description
     "One way to [serve private content through AWS CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html) is to use [signed cookies](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-signed-cookies.html). This package helps you generate signed cookies [using a custom IAM policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-setting-signed-cookie-custom-policy.html) which may include a range of time for which the cookie is valid and an IP address restriction.")
    (license license:expat)))

haskell-8.10-aws-cloudfront-signed-cookies

(define-public haskell-8.10-aws-xray-client-wai
  (package
    (name "haskell-8.10-aws-xray-client-wai")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-xray-client-wai/aws-xray-client-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b2rnls3qk7qzn9swfqmslxrw466gs6lhh7zi677k5b0dzh237vp"))))
    (properties `((upstream-name . "aws-xray-client-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-aws-xray-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray integration with WAI.")
    (description
     "Works with `aws-xray-client` to enable X-Ray tracing with WAI.")
    (license license:expat)))

haskell-8.10-aws-xray-client-wai

(define-public haskell-8.10-cabal-debian
  (package
    (name "haskell-8.10-cabal-debian")
    (version "5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-debian/cabal-debian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14kh2s61m7wm9h0ms4dlpfvqr2gd8fv0w44ar3c3dg5053hwrvny"))))
    (properties `((upstream-name . "cabal-debian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-debian)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hsemail)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-newtype-generics)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-pureMD5)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
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

haskell-8.10-cabal-debian

(define-public haskell-8.10-citeproc
  (package
    (name "haskell-8.10-citeproc")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/citeproc/citeproc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13hgbcbr7jbyfbxp8fsc43c2wq4fhlbxzqwh1plfkdi5n9bif1lv"))))
    (properties `((upstream-name . "citeproc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-icu" "-f-executable")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-pandoc-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-timeit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unicode-collation)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/citeproc")
    (synopsis "Generates citations and bibliography from CSL styles.")
    (description "citeproc parses CSL style files and uses them to
generate a list of formatted citations and bibliography
entries.  For more information about CSL, see
<https://citationstyles.org/>.")
    (license license:bsd-2)))

haskell-8.10-citeproc

(define-public haskell-8.10-clash-lib
  (package
    (name "haskell-8.10-clash-lib")
    (version "1.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-lib/clash-lib-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03wj0i926x8lc09nwgwh48plqxc49i5zzwil88bgnxdcwv9ncv18"))))
    (properties `((upstream-name . "clash-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-debug" "-funittests" "-f-experimental-evaluator")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-clash-prelude)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-concurrent-supply)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hint)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-text)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-reducers)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-terminal-size)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-text-show)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-trifecta)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-binary-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://clash-lang.org/")
    (synopsis
     "Clash: a functional hardware description language - As a library")
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

haskell-8.10-clash-lib

(define-public haskell-8.10-composable-associations-aeson
  (package
    (name "haskell-8.10-composable-associations-aeson")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composable-associations-aeson/composable-associations-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fpjirwk9si1v8jsdrcxbwn3rqc058na9z5lhbnkha2zc6l8w8rw"))))
    (properties `((upstream-name . "composable-associations-aeson")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-composable-associations)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/SamProtas/composable-associations#readme")
    (synopsis
     "Aeson ToJSON/FromJSON implementation for the types of composable-associations")
    (description
     "This library provides the orphan instances implementation JSON serialization for the types in
composiable-associations, as well as any other Aeson-specific implementation details.")
    (license license:bsd-3)))

haskell-8.10-composable-associations-aeson

(define-public haskell-8.10-conduit-algorithms
  (package
    (name "haskell-8.10-conduit-algorithms")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-bzlib-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-zstd)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lzma-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-pqueue)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-stm-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/luispedro/conduit-algorithms#readme")
    (synopsis "Conduit-based algorithms")
    (description
     "Algorithms on Conduits, including higher level asynchronous processing and some other utilities.")
    (license license:expat)))

haskell-8.10-conduit-algorithms

(define-public haskell-8.10-connection
  (package
    (name "haskell-8.10-connection")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/connection/connection-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nbmafhlg0wy4aa3p7amjddbamdz6avzrxn4py3lvhrjqn4raxax"))))
    (properties `((upstream-name . "connection") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08f1n38zryd0jklyv3yillilp040zxfxha6jphrmf28haq2irnk5")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-basement)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-socks)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-x509-store)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-x509-system)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-connection")
    (synopsis "Simple and easy network connections API")
    (description "Simple network library for all your connection need.

Features: Really simple to use, SSL/TLS, SOCKS.

This library provides a very simple api to create sockets
to a destination with the choice of SSL/TLS, and SOCKS.")
    (license license:bsd-3)))

haskell-8.10-connection

(define-public haskell-8.10-dbus
  (package
    (name "haskell-8.10-dbus")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.10-dbus

(define-public haskell-8.10-declarative
  (package
    (name "haskell-8.10-declarative")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/declarative/declarative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10dwdzl4gbxwvb068kz8kiprk18bwl79pkyhyyrmfzawf8zp3pha"))))
    (properties `((upstream-name . "declarative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-hasty-hamiltonian)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-mcmc-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-mighty-metropolis)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-mwc-probability)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-speedy-slice)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-8.10-declarative

(define-public haskell-8.10-distribution-nixpkgs
  (package
    (name "haskell-8.10-distribution-nixpkgs")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/distribution-nixpkgs/distribution-nixpkgs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07z1dkyzz9sabxda48cy6y2pfyq14sz2m9bv6y6dajn15cy7m3pk"))))
    (properties `((upstream-name . "distribution-nixpkgs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-language-nix)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "https://github.com/peti/distribution-nixpkgs")
    (synopsis "Types and functions to manipulate the Nixpkgs distribution")
    (description
     "Types and functions to represent, query, and manipulate the Nixpkgs distribution.")
    (license license:bsd-3)))

haskell-8.10-distribution-nixpkgs

(define-public haskell-8.10-dotenv
  (package
    (name "haskell-8.10-dotenv")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
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

haskell-8.10-dotenv

(define-public haskell-8.10-egison
  (package
    (name "haskell-8.10-egison")
    (version "4.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/egison/egison-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1azi22pbrc3v14zbrkdblx3sdc5qyn7agf0gvkaxxk98587kidrq"))))
    (properties `((upstream-name . "egison") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-sweet-egison)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unicode-show)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-8.10-egison

(define-public haskell-8.10-elynx-tools
  (package
    (name "haskell-8.10-elynx-tools")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/elynx-tools/elynx-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16cw9afpnczwrqhgyzy3vc7c6b9zx88ja94h34k2gi3960rfxf53"))))
    (properties `((upstream-name . "elynx-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha256)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Tools for ELynx")
    (description
     "Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-8.10-elynx-tools

(define-public haskell-8.10-eventful-test-helpers
  (package
    (name "haskell-8.10-eventful-test-helpers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-casing)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-eventful-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jdreaver/eventful#readme")
    (synopsis "Common module used for eventful tests")
    (description "Common module used for eventful tests")
    (license license:expat)))

haskell-8.10-eventful-test-helpers

(define-public haskell-8.10-fakedata
  (package
    (name "haskell-8.10-fakedata")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fakedata/fakedata-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0in9yz7qkdnrp3bz6zdfvz435d9k9zhdq6n18nsm5il949kf68p5"))))
    (properties `((upstream-name . "fakedata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-fakedata-parser)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-string-random)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/psibi/fakedata#readme")
    (synopsis "Library for producing fake data")
    (description
     "Please see the README on GitHub at <https://github.com/psibi/fakedata#readme>")
    (license license:bsd-3)))

haskell-8.10-fakedata

(define-public haskell-8.10-feed
  (package
    (name "haskell-8.10-feed")
    (version "1.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/feed/feed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kv3vx3njqlhwvkmf12m1gmwl8jj97kfa60da2362vwdavhcf4dk"))))
    (properties `((upstream-name . "feed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "029bip9jrmygvsdrdxn5gyb899kny41a98xjvy65gapd8ir1fd43")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-doctest-driver-gen)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.10-feed

(define-public haskell-8.10-fix-whitespace
  (package
    (name "haskell-8.10-fix-whitespace")
    (version "0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fix-whitespace/fix-whitespace-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nx56dfgg0i75f007y0r5w0955y3x78drjkvdx278llalyfpc5bg"))))
    (properties `((upstream-name . "fix-whitespace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "17n8sdfcnyjm8ykkpw17apb9ah94r77azz9rzlwpfdps5w81s6gg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-filepattern)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/agda/fix-whitespace")
    (synopsis "Fixes whitespace issues.")
    (description
     "Removes trailing whitespace, lines containing only whitespace and ensure that every file ends in a newline character.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-fix-whitespace

(define-public haskell-8.10-fn
  (package
    (name "haskell-8.10-fn")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fn/fn-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0pxfwyfigj449qd01xb044gz1h63f3lvmpq6xij09xhkm8bv0d0y"))))
    (properties `((upstream-name . "fn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/positiondev/fn#readme")
    (synopsis "A functional web framework.")
    (description
     "A Haskell web framework where you write plain old functions.

/Provided you have/ <https://github.com/commercialhaskell/stack#readme stack> /installed, you can run this example like a shell script (it'll listen on port 3000):/

@@
#!\\/usr\\/bin\\/env stack
\\-\\- stack --resolver lts-5.5 --install-ghc runghc --package fn --package warp
&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;
import Data.Monoid ((&#60;&#62;))
import Data.Text (Text)
import Network.Wai (Response)
import Network.Wai.Handler.Warp (run)
import Web.Fn

data Ctxt = Ctxt &#123; _req :: FnRequest &#125;
instance RequestContext Ctxt where
&#32; getRequest = _req
&#32; setRequest c r = c &#123; _req = r &#125;

initializer :: IO Ctxt
initializer = return (Ctxt defaultFnRequest)

main :: IO ()
main = do ctxt <- initializer
&#32;         run 3000 $ toWAI ctxt site

site :: Ctxt -> IO Response
site ctxt = route ctxt [ end                        ==> indexH
&#32;                      , path &#34;echo&#34; \\/\\/ param &#34;msg&#34; ==> echoH
&#32;                      , path &#34;echo&#34; \\/\\/ segment     ==> echoH
&#32;                      ]
&#32;                 \\`fallthrough\\` notFoundText &#34;Page not found.&#34;

indexH :: Ctxt -> IO (Maybe Response)
indexH _ = okText &#34;Try visiting \\/echo?msg='hello' or \\/echo\\/hello&#34;

echoH :: Ctxt -> Text -> IO (Maybe Response)
echoH _ msg = okText $ &#34;Echoing '&#34; &#60;&#62; msg &#60;&#62; &#34;'.&#34;
@@


Fn lets you write web code that just looks like normal Haskell code.

* An application has some \\\"context\\\", which must contain a @@Request@@,
but can contain other data as well, like database connection pools,
etc. This context will be passed to each of your handlers, updated
with the current HTTP Request.

* Routes are declared to capture parameters and/or segments of the url,
and then routed to handler functions that have the appropriate number
and type of arguments. These functions return @@IO (Maybe Response)@@,
where @@Nothing@@ indicates to Fn that you want it to keep looking for
matching routes.

* All handlers just use plain old @@IO@@, which means it is easy to call
them from GHCi, @@forkIO@@, etc.

* All of this is a small wrapper around the WAI interface, so you have
the flexilibility to do anything you need to do with HTTP.

The name comes from the fact that Fn emphasizes functions (over monads),
where all necessary data is passed via function arguments, and control
flow is mediated by return values.")
    (license license:isc)))

haskell-8.10-fn

(define-public haskell-8.10-frontmatter
  (package
    (name "haskell-8.10-frontmatter")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/yamadapc/haskell-frontmatter")
    (synopsis "Parses frontmatter as used in Jekyll markdown files.")
    (description "Parses frontmatter as used in Jekyll markdown files.

Provides a parser that'll parse the frontmatter only and
one that'll execute a YAML parser on it, so that it's a
YAML frontmatter parser.")
    (license license:expat)))

haskell-8.10-frontmatter

(define-public haskell-8.10-geojson
  (package
    (name "haskell-8.10-geojson")
    (version "4.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/geojson/geojson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a488bbm3hh5hz5i99xj697951c0ni0ynp5x44d7srhf08z1zgjm"))))
    (properties `((upstream-name . "geojson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-validation)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/zellige/hs-geojson")
    (synopsis "A thin GeoJSON Layer above the aeson library")
    (description
     "A thin GeoJSON Layer above the aeson library.

It currently conforms to version 1.0 of the GeoJSON spec which can be found here:

<https://tools.ietf.org/html/rfc7946>")
    (license license:bsd-3)))

haskell-8.10-geojson

(define-public haskell-8.10-ginger
  (package
    (name "haskell-8.10-ginger")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://ginger.tobiasdammers.nl/")
    (synopsis "An implementation of the Jinja2 template language in Haskell")
    (description "Ginger is Jinja, minus the most blatant pythonisms. Wants
to be feature complete, but isn't quite there yet.")
    (license license:expat)))

haskell-8.10-ginger

(define-public haskell-8.10-hamtsolo
  (package
    (name "haskell-8.10-hamtsolo")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hamtsolo/hamtsolo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zgkwj2q3jpg6x6acrq2dbp0n0gps2wrrg2wx4ybpvy9vbw9qppc"))))
    (properties `((upstream-name . "hamtsolo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-attoparsec-binary)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-gitrev)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-stm-conduit)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/tfc/hamtsolo#readme")
    (synopsis "Intel AMT serial-over-lan (SOL) client")
    (description "hamtsolo lets you connect to Intel computers with enabled
AMT and establish a serial-over-lan (SOL) connection.")
    (license license:bsd-3)))

haskell-8.10-hamtsolo

(define-public haskell-8.10-hapistrano
  (package
    (name "haskell-8.10-hapistrano")
    (version "0.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hapistrano/hapistrano-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05aphcj0pfqiwg6xxagf9d81qv4qqs8rbk140i9d9xvhyis3fl73"))))
    (properties `((upstream-name . "hapistrano") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev" "-f-static")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-formatting)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-gitrev)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
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

haskell-8.10-hapistrano

(define-public haskell-8.10-haskell-gi
  (package
    (name "haskell-8.10-haskell-gi")
    (version "0.25.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-gi/haskell-gi-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1bxybi1bj9jwfmyj57cb3471s0wczlp6m1qz893kbz17k96mpin8"))))
    (properties `((upstream-name . "haskell-gi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskell-gi-base)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xdg-basedir)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis
     "Generate Haskell bindings for GObject Introspection capable libraries")
    (description
     "Generate Haskell bindings for GObject Introspection capable libraries. This includes most notably
Gtk+, but many other libraries in the GObject ecosystem provide introspection data too.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-haskell-gi

(define-public haskell-8.10-haskell-lsp
  (package
    (name "haskell-8.10-haskell-lsp")
    (version "0.24.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-lsp/haskell-lsp-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gw289wy91h0qv4filw3glw3rrjvmr5j591wrdiwc1bl3w56bpig"))))
    (properties `((upstream-name . "haskell-lsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")
       #:cabal-revision
       ("2" "1zcm43g0pyba9vdlqj5whd3743zpfi8cy94p9gdh5fvcbb8wv5jn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-haskell-lsp-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-rope-utf16-splay)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-sorted-list)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alanz/haskell-lsp")
    (synopsis "Haskell library for the Microsoft Language Server Protocol")
    (description "An implementation of the types, and basic message server to
allow language implementors to support the Language Server
Protocol for their specific language.

An example of this is for Haskell via the Haskell IDE
Engine, at https://github.com/haskell/haskell-ide-engine")
    (license license:expat)))

haskell-8.10-haskell-lsp

(define-public haskell-8.10-hedis
  (package
    (name "haskell-8.10-hedis")
    (version "0.14.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hedis/hedis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0h6s3x3pylyidjbzjqyrmc2cm5ls67m9iij35fn48rvq4l41w9h9"))))
    (properties `((upstream-name . "hedis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0w7960730qh8y41xa1mx4lbk288axkqa03wamh9j6pmag9axcphq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-HTTP)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bytestring-lexing)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-scanner)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
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
to be used with the latest stable version of Redis (currently 5.0).
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

haskell-8.10-hedis

(define-public haskell-8.10-hgeometry-combinatorial
  (package
    (name "haskell-8.10-hgeometry-combinatorial")
    (version "0.12.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hgeometry-combinatorial/hgeometry-combinatorial-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sfng68pirghrnqflxnvysg8x3pnpbwrbc70xsj87gc257adfla9"))))
    (properties `((upstream-name . "hgeometry-combinatorial") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-MonadRandom)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-data-clist)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fingertree)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-nonempty-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-builder)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-vector-circular)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-vinyl)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-witherable)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://fstaals.net/software/hgeometry")
    (synopsis "Data structures, and Data types.")
    (description
     "The Non-geometric data types and algorithms used in HGeometry.")
    (license license:bsd-3)))

haskell-8.10-hgeometry-combinatorial

(define-public haskell-8.10-hie-bios
  (package
    (name "haskell-8.10-hie-bios")
    (version "0.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hie-bios/hie-bios-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13x8m7hg5ahmh96xq703ygx7f2zk69gbrgmrbrrwzvbc9h0ci02r"))))
    (properties `((upstream-name . "hie-bios") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cryptohash-sha1)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mpickering/hie-bios")
    (synopsis "Set up a GHC API session")
    (description
     "Set up a GHC API session and obtain flags required to compile a source file")
    (license license:bsd-3)))

haskell-8.10-hie-bios

(define-public haskell-8.10-hinfo
  (package
    (name "haskell-8.10-hinfo")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/ChristopherDavenport/hinfo#readme")
    (synopsis "Command Line App With Info on your Haskell App")
    (description
     "Please see the README on GitHub at <https://github.com/ChristopherDavenport/hinfo#readme>")
    (license license:bsd-3)))

haskell-8.10-hinfo

(define-public haskell-8.10-hledger-ui
  (package
    (name "haskell-8.10-hledger-ui")
    (version "1.21")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-ui/hledger-ui-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h9d686z0y8cvq6780g6r8fdrs76y9649js0c350b6xnhzggbx0l"))))
    (properties `((upstream-name . "hledger-ui") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fthreaded")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-brick)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-fsnotify)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-hledger)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hledger-lib)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-microlens-platform)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-zipper)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vty)))
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

haskell-8.10-hledger-ui

(define-public haskell-8.10-hlint
  (package
    (name "haskell-8.10-hlint")
    (version "3.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hlint/hlint-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14nvq71kn1lhqx02r69f949p33rhxi466fwmxj9g0wd5191jawrs"))))
    (properties `((upstream-name . "hlint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fthreaded" "-fgpl" "-f-ghc-lib" "-f-hsyaml")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-cpphs)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-filepattern)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-ghc-lib-parser-ex)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hscolour)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-refact)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/ndmitchell/hlint#readme")
    (synopsis "Source code suggestions")
    (description "HLint gives suggestions on how to improve your source code.")
    (license license:bsd-3)))

haskell-8.10-hlint

(define-public haskell-8.10-hpc-lcov
  (package
    (name "haskell-8.10-hpc-lcov")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/LeapYear/hpc-lcov#readme")
    (synopsis "Convert HPC output into LCOV format")
    (description "Convert HPC output into LCOV format.")
    (license license:bsd-3)))

haskell-8.10-hpc-lcov

(define-public haskell-8.10-hspec-golden-aeson
  (package
    (name "haskell-8.10-hspec-golden-aeson")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-quickcheck-arbitrary-adt)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)))
    (home-page
     "https://github.com/plow-technologies/hspec-golden-aeson#readme")
    (synopsis "Use tests to monitor changes in Aeson serialization")
    (description "Use tests to monitor changes in Aeson serialization")
    (license license:bsd-3)))

haskell-8.10-hspec-golden-aeson

(define-public haskell-8.10-hspec-junit-formatter
  (package
    (name "haskell-8.10-hspec-junit-formatter")
    (version "1.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-junit-formatter/hspec-junit-formatter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s5k3svkhzn0l2r39vvs50d8hfqljal04l2cx3c5ymnkjfi49mdv"))))
    (properties `((upstream-name . "hspec-junit-formatter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/freckle/hspec-junit-formatter#readme")
    (synopsis "A JUnit XML runner/formatter for hspec")
    (description
     "Allows hspec tests to write JUnit XML output for parsing in various tools.")
    (license license:expat)))

haskell-8.10-hspec-junit-formatter

(define-public haskell-8.10-hspec-wai
  (package
    (name "haskell-8.10-hspec-wai")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-wai/hspec-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fk23vrs5apjy11z47mply2kay3n193gnyrbb9fkpwvmxyhxlp0x"))))
    (properties `((upstream-name . "hspec-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Experimental Hspec support for testing WAI applications")
    (description "Experimental Hspec support for testing WAI applications")
    (license license:expat)))

haskell-8.10-hspec-wai

(define-public haskell-8.10-html-conduit
  (package
    (name "haskell-8.10-html-conduit")
    (version "1.3.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-conduit/html-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09bwrdam3y47kqllgg6w098ghqb8jb10dp4wxirsvx5ddpx9zpi6"))))
    (properties `((upstream-name . "html-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/xml")
    (synopsis "Parse HTML documents using xml-conduit datatypes.")
    (description
     "This package uses tagstream-conduit for its parser. It automatically balances mismatched tags, so that there shouldn't be any parse failures. It does not handle a full HTML document rendering, such as adding missing html and head tags. Note that, since version 1.3.1, it uses an inlined copy of tagstream-conduit with entity decoding bugfixes applied.")
    (license license:expat)))

haskell-8.10-html-conduit

(define-public haskell-8.10-hw-balancedparens
  (package
    (name "haskell-8.10-hw-balancedparens")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-generic-lens)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hw-bits)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-hw-excess)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hw-fingertree)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hw-int)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mmap)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-balancedparens#readme")
    (synopsis "Balanced parentheses")
    (description "Balanced parentheses.")
    (license license:bsd-3)))

haskell-8.10-hw-balancedparens

(define-public haskell-8.10-jose
  (package
    (name "haskell-8.10-jose")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jose/jose-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xs4r4znbgfc407q3zndhffk6l9m57wml29pcwyqywd5i3xl5pyb"))))
    (properties `((upstream-name . "jose") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demos")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-concise)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-monad-time)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-pem)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
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

haskell-8.10-jose

(define-public haskell-8.10-json-rpc
  (package
    (name "haskell-8.10-json-rpc")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-stm-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jprupp/json-rpc.git#readme")
    (synopsis "Fully-featured JSON-RPC 2.0 library")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/json-rpc#readme>")
    (license license:expat)))

haskell-8.10-json-rpc

(define-public haskell-8.10-junit-xml
  (package
    (name "haskell-8.10-junit-xml")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/jwoudenberg/junit-xml#readme")
    (synopsis "Producing JUnit-style XML test reports.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/junit-xml>.")
    (license license:bsd-3)))

haskell-8.10-junit-xml

(define-public haskell-8.10-jwt
  (package
    (name "haskell-8.10-jwt")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jwt/jwt-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "02nymdz8yrvq4vw41ah5qmb4rn01xf300d7vz18j4nif55viag4z"))))
    (properties `((upstream-name . "jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-th)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-x509-store)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://bitbucket.org/puffnfresh/haskell-jwt")
    (synopsis "JSON Web Token (JWT) decoding and encoding")
    (description
     "JSON Web Token (JWT) is a compact URL-safe means of representing claims to be transferred between two parties.

To get started, see the documentation for the \"Web.JWT\" module.")
    (license license:expat)))

haskell-8.10-jwt

(define-public haskell-8.10-lackey
  (package
    (name "haskell-8.10-lackey")
    (version "1.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lackey/lackey-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0m9mx71gg68mb7i7a1zhxvij196k4icq4wknznx33395k0dzki80"))))
    (properties `((upstream-name . "lackey") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-foreign)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tfausak/lackey#readme")
    (synopsis "Generate Ruby clients from Servant APIs.")
    (description "Lackey generates Ruby clients from Servant APIs.")
    (license license:expat)))

haskell-8.10-lackey

(define-public haskell-8.10-logstash
  (package
    (name "haskell-8.10-logstash")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-retry)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stm-chans)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unbounded-delays)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/logstash#readme")
    (synopsis "Logstash client library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/mbg/logstash#readme>")
    (license license:expat)))

haskell-8.10-logstash

(define-public haskell-8.10-lsp
  (package
    (name "haskell-8.10-lsp")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lsp/lsp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0ca8s84xlh9kmi1lx47d6z3c8c827q30spmbxi1nl37dn35ib4b6"))))
    (properties `((upstream-name . "lsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")
       #:cabal-revision
       ("1" "1r9yx42q8m1x4jm5vhhn72i7y4zcnzjapx7nvwngjagvk05cv1b9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-dependent-map)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lsp-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-rope-utf16-splay)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-sorted-list)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp")
    (synopsis "Haskell library for the Microsoft Language Server Protocol")
    (description "An implementation of the types, and basic message server to
allow language implementors to support the Language Server
Protocol for their specific language.

An example of this is for Haskell via the Haskell IDE
Engine, at https://github.com/haskell/haskell-ide-engine")
    (license license:expat)))

haskell-8.10-lsp

(define-public haskell-8.10-lsp-test
  (package
    (name "haskell-8.10-lsp-test")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lsp-test/lsp-test-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pa6cial43d6dgkabk3ak4jyfznia5bliww7r9126qahj9dxgpcr"))))
    (properties `((upstream-name . "lsp-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "099xwny88fayrxyfzcz76yx86ijxvr8nr04mg4l77pnvncchzpdc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-parse)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lsp-types)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-some)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp/blob/master/lsp-test/README.md")
    (synopsis "Functional test framework for LSP servers.")
    (description
     "A test framework for writing tests against
<https://microsoft.github.io/language-server-protocol/ Language Server Protocol servers>.
@@Language.LSP.Test@@ launches your server as a subprocess and allows you to simulate a session
down to the wire.
To see examples of it in action, check out <https://github.com/haskell/haskell-ide-engine haskell-ide-engine>,
<https://github.com/haskell/haskell-language-server haskell-language-server> and
<https://github.com/digital-asset/ghcide ghcide>.")
    (license license:bsd-3)))

haskell-8.10-lsp-test

(define-public haskell-8.10-machines-binary
  (package
    (name "haskell-8.10-machines-binary")
    (version "7.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines-binary/machines-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15zds0g91cn5kckkbfjl17dgi6jikv13c9gwr99fawmq056y29b8"))))
    (properties `((upstream-name . "machines-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-machines)))
    (home-page "http://github.com/aloiscochard/machines-binary")
    (synopsis "Binary utilities for the machines library")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-machines-binary

(define-public haskell-8.10-markdown
  (package
    (name "haskell-8.10-markdown")
    (version "0.1.17.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/markdown/markdown-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0aglxvgpp6f8gvlvkdx0d5vik552wjiv0xys8b1jlh7zdbwwghcq"))))
    (properties `((upstream-name . "markdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-xss-sanitize)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/markdown")
    (synopsis "Convert Markdown to HTML, with XSS protection")
    (description
     "This library leverages existing high-performance libraries (attoparsec, blaze-html, text, and conduit), and should integrate well with existing codebases.")
    (license license:bsd-3)))

haskell-8.10-markdown

(define-public haskell-8.10-medea
  (package
    (name "haskell-8.10-medea")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/medea/medea-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "019jfz29gz3d06b5yi7fygqa79lp6c6vbzxcb5ka7d8w0zv7w60v"))))
    (properties `((upstream-name . "medea") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "18yzwhmvxafxn0zq7pv8dna28qkpr87q35q0sw9907y1iqcixxfh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-algebraic-graphs)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-ghc)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-nonempty-containers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-smash)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-vector-instances)))
    (home-page "https://github.com/juspay/medea")
    (synopsis "A schema language for JSON.")
    (description
     "A reference implementation of a schema language, together with a conformance
suite and a specification.")
    (license license:expat)))

haskell-8.10-medea

(define-public haskell-8.10-mmark
  (package
    (name "haskell-8.10-mmark")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("3" "1ffa76pz544pa3s764lnc38rdmfccyn8z6zn1w76pqb01p0f9k9p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-email-validate)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-html-entity-map)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-lucid)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-modern-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parser-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-metrics)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/mmark-md/mmark")
    (synopsis "Strict markdown processor for writers")
    (description "Strict markdown processor for writers.")
    (license license:bsd-3)))

haskell-8.10-mmark

(define-public haskell-8.10-monad-logger-json
  (package
    (name "haskell-8.10-monad-logger-json")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/fpco/monad-logger-json")
    (synopsis "JSON-friendly Logging APIs")
    (description "Convienence functions for logging ToJSON with monad-logger")
    (license license:expat)))

haskell-8.10-monad-logger-json

(define-public haskell-8.10-monad-logger-prefix
  (package
    (name "haskell-8.10-monad-logger-prefix")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/parsonsmatt/monad-logger-prefix#readme")
    (synopsis "Add prefixes to your monad-logger output")
    (description
     "Add prefixes to your monad-logger output. See README for more info.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-monad-logger-prefix

(define-public haskell-8.10-mongoDB
  (package
    (name "haskell-8.10-mongoDB")
    (version "2.7.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mongoDB/mongoDB-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "186ck64vk4s9jligj6mq3qbpm1mb87m7zs8p3jbizpv0fcgnwq70"))))
    (properties `((upstream-name . "mongoDB") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-_old-network")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-bson)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cryptohash)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-dns)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hashtables)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-network-bsd)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-nonce)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-pureMD5)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-random-shuffle)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mongodb-haskell/mongodb")
    (synopsis "Driver (client) for MongoDB, a free, scalable, fast, document
DBMS")
    (description "This package lets you connect to MongoDB servers and
update/query their data. Please see the example in
Database.MongoDB and the tutorial from the homepage. For
information about MongoDB itself, see www.mongodb.org.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-mongoDB

(define-public haskell-8.10-mono-traversable-instances
  (package
    (name "haskell-8.10-mono-traversable-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-dlist-instances)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-vector-instances)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Extra typeclass instances for mono-traversable")
    (description
     "See docs and README at <http://www.stackage.org/package/mono-traversable-instance>")
    (license license:expat)))

haskell-8.10-mono-traversable-instances

(define-public haskell-8.10-mono-traversable-keys
  (package
    (name "haskell-8.10-mono-traversable-keys")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-keys)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-vector-instances)))
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

haskell-8.10-mono-traversable-keys

(define-public haskell-8.10-mustache
  (package
    (name "haskell-8.10-mustache")
    (version "2.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mustache/mustache-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pnvnqrm7sd1iglh298yl91mv69p3ra25s5xrlk73kb56albdbaq"))))
    (properties `((upstream-name . "mustache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ri2x5sdbn6x654va3crz99rb6n8d6basd8zf8kkrlrs24jizh94")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/JustusAdam/mustache")
    (synopsis "A mustache template parser library.")
    (description
     "Allows parsing and rendering template files with mustache markup. See the
mustache <http://mustache.github.io/mustache.5.html language reference>.

Implements the mustache spec version 1.1.3.

/Note/: Versions including and beyond 0.4 are compatible with ghc 7.8 again.")
    (license license:bsd-3)))

haskell-8.10-mustache

(define-public haskell-8.10-nqe
  (package
    (name "haskell-8.10-nqe")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-stm-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-unique)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/xenog/nqe#readme")
    (synopsis "Concurrency library in the style of Erlang/OTP")
    (description
     "Please see the README on GitHub at <https://github.com/jprupp/nqe#readme>")
    (license license:expat)))

haskell-8.10-nqe

(define-public haskell-8.10-nvim-hs-contrib
  (package
    (name "haskell-8.10-nvim-hs-contrib")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-messagepack)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-nvim-hs)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/neovimhaskell/nvim-hs-contrib")
    (synopsis "Haskell plugin backend for neovim")
    (description "Library for nvim-hs.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-nvim-hs-contrib

(define-public haskell-8.10-openapi3
  (package
    (name "haskell-8.10-openapi3")
    (version "3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openapi3/openapi3-" version
                    ".tar.gz"))
              (sha256
               (base32
                "011754qyxxw5mn06hdmxalvsiff7a4x4k2yb2r6ylzr6zhyz818z"))))
    (properties `((upstream-name . "openapi3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1p4vlia591sf94448qn1fqf6ibzp0z92x4xya5y31d6skffr3ryj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generics-sop)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-optics-th)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/biocad/openapi3")
    (synopsis "OpenAPI 3.0 data model")
    (description
     "This library is intended to be used for decoding and encoding OpenAPI 3.0 API
specifications as well as manipulating them.

The original OpenAPI 3.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-8.10-openapi3

(define-public haskell-8.10-persistent
  (package
    (name "haskell-8.10-persistent")
    (version "2.13.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistent/persistent-" version
                    ".tar.gz"))
              (sha256
               (base32
                "059y0wyd74rb0aa32b54vj9n0g5pz9nfcbx2h3iil2qbgjvzvw9w"))))
    (properties `((upstream-name . "persistent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "10ym5bs4ckyi3nz0gwk2i1ckh7zyza7yj0kqdblamkax9fnkhga1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-fast-logger)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-api-data)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lift-type)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-path-pieces)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/book/persistent")
    (synopsis "Type-safe, multi-backend data serialization.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/persistent>.")
    (license license:expat)))

haskell-8.10-persistent

(define-public haskell-8.10-postgresql-typed
  (package
    (name "haskell-8.10-postgresql-typed")
    (version "0.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-typed/postgresql-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0v38c5ai3plc1vlgz536a41yflz2d7nm9laks28lnqvxaqim27aw"))))
    (properties `((upstream-name . "postgresql-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fmd5" "-fbinary" "-ftext" "-fuuid" "-fscientific" "-faeson" "-fhdbc" "-ftls")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-HDBC)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-uuid)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-x509-store)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/dylex/postgresql-typed")
    (synopsis
     "PostgreSQL interface with compile-time SQL type checking, optional HDBC backend")
    (description
     "Automatically type-check SQL statements at compile time.
Uses Template Haskell and the raw PostgreSQL protocol to describe SQL statements at compile time and provide appropriate type marshalling for both parameters and results.
Allows not only syntax verification of your SQL but also full type safety between your SQL and Haskell.
Supports many built-in PostgreSQL types already, including arrays and ranges, and can be easily extended in user code to support any other types.

Also includes an optional HDBC backend that, since it uses the raw PostgreSQL protocol, may be more efficient than the normal libpq backend in some cases (though provides no more type safety than HDBC-postgresql when used without templates).

Originally based on Chris Forno's templatepg library.")
    (license license:bsd-3)))

haskell-8.10-postgresql-typed

(define-public haskell-8.10-qchas
  (package
    (name "haskell-8.10-qchas")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/ardeleanasm/qchas#readme")
    (synopsis "A library for implementing Quantum Algorithms")
    (description
     "A library useful for implementing Quantum Algorithms. It contains definitions of Quantum Gates, Qubits.")
    (license license:bsd-3)))

haskell-8.10-qchas

(define-public haskell-8.10-rainbox
  (package
    (name "haskell-8.10-rainbox")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-rainbow)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.github.com/massysett/rainbox")
    (synopsis "Two-dimensional box pretty printing, with colors")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-rainbox

(define-public haskell-8.10-reanimate-svg
  (package
    (name "haskell-8.10-reanimate-svg")
    (version "0.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reanimate-svg/reanimate-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h31r0lrslxqfayh06955p1kv35g42g3drmqp4miydk6zibyn091"))))
    (properties `((upstream-name . "reanimate-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1g8cqw8a4vy7pp9ic02d49564vd61px2kld1pin0la9f3vk5f296")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-double-conversion)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/reanimate/reanimate-svg#readme")
    (synopsis "SVG file loader and serializer")
    (description "reanimate-svg provides types representing a SVG document,
and allows to load and save it.

The types definition are aimed at rendering,
so they are rather comple. For simpler SVG document building,
look after `lucid-svg`.")
    (license license:bsd-3)))

haskell-8.10-reanimate-svg

(define-public haskell-8.10-rebase
  (package
    (name "haskell-8.10-rebase")
    (version "1.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rebase/rebase-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lvz4cx9bgny4s5az75clza90nb573vqr8c2ls0bmrsb7sx4p3jh"))))
    (properties `((upstream-name . "rebase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-groups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hashable-time)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-invariant)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-selective)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-vector-instances)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/rebase")
    (synopsis "A more progressive alternative to the \"base\" package")
    (description
     "This package is intended for those who are tired of keeping
long lists of dependencies to the same essential libraries in each package
as well as the endless imports of the same APIs all over again.
It also supports the modern tendencies in the language.

To solve those problems this package does the following:

* Reexport the original APIs under the \\\"Rebase\\\" namespace.

* Export all the possible non-conflicting symbols from the \\\"Rebase.Prelude\\\" module.

* Give priority to the modern practices in the conflicting cases.

The policy behind the package is only to reexport the non-ambiguous
and non-controversial APIs, which the community has obviously settled on.
The package is intended to rapidly evolve with the contribution from the community,
with the missing features being added with pull-requests.")
    (license license:expat)))

haskell-8.10-rebase

(define-public haskell-8.10-rio-orphans
  (package
    (name "haskell-8.10-rio-orphans")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rio-orphans/rio-orphans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vwc7ar9kiagvs5bywkh8x17kd02ra3zhd1mmsdwnl1p96bcshrw"))))
    (properties `((upstream-name . "rio-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-fast-logger)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-rio)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/commercialhaskell/rio#readme")
    (synopsis "Orphan instances for the RIO type in the rio package")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/rio-orphans>")
    (license license:expat)))

haskell-8.10-rio-orphans

(define-public haskell-8.10-safecopy
  (package
    (name "haskell-8.10-safecopy")
    (version "0.10.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/safecopy/safecopy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r2mf0p82gf8vnldx477b5ykrj1x7hyg13nqfn6gzb50japs6h3i"))))
    (properties `((upstream-name . "safecopy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1qwzj9nija3kw6ijxl5nhny7vclp7x31cml3hl9fpajj5v0lhh4j")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-generic-data)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-action)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acid-state/safecopy")
    (synopsis "Binary serialization with version control.")
    (description
     "An extension to Data.Serialize with built-in version control.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-safecopy

(define-public haskell-8.10-sandwich
  (package
    (name "haskell-8.10-sandwich")
    (version "0.1.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sandwich/sandwich-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07knl1kpbg85df08q07byjid26bkgk514pngkf58h9wy4y5l5il7"))))
    (properties `((upstream-name . "sandwich") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-brick)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-lifted-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-monad-logger)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-string-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vty)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://codedownio.github.io/sandwich")
    (synopsis "Yet another test framework for Haskell")
    (description
     "Please see the <https://codedownio.github.io/sandwich documentation>.")
    (license license:bsd-3)))

haskell-8.10-sandwich

(define-public haskell-8.10-sbp
  (package
    (name "haskell-8.10-sbp")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-basic-prelude)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-binary-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-lens-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
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

haskell-8.10-sbp

(define-public haskell-8.10-sdl2
  (package
    (name "haskell-8.10-sdl2")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-StateVar)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
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

haskell-8.10-sdl2

(define-public haskell-8.10-servant-elm
  (package
    (name "haskell-8.10-servant-elm")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-integration")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-elm-bridge)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-servant-foreign)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/mattjbray/servant-elm#readme")
    (synopsis
     "Automatically derive Elm functions to query servant webservices.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-servant-elm

(define-public haskell-8.10-sized
  (package
    (name "haskell-8.10-sized")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sized/sized-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f6ql0yk0qi2wkzifhhhfn5z3wzh10d57ak9wrb4dv8s6mx34yk7"))))
    (properties `((upstream-name . "sized") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "13v3dkfdnzg2y7pfkn2dnvczd9y40izlm30vcssn2a5b1v7vy3bz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-equational-reasoning)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-ghc-typelits-presburger)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-inspection-testing)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-subcategories)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-type-natural)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/sized")
    (synopsis "Sized sequence data-types")
    (description
     "A wrapper to make length-parametrized data-type from functorial data-types.")
    (license license:bsd-3)))

haskell-8.10-sized

(define-public haskell-8.10-skylighting-core
  (package
    (name "haskell-8.10-skylighting-core")
    (version "0.10.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-core/skylighting-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bskci0gng6nf324wna9ss4xbr1mwjkgk3mlfkr96r1m3wza5g3d"))))
    (properties `((upstream-name . "skylighting-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")
       #:cabal-revision
       ("1" "0k0y0i4zi3xhi4qwvjq8pzjvdsx2wwkqai2dclfxbin21i4034i6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.10-skylighting-core

(define-public haskell-8.10-smoothie
  (package
    (name "haskell-8.10-smoothie")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/phaazon/smoothie")
    (synopsis "Smooth curves via several interpolation modes")
    (description "This package exports several splines you can use
to interpolate points in between. It includes instances for
<https://hackage.haskell.org/package/aeson aeson> so that
you can quickly store the splines and restore them.")
    (license license:bsd-3)))

haskell-8.10-smoothie

(define-public haskell-8.10-spatial-math
  (package
    (name "haskell-8.10-spatial-math")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-TypeCompose)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)))
    (home-page "https://hackage.haskell.org/package/spatial-math")
    (synopsis
     "3d math including quaternions/euler angles/dcms and utility functions")
    (description
     "This is a port of my 'mathlib' C library: `https://github.com/ghorn/mathlib`")
    (license license:bsd-3)))

haskell-8.10-spatial-math

(define-public haskell-8.10-sqlcli-odbc
  (package
    (name "haskell-8.10-sqlcli-odbc")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlcli-odbc/sqlcli-odbc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rfhdaa0wmvc78nbjhi93p9sv66xa6rjr79yyhlkqi1d335b8vb5"))))
    (properties `((upstream-name . "sqlcli-odbc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-logging)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-sqlcli)))
    (propagated-inputs (list (@ (gnu packages databases) unixodbc)))
    (home-page "https://hub.darcs.net/mihaigiurgeanu/sqlcli-odbc")
    (synopsis "ODBC specific definitions to be used by SQL CLI clients.")
    (description
     "Access databases through ODBC using SQLCLI compatible functions.
The package adds ODBC specific definition to the sqlcli package.")
    (license license:bsd-3)))

haskell-8.10-sqlcli-odbc

(define-public haskell-8.10-stache
  (package
    (name "haskell-8.10-stache")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/stache/stache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gfmr9gcq9zm7ljp2nqmc41lpig11d19xsqzazr2mvm5ddsi69cr"))))
    (properties `((upstream-name . "stache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "0akyrm2zf2aq73fqi07fnkns3waxqciyzawv0nmr8yhkdaqj6plj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-gitrev)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (home-page "https://github.com/stackbuilders/stache")
    (synopsis "Mustache templates for Haskell")
    (description "Mustache templates for Haskell.")
    (license license:bsd-3)))

haskell-8.10-stache

(define-public haskell-8.10-svg-tree
  (package
    (name "haskell-8.10-svg-tree")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-linear)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml)))
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

haskell-8.10-svg-tree

(define-public haskell-8.10-swagger2
  (package
    (name "haskell-8.10-swagger2")
    (version "2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/swagger2/swagger2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vkhikxf1gpspc9qjgnvz3glb01bd54bnc5kraac7dyn8cxzwak8"))))
    (properties `((upstream-name . "swagger2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1gdq1kiccn6qv05fnkb2dzsnsds2v3gri29gd8l1x9vx74mpbh0j")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generics-sop)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-optics-th)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/GetShopTV/swagger2")
    (synopsis "Swagger 2.0 data model")
    (description
     "This library is intended to be used for decoding and encoding Swagger 2.0 API
specifications as well as manipulating them.

The original Swagger 2.0 specification is available at http://swagger.io/specification/.")
    (license license:bsd-3)))

haskell-8.10-swagger2

(define-public haskell-8.10-tasty-wai
  (package
    (name "haskell-8.10-tasty-wai")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-wai/tasty-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1bnq2mbgv1ksn9sq33dq1q91pzndy7gn61mlnkybk89k0bsw5i7y"))))
    (properties `((upstream-name . "tasty-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1bjmzxnrypv1nqhc37rwwcgilnrrjm8scwnb4ca6z99bldi95b27")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/tasty-wai")
    (synopsis "Test 'wai' endpoints via Test.Tasty")
    (description
     "Helper functions and runners for testing wai endpoints using the Tasty testing infrastructure.")
    (license license:bsd-3)))

haskell-8.10-tasty-wai

(define-public haskell-8.10-tls-session-manager
  (package
    (name "haskell-8.10-tls-session-manager")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tls-session-manager/tls-session-manager-"
                    version ".tar.gz"))
              (sha256
               (base32
                "134kb5nz668f4xrr5g98g7fc1bwb3ri6q433a1i6asjkniwpy85s"))))
    (properties `((upstream-name . "tls-session-manager") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-auto-update)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-basement)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-psqueues)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tls-session-manager")
    (synopsis "In-memory TLS session manager")
    (description
     "TLS session manager with limitation, automatic pruning, energy saving and replay resistance")
    (license license:bsd-3)))

haskell-8.10-tls-session-manager

(define-public haskell-8.10-ua-parser
  (package
    (name "haskell-8.10-ua-parser")
    (version "0.7.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ua-parser/ua-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sakvmmf6p2ca0dbkwqdj5cv93gp78srw0zc4f1skcgndkmxwk6l"))))
    (properties `((upstream-name . "ua-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-pcre-light)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ua-parser")
    (synopsis
     "A library for parsing User-Agent strings, official Haskell port of ua-parser")
    (description
     "Please refer to the git/github README on the project for example usage.")
    (license license:bsd-3)))

haskell-8.10-ua-parser

(define-public haskell-8.10-wai-saml2
  (package
    (name "haskell-8.10-wai-saml2")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-saml2/wai-saml2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hd408fs4w0lpqg0shnrwpx98fh6idzk8la3gn8xghhml189xgwl"))))
    (properties `((upstream-name . "wai-saml2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-c14n)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-wai-extra)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-x509-store)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xml) libxml2)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mbg/wai-saml2#readme")
    (synopsis "SAML2 assertion validation as WAI middleware")
    (description
     "A Haskell library which implements SAML2 assertion validation as WAI middleware")
    (license license:expat)))

haskell-8.10-wai-saml2

(define-public haskell-8.10-warp
  (package
    (name "haskell-8.10-warp")
    (version "3.3.20")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/warp/warp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0jkgnb2pzl72q1y5yp6j8ijmaqhnj01b58dm4xs09f692yg4lxlj"))))
    (properties `((upstream-name . "warp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-network-bytestring" "-fallow-sendfilefd" "-f-warp-debug" "-fx509")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-auto-update)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-bsb-http-chunked)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-http-date)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-http2)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-iproute)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-simple-sendfile)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-time-manager)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/yesodweb/wai")
    (synopsis "A fast, light-weight web server for WAI applications.")
    (description "HTTP\\/1.0, HTTP\\/1.1 and HTTP\\/2 are supported.
For HTTP\\/2,  Warp supports direct and ALPN (in TLS)
but not upgrade.
API docs and the README are available at
<http://www.stackage.org/package/warp>.")
    (license license:expat)))

haskell-8.10-warp

(define-public haskell-8.10-xlsx
  (package
    (name "haskell-8.10-xlsx")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xlsx/xlsx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xmz9qpqyz2gwlrjsy2m79s4xswb6lz7fbvybd4awg5vy0y6pl41"))))
    (properties `((upstream-name . "xlsx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-microlens")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-binary-search)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-groom)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-xeno)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-zip-archive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.10-xlsx

(define-public haskell-8.10-xml-conduit-writer
  (package
    (name "haskell-8.10-xml-conduit-writer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.10-xml-conduit-writer

(define-public haskell-8.10-xml-hamlet
  (package
    (name "haskell-8.10-xml-hamlet")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-hamlet/xml-hamlet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "109fck1626d74s00ssjffg837584wf7dxpswkil37wqqfy94mw2z"))))
    (properties `((upstream-name . "xml-hamlet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://www.yesodweb.com/")
    (synopsis "Hamlet-style quasiquoter for XML content")
    (description "Hamlet-style quasiquoter for XML content")
    (license license:bsd-3)))

haskell-8.10-xml-hamlet

(define-public haskell-8.10-xml-indexed-cursor
  (package
    (name "haskell-8.10-xml-indexed-cursor")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cdepillabout/xml-indexed-cursor")
    (synopsis
     "Indexed XML cursors similar to 'Text.XML.Cursor' from xml-conduit")
    (description
     "Please see <https://github.com/cdepillabout/xml-indexed-cursor#readme README.md>.")
    (license license:bsd-3)))

haskell-8.10-xml-indexed-cursor

(define-public haskell-8.10-xml-lens
  (package
    (name "haskell-8.10-xml-lens")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-lens/xml-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1i3b22sz7fkh9vjlfpwzz6fg57br8xq6q7zz76f66h6hymc284dz"))))
    (properties `((upstream-name . "xml-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0is48y2k6lsdwd2cqwvhxfjs7q5qccis8vcmw7cws18cb7vjks1x")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fumieval/xml-lens")
    (synopsis "Lenses, traversals, and prisms for xml-conduit")
    (description
     "This package provides DOM selectors based on lenses and prisms. See README.md for examples")
    (license license:bsd-3)))

haskell-8.10-xml-lens

(define-public haskell-8.10-yamlparse-applicative
  (package
    (name "haskell-8.10-yamlparse-applicative")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yamlparse-applicative/yamlparse-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b4qz5qy7349bx7kkz9nf2p13hr8a2xyirsw92y4vigpjd16fvs4"))))
    (properties `((upstream-name . "yamlparse-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-safe-coloured-text)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-validity-text)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage018)
                     haskell-8.10-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/yamlparse-applicative#readme")
    (synopsis "Declaritive configuration parsing with free docs")
    (description "See https://github.com/NorfairKing/yamlparse-applicative")
    (license license:expat)))

haskell-8.10-yamlparse-applicative

