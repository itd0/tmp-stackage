;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage018)
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
(define-public haskell-8.10-Chart
  (package
    (name "haskell-8.10-Chart")
    (version "1.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Chart/Chart-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0p69kq5kh40gd4y8wqabypmw67pqh42vaaw64zv9sf8j075g85ry"))))
    (properties `((upstream-name . "Chart") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0lgfq5cmhx0q9wqnplw1xr5ql88jjffzc0i72v1lfiqsp9w3lppf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-colour)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-operational)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/timbod7/haskell-chart/wiki")
    (synopsis "A library for generating 2D Charts and Plots")
    (description
     "A library for generating 2D Charts and Plots, with backends provided by
Cairo (<http://hackage.haskell.org/package/Chart-cairo>)
and
Diagrams (<http://hackage.haskell.org/package/Chart-diagrams>).
Documentation: https://github.com/timbod7/haskell-chart/wiki.")
    (license license:bsd-3)))

haskell-8.10-Chart

(define-public haskell-8.10-ForestStructures
  (package
    (name "haskell-8.10-ForestStructures")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fgl)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-th)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-vector-th-unbox)))
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

haskell-8.10-ForestStructures

(define-public haskell-8.10-H
  (package
    (name "haskell-8.10-H")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/H/H-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0d3isp467pq5l1c95j0q6s2isywz8xamgrm9rs16i7xczkz4vh2z"))))
    (properties `((upstream-name . "H") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07pddiap3jzcnc09v442wq30j46nmkdibilzcv69hz5imcnmhz0h")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-inline-r)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://tweag.github.io/HaskellR")
    (synopsis "The Haskell/R mixed programming environment.")
    (description "This package is part of the HaskellR project.")
    (license license:bsd-3)))

haskell-8.10-H

