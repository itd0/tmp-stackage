;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage014)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.4-ForestStructures
  (package
    (name "haskell-9.4-ForestStructures")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ForestStructures/ForestStructures-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hhmcc0cpjbixqjgl35gv9dpymamdfb4vhhd5hard0qpg1xllnvw"))))
    (properties `((upstream-name . "ForestStructures") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fgl)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/ForestStructures")
    (synopsis "Tree- and forest structures")
    (description
     "This library provides both static and dynamic tree and forest
structures. Once a tree structure is static, it can be mappend
onto a linearized representation, which is beneficial for
algorithms that do not modify the internal tree structure, but
need fast @@O(1)@@ access to individual nodes, children, and
siblings.")
    (license license:bsd-3)))

haskell-9.4-ForestStructures

(define-public haskell-9.4-HandsomeSoup
  (package
    (name "haskell-9.4-HandsomeSoup")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-HTTP)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-hxt)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hxt-http)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/egonSchiele/HandsomeSoup")
    (synopsis "Work with HTML more easily in HXT")
    (description
     "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/HandsomeSoup")
    (license license:bsd-3)))

haskell-9.4-HandsomeSoup

(define-public haskell-9.4-Interpolation
  (package
    (name "haskell-9.4-Interpolation")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Interpolation/Interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "046bx18mlgicp26391gvgzbi0wfwl9rddam3jdfz4lpxva4q9xhv"))))
    (properties `((upstream-name . "Interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
    (home-page "https://hackage.haskell.org/package/Interpolation")
    (synopsis "Multiline strings, interpolation and templating.")
    (description "This package adds quasiquoter for multiline
strings, interpolation and simple templating.
It can handle repetition templates which makes it
Handy for outputting larger structures, such as
latex tables or gnuplot files.

0.3.0 - Instead of Strings, the `str` quasiquoter produces
values of type `(Monoid a, IsString a) => a`, making
it compatible many other libraries, such as
`Data.Text` and `Blaze.Builder`.

0.2.6 - A handy quote for printing

0.2.5.1 - version bump for ghc-7.0.1")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-Interpolation

(define-public haskell-9.4-QuasiText
  (package
    (name "haskell-9.4-QuasiText")
    (version "0.1.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/QuasiText/QuasiText-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06giw0q5lynx05c4h45zwnlcifg91w291h3gwrg68qsjw9lx40g8"))))
    (properties `((upstream-name . "QuasiText") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)))
    (home-page "https://github.com/mikeplus64/QuasiText")
    (synopsis "A QuasiQuoter for Text.")
    (description "A QuasiQuoter for interpolating values into Text strings.")
    (license license:bsd-3)))

haskell-9.4-QuasiText

(define-public haskell-9.4-Spock-api
  (package
    (name "haskell-9.4-Spock-api")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Spock-api/Spock-api-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wqbq8vgq5sifybw32prkmcjwm2dqz4z3sv8ci4s603a2sril7h7"))))
    (properties `((upstream-name . "Spock-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hvect)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-reroute)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.spock.li")
    (synopsis "Another Haskell web framework for rapid development")
    (description "API definition DSL for Spock web framework")
    (license license:bsd-3)))

haskell-9.4-Spock-api

(define-public haskell-9.4-aeson-casing
  (package
    (name "haskell-9.4-aeson-casing")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-casing/aeson-casing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cwjy46ac7vzdvkw6cm5xcbcljf2a4lcvc2xbsh8iwd3fdb0f8rp"))))
    (properties `((upstream-name . "aeson-casing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/aeson-casing")
    (synopsis "Tools to change the formatting of field names in Aeson
instances.")
    (description "Tools to change the formatting of field names in Aeson
instances. This includes CamelCasing, Pascal Casing and
Snake Casing.")
    (license license:expat)))

haskell-9.4-aeson-casing

(define-public haskell-9.4-aeson-qq
  (package
    (name "haskell-9.4-aeson-qq")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-qq/aeson-qq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dpklq2xdhrkg1rdc7zfdjnzm6c3qxx2i1xskrqdxpqi84ffnlyh"))))
    (properties `((upstream-name . "aeson-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sol/aeson-qq#readme")
    (synopsis "JSON quasiquoter for Haskell")
    (description "@@aeson-qq@@ provides a JSON quasiquoter for Haskell.

This package exposes the function `aesonQQ` that compile-time
converts a string representation of a JSON value into a
`Data.Aeson.Value`.  `aesonQQ` has the signature

>aesonQQ :: QuasiQuoter

Consult the @@README@@ for documentation:
<https://github.com/sol/aeson-qq#readme>")
    (license license:expat)))

haskell-9.4-aeson-qq

(define-public haskell-9.4-agda2lagda
  (package
    (name "haskell-9.4-agda2lagda")
    (version "0.2023.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/agda2lagda/agda2lagda-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0arcap9vpa6yfj7mhdsljrkr0581d3jfnkxr1d8fb35mdawsiikl"))))
    (properties `((upstream-name . "agda2lagda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-agda2lagda-notests)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-goldplate)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andreasabel/agda2lagda")
    (synopsis "Translate .agda files into .lagda.tex files.")
    (description "Simple command line tool to convert plain Agda
or Haskell files into literate files.  Line comments
are interpreted as text, the rest as code blocks.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-agda2lagda

(define-public haskell-9.4-alex-meta
  (package
    (name "haskell-9.4-alex-meta")
    (version "0.3.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alex-meta/alex-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lbralcid373p25m4qhrhrjak87p8wp4as3304sj6ba6xka89q3v"))))
    (properties `((upstream-name . "alex-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0b9p2gndna2mk85pywilqwn3zm4yyn9s9ss6p3rlaax70218mlgg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/alex-meta")
    (synopsis "Quasi-quoter for Alex lexers")
    (description
     "A Template-Haskell based version of the Alex lexer generator. It is used by BNFC-meta to generate lexers and currently this is the only feature known to be working.")
    (license license:bsd-3)))

haskell-9.4-alex-meta

(define-public haskell-9.4-alternators
  (package
    (name "haskell-9.4-alternators")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alternators/alternators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ffk7xhx7n7h5mhb43ss6kprm9mzc0jzdnagz5wdsgqr8a5mnfa4"))))
    (properties `((upstream-name . "alternators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-newtype-generics)))
    (home-page "https://github.com/louispan/alternators#readme")
    (synopsis "Handy functions when using transformers.")
    (description
     "Useful monads built on top of transformers. Please see README.md")
    (license license:bsd-3)))

haskell-9.4-alternators

(define-public haskell-9.4-amqp
  (package
    (name "haskell-9.4-amqp")
    (version "0.22.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/amqp/amqp-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z1w35ar0bswbjzgana52nh4ilxbidnfkvli29w2zr7cak9dgzg1"))))
    (properties `((upstream-name . "amqp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-xml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hreinhardt/amqp")
    (synopsis "Client library for AMQP servers (currently only RabbitMQ)")
    (description "Client library for AMQP servers (currently only RabbitMQ)")
    (license license:bsd-3)))

haskell-9.4-amqp

(define-public haskell-9.4-api-field-json-th
  (package
    (name "haskell-9.4-api-field-json-th")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/api-field-json-th/api-field-json-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "097pn19247g73rw0si33m5l1w797s9759ma3ki9h90dwd4w9rm5q"))))
    (properties `((upstream-name . "api-field-json-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nakaji-dayo/api-field-json-th")
    (synopsis "option of aeson's deriveJSON ")
    (description "Utils for using aeson's deriveJSON with lens's makeFields")
    (license license:bsd-3)))

haskell-9.4-api-field-json-th

(define-public haskell-9.4-ascii-th
  (package
    (name "haskell-9.4-ascii-th")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-th/ascii-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07v6795rfwb8h4x31kc7vdmwg9z23jf4418dcv612c27dqhx4hbg"))))
    (properties `((upstream-name . "ascii-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1r6z6brkfahs9zifjhr7bpqblkiajcjknkgx2i57jrn5s3b97phk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-ascii-case)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-ascii-caseless)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ascii-char)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-ascii-superset)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/typeclasses/ascii-th")
    (synopsis "Template Haskell support for ASCII")
    (description "This package defines Template Haskell support for ASCII,
including quasi-quoters for expressing ASCII strings.")
    (license license:asl2.0)))

haskell-9.4-ascii-th

(define-public haskell-9.4-base64-bytestring-type
  (package
    (name "haskell-9.4-base64-bytestring-type")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-bytestring-type/base64-bytestring-type-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03kq4rjj6by02rf3hg815jfdqpdk0xygm5f46r2pn8mb99yd01zn"))))
    (properties `((upstream-name . "base64-bytestring-type") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcereal" "-fserialise" "-fhttp-api-data")
       #:cabal-revision
       ("15" "0yka3aazfd5jj0dqh89cpjc8sgx3yhiiqfhrpb9z5p4zvbyvym6g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-serialise)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/base64-bytestring-type#readme")
    (synopsis "A newtype around ByteString, for base64 encoding")
    (description "A newtype around ByteString, for base64 encoding.
Strict and lazy, normal and url alphabet variants.")
    (license license:bsd-3)))

haskell-9.4-base64-bytestring-type

(define-public haskell-9.4-battleship-combinatorics
  (package
    (name "haskell-9.4-battleship-combinatorics")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/battleship-combinatorics/battleship-combinatorics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pr1vcq69ndkln5jd6kxd0gn8jvc8n7aiqanxsrqnjpx4kkixph4"))))
    (properties `((upstream-name . "battleship-combinatorics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-combinatorial)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-empty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pooled-io)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prelude-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-set-cover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-storable-record)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-storablevector)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/battleship-combinatorics/")
    (synopsis "Compute number of possible arrangements in the battleship game")
    (description
     "Compute number of possible arrangements in the battleship game
with different methods.

<https://en.wikipedia.org/wiki/Battleship_(game)>")
    (license license:bsd-3)))

haskell-9.4-battleship-combinatorics

(define-public haskell-9.4-bimaps
  (package
    (name "haskell-9.4-bimaps")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bimaps/bimaps-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "084mdn650bghq3lxpckiym28jcmzyj1r3hnqjl5ly1r0arjdsx4p"))))
    (properties `((upstream-name . "bimaps") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-cereal-vector)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-storable-tuple)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/choener/bimaps")
    (synopsis "bijections with multiple implementations.")
    (description "Bijections between sets of values.")
    (license license:bsd-3)))

haskell-9.4-bimaps

(define-public haskell-9.4-boundingboxes
  (package
    (name "haskell-9.4-boundingboxes")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boundingboxes/boundingboxes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r3mffqxqadn8qklq3kr0ggirkficfj8ic1fxgki2zrc5jm4f2g8"))))
    (properties `((upstream-name . "boundingboxes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qz1bnci5bhb8zqc2dw19sa0k9i57fyhhdh78s3yllp3aijdc3n6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (home-page "https://github.com/fumieval/boundingboxes")
    (synopsis "A generic boundingbox for an arbitrary vector")
    (description "")
    (license license:bsd-3)))

haskell-9.4-boundingboxes

(define-public haskell-9.4-bson-lens
  (package
    (name "haskell-9.4-bson-lens")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bson-lens/bson-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q5ixrfgybf80q0x2p80qjy1kqarm2129hmzzqgcpn7jvqbv8fyp"))))
    (properties `((upstream-name . "bson-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-bson)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (home-page "https://github.com/jb55/bson-lens")
    (synopsis "BSON lenses")
    (description "Lenses for Data.Bson")
    (license license:expat)))

haskell-9.4-bson-lens

(define-public haskell-9.4-byteslice
  (package
    (name "haskell-9.4-byteslice")
    (version "0.2.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/byteslice/byteslice-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rqlpqcnyfwl2m4jy8k7n062drdwpvd3j622f4z4fxyhd84dxv5y"))))
    (properties `((upstream-name . "byteslice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-favoid-rawmemchr")
       #:cabal-revision
       ("1" "1gcc560gsyf87nvja7cdh6wsp631lv02qhci6r4fcmn2wasqx3mz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-primitive-addr)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-run-st)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tuples)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/byteslice")
    (synopsis "Slicing managed and unmanaged memory")
    (description
     "This library provides types that allow the user to talk about a slice of
a ByteArray or a MutableByteArray. It also offers UnmanagedBytes, which
is kind of like a slice into unmanaged memory. However, it is just an
address and a length.")
    (license license:bsd-3)))

haskell-9.4-byteslice

(define-public haskell-9.4-cacophony
  (package
    (name "haskell-9.4-cacophony")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cacophony/cacophony-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1w9v04mdyzvwndqfb8my9a82b51avgwfnl6g7w89xj37ax9ariaj"))))
    (properties `((upstream-name . "cacophony") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-tools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-coroutine)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/centromere/cacophony#readme")
    (synopsis "A library implementing the Noise protocol.")
    (description
     "This library implements the <https://noiseprotocol.org Noise> protocol.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-cacophony

(define-public haskell-9.4-columnar
  (package
    (name "haskell-9.4-columnar")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/columnar/columnar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qf5fbd9cwc22npww4qsjaj7rxdy2r3rjm19w23a9shqvgc2l6av"))))
    (properties `((upstream-name . "columnar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-enum-text)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-fmt)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-possibly)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdornan/columnar#readme")
    (synopsis "A CSV toolkit based on cassava and enum-text")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/columnar#readme>")
    (license license:bsd-3)))

haskell-9.4-columnar

(define-public haskell-9.4-commonmark-pandoc
  (package
    (name "haskell-9.4-commonmark-pandoc")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commonmark-pandoc/commonmark-pandoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dpi8zvjshab96w56qfqcys9h09f46lld8sc9q4xzb0y1p6lwmap"))))
    (properties `((upstream-name . "commonmark-pandoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-commonmark)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-commonmark-extensions)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pandoc-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/commonmark-hs")
    (synopsis "Bridge between commonmark and pandoc AST.")
    (description "This library provides typeclasses for rendering
commonmark to Pandoc types.")
    (license license:bsd-3)))

haskell-9.4-commonmark-pandoc

(define-public haskell-9.4-compiler-warnings
  (package
    (name "haskell-9.4-compiler-warnings")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compiler-warnings/compiler-warnings-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qswbwi2i8xqv61gjnx77w3j53ybyblsdyk974bb2qad3dzcbx4c"))))
    (properties `((upstream-name . "compiler-warnings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yi-editor/compiler-warnings#readme")
    (synopsis "Parser for common compiler warning formats")
    (description "")
    (license license:bsd-2)))

haskell-9.4-compiler-warnings

(define-public haskell-9.4-componentm
  (package
    (name "haskell-9.4-componentm")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/componentm/componentm-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19xnav3xiw5v8sdmw6a90wdhxxkjlkvpkwrf0pjsxlisgn93vqpg"))))
    (properties `((upstream-name . "componentm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-teardown)))
    (home-page "https://github.com/roman/Haskell-componentm#readme")
    (synopsis "Monad for allocation and cleanup of application resources")
    (description "This library allows you to allocate resources with
clean up strategies when initializing your application.
It then provides a Monadic interface to compose multiple
resources without having to deal with cleanup operations
explicitely.")
    (license license:expat)))

haskell-9.4-componentm

(define-public haskell-9.4-composable-associations
  (package
    (name "haskell-9.4-composable-associations")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composable-associations/composable-associations-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03l056yb6k8x5xrfdszsn4w2739zyiqzrl6q3ci19dg1gsy106lx"))))
    (properties `((upstream-name . "composable-associations") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/SamProtas/composable-associations#readme")
    (synopsis
     "Types and helpers for composing types into a single larger key-value type.")
    (description
     "A library providing generic types and helpers for composing types together into a a single key-value type.

This is useful when a normalized data model has a denormalized serialization format. Using this libraries types and
functions you build compose your data into the denormalized key-value format needed for serialization. Other
libraries provide concrete implementations for a given serialization format.")
    (license license:bsd-3)))

haskell-9.4-composable-associations

(define-public haskell-9.4-concise
  (package
    (name "haskell-9.4-concise")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/concise/concise-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "09crgc6gjfidlad6263253xx1di6wfhc9awhira21s0z7rddy9sw"))))
    (properties `((upstream-name . "concise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/frasertweedale/hs-concise")
    (synopsis "Utilities for Control.Lens.Cons")
    (description
     "concise provides a handful of functions to extend what you can
do with Control.Lens.Cons.")
    (license license:bsd-3)))

haskell-9.4-concise

(define-public haskell-9.4-core-telemetry
  (package
    (name "haskell-9.4-core-telemetry")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-core-data)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-core-program)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-core-text)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-http-streams)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-network-info)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
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

haskell-9.4-core-telemetry

(define-public haskell-9.4-data-msgpack
  (package
    (name "haskell-9.4-data-msgpack")
    (version "0.0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-msgpack/data-msgpack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x2qgipyjb5h5n1bx429rwdaamw4xdm7gwj08vlw6n6sycqwnq04"))))
    (properties `((upstream-name . "data-msgpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-data-msgpack-types)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-groom)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-9.4-data-msgpack

(define-public haskell-9.4-debian
  (package
    (name "haskell-9.4-debian")
    (version "4.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/debian/debian-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11510xb7a9nlvaygrmwbx9imagj8517iz2am6jv88934m0l5iy1n"))))
    (properties `((upstream-name . "debian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-ListLike)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-SHA)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-bz2)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hostname)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-process-extras)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-pureMD5)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-regex-compat)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/clinty/debian-haskell")
    (synopsis "Modules for working with the Debian package system")
    (description
     "This library includes modules covering some basic data types defined by
the Debian policy manual - version numbers, control file syntax, etc.")
    (license license:bsd-3)))

haskell-9.4-debian

(define-public haskell-9.4-di
  (package
    (name "haskell-9.4-di")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di/di-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "13d503xhmnj2br9m4r4xx58hd2p8jsj8hxf9b4k4451p31kbzs54"))))
    (properties `((upstream-name . "di") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-df1)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-di-core)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-di-df1)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-di-handle)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-di-monad)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging using di, mtl and df1.")
    (description
     "Typeful hierarchical structured logging using di, mtl and df1.

This is meta-package bringing in together things from:

* [di-core](https://hackage.haskell.org/package/di-core)

* [di-monad](https://hackage.haskell.org/package/di-monad)

* [di-handle](https://hackage.haskell.org/package/di-handle)

* [di-df1](https://hackage.haskell.org/package/di-df1)

See the \"Di\" module for more documentation.")
    (license license:bsd-3)))

haskell-9.4-di

(define-public haskell-9.4-ersatz
  (package
    (name "haskell-9.4-ersatz")
    (version "0.4.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ersatz/ersatz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ph2ayw4vb4rrgfmm8dhwr18172igx2sczjhv2vf3b6vd5r0z1hy"))))
    (properties `((upstream-name . "ersatz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexamples")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages maths) minisat)))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-streams)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://github.com/ekmett/ersatz")
    (synopsis
     "A monad for expressing SAT or QSAT problems using observable sharing.")
    (description
     "A monad for expressing SAT or QSAT problems using observable sharing.

For example, we can express a full-adder with:

> full_adder :: Bit -> Bit -> Bit -> (Bit, Bit)
> full_adder a b cin = (s2, c1 || c2)
>   where (s1,c1) = half_adder a b
>         (s2,c2) = half_adder s1 cin

> half_adder :: Bit -> Bit -> (Bit, Bit)
> half_adder a b = (a `xor` b, a && b)

/Longer Examples/

Included are a couple of examples included with the distribution.
Neither are as fast as a dedicated solver for their respective
domains, but they showcase how you can solve real world problems
involving 10s or 100s of thousands of variables and constraints
with `ersatz`.

@@ersatz-sudoku@@

> % time ersatz-sudoku
> Problem:
> ┌───────┬───────┬───────┐
> │ 5 3   │   7   │       │
> │ 6     │ 1 9 5 │       │
> │   9 8 │       │   6   │
> ├───────┼───────┼───────┤
> │ 8     │   6   │     3 │
> │ 4     │ 8   3 │     1 │
> │ 7     │   2   │     6 │
> ├───────┼───────┼───────┤
> │   6   │       │ 2 8   │
> │       │ 4 1 9 │     5 │
> │       │   8   │   7 9 │
> └───────┴───────┴───────┘
> Solution:
> ┌───────┬───────┬───────┐
> │ 5 3 4 │ 6 7 8 │ 9 1 2 │
> │ 6 7 2 │ 1 9 5 │ 3 4 8 │
> │ 1 9 8 │ 3 4 2 │ 5 6 7 │
> ├───────┼───────┼───────┤
> │ 8 5 9 │ 7 6 1 │ 4 2 3 │
> │ 4 2 6 │ 8 5 3 │ 7 9 1 │
> │ 7 1 3 │ 9 2 4 │ 8 5 6 │
> ├───────┼───────┼───────┤
> │ 9 6 1 │ 5 3 7 │ 2 8 4 │
> │ 2 8 7 │ 4 1 9 │ 6 3 5 │
> │ 3 4 5 │ 2 8 6 │ 1 7 9 │
> └───────┴───────┴───────┘
> ersatz-sudoku  1,13s user 0,04s system 99% cpu 1,179 total

@@ersatz-regexp-grid@@

This solves the \\\"regular crossword puzzle\\\" (<https://github.com/ekmett/ersatz/raw/master/notes/grid.pdf grid.pdf>) from the 2013 MIT mystery hunt.

> % time ersatz-regexp-grid

\"SPOILER\"

> ersatz-regexp-grid  2,45s user 0,05s system 99% cpu 2,502 total")
    (license license:bsd-3)))

haskell-9.4-ersatz

(define-public haskell-9.4-extended-reals
  (package
    (name "haskell-9.4-extended-reals")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extended-reals/extended-reals-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19df7zlm8kisihmnpg3ni5qg4p0vkilsny0ngch0b8b0pr56cb0c"))))
    (properties `((upstream-name . "extended-reals") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07qsnn05q9n2l4jh7agql44l2z7rqnwdcp9bssri4chs0jvk15rg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/msakai/extended-reals/")
    (synopsis "Extension of real numbers with positive/negative infinities")
    (description
     "Extension of real numbers with positive/negative infinities (±∞).
It is useful for describing various limiting behaviors in mathematics.")
    (license license:bsd-3)))

haskell-9.4-extended-reals

(define-public haskell-9.4-extensible
  (package
    (name "haskell-9.4-extensible")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/extensible/extensible-" version
                    ".tar.gz"))
              (sha256
               (base32
                "06zmc71r4cqglkv3av38djbkakvw9zxc3901xi2h65fwxn4npvnc"))))
    (properties `((upstream-name . "extensible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-barbies" "-fcassava" "-fislabel")
       #:cabal-revision
       ("1" "1k8z4dnwkjisba6w5qjxyxvh7ibp6nvl82d6l8apjh7hriapwfx9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-StateVar)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-incremental)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-membership)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/extensible")
    (synopsis "Extensible, efficient, optics-friendly data types and effects")
    (description
     "This package provides a powerful framework to combine and manipulate various types of structures.

See also <https://www.schoolofhaskell.com/user/fumieval/extensible School of Haskell> for tutorials.")
    (license license:bsd-3)))

haskell-9.4-extensible

(define-public haskell-9.4-folds
  (package
    (name "haskell-9.4-folds")
    (version "0.7.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/folds/folds-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11278546mq05rhyjfmhg0iasqjsn898l44dhp5qgaw1zwzywir2i"))))
    (properties `((upstream-name . "folds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimize")
       #:cabal-revision
       ("2" "13agcwgdwbs4kclgmrdqlj3m0bndad98wznk363y54psgqqrl9cx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-data-reify)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-pointed)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "http://github.com/ekmett/folds")
    (synopsis "Beautiful Folding")
    (description
     "This package is a playground full of comonadic folds.

This style of fold is documented in <https://www.schoolofhaskell.com/user/edwardk/cellular-automata/part-2 \"Cellular Automata, Part II: PNGs and Moore\">

This package can be seen as what happens if you chase Max Rabkin's <http://squing.blogspot.com/2008/11/beautiful-folding.html \"Beautiful Folding\"> to its logical conclusion.

More information on this approach can be found in the <http://conal.net/blog/posts/another-lovely-example-of-type-class-morphisms \"Another lovely example of type class morphisms\"> and <http://conal.net/blog/posts/more-beautiful-fold-zipping \"More beautiful fold zipping\"> posts by Conal Elliott, as well as in Gabriel Gonzales' <http://www.haskellforall.com/2013/08/composable-streaming-folds.html \"Composable Streaming Folds\">")
    (license license:bsd-3)))

haskell-9.4-folds

(define-public haskell-9.4-ftp-client
  (package
    (name "haskell-9.4-ftp-client")
    (version "0.5.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ftp-client/ftp-client-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0c2xn2q24imrfgsx4zxzi24ciwkrly6n47lc5k5406j5b4znn5lf"))))
    (properties `((upstream-name . "ftp-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1a7xya5c89lj4s73bd0cgr53id53xz4fnqzrizdibb6a90ml7g9r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mr/ftp-client")
    (synopsis "Transfer files with FTP and FTPS")
    (description
     "ftp-client is a library for communicating with an FTP server. It works over both a clear channel or TLS.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-ftp-client

(define-public haskell-9.4-fuzzy-dates
  (package
    (name "haskell-9.4-fuzzy-dates")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzy-dates/fuzzy-dates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12ga6d4kp6mk6cg781ibaxxmpq7kfh8i4yg8r4awiwp1ic8lrcd9"))))
    (properties `((upstream-name . "fuzzy-dates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (home-page "https://github.com/ReedOei/fuzzy-dates#readme")
    (synopsis "Libary for parsing dates in strings in varied formats.")
    (description
     "Please see the README on GitHub at <https://github.com/ReedOei/fuzzy-dates#readme>")
    (license license:bsd-3)))

haskell-9.4-fuzzy-dates

(define-public haskell-9.4-generics-sop-lens
  (package
    (name "haskell-9.4-generics-sop-lens")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generics-sop-lens/generics-sop-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yl74pz6r2zf9sspzbqg6xvr6k9b5irq3c3pjrf5ih6hfrz4k1ks"))))
    (properties `((upstream-name . "generics-sop-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0p9h7xbd0jcf85r480gbnyyh822r3wziv1rg2qwgq0ll5apqvzmn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-generics-sop)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (home-page "https://github.com/phadej/generics-sop-lens#readme")
    (synopsis "Lenses for types in generics-sop")
    (description "Lenses for types in generics-sop package")
    (license license:bsd-3)))

haskell-9.4-generics-sop-lens

(define-public haskell-9.4-genvalidity-bytestring
  (package
    (name "haskell-9.4-genvalidity-bytestring")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-bytestring/genvalidity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fvd5h47qlzwggz5brszld7pf8rpwmiqr1h9n22rfm6dmczzh49k"))))
    (properties `((upstream-name . "genvalidity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-bytestring)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for ByteString")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-bytestring

(define-public haskell-9.4-genvalidity-containers
  (package
    (name "haskell-9.4-genvalidity-containers")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-containers/genvalidity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "155ri2ncwcjx2gl3mimfkafqdf33mzkk1188dk97wbzg0rpq69ip"))))
    (properties `((upstream-name . "genvalidity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for containers")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-containers

(define-public haskell-9.4-genvalidity-hspec-binary
  (package
    (name "haskell-9.4-genvalidity-hspec-binary")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-binary/genvalidity-hspec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08avm7kdx6y90mmms5hdq4xryg5jdca6bqfhzy9wrkr79q2jv4vc"))))
    (properties `((upstream-name . "genvalidity-hspec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for binary-related Instances")
    (description
     "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.")
    (license license:expat)))

haskell-9.4-genvalidity-hspec-binary

(define-public haskell-9.4-genvalidity-hspec-cereal
  (package
    (name "haskell-9.4-genvalidity-hspec-cereal")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-cereal/genvalidity-hspec-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cj5jcgjyjf8ib7h8ldkjfwgdq4wzk7xkmxlmyyi37iscjpv32ni"))))
    (properties `((upstream-name . "genvalidity-hspec-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for cereal-related instances")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-hspec-cereal

(define-public haskell-9.4-genvalidity-hspec-hashable
  (package
    (name "haskell-9.4-genvalidity-hspec-hashable")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-hashable/genvalidity-hspec-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14fg796iivlpp4gqsmma9zf0z9iqk524ydyqmza83qrjh8v2ff5v"))))
    (properties `((upstream-name . "genvalidity-hspec-hashable")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances")
    (description "Standard spec's for Hashable instances")
    (license license:expat)))

haskell-9.4-genvalidity-hspec-hashable

(define-public haskell-9.4-genvalidity-hspec-optics
  (package
    (name "haskell-9.4-genvalidity-hspec-optics")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-optics/genvalidity-hspec-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bhhhihk4r8q78l35dm4gm8kf5mjzpynawbcq9vzpq3ny9h7bxmr"))))
    (properties `((upstream-name . "genvalidity-hspec-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for lens")
    (description "Standard spec's for lens (van Laarhoven encoding)")
    (license license:expat)))

haskell-9.4-genvalidity-hspec-optics

(define-public haskell-9.4-genvalidity-scientific
  (package
    (name "haskell-9.4-genvalidity-scientific")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-scientific/genvalidity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xi1a1jsby1dqv50lmpp98x2y5j9vaf3sl38spv5bnafyp1i6pmq"))))
    (properties `((upstream-name . "genvalidity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-scientific)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Scientific")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-scientific

(define-public haskell-9.4-genvalidity-time
  (package
    (name "haskell-9.4-genvalidity-time")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-time/genvalidity-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "153c6kcrfr7lkps7sqix7478wz837v15nfznfjsycl17m9vmlz46"))))
    (properties `((upstream-name . "genvalidity-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-time)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for time")
    (description "Please see README.md")
    (license license:expat)))

haskell-9.4-genvalidity-time

(define-public haskell-9.4-genvalidity-unordered-containers
  (package
    (name "haskell-9.4-genvalidity-unordered-containers")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-unordered-containers/genvalidity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sd67x2kw7l0kbsaa67x3an94sv1hvnkbb8r42v36cc5jjaw29dk"))))
    (properties `((upstream-name . "genvalidity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-unordered-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for unordered-containers")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-unordered-containers

(define-public haskell-9.4-genvalidity-uuid
  (package
    (name "haskell-9.4-genvalidity-uuid")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-uuid/genvalidity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15nnfpqdbvr4jhrykgj3djp4sc0n08wlwnvfbv73k30z49cqnd5k"))))
    (properties `((upstream-name . "genvalidity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-uuid)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for UUID")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-uuid

(define-public haskell-9.4-genvalidity-vector
  (package
    (name "haskell-9.4-genvalidity-vector")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-vector/genvalidity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l2zjbfjg05xxxgn359zfj93yx26zcz9xlayw2jf9brwv8wx23gy"))))
    (properties `((upstream-name . "genvalidity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-validity-vector)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for vector")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-vector

(define-public haskell-9.4-ghc-typelits-presburger
  (package
    (name "haskell-9.4-ghc-typelits-presburger")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-presburger/ghc-typelits-presburger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03lgzfn0vhcnfyyhb2d2shjwhinzk293k0yjlv6wac2yxxfrvnaj"))))
    (properties `((upstream-name . "ghc-typelits-presburger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-equational-reasoning)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-discover)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/konn/ghc-typelits-presburger#readme")
    (synopsis
     "Presburger Arithmetic Solver for GHC Type-level natural numbers.")
    (description
     "@@ghc-typelits-presburger@@ augments GHC type-system with Presburger
Arithmetic Solver for Type-level natural numbers.
This plugin only work with GHC builtin operations.
To work with those of @@singletons@@ package, use @@ghc-typelits-meta@@ and/or @@ghc-typelits-presburger@@ instead.

Since 0.3.0.0, integration with <https://hackage.haskell.org/package/singletons singletons> package moves to <https://hackage.haskell.org/package/singletons-presburger singletons-presburger>.

You can use by adding this package to @@build-depends@@ and add the following pragma
to the head of .hs files:


> OPTIONS_GHC -fplugin GHC.TypeLits.Presburger")
    (license license:bsd-3)))

haskell-9.4-ghc-typelits-presburger

(define-public haskell-9.4-hackage-cli
  (package
    (name "haskell-9.4-hackage-cli")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hackage-cli/hackage-cli-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wl2gpbcpdfmmmi99dkxy68gi3mn1aj8f2xrm5c8w1bs4sdxdzdq"))))
    (properties `((upstream-name . "hackage-cli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0v63w3v46n5jc3q7ywsih3wyqxg6f61psskpq1wkfwm9mnyxfwla")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-http-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-microlens-th)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-netrc)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-process-extras)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stringsearch)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-tagsoup)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-tar)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-tasty-golden)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hackage-trustees/hackage-cli")
    (synopsis "CLI tool for Hackage")
    (description "With @@hackage-cli@@ you can manage @@.cabal@@ files,
e.g. (bulk-)upload revised variants.")
    (license license:gpl3+)))

haskell-9.4-hackage-cli

(define-public haskell-9.4-happy-meta
  (package
    (name "haskell-9.4-happy-meta")
    (version "0.2.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happy-meta/happy-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vgv5fx1fya7wfh3zwdgy0hm0lyzp171gnpp6ymfd6kqmqkl3293"))))
    (properties `((upstream-name . "happy-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1p50xyx6hl0iyqmqxacisfmpq702rm797fjhfaxjjw6733k5zmrc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/happy-meta")
    (synopsis "Quasi-quoter for Happy parsers")
    (description
     "A Template-Haskell based version of the Happy parser generator. Used to generate parsers for BNFC-meta, currently this is the only use known to be working.")
    (license license:bsd-3)))

haskell-9.4-happy-meta

(define-public haskell-9.4-hasty-hamiltonian
  (package
    (name "haskell-9.4-hasty-hamiltonian")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasty-hamiltonian/hasty-hamiltonian-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qvqh5d213lq02qq25s1a6z783836h5gi5zra99pprblpdffaazq"))))
    (properties `((upstream-name . "hasty-hamiltonian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-ad)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-mcmc-types)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-mwc-probability)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "http://github.com/jtobin/hasty-hamiltonian")
    (synopsis "Speedy traversal through parameter space.")
    (description
     "Gradient-based traversal through parameter space.

This implementation of HMC algorithm uses 'lens' as a means to operate over
generic indexed traversable functors, so you can expect it to work if your
target function takes a list, vector, map, sequence, etc. as its argument.

If you don't want to calculate your gradients by hand you can use the
handy <https://hackage.haskell.org/package/ad ad> library for automatic
differentiation.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in memory, and a 'hamiltonian' transition operator
that can be used more generally.

> import Numeric.AD (grad)
> import Numeric.MCMC.Hamiltonian
>
> target :: RealFloat a => [a] -> a
> target [x0, x1] = negate ((x0 + 2 * x1 - 7) ^ 2 + (2 * x0 + x1 - 5) ^ 2)
>
> gTarget :: [Double] -> [Double]
> gTarget = grad target
>
> booth :: Target [Double]
> booth = Target target (Just gTarget)
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 0.05 20 [0, 0] booth")
    (license license:expat)))

haskell-9.4-hasty-hamiltonian

(define-public haskell-9.4-haxr
  (package
    (name "haskell-9.4-haxr")
    (version "3000.11.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/haxr/haxr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12f3acc253x88pk20b60z1qzyhbngvg7zzb9j6azbii0hx8yxxhy"))))
    (properties `((upstream-name . "haxr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")
       #:cabal-revision
       ("3" "0w3v3rmz71bpbv8blkl46qvlmxyx8kkadqxq105k3l5al51qrphp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-HaXml)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-http-streams)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mtl-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-old-time)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://www.haskell.org/haskellwiki/HaXR")
    (synopsis "XML-RPC client and server library.")
    (description "HaXR is a library for writing XML-RPC
client and server applications in Haskell.")
    (license license:bsd-3)))

haskell-9.4-haxr

(define-public haskell-9.4-here
  (package
    (name "haskell-9.4-here")
    (version "1.2.13")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/here/here-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "001wfyvigl2xswqysnpignkl124hybf833875mkcsn8yp8krqvs0"))))
    (properties `((upstream-name . "here") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)))
    (home-page "https://github.com/tmhedberg/here")
    (synopsis "Here docs & interpolated strings via quasiquotation")
    (description "Here docs & interpolated strings via quasiquotation")
    (license license:bsd-3)))

haskell-9.4-here

(define-public haskell-9.4-hledger
  (package
    (name "haskell-9.4-hledger")
    (version "1.28")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hledger/hledger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lagm7wk0k8jyk6kqggw7qka0jigqzjyqrrl4pr6cm0wd7x34cd8"))))
    (properties `((upstream-name . "hledger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fterminfo" "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-Decimal)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cmdargs)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-githash)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskeline)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hledger-lib)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-lucid)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-math-functions)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-shakespeare)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-tabular)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-timeit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-wizards)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hledger.org")
    (synopsis "Command-line interface for the hledger accounting system")
    (description
     "The command-line interface for the hledger accounting system.
Its basic function is to read a plain text file describing
financial transactions and produce useful reports.

hledger is a robust, cross-platform set of tools for tracking money,
time, or any other commodity, using double-entry accounting and a
simple, editable file format, with command-line, terminal and web
interfaces. It is a Haskell rewrite of Ledger, and one of the leading
implementations of Plain Text Accounting. Read more at:
<https://hledger.org>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-hledger

(define-public haskell-9.4-hslua
  (package
    (name "haskell-9.4-hslua")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hslua/hslua-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q587cjwb29jsf71hhmra6djr2sycbx2hr0rhwlgvb8ax699vkv3"))))
    (properties `((upstream-name . "hslua") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-hslua-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-hslua-classes)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-hslua-objectorientation)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-lua)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Bindings to Lua, an embeddable scripting language")
    (description "HsLua provides wrappers and helpers
to bridge Haskell and <https://www.lua.org/ Lua>.

It builds upon the /lua/ package, which allows to bundle
a Lua interpreter with a Haskell program.

Example programs are can be found in the @@hslua-examples@@
subdir of the project
<https://github.com/hslua/hslua repository>.")
    (license license:expat)))

haskell-9.4-hslua

(define-public haskell-9.4-hslua-module-path
  (package
    (name "haskell-9.4-hslua-module-path")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-path/hslua-module-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sy2k4mb263kg85vkf39ja84xz5kvm6z61xn62jy1swhrvvd96sr"))))
    (properties `((upstream-name . "hslua-module-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Lua module to work with file paths.")
    (description "Lua module to work with file paths in a platform
independent way.")
    (license license:expat)))

haskell-9.4-hslua-module-path

(define-public haskell-9.4-hslua-module-system
  (package
    (name "haskell-9.4-hslua-module-system")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-system/hslua-module-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lacf9jzd53r75dk5nvkx0nwgiakpkingjnz58bhjfnvi81r6ddn"))))
    (properties `((upstream-name . "hslua-module-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-tasty-lua)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua")
    (synopsis "Lua module wrapper around Haskell's System module.")
    (description "Provides access to system information and
functionality to Lua scripts via Haskell's `System`
module.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.4-hslua-module-system

(define-public haskell-9.4-hslua-module-text
  (package
    (name "haskell-9.4-hslua-module-text")
    (version "1.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-text/hslua-module-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "025n8vmaq22bl1x60hpg57ih44g6z71jc1qnlxfsi06hram1wcqc"))))
    (properties `((upstream-name . "hslua-module-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua")
    (synopsis "Lua module for text")
    (description "UTF-8 aware subset of Lua's `string` module.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.4-hslua-module-text

(define-public haskell-9.4-hslua-module-version
  (package
    (name "haskell-9.4-hslua-module-version")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-module-version/hslua-module-version-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1v24lbbagvaz0hacq4525snp6smz8yc5ifrxg89z1y5bbn7v46f5"))))
    (properties `((upstream-name . "hslua-module-version") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hslua-core)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Lua module to work with version specifiers.")
    (description "Wrapper for the Data.Version.Version Haskell type.")
    (license license:expat)))

haskell-9.4-hslua-module-version

(define-public haskell-9.4-http-client-tls
  (package
    (name "haskell-9.4-http-client-tls")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-client-tls/http-client-tls-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03f8p9gxdzl6slyw1r6vpv2dqhsyjvbaawbjv75kaq0vlj3gz7xi"))))
    (properties `((upstream-name . "http-client-tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/snoyberg/http-client")
    (synopsis
     "http-client backend using the connection package and tls library")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <https://www.stackage.org/package/http-client-tls>.")
    (license license:expat)))

haskell-9.4-http-client-tls

(define-public haskell-9.4-hworker
  (package
    (name "haskell-9.4-hworker")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hedis)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/dbp/hworker")
    (synopsis "A reliable at-least-once job queue built on top of redis.")
    (description "See README.")
    (license license:isc)))

haskell-9.4-hworker

(define-public haskell-9.4-inline-r
  (package
    (name "haskell-9.4-inline-r")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inline-r/inline-r-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b7xsfglhb9mjac79ch07fd426bkdg22nwdg50j3jj906bi65jba"))))
    (properties `((upstream-name . "inline-r") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-heredoc)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-inline-c)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-setenv)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-singletons)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-singletons-th)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages statistics) r)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://tweag.github.io/HaskellR")
    (synopsis
     "Seamlessly call R from Haskell and vice versa. No FFI required.")
    (description "For up to date Haddock documentation, please see
<http://www.stackage.org/package/inline-r>.")
    (license license:bsd-3)))

haskell-9.4-inline-r

(define-public haskell-9.4-insert-ordered-containers
  (package
    (name "haskell-9.4-insert-ordered-containers")
    (version "0.2.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/insert-ordered-containers/insert-ordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mnc0gby7xz8065rvkqsaqk1vqs0gv1y9qgvwsvxx3gsg9yj3a7r"))))
    (properties `((upstream-name . "insert-ordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "11awwf3lm3qzjqxy8gw9cizr30228cjwhqzff7wvjvdx131s0raa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-optics-extra)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/insert-ordered-containers#readme")
    (synopsis
     "Associative containers retaining insertion order for traversals.")
    (description
     "Associative containers retaining insertion order for traversals.

The implementation is based on `unordered-containers`.")
    (license license:bsd-3)))

haskell-9.4-insert-ordered-containers

(define-public haskell-9.4-interpolate
  (package
    (name "haskell-9.4-interpolate")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolate/interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03jrkj9c62w0c2awym8mhpsgpd0jffl50cqwfrm7bbdfhd8dsxi7"))))
    (properties `((upstream-name . "interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/sol/interpolate#readme")
    (synopsis "String interpolation done right")
    (description "String interpolation done right")
    (license license:expat)))

haskell-9.4-interpolate

(define-public haskell-9.4-interpolatedstring-perl6
  (package
    (name "haskell-9.4-interpolatedstring-perl6")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolatedstring-perl6/interpolatedstring-perl6-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dvv9dsf5mr6y7aikd57c0qlh1lkbq3y37bvn3hy2g15cn5ix2ss"))))
    (properties `((upstream-name . "interpolatedstring-perl6") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/interpolatedstring-perl6")
    (synopsis "QuasiQuoter for Perl6-style multi-line interpolated strings")
    (description
     "QuasiQuoter for Perl6-style multi-line interpolated strings with \\\"q\\\", \\\"qq\\\" and \\\"qc\\\" support.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-interpolatedstring-perl6

(define-public haskell-9.4-jmacro
  (package
    (name "haskell-9.4-jmacro")
    (version "0.6.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jmacro/jmacro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17z39w888nrq0jfzi74z1wnswzmcyi2x6h2p2nnmhyjsgvpjkcxa"))))
    (properties `((upstream-name . "jmacro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-benchmarks")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parseargs)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-posix)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-wl-pprint-text)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/jmacro")
    (synopsis
     "QuasiQuotation library for programmatic generation of Javascript code.")
    (description
     "Javascript syntax, functional syntax, hygienic names, compile-time guarantees of syntactic correctness, limited typechecking. Additional documentation available at <http://www.haskell.org/haskellwiki/Jmacro>")
    (license license:bsd-3)))

haskell-9.4-jmacro

(define-public haskell-9.4-language-c-quote
  (package
    (name "haskell-9.4-language-c-quote")
    (version "0.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c-quote/language-c-quote-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02axz6498sg2rf24qds39n9gysc4lm3v354h2qyhrhadlfq8sf6d"))))
    (properties `((upstream-name . "language-c-quote") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ffull-haskell-antiquotes")
       #:cabal-revision
       ("1" "1vl92h4z294ycg87140qk7v40r7vz43n8anpd2w1jdnwd6w4f4m3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-alex)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-exception-mtl)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-exception-transformers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-happy)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mainland-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-srcloc)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)))
    (home-page "https://github.com/mainland/language-c-quote")
    (synopsis "C/CUDA/OpenCL/Objective-C quasiquoting library.")
    (description
     "This package provides a general parser for the C language, including most GCC
extensions and some CUDA and OpenCL extensions as well as the entire Objective-C
language.")
    (license license:bsd-3)))

haskell-9.4-language-c-quote

(define-public haskell-9.4-language-nix
  (package
    (name "haskell-9.4-language-nix")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-nix/language-nix-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lq07311dg4a32zdp5bc20bw94g0c7pdzxdiwi2y4zbhd1944rzx"))))
    (properties `((upstream-name . "language-nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0g4hq729bz128sf3ifd8rbfamwa8mqqcnhbc3qxnpz1myzvxhnjk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parsec-class)))
    (home-page
     "https://github.com/NixOS/cabal2nix/tree/master/language-nix#readme")
    (synopsis "Data types and functions to represent the Nix language")
    (description
     "Data types and useful functions to represent and manipulate the Nix
language.")
    (license license:bsd-3)))

haskell-9.4-language-nix

(define-public haskell-9.4-lens-action
  (package
    (name "haskell-9.4-lens-action")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-action/lens-action-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cdprc5j6r976dmrga2zwvcr7qsv7nqy3nvncp66yyy0dk2qlwm3"))))
    (properties `((upstream-name . "lens-action") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0rrrv7k0fz98j99a6gzw858v5w3i378g0b7ijj30dz2am6p6rfnm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "http://github.com/ekmett/lens-action/")
    (synopsis "Monadic Getters and Folds")
    (description "This package contains combinators and types for working with
monadic getters and folds as split off from the original
lens package.")
    (license license:bsd-3)))

haskell-9.4-lens-action

(define-public haskell-9.4-lens-aeson
  (package
    (name "haskell-9.4-lens-aeson")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-aeson/lens-aeson-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wwmg0zv2561dmmbil829dw6qmdl02kfs690iy549nbznj2kil8l"))))
    (properties `((upstream-name . "lens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/lens/lens-aeson/")
    (synopsis "Law-abiding lenses for aeson")
    (description "Law-abiding lenses for aeson.")
    (license license:expat)))

haskell-9.4-lens-aeson

(define-public haskell-9.4-lens-csv
  (package
    (name "haskell-9.4-lens-csv")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-csv/lens-csv-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0kkwb32ndhxhlz01pn4xh825x95l8g45cs4h5wxkjh24rywl3rrp"))))
    (properties `((upstream-name . "lens-csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChrisPenner/lens-csv#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-csv#readme>")
    (license license:bsd-3)))

haskell-9.4-lens-csv

(define-public haskell-9.4-lens-misc
  (package
    (name "haskell-9.4-lens-misc")
    (version "0.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-misc/lens-misc-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jyqxi83imkyd318m17p2z84zqaxyb08mk5gy7q7saay2blmz4jr"))))
    (properties `((upstream-name . "lens-misc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "https://github.com/louispan/lens-misc#readme")
    (synopsis "Miscellaneous lens utilities.")
    (description "Handy functions when using lens.")
    (license license:bsd-3)))

haskell-9.4-lens-misc

(define-public haskell-9.4-lens-properties
  (package
    (name "haskell-9.4-lens-properties")
    (version "4.11.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-properties/lens-properties-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1caciyn75na3f25q9qxjl7ibjam22xlhl5k2pqfiak10lxsmnz2g"))))
    (properties `((upstream-name . "lens-properties") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "10c8phmf4znr6a9gkzvi2b9q9b9qc8cmslaxlx2hv59j62216h0f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "QuickCheck properties for lens")
    (description "QuickCheck properties for lens.")
    (license license:bsd-3)))

haskell-9.4-lens-properties

(define-public haskell-9.4-lens-regex
  (package
    (name "haskell-9.4-lens-regex")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-regex/lens-regex-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11zgdk46skj3g0436vilcgg4wvclixh07xjwqfcsfhffn0vn3mz4"))))
    (properties `((upstream-name . "lens-regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-samples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-regex-base)))
    (home-page "https://github.com/himura/lens-regex")
    (synopsis "Lens powered regular expression")
    (description
     "lens interface for regex-base. Please see the README on Github at <https://github.com/himura/lens-regex#readme>")
    (license license:bsd-3)))

haskell-9.4-lens-regex

(define-public haskell-9.4-lens-regex-pcre
  (package
    (name "haskell-9.4-lens-regex-pcre")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-regex-pcre/lens-regex-pcre-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06540l3rylgpdhfdvd9nwkf6v8hyky4l3igs45zblrmhz4sdql5i"))))
    (properties `((upstream-name . "lens-regex-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-pcre-heavy)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-pcre-light)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChrisPenner/lens-regex-pcre#readme")
    (synopsis "A lensy interface to regular expressions")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-regex-pcre#readme>")
    (license license:bsd-3)))

haskell-9.4-lens-regex-pcre

(define-public haskell-9.4-lifted-async
  (package
    (name "haskell-9.4-lifted-async")
    (version "0.10.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lifted-async/lifted-async-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kq96cp9czf358gykai2vcmynnd7zivqja4pb3f8bif9ypln9vai"))))
    (properties `((upstream-name . "lifted-async") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
    (home-page "https://github.com/maoe/lifted-async")
    (synopsis
     "Run lifted IO operations asynchronously and wait for their results")
    (description
     "This package provides IO operations from @@async@@ package lifted to any
instance of 'MonadBase' or 'MonadBaseControl'.")
    (license license:bsd-3)))

haskell-9.4-lifted-async

(define-public haskell-9.4-linear
  (package
    (name "haskell-9.4-linear")
    (version "1.22")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/linear/linear-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ddr0c54kbi9bw7d62i6h3jiss3q0qmrdpkvckajz6qf5lwkxr6g"))))
    (properties `((upstream-name . "linear") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftemplate-haskell" "-f-herbie")
       #:cabal-revision
       ("1" "1p94bq3pwqvj4qd1lp0w84k514xd9vib76gw0d16q1xh27c2sz4h")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-simple-reflect)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "http://github.com/ekmett/linear/")
    (synopsis "Linear Algebra")
    (description
     "Types and combinators for linear algebra on free vector spaces")
    (license license:bsd-3)))

haskell-9.4-linear

(define-public haskell-9.4-lsp-types
  (package
    (name "haskell-9.4-lsp-types")
    (version "1.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lsp-types/lsp-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00lqq5lw7pi8qrnjlibsvhldp747kdc9zkr6rg3bbkbz7kxw8p9q"))))
    (properties `((upstream-name . "lsp-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-force-ospath")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-mod)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-some)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-tuple)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp")
    (synopsis
     "Haskell library for the Microsoft Language Server Protocol, data types")
    (description
     "An implementation of the types to allow language implementors to
support the Language Server Protocol for their specific language.")
    (license license:expat)))

haskell-9.4-lsp-types

(define-public haskell-9.4-machines
  (package
    (name "haskell-9.4-machines")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines/machines-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1cmflvd0xphs15ip61347ph9w4hnhmsa4nlp425i53x1ld99l23c"))))
    (properties `((upstream-name . "machines") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "13msrrbravjx51j40jn5namgbkfc44dv565ry5pdb5l389gzfl1k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-pointed)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "http://github.com/ekmett/machines/")
    (synopsis "Networked stream transducers")
    (description
     "Networked stream transducers

Rúnar Bjarnason's talk on machines can be downloaded from:
<http://web.archive.org/web/20161029161813/https://dl.dropboxusercontent.com/u/4588997/Machines.pdf>")
    (license license:bsd-3)))

haskell-9.4-machines

(define-public haskell-9.4-monadology
  (package
    (name "haskell-9.4-monadology")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monadology/monadology-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pr9ia4jns545sk5x85pdwgbw1qd648nh9avb5q7jql7dwa21928"))))
    (properties `((upstream-name . "monadology") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-invariant)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-type-rig)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-witness)))
    (home-page "https://github.com/AshleyYakeley/monadology#readme")
    (synopsis "")
    (description
     "Monadology is intended as a collection of the best ideas in monad-related classes and types, with a focus on correctness and elegance, and theoretical understanding, rather than practical performance.")
    (license license:bsd-2)))

haskell-9.4-monadology

(define-public haskell-9.4-monoidal-containers
  (package
    (name "haskell-9.4-monoidal-containers")
    (version "0.6.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoidal-containers/monoidal-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m41z50r3jvr8vvfry99kamb2h3knm0g7bqfwspchmhwsgqqczh4"))))
    (properties `((upstream-name . "monoidal-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplit-these")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-newtype)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-semialign)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-witherable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/bgamari/monoidal-containers")
    (synopsis "Containers with monoidal accumulation")
    (description
     "Containers with merging via monoidal accumulation. The 'Monoid' instances
provided by the @@containers@@ and @@unordered-containers@@ packages merge
structures in a left-biased manner instead of using the underlying monoidal
structure of the value.

This package wraps the types provided by these packages, but provides @@Monoid@@
instances implemented in terms of the value type's 'mappend'. For instance,
the @@Monoid@@ @@Map@@ instance looks like,

@@
instance (Ord k, Semigroup a) => Monoid (MonoidalMap k a)
@@")
    (license license:bsd-3)))

haskell-9.4-monoidal-containers

(define-public haskell-9.4-open-witness
  (package
    (name "haskell-9.4-open-witness")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/open-witness/open-witness-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zysnzp7zdmv9d03xnlcqdsnwjrw934gkz6ngahwaqpbx4pp1zmb"))))
    (properties `((upstream-name . "open-witness") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-witness)))
    (home-page "https://github.com/AshleyYakeley/open-witness")
    (synopsis "open witnesses")
    (description
     "Open witnesses are witnesses that can witness to any type. However, they cannot be constructed, they can only be generated in the IO monad. See the 2008 draft paper /Witnesses and Open Witnesses/ (<https://semantic.org/wp-content/uploads/Open-Witnesses.pdf>).")
    (license license:bsd-2)))

haskell-9.4-open-witness

(define-public haskell-9.4-parsec-numeric
  (package
    (name "haskell-9.4-parsec-numeric")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/parsec-numeric/parsec-numeric-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bz5ls9m6ld9v8g641sskzz2ymzibsw9jgf7f8q5wsb3mbj9mpbv"))))
    (properties `((upstream-name . "parsec-numeric") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/AndrewRademacher/parsec-numeric")
    (synopsis "Parsec combinators for parsing Haskell numeric types.")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-parsec-numeric

(define-public haskell-9.4-path
  (package
    (name "haskell-9.4-path")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/path/path-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15xxsjdxxqxnh20iqhprbdyhldk2igl5gd4ld6hhk9nqgwqdcr0f"))))
    (properties `((upstream-name . "path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/path")
    (synopsis "Support for well-typed paths")
    (description "Support for well-typed paths.")
    (license license:bsd-3)))

haskell-9.4-path

(define-public haskell-9.4-pdf-toolbox-document
  (package
    (name "haskell-9.4-pdf-toolbox-document")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pdf-toolbox-document/pdf-toolbox-document-"
                    version ".tar.gz"))
              (sha256
               (base32
                "172vxsv541hsdkk08rsr21rwdrcxwmf4pwjmgsq2rjwj4ba4723y"))))
    (properties `((upstream-name . "pdf-toolbox-document") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-io-streams)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-pdf-toolbox-content)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-pdf-toolbox-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Yuras/pdf-toolbox")
    (synopsis "A collection of tools for processing PDF files.")
    (description "Mid level tools for processing PDF files.

Level of abstraction: document, catalog, page")
    (license license:bsd-3)))

haskell-9.4-pdf-toolbox-document

(define-public haskell-9.4-pipes-extras
  (package
    (name "haskell-9.4-pipes-extras")
    (version "1.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-extras/pipes-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cyb05bv5xkarab3090ikpjiqm79lr46n3nalplliz8jr4x67a82"))))
    (properties `((upstream-name . "pipes-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0gqqhvq5h6kkz6k4dpvlky7lbrfbgqp30whn7cglaplrqzlfwbvd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)))
    (home-page "https://hackage.haskell.org/package/pipes-extras")
    (synopsis "Extra utilities for pipes")
    (description
     "This package holds miscellaneous utilities related to the @@pipes@@
library.")
    (license license:bsd-3)))

haskell-9.4-pipes-extras

(define-public haskell-9.4-postgresql-typed
  (package
    (name "haskell-9.4-postgresql-typed")
    (version "0.6.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-typed/postgresql-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0khc6bc1gvlhvrmpgj4ilazimwpjvd2p83lfbbpip9dpj2b5h2ri"))))
    (properties `((upstream-name . "postgresql-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fmd5" "-fbinary" "-ftext" "-fuuid" "-fscientific" "-faeson" "-fhdbc" "-ftls")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004) haskell-9.4-HDBC)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-binary)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-tls)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-x509)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-x509-store)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-x509-validation)))
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

haskell-9.4-postgresql-typed

(define-public haskell-9.4-purescript-bridge
  (package
    (name "haskell-9.4-purescript-bridge")
    (version "0.14.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/purescript-bridge/purescript-bridge-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gplvmkx2c8ksk25wdinhwwbmqa5czbd4nwdgn4sa9ci10f2i4a3"))))
    (properties `((upstream-name . "purescript-bridge") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-generic-deriving)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (home-page "https://hackage.haskell.org/package/purescript-bridge")
    (synopsis "Generate PureScript data types from Haskell data types")
    (description "")
    (license license:bsd-3)))

haskell-9.4-purescript-bridge

(define-public haskell-9.4-qm-interpolated-string
  (package
    (name "haskell-9.4-qm-interpolated-string")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qm-interpolated-string/qm-interpolated-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12jxkkbpmkdrjrkj242z6l4vhbgwj79b8s5l3gxs9fbg4s4pqp2k"))))
    (properties `((upstream-name . "qm-interpolated-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (home-page "https://github.com/unclechu/haskell-qm-interpolated-string")
    (synopsis "Implementation of interpolated multiline strings")
    (description "Implementation of interpolated multiline strings
that ignores indentation and trailing whitespaces")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-qm-interpolated-string

(define-public haskell-9.4-quickcheck-arbitrary-adt
  (package
    (name "haskell-9.4-quickcheck-arbitrary-adt")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-arbitrary-adt/quickcheck-arbitrary-adt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fa5gb111m740q399l7wbr9n03ws9rasq48jhnx7dvvd6qh2wjjw"))))
    (properties `((upstream-name . "quickcheck-arbitrary-adt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (home-page
     "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme")
    (synopsis "Generic typeclasses for generating arbitrary ADTs")
    (description "Improve arbitrary value generation for ADTs")
    (license license:bsd-3)))

haskell-9.4-quickcheck-arbitrary-adt

(define-public haskell-9.4-radius
  (package
    (name "haskell-9.4-radius")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/radius/radius-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1q7dz40n97z5kajn60fszdhq7yb5m33dbd34j94218iqshz844ql"))))
    (properties `((upstream-name . "radius") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/codemonkeylabs/RADIUS")
    (synopsis "Remote Authentication Dial In User Service (RADIUS)")
    (description
     "This module provides types and on the wire de/coding of RADIUS packets as per RFC2865")
    (license license:bsd-3)))

haskell-9.4-radius

(define-public haskell-9.4-rainbow
  (package
    (name "haskell-9.4-rainbow")
    (version "0.34.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rainbow/rainbow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rx5kci69m7fdi94x35a2wg88fprlix61mvzsqq3waqb7ahc2mlf"))))
    (properties `((upstream-name . "rainbow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (home-page "https://www.github.com/massysett/rainbow")
    (synopsis "Print text to terminal with colors and effects")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-rainbow

(define-public haskell-9.4-random-tree
  (package
    (name "haskell-9.4-random-tree")
    (version "0.6.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-tree/random-tree-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hhwb4kah1j1hjsqwys24g0csq1hvz0vlgf6z9vwiql4w5y4wq1b"))))
    (properties `((upstream-name . "random-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-MonadRandom)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-random-shuffle)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tree-fun)))
    (home-page "https://hackage.haskell.org/package/random-tree")
    (synopsis "Create random trees")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-random-tree

(define-public haskell-9.4-redis-glob
  (package
    (name "haskell-9.4-redis-glob")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/redis-glob/redis-glob-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0w1w76ldiaxk4irgazm6xv5s60zvyyvjfsxbpa3b0aq4jgw49gh5"))))
    (properties `((upstream-name . "redis-glob") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-use-doc-tests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ascii-char)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-ascii-superset)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)))
    (home-page "https://github.com/adetokunbo/redis-glob#readme")
    (synopsis "Specify valid redis globs")
    (description
     "Supplies functions that parse and use redis __glob__ patterns.
As in redis commands like [KEYS](https://redis.io/commands/keys), that filter using globs.")
    (license license:bsd-3)))

haskell-9.4-redis-glob

(define-public haskell-9.4-rex
  (package
    (name "haskell-9.4-rex")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rex/rex-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "17lbpknqzly7h2gz3x4n4ykjirhqym7bk9wrvjhh23din6brg8p3"))))
    (properties `((upstream-name . "rex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-pcre-light)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/mgsloan/rex")
    (synopsis "A quasi-quoter for typeful results of regex captures.")
    (description "Provides a quasi-quoter for regular expressions which
yields a tuple, of appropriate arity and types,
representing the results of the captures.  Allows the user
to specify parsers for captures as inline Haskell.  Can
also be used to provide typeful pattern matching in
function definitions and pattern matches.  Also, it
precompiles the regular expressions into a PCRE
compiled byte-array representation, at compile time.")
    (license license:bsd-3)))

haskell-9.4-rex

(define-public haskell-9.4-scheduler
  (package
    (name "haskell-9.4-scheduler")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/scheduler/scheduler-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1hdqm04m3n5y3xrhilj0hykrmqdsjz5p6k2p9y1005khkj5dag9f"))))
    (properties `((upstream-name . "scheduler") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-atomic-primops)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-pvar)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "https://github.com/lehins/haskell-scheduler")
    (synopsis "Work stealing scheduler.")
    (description
     "A work stealing scheduler that is designed for parallelization of heavy work loads. It was primarily developed for [massiv](https://github.com/lehins/massiv) array library, but it is general enough to be useful for any computation that fits the model of few workers and many jobs.")
    (license license:bsd-3)))

haskell-9.4-scheduler

(define-public haskell-9.4-semialign-indexed
  (package
    (name "haskell-9.4-semialign-indexed")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign-indexed/semialign-indexed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16f0y3j85zlq2f8z45z085dizvbx4ihppp1ww3swh5daj0zf3kzy"))))
    (properties `((upstream-name . "semialign-indexed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("1" "041zf53szkshc13i0kqgk77rb7r00snknv5qhq2ka4vfg2f0dn4x")))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-semialign)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "SemialignWithIndex, i.e. izipWith and ialignWith")
    (description
     "This package is deprecated.
It simply re-exports [semialign](https://hackage.haskell.org/package/semialign)
(and adds a @@lens@@ constraint).

This package provided @@SemialignWithIndex@@ with two members

@@
class (FunctorWithIndex i f, Semialign f) => SemialignWithIndex i f | f -> i where
\\    ialignWith :: (i -> These a b -> c) -> f a -> f b -> f c
@@

@@
class (SemialignWithIndex i f, Zip f) => ZipWithIndex i f | f -> i where
\\    izipWith   :: (i -> a -> b -> c)    -> f a -> f b -> f c
@@")
    (license license:bsd-3)))

haskell-9.4-semialign-indexed

(define-public haskell-9.4-servant-client-core
  (package
    (name "haskell-9.4-servant-client-core")
    (version "0.19")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client-core/servant-client-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cisc5cyl367cwrch1gr812aspd36a21hkwi6mwj708rpspwvrmc"))))
    (properties `((upstream-name . "servant-client-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1qhqab6akfw6ay4rlrbwmii1s8flbkgp9b9bfzkdhwng7nvwdc80")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-constraints)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-sop-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Core functionality and class for client function generation for servant APIs")
    (description
     "This library provides backend-agnostic generation of client functions. For
more information, see the README.")
    (license license:bsd-3)))

haskell-9.4-servant-client-core

(define-public haskell-9.4-servant-exceptions
  (package
    (name "haskell-9.4-servant-exceptions")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-exceptions/servant-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bzxac87x3nfg5hllqxfi2qrdkiy2zfxwzkcg6vyjirnwpqvn49b"))))
    (properties `((upstream-name . "servant-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ch1bo/servant-exceptions#readme")
    (synopsis "Extensible exceptions for servant APIs")
    (description
     "`servant-exceptions` provides a `Throw` combinator to declare what
types of errors an API might throw. The server
implementation catches them and allows for a canonical
encoding using servant content-type machinery.")
    (license license:bsd-3)))

haskell-9.4-servant-exceptions

(define-public haskell-9.4-servant-multipart-api
  (package
    (name "haskell-9.4-servant-multipart-api")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-multipart-api/servant-multipart-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gifa9g7ggs0plzffrd9a8j24dmqvgbkkdkfzyy7mpmwrjqw7mcj"))))
    (properties `((upstream-name . "servant-multipart-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1zhiszjg8n37g25sh2cnw509n0v4b89fd93j466f2gzwkxfaaw0m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-servant/servant-multipart#readme")
    (synopsis "multipart/form-data (e.g file upload) support for servant")
    (description
     "This package contains servant API types that support multiform upload, used by
servant-multipart and servant-multipart-client for backend/client implementation.")
    (license license:bsd-3)))

haskell-9.4-servant-multipart-api

(define-public haskell-9.4-servant-rawm
  (package
    (name "haskell-9.4-servant-rawm")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-rawm/servant-rawm-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05gv21y7vzw7gdbsk0nax47rnn4isjmx7hbbwilsv0cj7l8qm1bk"))))
    (properties `((upstream-name . "servant-rawm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/servant-rawm")
    (synopsis "Embed a raw 'Application' in a Servant API")
    (description
     "Please see <https://github.com/cdepillabout/servant-rawm#readme README.md>.

After @@servant-rawm@@ 1.0.0.0, the implementation are divided into
three packages: @@servant-rawm-server@@, @@servant-rawm-client@@,
and @@servant-rawm-docs@@.

You need to use either of the three implementations for the 'RawM' endpoint
to function correctly.")
    (license license:bsd-3)))

haskell-9.4-servant-rawm

(define-public haskell-9.4-ses-html
  (package
    (name "haskell-9.4-ses-html")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-http-streams)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ses-html")
    (synopsis
     "Send HTML formatted emails using Amazon's SES REST API with blaze")
    (description
     "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell")
    (license license:bsd-3)))

haskell-9.4-ses-html

(define-public haskell-9.4-singletons-base
  (package
    (name "haskell-9.4-singletons-base")
    (version "3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/singletons-base/singletons-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d32c1dmi8mlrli0927g3hy6gip4c9w0myza3x594nlb6cnwdj6f"))))
    (properties `((upstream-name . "singletons-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-singletons)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-singletons-th)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-th-desugar)))
    (home-page "http://www.github.com/goldfirere/singletons")
    (synopsis "A promoted and singled version of the base library")
    (description
     "@@singletons-base@@ uses @@singletons-th@@ to define promoted and singled
functions from the @@base@@ library, including the \"Prelude\". This library was
originally presented in /Dependently Typed Programming with Singletons/,
published at the Haskell Symposium, 2012.
(<https://richarde.dev/papers/2012/singletons/paper.pdf>)
See also the paper published at Haskell Symposium, 2014, which describes
how promotion works in greater detail:
<https://richarde.dev/papers/2014/promotion/promotion.pdf>.

WARNING: @@singletons-base@@ defines orphan instances for @@Sing@@, @@SingKind@@,
etc. for common types such as @@Bool@@, @@[]@@, @@Maybe@@, etc. If you define
instances of these types in your code, you will likely not be able to use
that code with @@singletons-base@@.

@@singletons-base@@ uses code that relies on bleeding-edge GHC language
extensions. As such, @@singletons-base@@ only supports the latest major version
of GHC (currently GHC 9.4). For more information,
consult the @@singletons@@
@@<https://github.com/goldfirere/singletons/blob/master/README.md README>@@.

You may also be interested in the following related libraries:

* The @@singletons@@ library is a small, foundational library that defines
basic singleton-related types and definitions.

* The @@singletons-th@@ library defines Template Haskell functionality that
allows /promotion/ of term-level functions to type-level equivalents and
/singling/ functions to dependently typed equivalents.")
    (license license:bsd-3)))

haskell-9.4-singletons-base

(define-public haskell-9.4-smtp-mail
  (package
    (name "haskell-9.4-smtp-mail")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smtp-mail/smtp-mail-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q81m4mi43cd0f1azm6984xw3qw2s6ygszdn86j5z3g5sjj5dax4"))))
    (properties `((upstream-name . "smtp-mail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-mime-mail)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jhickner/smtp-mail")
    (synopsis "Simple email sending via SMTP")
    (description
     "This packages provides a simple interface for mail over SMTP. PLease see the README for more information.")
    (license license:bsd-3)))

haskell-9.4-smtp-mail

(define-public haskell-9.4-speedy-slice
  (package
    (name "haskell-9.4-speedy-slice")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/speedy-slice/speedy-slice-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bmy0hrrqgwbqsk1ckbmzy1hhcwlcjsclcskrdmzfq5afvq9kq3z"))))
    (properties `((upstream-name . "speedy-slice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-kan-extensions)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-mcmc-types)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-mwc-probability)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
    (home-page "http://github.com/jtobin/speedy-slice")
    (synopsis "Speedy slice sampling.")
    (description
     "Speedy slice sampling.

This implementation of the slice sampling algorithm uses 'lens' as a means to
operate over generic indexed traversable functors, so you can expect it to
work if your target function takes a list, vector, map, sequence, etc. as its
argument.

Additionally you can sample over anything that's an instance of both 'Num' and
'Variate', which is useful in the case of discrete parameters.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in memory, and a 'slice' transition operator that can
be used more generally.

> import Numeric.MCMC.Slice
> import Data.Sequence (Seq, index, fromList)
>
> bnn :: Seq Double -> Double
> bnn xs = -0.5 * (x0 ^ 2 * x1 ^ 2 + x0 ^ 2 + x1 ^ 2 - 8 * x0 - 8 * x1) where
>   x0 = index xs 0
>   x1 = index xs 1
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 1 (fromList [0, 0]) bnn")
    (license license:expat)))

haskell-9.4-speedy-slice

(define-public haskell-9.4-stratosphere
  (package
    (name "haskell-9.4-stratosphere")
    (version "0.60.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stratosphere/stratosphere-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vp5m82h9axvvzqqxf4q5jxcjgym1b8h4x4y4a367bpiy7xk4kwf"))))
    (properties `((upstream-name . "stratosphere") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-flibrary-only")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbj/stratosphere#readme")
    (synopsis "EDSL for AWS CloudFormation")
    (description "EDSL for AWS CloudFormation")
    (license license:expat)))

haskell-9.4-stratosphere

(define-public haskell-9.4-strict-lens
  (package
    (name "haskell-9.4-strict-lens")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-lens/strict-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dsgr53q0sdivrxc7jmbqjd65hav9zwjqc8zfbyybkr1ww17bhf5"))))
    (properties `((upstream-name . "strict-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1sdqml2fizmm1wrlmg1l8b9hnff8la03wl39hr47bldvlqn6dywx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-strict)))
    (home-page "https://github.com/haskell-strict/strict")
    (synopsis "Lenses for types in strict package")
    (description "Lenses for types in strict package.")
    (license license:bsd-3)))

haskell-9.4-strict-lens

(define-public haskell-9.4-string-interpolate
  (package
    (name "haskell-9.4-string-interpolate")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-interpolate/string-interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdd472rvykrqkv76745vavpycvb0dzcaxs3yw9dfczaxaz16xws"))))
    (properties `((upstream-name . "string-interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-extended-benchmarks" "-f-text-builder" "-f-bytestring-builder")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-text)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-unicode)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-text-conversions)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md")
    (synopsis "Haskell string/text/bytestring interpolation that just works")
    (description
     "Unicode-aware string interpolation that handles all textual types.

See the README at <https://gitlab.com/williamyaoh/string-interpolate/blob/master/README.md> for more info.")
    (license license:bsd-3)))

haskell-9.4-string-interpolate

(define-public haskell-9.4-stringprep
  (package
    (name "haskell-9.4-stringprep")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stringprep/stringprep-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ha4cvzdppd514xh9315v3nvrn1q4xd74gifdqpszw98hj2mw0b0"))))
    (properties `((upstream-name . "stringprep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-text-icu)))
    (propagated-inputs (list (@ (gnu packages icu4c) icu4c-71)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/stringprep")
    (synopsis "Implements the \"StringPrep\" algorithm")
    (description "Implements the \"StringPrep\" algorithm")
    (license license:bsd-3)))

haskell-9.4-stringprep

(define-public haskell-9.4-these-lens
  (package
    (name "haskell-9.4-these-lens")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/these-lens/these-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1v3kj7j4bkywbmdbblwqs5gsj5s23d59sb3s27jf3bwdzf9d21p6"))))
    (properties `((upstream-name . "these-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1mncy6mcwqxy4fwibrsfc3jcx183wfjfvfvbj030y86pfihvbwg3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "Lenses for These")
    (description "This package provides Prism and Traversals for @@These@@.")
    (license license:bsd-3)))

haskell-9.4-these-lens

(define-public haskell-9.4-timelens
  (package
    (name "haskell-9.4-timelens")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timelens/timelens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r57fib5nzvrk8gsn26364l1a14zj9sg3kv2db4pjzy3dq0zmrpl"))))
    (properties `((upstream-name . "timelens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)))
    (home-page "http://www.github.com/massysett/timelens")
    (synopsis "Lenses for the time package")
    (description
     "These are lenses for the time package.  Please see the README.md
for more information.")
    (license license:bsd-3)))

haskell-9.4-timelens

(define-public haskell-9.4-trifecta
  (package
    (name "haskell-9.4-trifecta")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/trifecta/trifecta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1akx8m6mgskwsbhsf90cxlqjq23jk4pwaxagvm923dpncwrlwfla"))))
    (properties `((upstream-name . "trifecta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0a7cfbd04w3zbm234mmpib9mxar46ra5xvb62gcnbmixr7b343j9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-charset)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-fingertree)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-parsers)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-reducers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/trifecta/")
    (synopsis "A modern parser combinator library with convenient diagnostics")
    (description
     "A modern parser combinator library with slicing and Clang-style colored diagnostics

For example:

<<https://i.imgur.com/ZyzUSSn.png>>

<images/example.png (Local Copy)>")
    (license license:bsd-3)))

haskell-9.4-trifecta

(define-public haskell-9.4-twitter-types-lens
  (package
    (name "haskell-9.4-twitter-types-lens")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/twitter-types-lens/twitter-types-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0l0qbpri3ah0xw6k74a5490fsxwisc8h8yip7ikhbsyf0vkqr2wc"))))
    (properties `((upstream-name . "twitter-types-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-twitter-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/himura/twitter-types")
    (synopsis "Twitter JSON types (lens powered)")
    (description
     "Please see the README on Github at <https://github.com/himura/twitter-types#readme>")
    (license license:bsd-3)))

haskell-9.4-twitter-types-lens

(define-public haskell-9.4-tz
  (package
    (name "haskell-9.4-tz")
    (version "0.1.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tz/tz-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1vqnfk656i6j3j1bf9lc36adziv52x1b2ccq6afp8cka1nay2mcd"))))
    (properties `((upstream-name . "tz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")
       #:cabal-revision
       ("1" "0mwal38qsf32fppza1ivx0vdvpma9z5gn4ni08mc080ns0s7kvgy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-tasty-th)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-tzdata)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ysangkok/haskell-tz")
    (synopsis "Efficient time zone handling")
    (description
     "The goal of this package is to provide a library that can read time
zone info files (aka. Olson files), and does time zone conversions
in a /pure/ and /efficient/ way.

We also provide platform-independent and/or compiled-in access to
the standard Time Zone Dabase by the means of the companion @@tzdata@@
package <http://hackage.haskell.org/package/tzdata>.

The package is currently in an alpha phase, I'm still experimenting
with different ideas wrt. scope\\/API\\/implementation\\/etc. All
comments are welcome!")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-tz

(define-public haskell-9.4-validation
  (package
    (name "haskell-9.4-validation")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validation/validation-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15hhz2kj6h9zv568bvq79ymck3s3b89fpkasdavbwvyhfyjm5k8x"))))
    (properties `((upstream-name . "validation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-assoc)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "https://github.com/qfpl/validation")
    (synopsis "A data-type like Either but with an accumulating Applicative")
    (description
     "<<https://raw.githubusercontent.com/qfpl/assets/master/data61-transparent-bg.png>>

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

haskell-9.4-validation

(define-public haskell-9.4-validationt
  (package
    (name "haskell-9.4-validationt")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validationt/validationt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14kvkiawsychqq55nm0afpfwxjvxh9izbr35zgp3wg2j0zqzkhnz"))))
    (properties `((upstream-name . "validationt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeable/validationt")
    (synopsis "Straightforward validation monad")
    (description
     "A simple data validation library. The main idea is to provide an easy way to validate web form data by aggregating errors for each field.")
    (license license:bsd-3)))

haskell-9.4-validationt

(define-public haskell-9.4-validity-case-insensitive
  (package
    (name "haskell-9.4-validity-case-insensitive")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-case-insensitive/validity-case-insensitive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "075pxgviqmf5xi4if15mbabn32xw11nss19a4il9z9ng1fsrcn1d"))))
    (properties `((upstream-name . "validity-case-insensitive")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for case-insensitive")
    (description "")
    (license license:expat)))

haskell-9.4-validity-case-insensitive

(define-public haskell-9.4-vector-algorithms
  (package
    (name "haskell-9.4-vector-algorithms")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-algorithms/vector-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h9qqgna787q93q58mrvmg5mw8h92vlapx2glanz6vpjm39w19rb"))))
    (properties `((upstream-name . "vector-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fboundschecks" "-f-unsafechecks" "-f-internalchecks" "-fbench" "-fproperties" "-f-llvm")
       #:cabal-revision
       ("2" "081adj7krcfv2i0cmy6k59jcp2f9j7ywl5r1fvglxa99amlwdrgk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-bitvec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/erikd/vector-algorithms/")
    (synopsis "Efficient algorithms for vector arrays")
    (description
     "Efficient algorithms for sorting vector arrays. At some stage
other vector algorithms may be added.")
    (license license:bsd-3)))

haskell-9.4-vector-algorithms

(define-public haskell-9.4-vector-instances
  (package
    (name "haskell-9.4-vector-instances")
    (version "3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-instances/vector-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10akvpa5w9bp0d8hflab63r9laa9gy2hv167smhjsdzq1kplc0hv"))))
    (properties `((upstream-name . "vector-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fhashable")
       #:cabal-revision
       ("1" "177jllmcv0517vppc4lx0l0kvicgaf1h060lkcnv7fl0hnp16zf5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009) haskell-9.4-keys)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-pointed)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "http://github.com/ekmett/vector-instances")
    (synopsis "Orphan Instances for 'Data.Vector'")
    (description "")
    (license license:bsd-3)))

haskell-9.4-vector-instances

(define-public haskell-9.4-wai-middleware-caching-redis
  (package
    (name "haskell-9.4-wai-middleware-caching-redis")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-caching-redis/wai-middleware-caching-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k3wpw9prhcac8iavzr0xdcwl8khkxks4kji03zz1n10vf1kgxbg"))))
    (properties `((upstream-name . "wai-middleware-caching-redis")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hedis)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-wai-middleware-caching)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching-redis#readme")
    (synopsis "Cache Wai Middleware using Redis backend")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-wai-middleware-caching-redis

(define-public haskell-9.4-wai-rate-limit-redis
  (package
    (name "haskell-9.4-wai-rate-limit-redis")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-rate-limit-redis/wai-rate-limit-redis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gizywhdrpngs5l6qh5ggnnfkcgplwsigcjj3z8l7vwif74j6qsd"))))
    (properties `((upstream-name . "wai-rate-limit-redis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-hedis)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-wai-rate-limit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mbg/wai-rate-limit#readme")
    (synopsis "Redis backend for rate limiting as WAI middleware")
    (description
     "A Haskell library which implements rate limiting as WAI middleware")
    (license license:expat)))

haskell-9.4-wai-rate-limit-redis

(define-public haskell-9.4-wuss
  (package
    (name "haskell-9.4-wuss")
    (version "2.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wuss/wuss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04jqq3blzyxqyymhcjsm5z89whk5y7cvnd9dw6nlc40vq4w4v802"))))
    (properties `((upstream-name . "wuss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-connection)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-websockets)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/wuss")
    (synopsis "Secure WebSocket (WSS) clients")
    (description
     "Wuss is a library that lets you easily create secure WebSocket clients over
the WSS protocol. It is a small addition to
<https://hackage.haskell.org/package/websockets the websockets package> and
is adapted from existing solutions by
<https://gist.github.com/jaspervdj/7198388 @@jaspervdj>,
<https://gist.github.com/mpickering/f1b7ba3190a4bb5884f3 @@mpickering>, and
<https://gist.github.com/elfenlaid/7b5c28065e67e4cf0767 @@elfenlaid>.")
    (license license:expat)))

haskell-9.4-wuss

(define-public haskell-9.4-xmonad-contrib
  (package
    (name "haskell-9.4-xmonad-contrib")
    (version "0.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmonad-contrib/xmonad-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lwj8xkyaw6h0rv3lz2jdqrwzz7yghfmnhpndygkb3wgyhvq6dxb"))))
    (properties `((upstream-name . "xmonad-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse_xft" "-f-pedantic")
       #:cabal-revision
       ("1" "0dc9nbn0kaw98rgpi1rq8np601zjhdr1y0ydg6yb82wwaqawql6z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001) haskell-9.4-X11)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-X11-xft)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-xmonad)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://xmonad.org/")
    (synopsis "Community-maintained extensions for xmonad")
    (description
     "Community-maintained tiling algorithms and extension modules for xmonad,
an X11 tiling window manager.

For an introduction to building, configuring and using xmonad
extensions, see \"XMonad.Doc\". In particular:

\"XMonad.Doc.Configuring\", a guide to configuring xmonad

\"XMonad.Doc.Extending\", using the contributed extensions library

\"XMonad.Doc.Developing\", introduction to xmonad internals and writing
your own extensions.
")
    (license license:bsd-3)))

haskell-9.4-xmonad-contrib

(define-public haskell-9.4-zippers
  (package
    (name "haskell-9.4-zippers")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zippers/zippers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0n85mnp3mv8qwk3wmmm2wpc3j2l4q2fb0gbzb5il3nrd0p42xjld"))))
    (properties `((upstream-name . "zippers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ppm6a56z7nr90q6ffffkvb2syfi9nlzi806g3r5z7dinn262gnc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "http://github.com/ekmett/zippers/")
    (synopsis "Traversal based zippers")
    (description "Traversal based zippers.")
    (license license:bsd-3)))

haskell-9.4-zippers