(define-public haskell-8.10-accuerr
  (package
    (name "haskell-8.10-accuerr")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/accuerr/accuerr-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dlszai5bz05algxm98kjhnjwa7mwj620d52vrsc4fxds8q84sjg"))))
    (properties `((upstream-name . "accuerr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "http://www.github.com/massysett/accuerr")
    (synopsis "Data type like Either but with accumulating error type")
    (description
     "Please see the \"Accuerr\" Haddock documentation for more information.")
    (license license:bsd-3)))

haskell-8.10-accuerr

(define-public haskell-8.10-aeson-lens
  (package
    (name "haskell-8.10-aeson-lens")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-lens/aeson-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pr8cxkx41wi7095cp1gpqrwadwx6azcrdi1kr1ik0fs6606dkks"))))
    (properties `((upstream-name . "aeson-lens") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/aeson-lens")
    (synopsis "Lens of Aeson")
    (description "Lens of Aeson")
    (license license:bsd-3)))

haskell-8.10-aeson-lens

(define-public haskell-8.10-api-field-json-th
  (package
    (name "haskell-8.10-api-field-json-th")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "https://github.com/nakaji-dayo/api-field-json-th")
    (synopsis "option of aeson's deriveJSON ")
    (description "Utils for using aeson's deriveJSON with lens's makeFields")
    (license license:bsd-3)))

haskell-8.10-api-field-json-th

(define-public haskell-8.10-aws-xray-client
  (package
    (name "haskell-8.10-aws-xray-client")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-xray-client/aws-xray-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b179i32aw3xi72vnxmgvgczq14ay159cji9mmk345shdiac6crj"))))
    (properties `((upstream-name . "aws-xray-client") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-aeson-qq)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray.")
    (description
     "The core client for enabling AWX X-Ray.

See other `aws-xray-client-*` packages for usage and integration examples.")
    (license license:expat)))

haskell-8.10-aws-xray-client

(define-public haskell-8.10-base16-lens
  (package
    (name "haskell-8.10-base16-lens")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base16-lens/base16-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04qz8gm969vlaxsk1j3rlpqph74qjkfr3rkpfkkxrfmxih6cm2fj"))))
    (properties `((upstream-name . "base16-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-base16)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)))
    (home-page "https://github.com/emilypi/base16-lens")
    (synopsis "Optics for the Base16 library")
    (description "Prisms and pattern synonyms for the Base16 library")
    (license license:bsd-3)))

haskell-8.10-base16-lens

(define-public haskell-8.10-base32-lens
  (package
    (name "haskell-8.10-base32-lens")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base32-lens/base32-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wam29m7vz5srrj135wmsbmg9qqhsidnwfhbicy0vmx342ai8bs6"))))
    (properties `((upstream-name . "base32-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-base32)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base32-lens")
    (synopsis "Optics for the Base32 library")
    (description "Prisms and pattern synonyms for the Base32 library")
    (license license:bsd-3)))

haskell-8.10-base32-lens

(define-public haskell-8.10-base64-lens
  (package
    (name "haskell-8.10-base64-lens")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-lens/base64-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iszvlc22h7crwqhcafy974l0l1rgxbcjf6lb5yxsvp6q66gzhrn"))))
    (properties `((upstream-name . "base64-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04mm8fq2lr4lv2a64aiy1q9mzg9n5cd1s62jpcbq1jgq0q4wilkh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-base64)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)))
    (home-page "https://github.com/emilypi/base64-lens")
    (synopsis "Optics for the Base64 library")
    (description "Prisms and pattern synonyms for the Base64 library")
    (license license:bsd-3)))

haskell-8.10-base64-lens

(define-public haskell-8.10-boundingboxes
  (package
    (name "haskell-8.10-boundingboxes")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://github.com/fumieval/boundingboxes")
    (synopsis "A generic boundingbox for an arbitrary vector")
    (description "")
    (license license:bsd-3)))

haskell-8.10-boundingboxes

(define-public haskell-8.10-cacophony
  (package
    (name "haskell-8.10-cacophony")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-coroutine)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/centromere/cacophony#readme")
    (synopsis "A library implementing the Noise protocol.")
    (description
     "This library implements the <https://noiseprotocol.org Noise> protocol.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-cacophony

(define-public haskell-8.10-capability
  (package
    (name "haskell-8.10-capability")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/capability/capability-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02dnvzfvn81k15qp41fqd3pk4izg8rfbj7d5f6ry0wfa8d8payq0"))))
    (properties `((upstream-name . "capability") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-hspec-jenkins" "-f-dev")
       #:cabal-revision
       ("1" "0dqqry8qjx9gigz7x542zchrvjbmmhpafzn4fxf1dw0yd6hqavfq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-generic-lens)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-monad-unlift)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-mutable-containers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-safe-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (home-page "https://github.com/tweag/capability")
    (synopsis "Extensional capabilities and deriving combinators")
    (description
     "Standard capability type classes for extensional effects and combinators
to derive capability instances with little boilerplate.")
    (license license:bsd-3)))

haskell-8.10-capability

(define-public haskell-8.10-clash-prelude
  (package
    (name "haskell-8.10-clash-prelude")
    (version "1.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/clash-prelude/clash-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ba7w8d9532gd6ahvmdbxsby2rx9wpxblkgmkrn6df1xdp3aqi9w"))))
    (properties `((upstream-name . "clash-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-large-tuples" "-f-super-strict" "-f-strict-mapsignal" "-f-multiple-hidden" "-fdoctests" "-funittests" "-fbenchmarks")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-arrows)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-ghc-typelits-extra)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-half)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-interpolate)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-singletons)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-text-show)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-type-errors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-uniplate)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://clash-lang.org/")
    (synopsis
     "Clash: a functional hardware description language - Prelude library")
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

* Prelude library containing datatypes and functions for circuit design

To use the library:

* Import \"Clash.Prelude\"

* Alternatively, if you want to explicitly route clock and reset ports,
for more straightforward multi-clock designs, you can import the
\"Clash.Explicit.Prelude\" module. Note that you should not import
\"Clash.Prelude\" and \"Clash.Explicit.Prelude\" at the same time as they
have overlapping definitions.

A preliminary version of a tutorial can be found in \"Clash.Tutorial\", for a
general overview of the library you should however check out \"Clash.Prelude\".
Some circuit examples can be found in \"Clash.Examples\".")
    (license license:bsd-2)))

haskell-8.10-clash-prelude

(define-public haskell-8.10-composable-associations
  (package
    (name "haskell-8.10-composable-associations")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://github.com/SamProtas/composable-associations#readme")
    (synopsis
     "Types and helpers for composing types into a single larger key-value type.")
    (description
     "A library providing generic types and helpers for composing types together into a a single key-value type.

This is useful when a normalized data model has a denormalized serialization format. Using this libraries types and
functions you build compose your data into the denormalized key-value format needed for serialization. Other
libraries provide concrete implementations for a given serialization format.")
    (license license:bsd-3)))

haskell-8.10-composable-associations

(define-public haskell-8.10-concise
  (package
    (name "haskell-8.10-concise")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://github.com/frasertweedale/hs-concise")
    (synopsis "Utilities for Control.Lens.Cons")
    (description
     "concise provides a handful of functions to extend what you can
do with Control.Lens.Cons.")
    (license license:bsd-3)))

haskell-8.10-concise

(define-public haskell-8.10-cryptonite-conduit
  (package
    (name "haskell-8.10-cryptonite-conduit")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite-conduit/cryptonite-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bldcmda4xh52mw1wfrjljv8crhw3al7v7kv1j0vidvr7ymnjpbh"))))
    (properties `((upstream-name . "cryptonite-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hh2nzfz4qpxgivfilgk4ll416lph8b2fdkzpzrmqfjglivydfmz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-crypto/cryptonite-conduit")
    (synopsis "cryptonite conduit")
    (description "Conduit bridge for cryptonite

For now only provide a conduit version for hash and hmac, but
with contribution, this could provide cipher conduits too,
and probably other things.")
    (license license:bsd-3)))

haskell-8.10-cryptonite-conduit

(define-public haskell-8.10-cyclotomic
  (package
    (name "haskell-8.10-cyclotomic")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cyclotomic/cyclotomic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1m3977xi7s78h5bcq8gksamqimdm1h0hnjzalg3d63rvanjv4v84"))))
    (properties `((upstream-name . "cyclotomic") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-arithmoi)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-test-framework-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/cyclotomic")
    (synopsis "A subfield of the complex numbers for exact calculation.")
    (description "The cyclotomic numbers are a subset of the
complex numbers that are represented exactly, enabling exact
computations and equality comparisons.  They
contain the Gaussian rationals (complex numbers
of the form p + q i with p and q rational), as well
as all complex roots of unity.  The
cyclotomic numbers contain the square roots of
all rational numbers.  They contain the sine and
cosine of all rational multiples of pi.
The cyclotomic numbers form a field, being closed under
addition, subtraction, mutiplication, and division.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-cyclotomic

(define-public haskell-8.10-debian
  (package
    (name "haskell-8.10-debian")
    (version "4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/debian/debian-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sp8vkg65fllvxk85sp34isc0zvmj0s72i138wz5vhj9hfmn2c71"))))
    (properties `((upstream-name . "debian") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-ListLike)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-SHA)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bz2)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-either)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hostname)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-process-extras)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-pureMD5)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-regex-compat)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-th-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/clinty/debian-haskell")
    (synopsis "Modules for working with the Debian package system")
    (description
     "This library includes modules covering some basic data types defined by
the Debian policy manual - version numbers, control file syntax, etc.")
    (license license:bsd-3)))

haskell-8.10-debian

(define-public haskell-8.10-editor-open
  (package
    (name "haskell-8.10-editor-open")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/editor-open/editor-open-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0raj0s8v72kz63hqpqhf58sx0a8mcwi4ania40spjirdrsdx3i9g"))))
    (properties `((upstream-name . "editor-open") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/pharpend/editor-open")
    (synopsis "Open the user's $VISUAL or $EDITOR for text input.")
    (description
     "You know when you run @@git commit@@, and an editor pops open so you can enter a
commit message? This is a Haskell library that does that.

This library isn't very portable. It relies on the @@$EDITOR@@ environment
variable. The concept only exists on *nix systems.

CHANGES

[0.6.0.0] Support less common @@$VISUAL@@. @@vi@@ is the fallback editor now
instead of @@nano@@.

[0.5.0.0] Now use conduits on the backend. Support @@base\\<4.8@@")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-editor-open

(define-public haskell-8.10-eliminators
  (package
    (name "haskell-8.10-eliminators")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eliminators/eliminators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h3h0f7s0gjbza7lij8y2pg5hl6zrf8cqslh5f0hpwnfxh3yls6v"))))
    (properties `((upstream-name . "eliminators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1bp8745kynqd8kll3dw36ws9s9j2bzgsr88ij14fx8hab4fm72cn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-singleton-nats)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-singletons)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-th-desugar)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/RyanGlScott/eliminators")
    (synopsis "Dependently typed elimination functions using singletons")
    (description "This library provides eliminators for inductive data types,
leveraging the power of the @@singletons@@ library to allow
dependently typed elimination.")
    (license license:bsd-3)))

haskell-8.10-eliminators

(define-public haskell-8.10-errors-ext
  (package
    (name "haskell-8.10-errors-ext")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/errors-ext/errors-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "064nvpc8yy3n6nvc7cmxmgblmarg4wlvawj0k7bc3mj6h0rnavj0"))))
    (properties `((upstream-name . "errors-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-binary-ext)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-errors)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)))
    (home-page "https://github.com/A1-Triard/errors-ext#readme")
    (synopsis "`bracket`-like functions for `ExceptT` over `IO` monad.")
    (description
     "Please see the README on GitHub at <https://github.com/A1-Triard/errors-ext#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-errors-ext

(define-public haskell-8.10-ersatz
  (package
    (name "haskell-8.10-ersatz")
    (version "0.4.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ersatz/ersatz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pklw9zhpxkm5yhkdlw78c2324ffk8n5pqkvicxh0x0ha852fs7y"))))
    (properties `((upstream-name . "ersatz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fexamples")))
    (outputs (list "out" "static" "doc"))
    (native-inputs (list (@ (gnu packages maths) minisat)))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-streams)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
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

haskell-8.10-ersatz

(define-public haskell-8.10-essence-of-live-coding-gloss
  (package
    (name "haskell-8.10-essence-of-live-coding-gloss")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-gloss/essence-of-live-coding-gloss-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02jdi5ijkhf9jc9r5jyqvlk6idmgbjbv3x4yw6ich2m95yhf8hrl"))))
    (properties `((upstream-name . "essence-of-live-coding-gloss")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-foreign-store)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-gloss)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework - Gloss backend")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.
There are also useful utilities for debugging and quickchecking.

This package contains a backend for Gloss (http://gloss.ouroborus.net/).")
    (license license:bsd-3)))

haskell-8.10-essence-of-live-coding-gloss

(define-public haskell-8.10-essence-of-live-coding-pulse
  (package
    (name "haskell-8.10-essence-of-live-coding-pulse")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-pulse/essence-of-live-coding-pulse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16fipxz90vlsy9hgksiw7m7r7wzrqrjdhb6fg11m6jlrk1f5bkka"))))
    (properties `((upstream-name . "essence-of-live-coding-pulse")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-foreign-store)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-pulse-simple)))
    (propagated-inputs (list (@ (gnu packages pulseaudio) pulseaudio)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework - pulse backend")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.
There are also useful utilities for debugging and quickchecking.

This package contains the backend for PulseAudio.")
    (license license:bsd-3)))

haskell-8.10-essence-of-live-coding-pulse

(define-public haskell-8.10-essence-of-live-coding-quickcheck
  (package
    (name "haskell-8.10-essence-of-live-coding-quickcheck")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/essence-of-live-coding-quickcheck/essence-of-live-coding-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hkzp0q0xk3wa892vnjimi7m9gq56m5wx1m2i72ssl6x2jgy52hl"))))
    (properties `((upstream-name . "essence-of-live-coding-quickcheck")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-boltzmann-samplers)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-essence-of-live-coding)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://www.manuelbaerenz.de/#computerscience")
    (synopsis "General purpose live coding framework - QuickCheck integration")
    (description
     "essence-of-live-coding is a general purpose and type safe live coding framework.

You can run programs in it, and edit, recompile and reload them while they're running.
Internally, the state of the live program is automatically migrated when performing hot code swap.

The library also offers an easy to use FRP interface.
It is parametrized by its side effects,
separates data flow cleanly from control flow,
and allows to develop live programs from reusable, modular components.

This package contains useful utilities for quickchecking.")
    (license license:bsd-3)))

haskell-8.10-essence-of-live-coding-quickcheck

(define-public haskell-8.10-eve
  (package
    (name "haskell-8.10-eve")
    (version "0.1.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/eve/eve-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "06b2qybglsww0f7wpy2fnmr3l9r5a0aikybd23cjl6ribq86l8y9"))))
    (properties `((upstream-name . "eve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://github.com/ChrisPenner/eve#readme")
    (synopsis "An extensible event framework")
    (description
     "An extensible event-driven application framework in haskell for building embarassingly modular software.")
    (license license:bsd-3)))

haskell-8.10-eve

(define-public haskell-8.10-focuslist
  (package
    (name "haskell-8.10-focuslist")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/focuslist/focuslist-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bna0akhjf8ldx6g8n5w0ni5mhx5j69n0dzpj25vbdc3y8y9crqh"))))
    (properties `((upstream-name . "focuslist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildreadme")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)))
    (home-page "https://github.com/cdepillabout/focuslist")
    (synopsis "Lists with a focused element")
    (description
     "Please see <https://github.com/cdepillabout/focuslist#readme README.md>.")
    (license license:bsd-3)))

haskell-8.10-focuslist

(define-public haskell-8.10-folds
  (package
    (name "haskell-8.10-folds")
    (version "0.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/folds/folds-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hggk92i61f3nxcjdxvgs3b8am3jypig09s9wqwrwzaclx0mk5sh"))))
    (properties `((upstream-name . "folds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimize")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-data-reify)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-pointed)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/ekmett/folds")
    (synopsis "Beautiful Folding")
    (description
     "This package is a playground full of comonadic folds.

This style of fold is documented in <https://www.schoolofhaskell.com/user/edwardk/cellular-automata/part-2 \"Cellular Automata, Part II: PNGs and Moore\">

This package can be seen as what happens if you chase Max Rabkin's <http://squing.blogspot.com/2008/11/beautiful-folding.html \"Beautiful Folding\"> to its logical conclusion.

More information on this approach can be found in the <http://conal.net/blog/posts/another-lovely-example-of-type-class-morphisms \"Another lovely example of type class morphisms\"> and <http://conal.net/blog/posts/more-beautiful-fold-zipping \"More beautiful fold zipping\"> posts by Conal Elliott, as well as in Gabriel Gonzales' <http://www.haskellforall.com/2013/08/composable-streaming-folds.html \"Composable Streaming Folds\">")
    (license license:bsd-3)))

haskell-8.10-folds

(define-public haskell-8.10-functor-combinators
  (package
    (name "haskell-8.10-functor-combinators")
    (version "0.3.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/functor-combinators/functor-combinators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0idf896xadp5v5k4m0s087xvvs9008sxw61djqb9v0x08rs5zy8f"))))
    (properties `((upstream-name . "functor-combinators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-assoc)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-dependent-sum)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-deriving-compat)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-invariant)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-natural-transformation)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-nonempty-containers)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-pointed)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-sop-core)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-tasty-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-trivial-constraint)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-vinyl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-8.10-functor-combinators

(define-public haskell-8.10-fuzzy-dates
  (package
    (name "haskell-8.10-fuzzy-dates")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ReedOei/fuzzy-dates#readme")
    (synopsis "Libary for parsing dates in strings in varied formats.")
    (description
     "Please see the README on GitHub at <https://github.com/ReedOei/fuzzy-dates#readme>")
    (license license:bsd-3)))

haskell-8.10-fuzzy-dates

(define-public haskell-8.10-generics-sop-lens
  (package
    (name "haskell-8.10-generics-sop-lens")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generics-sop)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://github.com/phadej/generics-sop-lens#readme")
    (synopsis "Lenses for types in generics-sop")
    (description "Lenses for types in generics-sop package")
    (license license:bsd-3)))

haskell-8.10-generics-sop-lens

(define-public haskell-8.10-hal
  (package
    (name "haskell-8.10-hal")
    (version "0.4.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hal/hal-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "10mqs33bs85m65g4kscb24abbdaabnrc4841mnj6pravq165b9v7"))))
    (properties `((upstream-name . "hal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fdny4nsdh4m445qc2f0b87xci9i11q8ccdw59qx67qp2c2121l3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-envy)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/Nike-inc/hal#readme")
    (synopsis
     "A runtime environment for Haskell applications running on AWS Lambda.")
    (description
     "This library uniquely supports different types of AWS Lambda Handlers for your
needs/comfort with advanced Haskell. Instead of exposing a single function
that constructs a Lambda, this library exposes many.")
    (license license:bsd-3)))

haskell-8.10-hal

(define-public haskell-8.10-haskell-lsp-types
  (package
    (name "haskell-8.10-haskell-lsp-types")
    (version "0.24.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-lsp-types/haskell-lsp-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p7k2g2xs95ylsnnz2np0w8c7p5dzmlss41g0kzblaz5n3352kbn"))))
    (properties `((upstream-name . "haskell-lsp-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1wy26rv0zih8zgc4as5prf305qw2llcc1srx3rcnzfwlggkslsnr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/alanz/haskell-lsp")
    (synopsis
     "Haskell library for the Microsoft Language Server Protocol, data types")
    (description
     "An implementation of the types to allow language implementors to
support the Language Server Protocol for their specific language.")
    (license license:expat)))

haskell-8.10-haskell-lsp-types

(define-public haskell-8.10-hasty-hamiltonian
  (package
    (name "haskell-8.10-hasty-hamiltonian")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015) haskell-8.10-ad)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-mcmc-types)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-mwc-probability)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-8.10-hasty-hamiltonian

(define-public haskell-8.10-hexml-lens
  (package
    (name "haskell-8.10-hexml-lens")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hexml-lens/hexml-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ss9riq7ppmqav4p38ckk479ggq7iy7xm0wsanr29ybg43vlx8xs"))))
    (properties `((upstream-name . "hexml-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-foundation)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hexml)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)))
    (home-page "https://github.com/pepeiborra/hexml-lens#readme")
    (synopsis "Lenses for the hexml package")
    (description "Lenses for the hexml package")
    (license license:bsd-3)))

haskell-8.10-hexml-lens

(define-public haskell-8.10-hledger
  (package
    (name "haskell-8.10-hledger")
    (version "1.21")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hledger/hledger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07fcfkmv4cy92njnf2qc7jh0naz96q962hxldcd7hk4k7ddv0mss"))))
    (properties `((upstream-name . "hledger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fterminfo" "-fthreaded")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Decimal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-haskeline)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hledger-lib)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-lucid)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-math-functions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-shakespeare)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-tabular)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-timeit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-wizards)))
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

haskell-8.10-hledger

(define-public haskell-8.10-hledger-iadd
  (package
    (name "haskell-8.10-hledger-iadd")
    (version "1.3.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-iadd/hledger-iadd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kcw8yp9g6cj6amc4rh8iwzd4zh5v68ns8sf5rv4hfa4xj928iy5"))))
    (properties `((upstream-name . "hledger-iadd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-brick)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-free)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hledger-lib)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-zipper)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xdg-basedir)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hpdeifel/hledger-iadd#readme")
    (synopsis "A terminal UI as drop-in replacement for hledger add")
    (description
     "This is a terminal UI as drop-in replacement for hledger add.

It improves in the following ways on hledger's add command:

* Interactive as-you-type completion for
account names and descriptions with optional
fuzzy matching.

* Integrated calculator: Amounts can be written
as simple sums with real-time feedback on the
result.

* All actions while entering a transaction can
be undone

* Configurable format for date input. Instead
of @@y\\/m\\/d@@ it is also possible to use other
formats like the german @@d.m.y@@.")
    (license license:bsd-3)))

haskell-8.10-hledger-iadd

(define-public haskell-8.10-hledger-interest
  (package
    (name "haskell-8.10-hledger-interest")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-interest/hledger-interest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i97y7rs5kd2dqk3qwd2jg17vs9ib4yvkaqlljnb32x16gphpvhc"))))
    (properties `((upstream-name . "hledger-interest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Decimal)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hledger-lib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/peti/hledger-interest")
    (synopsis "computes interest for a given account")
    (description
     "hledger-interest is a small command-line utility based on Simon
Michael's hleder library. Its purpose is to compute interest for a
given ledger account. Using command line flags, the program can be
configured to use various schemes for day-counting, such as act\\/act,
30\\/360, 30E\\/360, and 30\\/360isda. Furthermore, it supports a (small)
number of interest schemes, i.e. annual interest with a fixed rate and
the scheme mandated by the German BGB288 (Basiszins fuer
Verbrauchergeschaefte). Extending support for other schemes is fairly
easy, but currently requires changes to the source code.

As an example, consider the following loan, stored in a file called
@@test.ledger@@:

> 2008/09/26 Loan
>     Assets:Bank          EUR 10000.00
>     Liabilities:Bank
>
> 2008/11/27 Payment
>     Assets:Bank          EUR -3771.12
>     Liabilities:Bank
>
> 2009/05/03 Payment
>     Assets:Bank          EUR -1200.00
>     Liabilities:Bank
>
> 2010/12/10 Payment
>     Assets:Bank          EUR -3700.00
>     Liabilities:Bank

Suppose that loan earns 5% interest per year, and payments amortize
interest before amortizing the principal claim, then the resulting
ledger would look like this:

> $ hledger-interest --file=test.ledger --source=Expenses:Interest --target=Liabilities:Bank --30-360 --annual=0.05 Liabilities:Bank
> 2008/09/26 Loan
>     Assets:Bank              EUR  10000.00
>     Liabilities:Bank
>
> 2008/11/27 Payment
>     Assets:Bank              EUR  -3771.12
>     Liabilities:Bank
>
> 2008/11/27 5.00% interest for EUR -10000.00 over 61 days
>     Liabilities:Bank         EUR    -84.72
>     Expenses:Interest
>
> 2008/12/31 5.00% interest for EUR -6313.60 over 34 days
>     Liabilities:Bank         EUR    -29.81
>     Expenses:Interest
>
> 2009/05/03 Payment
>     Assets:Bank              EUR  -1200.00
>     Liabilities:Bank
>
> 2009/05/03 5.00% interest for EUR -6343.42 over 123 days
>     Liabilities:Bank         EUR   -108.37
>     Expenses:Interest
>
> 2009/12/31 5.00% interest for EUR -5251.78 over 238 days
>     Liabilities:Bank         EUR   -173.60
>     Expenses:Interest
>
> 2010/12/10 Payment
>     Assets:Bank              EUR  -3700.00
>     Liabilities:Bank
>
> 2010/12/10 5.00% interest for EUR -5425.38 over 340 days
>     Liabilities:Bank         EUR   -256.20
>     Expenses:Interest
>
> 2010/12/31 5.00% interest for EUR -1981.58 over 21 days
>     Liabilities:Bank         EUR     -5.78
>     Expenses:Interest

Running the utility with @@--help@@ gives a brief overview over the
available options:

> Usage: hledger-interest [OPTION...] ACCOUNT
>   -h          --help                      print this message and exit
>   -V          --version                   show version number and exit
>   -v          --verbose                   echo input ledger to stdout (default)
>   -q          --quiet                     don't echo input ledger to stdout
>               --today                     compute interest up until today
>   -f FILE     --file=FILE                 input ledger file (pass '-' for stdin)
>   -s ACCOUNT  --source=ACCOUNT            interest source account
>   -t ACCOUNT  --target=ACCOUNT            interest target account
>   -I          --ignore-assertions         ignore any failing balance assertions
>               --act                       use 'act' day counting convention
>               --30-360                    use '30/360' day counting convention
>               --30E-360                   use '30E/360' day counting convention
>               --30E-360isda               use '30E/360isda' day counting convention
>               --constant=RATE             constant interest rate
>               --annual-schedule=SCHEDULE  schedule of annual interest rates.
>                                           syntax: '[(Date1,Rate1),(Date2,Rate2),...]'
>               --annual=RATE               annual interest rate
>               --bgb288                    compute interest according to German BGB288")
    (license license:bsd-3)))

haskell-8.10-hledger-interest

(define-public haskell-8.10-hmatrix-backprop
  (package
    (name "haskell-8.10-hmatrix-backprop")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-backprop/hmatrix-backprop-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nknwamc51f3d1syy1wi8fkvlx40riwi7x94yh34y0fzgddgjl2k"))))
    (properties `((upstream-name . "hmatrix-backprop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-backprop)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hmatrix-vector-sized)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-vector-sized)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-vinyl)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/hmatrix-backprop#readme")
    (synopsis "hmatrix operations lifted for backprop")
    (description
     "hmatrix operations lifted for backprop, along with orphan instances.

Meant to act as a drop-in replacement to the API of
Numeric.LinearAlgebra.Static.  Just change your imports, and your
functions are automatically backpropagatable.

See README on Github at <https://github.com/mstksg/hmatrix-backprop#readme>")
    (license license:bsd-3)))

haskell-8.10-hmatrix-backprop

(define-public haskell-8.10-hw-conduit-merges
  (package
    (name "haskell-8.10-hw-conduit-merges")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit-merges/hw-conduit-merges-"
                    version ".tar.gz"))
              (sha256
               (base32
                "042i1cs7qpjs8q8birr6xjzyxp28y7l6isv2fwkisv4agx8kfgm0"))))
    (properties `((upstream-name . "hw-conduit-merges") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0r9vq3ibdbkwxg26ds9dllhkgpbhlrv0i02babjpmd3g1nznp0ms")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/haskell-works/hw-conduit-merges#readme")
    (synopsis "Additional merges and joins for Conduit")
    (description
     "Additional merges and joins for Conduit. Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hw-conduit-merges

(define-public haskell-8.10-hw-excess
  (package
    (name "haskell-8.10-hw-excess")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-excess/hw-excess-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0xiyf3xyg6f4kgkils9ycx6q0qcsbd6rw4m9lizw9295mnp05s3g"))))
    (properties `((upstream-name . "hw-excess") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "09c7x1qkmjs8bl9gzcb6ykls3jjj75i8hvwdfcx1zgiwg79w1g1k")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hw-bits)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-hw-rankselect-base)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-excess#readme")
    (synopsis "Excess")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hw-excess

(define-public haskell-8.10-hw-json-simd
  (package
    (name "haskell-8.10-hw-json-simd")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-json-simd/hw-json-simd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bpfyx2bd7pcr8y8bfahcdm30bznqixfawraq3xzy476vy9ppa9n"))))
    (properties `((upstream-name . "hw-json-simd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-avx2" "-f-bmi2" "-fsse42")
       #:cabal-revision
       ("4" "0ragyq509nxy5ax58h84b6984lwnhklkk8nfafmxh5fxq66214cy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/haskell-works/hw-json-simd#readme")
    (synopsis "SIMD-based JSON semi-indexer")
    (description
     "Please see the README on GitHub at <https://github.com/haskell-works/hw-json-simd#readme>")
    (license license:bsd-3)))

haskell-8.10-hw-json-simd

(define-public haskell-8.10-hw-packed-vector
  (package
    (name "haskell-8.10-hw-packed-vector")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-packed-vector/hw-packed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13hly2yzx6kx4j56iksgj4i3wmvg7rmxq57d0g87lmybzhha9q38"))))
    (properties `((upstream-name . "hw-packed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1ryh9nmpg3925lrr5a4wfsdv3f4a6rshrqn5pzbkqchh4mx39cpf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-doctest-discover)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-generic-lens)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-hw-bits)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-hw-hspec-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hw-prim)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-works/hw-packed-vector#readme")
    (synopsis "Packed Vector")
    (description "Packed Vector. Please see README.md")
    (license license:bsd-3)))

haskell-8.10-hw-packed-vector

(define-public haskell-8.10-imagesize-conduit
  (package
    (name "haskell-8.10-imagesize-conduit")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/imagesize-conduit/imagesize-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06dc0453l7n3g05pg118y4smlzkl6p56zazpi4dr41dkg12pii9i"))))
    (properties `((upstream-name . "imagesize-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0p4zmizr01pg3d7gb0q88j1alvvlzbdvzyf1wbgajng68a4g0li9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/silkapp/imagesize-conduit")
    (synopsis "Determine the size of some common image formats.")
    (description
     "Currently supports PNG, GIF, and JPEG. This package provides a Sink that will consume the minimum number of bytes necessary to determine the image dimensions.")
    (license license:bsd-3)))

haskell-8.10-imagesize-conduit

(define-public haskell-8.10-influxdb
  (package
    (name "haskell-8.10-influxdb")
    (version "1.9.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/influxdb/influxdb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08nqby0m69n8vqppprd3wk5z4r0aqs8kggkjzps106k809q0ycdg"))))
    (properties `((upstream-name . "influxdb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-optional-args)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/maoe/influxdb-haskell")
    (synopsis "InfluxDB client library for Haskell")
    (description "@@influxdb@@ is an InfluxDB client library for Haskell.

See \"Database.InfluxDB\" for a quick start guide.")
    (license license:bsd-3)))

haskell-8.10-influxdb

(define-public haskell-8.10-insert-ordered-containers
  (package
    (name "haskell-8.10-insert-ordered-containers")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "11awwf3lm3qzjqxy8gw9cizr30228cjwhqzff7wvjvdx131s0raa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-optics-extra)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/phadej/insert-ordered-containers#readme")
    (synopsis
     "Associative containers retaining insertion order for traversals.")
    (description
     "Associative containers retaining insertion order for traversals.

The implementation is based on `unordered-containers`.")
    (license license:bsd-3)))

haskell-8.10-insert-ordered-containers

(define-public haskell-8.10-intro
  (package
    (name "haskell-8.10-intro")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intro/intro-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x48bj9nri2zhsjpwx08nvjmpsjq6zd61npa02zsf357wylxir0x"))))
    (properties `((upstream-name . "intro") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-optics)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-writer-cps-mtl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/minad/intro#readme")
    (synopsis "Safe and minimal prelude")
    (description
     "Intro is a modern Prelude which provides safe alternatives
for most of the partial functions and follows other
best practices, e.g., Text is preferred over String.
For String overloading the extension 'OverloadedStrings' should be used.
Container types and Monad transformers are provided.

Most important - this Prelude tries to keep things simple.
This means it just reexports from base and commonly used libraries
and adds only very few additional functions.
Everything is exported explicitly to provide a stable interface
and to improve the quality of the documentation.")
    (license license:expat)))

haskell-8.10-intro

(define-public haskell-8.10-invertible
  (package
    (name "haskell-8.10-invertible")
    (version "0.2.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invertible/invertible-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ngcmy59cyrg5idcn8a4gxg6ipq88rhhwhdb09gra8jcraq9n7ii"))))
    (properties `((upstream-name . "invertible") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-arrows" "-finvariant" "-flens" "-fpartial-isomorphisms" "-f-piso" "-fsemigroupoids" "-f-typecompose")
       #:cabal-revision
       ("1" "19xcczz26ji5xaws4ikvacqz991qgislj32hs8rlks07qw3qmnbn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-invariant)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-partial-isomorphisms)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "https://hackage.haskell.org/package/invertible")
    (synopsis
     "bidirectional arrows, bijective functions, and invariant functors")
    (description
     "Representations and operations for bidirectional arrows (total isomorphisms: an
arrow paired with its inverse).  Classes for invariant functors and monoidal
functors.  Includes a number of useful bijections and operations, as well as
interoperability with related packages.

Most users will want to import one or more of \"Data.Invertible\" qualified, \"Control.Invertible.Monoidal\" unqualified, and any additional compatibility modules.")
    (license license:bsd-3)))

haskell-8.10-invertible

(define-public haskell-8.10-language-nix
  (package
    (name "haskell-8.10-language-nix")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parsec-class)))
    (home-page
     "https://github.com/NixOS/cabal2nix/tree/master/language-nix#readme")
    (synopsis "Data types and functions to represent the Nix language")
    (description
     "Data types and useful functions to represent and manipulate the Nix
language.")
    (license license:bsd-3)))

haskell-8.10-language-nix

(define-public haskell-8.10-lens-action
  (package
    (name "haskell-8.10-lens-action")
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
       ("1" "1nj5a48vpwdaq2vg0c5sniwnyw7ansvhvkvg163damg9cjzysji7")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)))
    (home-page "http://github.com/ekmett/lens-action/")
    (synopsis "Monadic Getters and Folds")
    (description "This package contains combinators and types for working with
monadic getters and folds as split off from the original
lens package.")
    (license license:bsd-3)))

haskell-8.10-lens-action

(define-public haskell-8.10-lens-aeson
  (package
    (name "haskell-8.10-lens-aeson")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-aeson/lens-aeson-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05jyn6rn0anhgfmk754gmmpcy5jv3ki213z4v243n9jvdjdlg7ms"))))
    (properties `((upstream-name . "lens-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0l1hkkpp4blkhmbpswl6lqww6wpfm327f8knq1lskhnisbnfmj2j")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/lens/lens-aeson/")
    (synopsis "Law-abiding lenses for aeson")
    (description "Law-abiding lenses for aeson.")
    (license license:expat)))

haskell-8.10-lens-aeson

(define-public haskell-8.10-lens-csv
  (package
    (name "haskell-8.10-lens-csv")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-cassava)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://github.com/ChrisPenner/lens-csv#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-csv#readme>")
    (license license:bsd-3)))

haskell-8.10-lens-csv

(define-public haskell-8.10-lens-datetime
  (package
    (name "haskell-8.10-lens-datetime")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-datetime/lens-datetime-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m6cns38xggw8kcc9h0mf4q024cvc8njm7n33f8gi7hwyxxqs7xv"))))
    (properties `((upstream-name . "lens-datetime") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://github.com/nilcons/lens-datetime")
    (synopsis "Lenses for Data.Time.* types")
    (description
     "The @@lens-datetime@@ library provides a unified lens based accessors
to the various types in @@Data.Time.Clock@@, @@Data.Time.Calendar@@ and
@@Data.Time.LocalTime@@. This library only tries to make some of the
common use-cases convenient, it doesn't aim for completeness. If you
want completeness and/or efficiency try the @@thyme@@ package instead
(<http://hackage.haskell.org/package/thyme>).

Demonstration of basic uses.

>import Control.Lens
>import Data.Time
>import Data.Time.Lens
>
>aDay :: Day
>aDay = fromGregorian 2013 08 22
>
>aLocal :: LocalTime
>aLocal = LocalTime aDay (TimeOfDay 13 45 28)
>
>aUTC :: UTCTime
>aUTC = UTCTime aDay 7458.9

You can then do the following:

>> aLocal ^. years
>2013
>> aUTC ^. months
>8
>> aLocal & time .~ midnight
>2013-08-22 00:00:00
>> aUTC & days .~ 1 & months .~ 1
>2013-01-01 02:04:18.9 UTC

You can manipulate the date-time values with proper roll-over
behavior via the @@FlexibleDateTime@@ mechanism:

>> aLocal & flexDT.months +~ 12
>2014-08-22 13:45:28
>> aUTC & flexDT.days +~ 100
>2013-11-30 02:04:18.9 UTC
>> aLocal & flexDT.minutes +~ 120
>2013-08-22 15:45:28
>> aLocal & flexDT %~ ((days +~ 7) . (hours +~ 2))
>2013-08-22 13:45:28")
    (license license:bsd-3)))

haskell-8.10-lens-datetime

(define-public haskell-8.10-lens-misc
  (package
    (name "haskell-8.10-lens-misc")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://github.com/louispan/lens-misc#readme")
    (synopsis "Miscellaneous lens utilities.")
    (description "Handy functions when using lens.")
    (license license:bsd-3)))

haskell-8.10-lens-misc

(define-public haskell-8.10-lens-process
  (package
    (name "haskell-8.10-lens-process")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lens-process/lens-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gms2bxa1sygpid09cg3nk1kyhkg4s38dqs0gd77ia2aln6zd7qg"))))
    (properties `((upstream-name . "lens-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y1ran4pjqr2226rkmiqij0pf980npr7iv88y5bgcg7hs22f3b57")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://github.com/emilypi/lens-process")
    (synopsis "Optics for system processes")
    (description
     "'lens-process' is a set of multi-purpose optics and convenience
combinators for working with the `process` library, including
a more well-typed api for the parts that can be typed.")
    (license license:bsd-3)))

haskell-8.10-lens-process

(define-public haskell-8.10-lens-properties
  (package
    (name "haskell-8.10-lens-properties")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "QuickCheck properties for lens")
    (description "QuickCheck properties for lens.")
    (license license:bsd-3)))

haskell-8.10-lens-properties

(define-public haskell-8.10-lens-regex
  (package
    (name "haskell-8.10-lens-regex")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-samples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-regex-base)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-posix)))
    (home-page "https://github.com/himura/lens-regex")
    (synopsis "Lens powered regular expression")
    (description
     "lens interface for regex-base. Please see the README on Github at <https://github.com/himura/lens-regex#readme>")
    (license license:bsd-3)))

haskell-8.10-lens-regex

(define-public haskell-8.10-lens-regex-pcre
  (package
    (name "haskell-8.10-lens-regex-pcre")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-pcre-heavy)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-pcre-light)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ChrisPenner/lens-regex-pcre#readme")
    (synopsis "A lensy interface to regular expressions")
    (description
     "Please see the README on GitHub at <https://github.com/ChrisPenner/lens-regex-pcre#readme>")
    (license license:bsd-3)))

haskell-8.10-lens-regex-pcre

(define-public haskell-8.10-linear
  (package
    (name "haskell-8.10-linear")
    (version "1.21.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/linear/linear-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ax6prmc7b53w0lz5ddc40wrjj9bm7wldpp57283gx9hdf8qrb35"))))
    (properties `((upstream-name . "linear") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftemplate-haskell" "-f-herbie")
       #:cabal-revision
       ("1" "13pv3k0yayib0l6wq09bz54r44lxjhvvpc49sgnlc8p9959cs8q9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-bytes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-simple-reflect)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "http://github.com/ekmett/linear/")
    (synopsis "Linear Algebra")
    (description
     "Types and combinators for linear algebra on free vector spaces")
    (license license:bsd-3)))

haskell-8.10-linear

(define-public haskell-8.10-lsp-types
  (package
    (name "haskell-8.10-lsp-types")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lsp-types/lsp-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1axl62yafkxh414dxr5i7pwqw0s3kkqphs7b259qk33vin3qayk3"))))
    (properties `((upstream-name . "lsp-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "07fmcyqq20q1g8zc61jz7vz8fdpn5p1nrf3yda28qfdnfimb48mc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-dependent-sum)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-dependent-sum-template)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-rope-utf16-splay)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-some)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp")
    (synopsis
     "Haskell library for the Microsoft Language Server Protocol, data types")
    (description
     "An implementation of the types to allow language implementors to
support the Language Server Protocol for their specific language.")
    (license license:expat)))

haskell-8.10-lsp-types

(define-public haskell-8.10-lz4-frame-conduit
  (package
    (name "haskell-8.10-lz4-frame-conduit")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lz4-frame-conduit/lz4-frame-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n07cgdwq2miskgqj354hnjghmp555d7n8b39b00sjigdjzkbala"))))
    (properties `((upstream-name . "lz4-frame-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-inline-c)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/nh2/lz4-frame-conduit#readme")
    (synopsis "Conduit implementing the official LZ4 frame streaming format")
    (description
     "Conduit implementing the official LZ4 frame streaming format.
Compatible with the lz4 command line utility.")
    (license license:expat)))

haskell-8.10-lz4-frame-conduit

(define-public haskell-8.10-machines
  (package
    (name "haskell-8.10-machines")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/machines/machines-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pgsa67j9l1zmazlqdb5wg3cqsikyfvkq8yih7iwcqzkys5qssvr"))))
    (properties `((upstream-name . "machines") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-adjunctions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-pointed)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "http://github.com/ekmett/machines/")
    (synopsis "Networked stream transducers")
    (description
     "Networked stream transducers

Rúnar Bjarnason's talk on machines can be downloaded from:
<http://web.archive.org/web/20161029161813/https://dl.dropboxusercontent.com/u/4588997/Machines.pdf>")
    (license license:bsd-3)))

haskell-8.10-machines

(define-public haskell-8.10-massiv-io
  (package
    (name "haskell-8.10-massiv-io")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-io/massiv-io-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1g20n4h1x03i7q36a6d65v2ylmrr6m8s2g91jnpx1lj7a91hc5c7"))))
    (properties `((upstream-name . "massiv-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vq7ka61nzzzqa050sfmlbmlhayj92ak9w83121lnacvaqs5ndan")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-Color)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-massiv)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-massiv-test)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-netpbm)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/lehins/massiv-io")
    (synopsis "Import/export of Image files into massiv Arrays")
    (description
     "This package contains functionality for import/export of arrays
into the real world. For now it only has the ability to read/write
image files in various formats.")
    (license license:bsd-3)))

haskell-8.10-massiv-io

(define-public haskell-8.10-metrics
  (package
    (name "haskell-8.10-metrics")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/metrics/metrics-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1f2vqwldp457956bx839r9v3xpmp95q42insn2xcdw669rq6wpym"))))
    (properties `((upstream-name . "metrics") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/metrics")
    (synopsis "High-performance application metric tracking")
    (description
     "A port of Coda Hale's excellent metrics library for the JVM

<https://github.com/codahale/metrics>

For motivation about why you might want to track application metrics, check Coda\\'s talk:

<http://www.youtube.com/watch?v=czes-oa0yik>

Interesting portions of this package's documentation were also appropriated from the metrics library's documentation:

<http://metrics.codahale.com>")
    (license license:expat)))

haskell-8.10-metrics

(define-public haskell-8.10-mini-egison
  (package
    (name "haskell-8.10-mini-egison")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mini-egison/mini-egison-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x78p2s706kb6w4ci6w0av19zhw4i64bbl6xmvwrjs66xjgxrai6"))))
    (properties `((upstream-name . "mini-egison") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-egison-pattern-src)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-egison-pattern-src-th-mode)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primes)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-recursion-schemes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-sort)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/egison/egison-haskell#readme")
    (synopsis "Template Haskell Implementation of Egison Pattern Matching")
    (description
     "This package provides the pattern-matching facility that fulfills the following three criteria for practical pattern matching for non-free data types\\: (i) non-linear pattern matching with backtracking; (ii) extensibility of pattern-matching algorithms; (iii) ad-hoc polymorphism of patterns.
Non-free data types are data types whose data have no standard forms.
For example, multisets are non-free data types because the multiset '[a,b,b]' has two other equivalent but literally different forms '[b,a,b]' and '[b,b,a]'.

The design of the pattern-matching facility is originally proposed in <https://arxiv.org/abs/1808.10603 this paper> and implemented in <http://github.com/egison/egison/ the Egison programming language>.")
    (license license:expat)))

haskell-8.10-mini-egison

(define-public haskell-8.10-monad-logger
  (package
    (name "haskell-8.10-monad-logger")
    (version "0.3.36")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-logger/monad-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12rw0k01gkhiqjm2fhxgkmribksmizhj14xphfn8fkd86wzl0vbh"))))
    (properties `((upstream-name . "monad-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate_haskell")
       #:cabal-revision
       ("2" "14p5wkww771x0apby0bdgzdzwy9kjsm4zbbhi24xazlncy31cqqq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-fast-logger)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stm-chans)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/snoyberg/monad-logger#readme")
    (synopsis "A class of monads which can log messages.")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/monad-logger>")
    (license license:expat)))

haskell-8.10-monad-logger

(define-public haskell-8.10-moss
  (package
    (name "haskell-8.10-moss")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/moss/moss-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17ac31r26c8zddp3qdk573lyry2bz7c0y49q0adln3psd39czzw0"))))
    (properties `((upstream-name . "moss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-simple)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mbg/moss#readme")
    (synopsis "Haskell client for Moss")
    (description
     "Please see the README on Github at <https://github.com/mbg/moss#readme>")
    (license license:expat)))

haskell-8.10-moss

(define-public haskell-8.10-nvim-hs
  (package
    (name "haskell-8.10-nvim-hs")
    (version "2.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nvim-hs/nvim-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bg94adja6xvzlv1x849nrfpb0i5mjbp19f9cwhaa4iw1qs532rf"))))
    (properties `((upstream-name . "nvim-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0bd90ndkk4lll4rvr87b9vil2h8jlchkh1fag1nrhj90lnczgpnl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-cereal-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-foreign-store)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-messagepack)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-path)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-path-io)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/neovimhaskell/nvim-hs")
    (synopsis "Haskell plugin backend for neovim")
    (description
     "This package provides a plugin provider for neovim. It allows you to write
plugins for one of the great editors of our time in the best programming
language of our time! ;-)

You should find all the documentation you need inside the \"Neovim\" module.
Most other modules are considered internal, so don't be annoyed if using
things from there may break your code!

The following modules may also be of interest and they should not change
their API: \"Neovim.Quickfix\"

If you want to write unit tests that interact with neovim, \"Neovim.Test\"
provides some useful functions for that.

If you are keen to debug /nvim-hs/ or a module you are writing, take a look
at the \"Neovim.Debug\" module.

If you spot any errors or if you have great ideas, feel free to open an issue
on github.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-nvim-hs

(define-public haskell-8.10-pager
  (package
    (name "haskell-8.10-pager")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pager/pager-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wzfsindjxx61nca36hhldy0y33pgagg506ls9ldvrkvl4n4y7iy"))))
    (properties `((upstream-name . "pager") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/pharpend/pager")
    (synopsis "Open up a pager, like 'less' or 'more'")
    (description
     "This opens up the user's $PAGER. On Linux, this is usually called @@less@@. On
the various BSDs, this is usually @@more@@.

CHANGES

[0.1.1.0] Add @@printOrPage@@ function and @@sendToPagerStrict@@ function.")
    (license license:bsd-2)))

haskell-8.10-pager

(define-public haskell-8.10-pipes-extras
  (package
    (name "haskell-8.10-pipes-extras")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0gqqhvq5h6kkz6k4dpvlky7lbrfbgqp30whn7cglaplrqzlfwbvd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)))
    (home-page "https://hackage.haskell.org/package/pipes-extras")
    (synopsis "Extra utilities for pipes")
    (description
     "This package holds miscellaneous utilities related to the @@pipes@@
library.")
    (license license:bsd-3)))

haskell-8.10-pipes-extras

(define-public haskell-8.10-prairie
  (package
    (name "haskell-8.10-prairie")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/prairie/prairie-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n27ylk5yzvvl6isykw0hjarnzwx652fc0xy6qzfdj0swy0bgiw7"))))
    (properties `((upstream-name . "prairie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1yp173nnsk875wvqqnr9ifkvj8k7zcjbgvzpkyc0sxkq3nlrjs9q")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-constraints)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://github.com/parsonsmatt/prairie#readme")
    (synopsis "A first class record field library")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/prairie#readme>")
    (license license:bsd-3)))

haskell-8.10-prairie

(define-public haskell-8.10-project-template
  (package
    (name "haskell-8.10-project-template")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/project-template/project-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ac43x36i6b595jhflif1qqhri1rrqw90ama5n7rsh0ffnzyb69d"))))
    (properties `((upstream-name . "project-template") (hidden? . #f)))
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
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/fpco/haskell-ide")
    (synopsis "Specify Haskell project templates and generate files")
    (description
     "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>")
    (license license:bsd-3)))

haskell-8.10-project-template

(define-public haskell-8.10-purescript-bridge
  (package
    (name "haskell-8.10-purescript-bridge")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations-pretty-diff)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://hackage.haskell.org/package/purescript-bridge")
    (synopsis "Generate PureScript data types from Haskell data types")
    (description "")
    (license license:bsd-3)))

haskell-8.10-purescript-bridge

(define-public haskell-8.10-quadratic-irrational
  (package
    (name "haskell-8.10-quadratic-irrational")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quadratic-irrational/quadratic-irrational-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11nksvr6wnbrphq3ymg93w2xpqw6in3j1qpgbl2f3x9bgiss2l7s"))))
    (properties `((upstream-name . "quadratic-irrational") (hidden? . #f)))
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
                     haskell-8.10-arithmoi)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-roots)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-numbers)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ion1/quadratic-irrational")
    (synopsis "An implementation of quadratic irrationals")
    (description
     "A library for exact computation with
<http://en.wikipedia.org/wiki/Quadratic_irrational quadratic irrationals>
with support for exact conversion from and to
<http://en.wikipedia.org/wiki/Periodic_continued_fraction (potentially periodic) simple continued fractions>.

A quadratic irrational is a number that can be expressed in the form

> (a + b √c) / d

where @@a@@, @@b@@ and @@d@@ are integers and @@c@@ is a square-free natural number.

Some examples of such numbers are

* @@7/2@@,

* @@√2@@,

* @@(1 + √5)\\/2@@
(<http://en.wikipedia.org/wiki/Golden_ratio the golden ratio>),

* solutions to quadratic equations with rational constants – the
<http://en.wikipedia.org/wiki/Quadratic_formula quadratic formula> has a
familiar shape.

A simple continued fraction is a number expressed in the form

> a + 1/(b + 1/(c + 1/(d + 1/(e + …))))

or alternatively written as

> [a; b, c, d, e, …]

where @@a@@ is an integer and @@b@@, @@c@@, @@d@@, @@e@@, … are positive integers.

Every finite SCF represents a rational number and every infinite, periodic
SCF represents a quadratic irrational.

> 3.5      = [3; 2]
> (1+√5)/2 = [1; 1, 1, 1, …]
> √2       = [1; 2, 2, 2, …]")
    (license license:expat)))

haskell-8.10-quadratic-irrational

(define-public haskell-8.10-quickcheck-arbitrary-adt
  (package
    (name "haskell-8.10-quickcheck-arbitrary-adt")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page
     "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme")
    (synopsis "Generic typeclasses for generating arbitrary ADTs")
    (description "Improve arbitrary value generation for ADTs")
    (license license:bsd-3)))

haskell-8.10-quickcheck-arbitrary-adt

(define-public haskell-8.10-radius
  (package
    (name "haskell-8.10-radius")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-iproute)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/codemonkeylabs/RADIUS")
    (synopsis "Remote Authentication Dial In User Service (RADIUS)")
    (description
     "This module provides types and on the wire de/coding of RADIUS packets as per RFC2865")
    (license license:bsd-3)))

haskell-8.10-radius

(define-public haskell-8.10-rainbow
  (package
    (name "haskell-8.10-rainbow")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://www.github.com/massysett/rainbow")
    (synopsis "Print text to terminal with colors and effects")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-8.10-rainbow

(define-public haskell-8.10-random-tree
  (package
    (name "haskell-8.10-random-tree")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-MonadRandom)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-random-shuffle)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tree-fun)))
    (home-page "https://hackage.haskell.org/package/random-tree")
    (synopsis "Create random trees")
    (description "")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-random-tree

(define-public haskell-8.10-rhine-gloss
  (package
    (name "haskell-8.10-rhine-gloss")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rhine-gloss/rhine-gloss-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xy135nqjrzqxyvcma7mqp05plfw8xhl9qn827wswrqy8wcg85pm"))))
    (properties `((upstream-name . "rhine-gloss") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-dunai)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-gloss)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-rhine)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "https://hackage.haskell.org/package/rhine-gloss")
    (synopsis "Gloss backend for Rhine")
    (description
     "This package provides a simple wrapper for the `gloss` library,
or rather the function `Graphics.Gloss.play`,
enabling you to write `gloss` applications as signal functions.")
    (license license:bsd-3)))

haskell-8.10-rhine-gloss

(define-public haskell-8.10-selda-postgresql
  (package
    (name "haskell-8.10-selda-postgresql")
    (version "0.1.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-postgresql/selda-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dxycilvxjbi1cy9c0rzq9ywh48i2lh37j77a5i1x6v1625h51mk"))))
    (properties `((upstream-name . "selda-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-haste")
       #:cabal-revision
       ("1" "10qlb9yswjsvpj1f7dmm0amkq52g00f1kc2xqh1d7vfkvkb2bhk6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-selda)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-selda-json)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/valderman/selda")
    (synopsis "PostgreSQL backend for the Selda database EDSL.")
    (description "PostgreSQL backend for the Selda database EDSL.
Requires the PostgreSQL @@libpq@@ development libraries to be
installed.")
    (license license:expat)))

haskell-8.10-selda-postgresql

(define-public haskell-8.10-semialign-indexed
  (package
    (name "haskell-8.10-semialign-indexed")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign-indexed/semialign-indexed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1b6amfhwk968ah56w8vala3hbpzf9mfza2ajhdnvzcdiyqyxvwb0"))))
    (properties `((upstream-name . "semialign-indexed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0vmvmnmb79cc11rbl136z74yyb16klswpx38ayxal8m52lyggqpv")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-semialign)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/isomorphism/these")
    (synopsis "SemialignWithIndex, i.e. izipWith and ialignWith")
    (description
     "This package provides @@SemialignWithIndex@@ with two members

@@
class (FunctorWithIndex i f, Semialign f) => SemialignWithIndex i f | f -> i where
\\    ialignWith :: (i -> These a b -> c) -> f a -> f b -> f c
@@

@@
class (SemialignWithIndex i f, Zip f) => ZipWithIndex i f | f -> i where
\\    izipWith   :: (i -> a -> b -> c)    -> f a -> f b -> f c
@@

Superclass @@FunctorWithIndex@@ is from @@lens@@ package.
See https://hackage.haskell.org/package/semialign-optics for @@optics@@ variant.")
    (license license:bsd-3)))

haskell-8.10-semialign-indexed

(define-public haskell-8.10-sequenceTools
  (package
    (name "haskell-8.10-sequenceTools")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sequenceTools/sequenceTools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fbdsyszmkgwiv06145s76m22a60xmmgrhv9xfwc1691jjwwbdl3"))))
    (properties `((upstream-name . "sequenceTools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-lens-family)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-pipes-group)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-pipes-ordered-zip)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-pipes-safe)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-sequence-formats)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/sequenceTools")
    (synopsis "A package with tools for processing DNA sequencing data")
    (description
     "The tools in this package process sequencing Data, in particular from ancient DNA sequencing libraries. Key tool in this package is pileupCaller, a tool to randomly sample genotypes from sequencing data.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-sequenceTools

(define-public haskell-8.10-serf
  (package
    (name "haskell-8.10-serf")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/serf/serf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ry0shqmazxcsjxsh6amvz2fky2fy3wwlck7d331j8csz7fwdjfn"))))
    (properties `((upstream-name . "serf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-operational)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/sanetracker/serf")
    (synopsis "Interact with Serf via Haskell.")
    (description "Bindings to most of the commands provided by serf.")
    (license license:expat)))

haskell-8.10-serf

(define-public haskell-8.10-servant-client
  (package
    (name "haskell-8.10-servant-client")
    (version "0.18.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-client/servant-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ddn7x9z2znkkyn6l2x6a85vq673q4vppr0q9n56ibvl3k3saxj0"))))
    (properties `((upstream-name . "servant-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-http-client)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-servant-client-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Automatic derivation of querying functions for servant")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.10-servant-client

(define-public haskell-8.10-servant-docs
  (package
    (name "haskell-8.10-servant-docs")
    (version "0.11.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-docs/servant-docs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ynjyyxlzb2j5d92rryqqa97rp16582mbmvnv7syczha5ziq24nk"))))
    (properties `((upstream-name . "servant-docs") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-string-conversions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-universe-base)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis "generate API docs for your servant webservice")
    (description
     "Library for generating API docs from a servant API definition.

Runnable example <https://github.com/haskell-servant/servant/blob/master/servant-docs/example/greet.hs here>.

<https://github.com/haskell-servant/servant/blob/master/servant-docs/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.10-servant-docs

(define-public haskell-8.10-servant-foreign
  (package
    (name "haskell-8.10-servant-foreign")
    (version "0.15.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-foreign/servant-foreign-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bznb73rbgfgkg7n4pxghkqsfca0yw9vak73c6w8sqvc2mjnc7mz"))))
    (properties `((upstream-name . "servant-foreign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1qjj2v95k800j9w8drc4fjcbazzdh2f7dl7s99g9r48dg9dk5cfz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://docs.servant.dev/")
    (synopsis
     "Helpers for generating clients for servant APIs in any programming language")
    (description
     "Helper types and functions for generating client functions for servant APIs in any programming language

This package provides types and functions that collect all the data needed to generate client functions in the programming language of your choice. This effectively means you only have to write the code that \"pretty-prints\" this data as some code in your target language.

See the servant-js package for an example

<https://github.com/haskell-servant/servant/blob/master/servant-foreign/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.10-servant-foreign

(define-public haskell-8.10-servant-http-streams
  (package
    (name "haskell-8.10-servant-http-streams")
    (version "0.18.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-http-streams/servant-http-streams-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cc4qmbzq4n1yp5yfg76w1skkksh13qlbza9i2pgsxa9sc39s5fa"))))
    (properties `((upstream-name . "servant-http-streams") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-http-common)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-http-media)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-streams)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-servant)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-servant-client-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://docs.servant.dev/")
    (synopsis "Automatic derivation of querying functions for servant")
    (description
     "This library lets you derive automatically Haskell functions that
let you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.

See <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.

<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>")
    (license license:bsd-3)))

haskell-8.10-servant-http-streams

(define-public haskell-8.10-shell-conduit
  (package
    (name "haskell-8.10-shell-conduit")
    (version "5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shell-conduit/shell-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02zilgrb64x0rk4b4bihprwq9fr5gydzj003y3fq8ryf7r60g41w"))))
    (properties `((upstream-name . "shell-conduit") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-monads-tf)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/psibi/shell-conduit")
    (synopsis "Write shell scripts with Conduit")
    (description
     "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.")
    (license license:bsd-3)))

haskell-8.10-shell-conduit

(define-public haskell-8.10-simple-sendfile
  (package
    (name "haskell-8.10-simple-sendfile")
    (version "0.2.30")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-sendfile/simple-sendfile-"
                    version ".tar.gz"))
              (sha256
               (base32
                "112j0qfsjazf9wg1zywf7hjybgsiywk9wkm27yi8xzv27hmlv1mn"))))
    (properties `((upstream-name . "simple-sendfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fallow-bsd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/simple-sendfile")
    (synopsis "Cross platform library for the sendfile system call")
    (description "Cross platform library for the sendfile system call.
This library tries to call minimum system calls which
are the bottleneck of web servers.")
    (license license:bsd-3)))

haskell-8.10-simple-sendfile

(define-public haskell-8.10-smash-lens
  (package
    (name "haskell-8.10-smash-lens")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smash-lens/smash-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j7v3713aahp3vh7dswrkdfrnksi1zlw9iv9zanhb714s6anyq66"))))
    (properties `((upstream-name . "smash-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-smash)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Optics for the `smash` library")
    (description
     "Prisms, Traversals, and combinators for the `smash` library.")
    (license license:bsd-3)))

haskell-8.10-smash-lens

(define-public haskell-8.10-speedy-slice
  (package
    (name "haskell-8.10-speedy-slice")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-kan-extensions)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-mcmc-types)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-mwc-probability)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-8.10-speedy-slice

(define-public haskell-8.10-sqlcli
  (package
    (name "haskell-8.10-sqlcli")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sqlcli/sqlcli-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kscw8l14cx7q55vq72vg8ydfz19s41prdlbg9b11fhzv691iwgd"))))
    (properties `((upstream-name . "sqlcli") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fodbc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-logging)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) unixodbc)))
    (home-page "http://hub.darcs.net/mihaigiurgeanu/sqlcli")
    (synopsis "Bindings for SQL/CLI (ODBC) C API.")
    (description
     "See [NEWS](https://hub.darcs.net/mihaigiurgeanu/sqlcli/browse/NEWS)
for the ChangeLog.
Provides bindings to all the SQL/CLI C API standard.
SQL/CLI C API is a subset of ODBC. You can use this package to
access databases through ODBC. It is tested on Windows, Linux
and Mac operating Systems whith Postgres, Oracle and SQLite.
This package also contains Haskell wrapers to the foreign C calls and
utilities to make using the SQL/CLI easier for the Haskell
programmer.
You can use this to acces any database through ODBC.")
    (license license:bsd-3)))

haskell-8.10-sqlcli

(define-public haskell-8.10-squeal-postgresql
  (package
    (name "haskell-8.10-squeal-postgresql")
    (version "0.7.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/squeal-postgresql/squeal-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r8rihfn2bmr32h06lcdmp6wiyj1c4m03x4y2sfq8bgwmn5xb50r"))))
    (properties `((upstream-name . "squeal-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-binary-parser)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-free-categories)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generics-sop)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-network-ip)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-postgresql-binary)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-records-sop)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-unliftio-pool)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql)))
    (home-page "https://github.com/morphismtech/squeal")
    (synopsis "Squeal PostgreSQL Library")
    (description "Squeal is a type-safe embedding of PostgreSQL in Haskell")
    (license license:bsd-3)))

haskell-8.10-squeal-postgresql

(define-public haskell-8.10-stm-conduit
  (package
    (name "haskell-8.10-stm-conduit")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-conduit/stm-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hhlxvpp7mah8dcvkknh6skx44jfk3092zz2w52zlr255bkmn3p8"))))
    (properties `((upstream-name . "stm-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-cereal-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-monad-loops)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stm-chans)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/cgaebel/stm-conduit")
    (synopsis
     "Introduces conduits to channels, and promotes using conduits concurrently.")
    (description
     "Provides two simple conduit wrappers around STM channels - a source and a sink.")
    (license license:bsd-3)))

haskell-8.10-stm-conduit

(define-public haskell-8.10-stratosphere
  (package
    (name "haskell-8.10-stratosphere")
    (version "0.59.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stratosphere/stratosphere-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gcvz8gpyj495jr5qa2jx2yay7ip3hs1dd4bqckmam8llyz2gvxv"))))
    (properties `((upstream-name . "stratosphere") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-flibrary-only")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-aeson-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/frontrowed/stratosphere#readme")
    (synopsis "EDSL for AWS CloudFormation")
    (description "EDSL for AWS CloudFormation")
    (license license:expat)))

haskell-8.10-stratosphere

(define-public haskell-8.10-strict-tuple-lens
  (package
    (name "haskell-8.10-strict-tuple-lens")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-tuple-lens/strict-tuple-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vvhbzbyfvkx76scygg8gwfp01cw6ks38hk0gb70xdl2lyzi80wg"))))
    (properties `((upstream-name . "strict-tuple-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0875r7kva6ym17fdklh18vm4s04sd9pj0w55km8jv2kmbkmfja8k")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-strict-tuple)))
    (home-page "https://github.com/emilypi/strict-tuple-lens")
    (synopsis "Optics for the `strict-tuple` library")
    (description
     "This package provides optics for the `strict-tuple` library, using the `lens` library")
    (license license:bsd-3)))

haskell-8.10-strict-tuple-lens

(define-public haskell-8.10-subcategories
  (package
    (name "haskell-8.10-subcategories")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/subcategories/subcategories-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09ri226jxcig4f3jxcjh63skvv48myis58ffj7zrmr12sfzkb279"))))
    (properties `((upstream-name . "subcategories") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-foldl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-inspection-testing)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-mono-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-pointed)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-reflection)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-semialign)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-builder)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/konn/subcategories#readme")
    (synopsis "Subcategories induced by class constraints")
    (description
     "Please see the README on GitHub at <https://github.com/konn/subcategories#readme>")
    (license license:bsd-3)))

haskell-8.10-subcategories

(define-public haskell-8.10-sweet-egison
  (package
    (name "haskell-8.10-sweet-egison")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sweet-egison/sweet-egison-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b2rvfgj7l10plgri5ia3l07ip71c9c3259k78z140i57pfjlfh7"))))
    (properties `((upstream-name . "sweet-egison") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-backtracking)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-egison-pattern-src)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-egison-pattern-src-th-mode)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-logict)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primes)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-tasty-discover)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/egison/sweet-egison#readme")
    (synopsis
     "Shallow embedding implementation of non-linear pattern matching")
    (description
     "The [sweet-egison](https://hackage.haskell.org/package/sweet-egison) is a shallow embedding implementation of non-linear pattern matching with extensible and polymorphic patterns.
In other words, this implements [Egison](https:///www.egison.org) pattern matching in Haskell by desugaring pattern expressions.
This library provides a base of the Pattern-Match-Oriented (PMO) programming style for Haskell users at a practical level of efficiency.")
    (license license:bsd-3)))

haskell-8.10-sweet-egison

(define-public haskell-8.10-text-region
  (package
    (name "haskell-8.10-text-region")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-region/text-region-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zy5zb7xg1343hlkwawnbca7f6gal9028ps1kp83fg2vmq1aqk57"))))
    (properties `((upstream-name . "text-region") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1z5l1hv8sc4ida5s4r03ihak612lrq0rf7sdfkw7gf05f67c622p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-unicode-symbols)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-groups)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "https://github.com/mvoidex/text-region")
    (synopsis "Marking text regions")
    (description
     "Provides functions to update text region positions according to text edit actions")
    (license license:bsd-3)))

haskell-8.10-text-region

(define-public haskell-8.10-these-lens
  (package
    (name "haskell-8.10-these-lens")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "Lenses for These")
    (description "This package provides Prism and Traversals for @@These@@.")
    (license license:bsd-3)))

haskell-8.10-these-lens

(define-public haskell-8.10-timelens
  (package
    (name "haskell-8.10-timelens")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)))
    (home-page "http://www.github.com/massysett/timelens")
    (synopsis "Lenses for the time package")
    (description
     "These are lenses for the time package.  Please see the README.md
for more information.")
    (license license:bsd-3)))

haskell-8.10-timelens

(define-public haskell-8.10-tls
  (package
    (name "haskell-8.10-tls")
    (version "1.5.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tls/tls-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "16pp6q0r4l23l3qi8v4yn4gjdsck8mg2jy3x7m7z5g6v9047v7mq"))))
    (properties `((upstream-name . "tls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcompat" "-fnetwork" "-f-hans")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-asn1-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-x509)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-x509-store)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-x509-validation)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-tls")
    (synopsis "TLS/SSL protocol native implementation (Server and Client)")
    (description
     "Native Haskell TLS and SSL protocol implementation for server and client.

This provides a high-level implementation of a sensitive security protocol,
eliminating a common set of security issues through the use of the advanced
type system, high level constructions and common Haskell features.

Currently implement the SSL3.0, TLS1.0, TLS1.1, TLS1.2 and TLS 1.3 protocol,
and support RSA and Ephemeral (Elliptic curve and regular) Diffie Hellman key exchanges,
and many extensions.

Some debug tools linked with tls, are available through the
<http://hackage.haskell.org/package/tls-debug/>.")
    (license license:bsd-3)))

haskell-8.10-tls

(define-public haskell-8.10-trifecta
  (package
    (name "haskell-8.10-trifecta")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-charset)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fingertree)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-parsers)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-prettyprinter)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-reducers)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/trifecta/")
    (synopsis "A modern parser combinator library with convenient diagnostics")
    (description
     "A modern parser combinator library with slicing and Clang-style colored diagnostics

For example:

<<https://i.imgur.com/ZyzUSSn.png>>

<images/example.png (Local Copy)>")
    (license license:bsd-3)))

haskell-8.10-trifecta

(define-public haskell-8.10-validation
  (package
    (name "haskell-8.10-validation")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-assoc)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
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

haskell-8.10-validation

(define-public haskell-8.10-vector-instances
  (package
    (name "haskell-8.10-vector-instances")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-keys)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-pointed)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/ekmett/vector-instances")
    (synopsis "Orphan Instances for 'Data.Vector'")
    (description "")
    (license license:bsd-3)))

haskell-8.10-vector-instances

(define-public haskell-8.10-wai-extra
  (package
    (name "haskell-8.10-wai-extra")
    (version "3.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-extra/wai-extra-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ddgdr0304b3kg50vfjsg3bxlhfp3vmsb4c8i80k8adqzh54hz5l"))))
    (properties `((upstream-name . "wai-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")
       #:cabal-revision
       ("1" "17b7wdbbmscx4di70yi2qkqlzs6vcz2353hh3a7k70x9vn079riz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-cookie)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-fast-logger)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage014)
                     haskell-8.10-http-types)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-http2)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-iproute)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming-commons)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-vault)
                  (@ (gnu packages stackage ghc-8.10 stage015)
                     haskell-8.10-wai)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-wai-logger)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-word8)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-8.10-wai-extra

(define-public haskell-8.10-xml-conduit
  (package
    (name "haskell-8.10-xml-conduit")
    (version "1.9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-conduit/xml-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zzh7xnmbm68dab1vqsjkr6ghxqgnla5nik4amrwlmhbdih1gcdx"))))
    (properties `((upstream-name . "xml-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0m6sknp9xxz8a3dhvyfpyjvxp8ph511w19j4vj1qsd6hl2pazjy6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://github.com/snoyberg/xml")
    (synopsis
     "Pure-Haskell utilities for dealing with XML with the conduit package.")
    (description
     "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/xml-conduit>.")
    (license license:expat)))

haskell-8.10-xml-conduit

(define-public haskell-8.10-yaml
  (package
    (name "haskell-8.10-yaml")
    (version "0.11.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yaml/yaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s0arllihjjqp65jbc8c1w5106i2infppsirvbsifpmpkf14w6pn"))))
    (properties `((upstream-name . "yaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fno-examples" "-fno-exe")
       #:cabal-revision
       ("2" "1dix5jm3d380vjr9l6wqz54zk883kilk8rijlvjp6b13mjxwcj1l")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-aeson)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-libyaml)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-mockery)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-raw-strings-qq)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Support for parsing and rendering YAML documents.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/yaml>")
    (license license:bsd-3)))

haskell-8.10-yaml

(define-public haskell-8.10-zim-parser
  (package
    (name "haskell-8.10-zim-parser")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zim-parser/zim-parser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12apl53kj1lzfkw566z3j5fir8iab25s2pkajb3dmq2lbhwnlzxj"))))
    (properties `((upstream-name . "zim-parser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-binary-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lzma)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/robbinch/zim-parser#readme")
    (synopsis "Read and parse ZIM files")
    (description
     "zim-parser is a library to read and parse ZIM (http://openzim.org) files.
ZiM files contain offline web content (eg. Wikipedia) which can be browsed
locally without an Internet connection.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-zim-parser

(define-public haskell-8.10-zip
  (package
    (name "haskell-8.10-zip")
    (version "1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zip/zip-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1c5pr3hv11dpn4ybd4742qkpqmvb9l3l7xmzlsf65wm2p8071dvj"))))
    (properties `((upstream-name . "zip") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dev" "-f-disable-bzip2" "-f-disable-zstd")
       #:cabal-revision
       ("2" "0gacj2fp0yg45l5vxby0n03lza91zfykk74p6a2r3abrfmvw7kq8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-bzlib-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-zstd)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-digest)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/zip")
    (synopsis "Operations on zip archives")
    (description "Operations on zip archives.")
    (license license:bsd-3)))

haskell-8.10-zip

(define-public haskell-8.10-zip-stream
  (package
    (name "haskell-8.10-zip-stream")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-stream/zip-stream-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fx8kj0ijm3555grhdns7agmi084584fh1v0mvkm4x696h1zzvli"))))
    (properties `((upstream-name . "zip-stream") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-binary-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage016)
                     haskell-8.10-conduit)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-conduit-extra)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-digest)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/zip-stream")
    (synopsis "ZIP archive streaming using conduits")
    (description
     "Process (extract and create) zip files as streams (e.g., over the network), accessing contained files without having to write the zip file to disk (unlike zip-conduit).")
    (license license:bsd-3)))

haskell-8.10-zip-stream

(define-public haskell-8.10-zippers
  (package
    (name "haskell-8.10-zippers")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-traversable)
                  (@ (gnu packages stackage ghc-8.10 stage017)
                     haskell-8.10-lens)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage013)
                     haskell-8.10-semigroupoids)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "http://github.com/ekmett/zippers/")
    (synopsis "Traversal based zippers")
    (description "Traversal based zippers.")
    (license license:bsd-3)))

haskell-8.10-zippers

