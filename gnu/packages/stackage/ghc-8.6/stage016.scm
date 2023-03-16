;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage016)
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
(define-public haskell-8.6-ENIG
  (package
    (name "haskell-8.6-ENIG")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ENIG/ENIG-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zv6dybsnj3kssiyyg69lxyj5wvi5qjx0xp7skg362xzqmi97ch3"))))
    (properties `((upstream-name . "ENIG") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-test-framework-th)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-unicode-transforms)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/QuietJoon/ENIG#readme")
    (synopsis "Auto Korean conjugator/adjustor/adopter/converter")
    (description
     "Please see the README on GitHub at <https://github.com/QuietJoon/ENIG#readme>")
    (license license:bsd-3)))

haskell-8.6-ENIG

(define-public haskell-8.6-H
  (package
    (name "haskell-8.6-H")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cmdargs)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-file-embed)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-inline-r)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)))
    (home-page "https://tweag.github.io/HaskellR")
    (synopsis "The Haskell/R mixed programming environment.")
    (description "This package is part of the HaskellR project.")
    (license license:bsd-3)))

haskell-8.6-H

(define-public haskell-8.6-PyF
  (package
    (name "haskell-8.6-PyF")
    (version "0.9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/PyF/PyF-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0jf8nzdq8jpw8pkcvy31fjg44bdlrbjl7ssj9kcqcn314yszanhw"))))
    (properties `((upstream-name . "PyF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)
                  (@ (gnu packages python) python)))
    (home-page "https://hackage.haskell.org/package/PyF")
    (synopsis "Quasiquotations for a python like interpolated string formater")
    (description
     "Quasiquotations for a python like interpolated string formater.")
    (license license:bsd-3)))

haskell-8.6-PyF

(define-public haskell-8.6-QuasiText
  (package
    (name "haskell-8.6-QuasiText")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-lift-instances)))
    (home-page "https://github.com/mikeplus64/QuasiText")
    (synopsis "A QuasiQuoter for Text.")
    (description "A QuasiQuoter for interpolating values into Text strings.")
    (license license:bsd-3)))

haskell-8.6-QuasiText

(define-public haskell-8.6-aeson-casing
  (package
    (name "haskell-8.6-aeson-casing")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tasty-th)))
    (home-page "https://hackage.haskell.org/package/aeson-casing")
    (synopsis "Tools to change the formatting of field names in Aeson
instances.")
    (description "Tools to change the formatting of field names in Aeson
instances. This includes CamelCasing, Pascal Casing and
Snake Casing.")
    (license license:expat)))

haskell-8.6-aeson-casing

(define-public haskell-8.6-aeson-qq
  (package
    (name "haskell-8.6-aeson-qq")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aeson-qq/aeson-qq-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10plwzz05qc8068av00jak8rcciw99cbxh3lkx522lmzi37jjccg"))))
    (properties `((upstream-name . "aeson-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-aeson-qq

(define-public haskell-8.6-bench
  (package
    (name "haskell-8.6-bench")
    (version "1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bench/bench-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sy97qpv6paar2d5syppk6lc06wjx6qyz5aidsmh30jq853nydx6"))))
    (properties `((upstream-name . "bench") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "0i4rsw28q2qzihv7cvf32nidpmsl4hks8wzafyi8v5i4gb5jqa7q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-criterion)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-silently)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-turtle)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Gabriella439/bench")
    (synopsis "Command-line benchmark tool")
    (description "Think of this as a more powerful alternative to the @@time@@
command.  Use this command-line tool to benchmark a command
using Haskell's @@criterion@@ library.")
    (license license:bsd-3)))

haskell-8.6-bench

(define-public haskell-8.6-binary-conduit
  (package
    (name "haskell-8.6-binary-conduit")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-conduit/binary-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17yj8rn6fwzbv0z6lczrddv7mkr8906xg2pf2dlvmnwb97zw7004"))))
    (properties `((upstream-name . "binary-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/qnikst/binary-conduit/")
    (synopsis "data serialization/deserialization conduit library")
    (description
     "The binary-conduit package.
Allow binary serialization using iterative conduit interface.")
    (license license:expat)))

haskell-8.6-binary-conduit

(define-public haskell-8.6-binary-ext
  (package
    (name "haskell-8.6-binary-ext")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-ext/binary-ext-" version
                    ".tar.gz"))
              (sha256
               (base32
                "026y58an12p6cmpxhs3qrwl6w4q3i6i47svcj5qz5mi6vsdy2n3f"))))
    (properties `((upstream-name . "binary-ext") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mono-traversable)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/A1-Triard/binary-ext#readme")
    (synopsis
     "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.")
    (description
     "An alternate with strong-typed errors for `Data.Binary.Get` monad from `binary` package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-binary-ext

(define-public haskell-8.6-bins
  (package
    (name "haskell-8.6-bins")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bins/bins-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03pzpf8vw7d8cg8raqjpq9dz78r5qqczmjmyc2q5ax3ghcdzx0wa"))))
    (properties `((upstream-name . "bins") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-finite-typelits)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-math-functions)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-vector-sized)))
    (home-page "https://github.com/mstksg/bins#readme")
    (synopsis "Aggregate continuous values into discrete bins")
    (description
     "Please see the README on GitHub at <https://github.com/mstksg/bins#readme>")
    (license license:bsd-3)))

haskell-8.6-bins

(define-public haskell-8.6-bzlib-conduit
  (package
    (name "haskell-8.6-bzlib-conduit")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bzlib-conduit/bzlib-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a21zin5plsl37hkxh2jv8cxwyjrbs2fy7n5cyrzgdaa7lmp6b7b"))))
    (properties `((upstream-name . "bzlib-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bindings-DSL)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)))
    (home-page "https://github.com/snoyberg/bzlib-conduit#readme")
    (synopsis "Streaming compression/decompression via conduits.")
    (description
     "Please see the README and docs at <https://www.stackage.org/package/bzlib-conduit>")
    (license license:bsd-3)))

haskell-8.6-bzlib-conduit

(define-public haskell-8.6-cassava-conduit
  (package
    (name "haskell-8.6-cassava-conduit")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cassava-conduit/cassava-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y3pjvc273vxb8lr3wckliw23n8vninl034wc0zlfh1asplp4nxm"))))
    (properties `((upstream-name . "cassava-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsmall_base")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-cassava)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/domdere/cassava-conduit")
    (synopsis "Conduit interface for cassava package")
    (description "Conduit interface for cassava package

PRs welcome.")
    (license license:bsd-3)))

haskell-8.6-cassava-conduit

(define-public haskell-8.6-cereal-conduit
  (package
    (name "haskell-8.6-cereal-conduit")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cereal-conduit/cereal-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1srr7agvgfw78q5s1npjq5sgynvhjgllpihiv37ylkwqm4c4ap6r"))))
    (properties `((upstream-name . "cereal-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1imyl3g2bni8bc6kajr857xh94fscphksj3286pxfpa8yp9vqqpc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (home-page "https://github.com/snoyberg/conduit")
    (synopsis
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits")
    (description
     "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits.")
    (license license:bsd-3)))

haskell-8.6-cereal-conduit

(define-public haskell-8.6-codo-notation
  (package
    (name "haskell-8.6-codo-notation")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/codo-notation/codo-notation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bwfjg0bzph0vka1rx8m6f505l9dmj8nn6al9kmjkva18l05gsvq"))))
    (properties `((upstream-name . "codo-notation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-uniplate)))
    (home-page "https://hackage.haskell.org/package/codo-notation")
    (synopsis
     "A notation for comonads, analogous to the do-notation for monads.")
    (description
     "A notation for comonads, analogous to the do-notation for monads.

Requires the @@TemplateHaskell@@ and @@QuasiQuotes@@ extensions.

Example 1:

@@
&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;
&#x7b;-\\# LANGUAGE QuasiQuotes \\#-&#x7d;

import Control.Comonad
import Language.Haskell.Codo

foo :: (Comonad c, Num a) => c a -> a
foo = [codo| x => extract x + 1 |]
@@

Example 2:

@@
import Data.Monoid
instance Monoid Double where
&#x20;&#x20;&#x20;    mempty = 0.0
&#x20;&#x20;&#x20;    mappend = (+)

differentiate f = ((f 0.001) - f 0) / 0.001

minima :: (Double -> Double) -> Bool
minima = [codo| f => f'  <- differentiate f
&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20; f'' <- differentiate f'
&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20;&#x20; (extract f' &#60; 0.001) && (extract f'' &#62; 0) |]
@@

Further explanation of the syntax can be found in the following (short) paper: <http://www.cl.cam.ac.uk/~dao29/drafts/codo-notation-orchard-ifl12.pdf> with a numer of examples.

Further examples can be found here: <https://github.com/dorchard/codo-notation>.")
    (license license:bsd-3)))

haskell-8.6-codo-notation

(define-public haskell-8.6-compiler-warnings
  (package
    (name "haskell-8.6-compiler-warnings")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tasty-th)))
    (home-page "https://github.com/yi-editor/compiler-warnings#readme")
    (synopsis "Parser for common compiler warning formats")
    (description "")
    (license license:bsd-2)))

haskell-8.6-compiler-warnings

(define-public haskell-8.6-conduit-concurrent-map
  (package
    (name "haskell-8.6-conduit-concurrent-map")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-concurrent-map/conduit-concurrent-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rn7sry51xiz00hrs2vvqff18lnmmzyadrd858g1ixga76f44z2j"))))
    (properties `((upstream-name . "conduit-concurrent-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-say)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/nh2/conduit-concurrent-map")
    (synopsis "Concurrent, order-preserving mapping Conduit")
    (description
     "Provides a @@Conduit@@ that maps a function concurrently over incoming elements, maintaining input order.")
    (license license:expat)))

haskell-8.6-conduit-concurrent-map

(define-public haskell-8.6-conduit-extra
  (package
    (name "haskell-8.6-conduit-extra")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-extra/conduit-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d853d39vj5pb8yxfcsnjwdzqzkm34ixzbnba8bslpihb7182wxi"))))
    (properties `((upstream-name . "conduit-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "03p9yn69l8jgxj8x1k2nr2sah1xl3agzqf903slipy2c92hmnwwg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-async)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-streaming-commons)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-typed-process)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Batteries included conduit: adapters for common libraries.")
    (description
     "The conduit package itself maintains relative small dependencies. The purpose of this package is to collect commonly used utility functions wrapping other library dependencies, without depending on heavier-weight dependencies. The basic idea is that this package should only depend on haskell-platform packages and conduit.")
    (license license:expat)))

haskell-8.6-conduit-extra

(define-public haskell-8.6-conduit-iconv
  (package
    (name "haskell-8.6-conduit-iconv")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-iconv/conduit-iconv-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dmcsdx0nz0b9sans2fr8lmrii2n0fsjh41jhwlrlng4h93k0w8w"))))
    (properties `((upstream-name . "conduit-iconv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/sdroege/conduit-iconv")
    (synopsis "Conduit for character encoding conversion.")
    (description "@@conduit-iconv@@ provides a Conduit for character encoding
conversion, based on the iconv library.")
    (license license:bsd-3)))

haskell-8.6-conduit-iconv

(define-public haskell-8.6-conduit-parse
  (package
    (name "haskell-8.6-conduit-parse")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-parse/conduit-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qfs61qhbr5gc0ch0mmqcqdm4wvs5pkx2z6rki588fhy1kfdp1dm"))))
    (properties `((upstream-name . "conduit-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("2" "0134k9wi1ladmzd1rmb1gad6ig82pqsyb9d30z301anvb99473kz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-dlist)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-parsers)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)))
    (home-page "https://github.com/k0ral/conduit-parse")
    (synopsis "Parsing framework based on conduit.")
    (description "Please refer to README.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-conduit-parse

(define-public haskell-8.6-cuckoo-filter
  (package
    (name "haskell-8.6-cuckoo-filter")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cuckoo-filter/cuckoo-filter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yya8r3igwms910xp3cc4y1y34f5yw3yqqy1wy49d4xsi6smyjdc"))))
    (properties `((upstream-name . "cuckoo-filter") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-criterion)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/ChrisCoffey/cuckoo-filter#readme")
    (synopsis "Pure and impure Cuckoo Filter")
    (description
     "Please see the README on Github at <https://github.com/ChrisCoffey/cuckoo-filter#readme>")
    (license license:expat)))

haskell-8.6-cuckoo-filter

(define-public haskell-8.6-data-msgpack
  (package
    (name "haskell-8.6-data-msgpack")
    (version "0.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-msgpack/data-msgpack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11zlw465lpa371y7cpz9r4gn1c4cw0rjrpl5l3h6h0y3zc28p7sw"))))
    (properties `((upstream-name . "data-msgpack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-data-msgpack-types)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-groom)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-void)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-8.6-data-msgpack

(define-public haskell-8.6-deferred-folds
  (package
    (name "haskell-8.6-deferred-folds")
    (version "0.9.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deferred-folds/deferred-folds-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15lwcc7i7wmi1gkkmak677qw0fnz4a4ldnv842xaimfi64753shv"))))
    (properties `((upstream-name . "deferred-folds") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-foldl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-rerebase)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/metrix-ai/deferred-folds")
    (synopsis "Abstractions over deferred folds")
    (description "This library is in an experimental state.
Users should be prepared for frequent updates.")
    (license license:expat)))

haskell-8.6-deferred-folds

(define-public haskell-8.6-doldol
  (package
    (name "haskell-8.6-doldol")
    (version "0.4.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/doldol/doldol-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r9ylifyyv2mg4b94ikv8q56j0z5f6qa8r2jcpqg0xzdznwxqlv5"))))
    (properties `((upstream-name . "doldol") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0xwbdrfzd6z3nwkgnav2drisw2sn464ggkz8fid58cym9hbfpl47")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-test-framework-th)))
    (home-page "https://github.com/QuietJoon/doldol/")
    (synopsis "Flag packer & handler for flaggable data")
    (description
     "Please see the README on GitHub at <https://github.com/QuietJoon/doldol#readme>")
    (license license:bsd-3)))

haskell-8.6-doldol

(define-public haskell-8.6-ecstasy
  (package
    (name "haskell-8.6-ecstasy")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ecstasy/ecstasy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hyb1xnc45mmghvjvnxc2wnkrks8glw2bs5jwnc1pmn3p39l4nci"))))
    (properties `((upstream-name . "ecstasy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "http://github.com/isovector/ecstasy/")
    (synopsis "A GHC.Generics based entity component system.")
    (description
     "Ecstasy is an entity-component system for Haskell. It's inspired by
<https://hackage.haskell.org/package/apecs apecs>, but makes the design
decision to focus on being idiomatic rather than being fast. Maybe. I haven't
actually benchmarked it.

We achieve being idiomatic by using 'GHC.Generics' and tricky type families
to derive performant data stores given only a record of the desired
components.")
    (license license:bsd-3)))

haskell-8.6-ecstasy

(define-public haskell-8.6-emd
  (package
    (name "haskell-8.6-emd")
    (version "0.1.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/emd/emd-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "06ii6yw9612dq3ryfv2n7yk5wic3lc3kyvmvbj19wwicwc7315bf"))))
    (properties `((upstream-name . "emd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-finite-typelits)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-typelits-witnesses)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-vector-sized)))
    (home-page "https://github.com/mstksg/emd#readme")
    (synopsis "Empirical Mode Decomposition and Hilbert-Huang Transform")
    (description
     "Please see the README on GitHub at <https://github.com/mstksg/emd#readme>")
    (license license:bsd-3)))

haskell-8.6-emd

(define-public haskell-8.6-enum-text-rio
  (package
    (name "haskell-8.6-enum-text-rio")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enum-text-rio/enum-text-rio-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cz91i1m9ibphlm153i23i03nhx41bca398hkfzf9hq904ziarna"))))
    (properties `((upstream-name . "enum-text-rio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-enum-text)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-fmt)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)))
    (home-page "https://github.com/cdornan/enum-text-rio#readme")
    (synopsis "Making fmt available with rio")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/enum-text-rio#readme>")
    (license license:bsd-3)))

haskell-8.6-enum-text-rio

(define-public haskell-8.6-fold-debounce-conduit
  (package
    (name "haskell-8.6-fold-debounce-conduit")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fold-debounce-conduit/fold-debounce-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mhnc5j8jnmf4rnb5cj75jlyj9xc4gj3dawywcw26zz189j540fj"))))
    (properties `((upstream-name . "fold-debounce-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-fold-debounce)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/debug-ito/fold-debounce-conduit")
    (synopsis
     "Regulate input traffic from conduit Source with Control.FoldDebounce")
    (description
     "Regulate input traffic from conduit Source with Control.FoldDebounce. See \"Data.Conduit.FoldDebounce\"")
    (license license:bsd-3)))

haskell-8.6-fold-debounce-conduit

(define-public haskell-8.6-follow-file
  (package
    (name "haskell-8.6-follow-file")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/follow-file/follow-file-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nxvw17ndjrg34mc2a0bcyprcng52f6mn3l7mhx2fc11njdf2b93"))))
    (properties `((upstream-name . "follow-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-attoparsec-path)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-hinotify)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-path)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "https://github.com/athanclark/follow-file#readme")
    (synopsis
     "Be notified when a file gets appended, solely with what was added. Warning - only works on linux and for files that are strictly appended, like log files.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/follow-file#readme>")
    (license license:bsd-3)))

haskell-8.6-follow-file

(define-public haskell-8.6-google-oauth2-jwt
  (package
    (name "haskell-8.6-google-oauth2-jwt")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/google-oauth2-jwt/google-oauth2-jwt-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1njb9j6pb656drchi8qc94pniwph2bplnb667ga719yxmzm4256s"))))
    (properties `((upstream-name . "google-oauth2-jwt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-RSA)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-unix-time)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl)))
    (home-page "https://github.com/MichelBoucey/google-oauth2-jwt")
    (synopsis "Get a signed JWT for Google Service Accounts")
    (description "This library implements the creation of the
signed JWT for Google Service Accounts.")
    (license license:bsd-3)))

haskell-8.6-google-oauth2-jwt

(define-public haskell-8.6-haskoin-core
  (package
    (name "haskell-8.6-haskoin-core")
    (version "0.9.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskoin-core/haskoin-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x5ylla9910gvrydhfvzvj7x5w7xjy9bf3rakcqskcn0v4chx9pr"))))
    (properties `((upstream-name . "haskoin-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
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
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-murmur3)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-secp256k1-haskell)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-string-conversions)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/haskoin/haskoin#readme")
    (synopsis "Bitcoin & Bitcoin Cash library for Haskell")
    (description
     "Haskoin Core is a complete Bitcoin and Bitcoin Cash library of functions and data types for Haskell developers.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-haskoin-core

(define-public haskell-8.6-here
  (package
    (name "haskell-8.6-here")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)))
    (home-page "https://github.com/tmhedberg/here")
    (synopsis "Here docs & interpolated strings via quasiquotation")
    (description "Here docs & interpolated strings via quasiquotation")
    (license license:bsd-3)))

haskell-8.6-here

(define-public haskell-8.6-hledger-iadd
  (package
    (name "haskell-8.6-hledger-iadd")
    (version "1.3.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-iadd/hledger-iadd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kdrdbvs5qi8hc807d245xrv589hgx5aly5syb6zk62pi1kf92s3"))))
    (properties `((upstream-name . "hledger-iadd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0bwpk2h2chhcw74sf1ljkkiy699zdc2dvgq7ixlrlk09yx44jhxc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-brick)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-hledger-lib)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-megaparsec)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-th)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-zipper)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-vty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-xdg-basedir)))
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

haskell-8.6-hledger-iadd

(define-public haskell-8.6-hsini
  (package
    (name "haskell-8.6-hsini")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsini/hsini-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r6qksnrmk18ndxs5zaga8b7kvmk34kp0kh5hwqmq797qrlax9pa"))))
    (properties `((upstream-name . "hsini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1b83g6jk9hcm2h17f1h9vyzm34bmr7w4j5888rbv9k8gpi97f8i7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tasty-th)))
    (home-page "https://hackage.haskell.org/package/hsini")
    (synopsis "ini configuration files")
    (description
     "Library for reading and writing configuration files in INI format (see <https://en.wikipedia.org/wiki/INI_file>).")
    (license license:bsd-3)))

haskell-8.6-hsini

(define-public haskell-8.6-hw-conduit
  (package
    (name "haskell-8.6-hw-conduit")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-conduit/hw-conduit-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0z90nslvvd5lkzkivklln3kbpgpwn4l6b45bdn7nhn9qa50ii1rc"))))
    (properties `((upstream-name . "hw-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unliftio-core)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-word8)))
    (home-page "http://github.com/haskell-works/hw-conduit#readme")
    (synopsis "Conduits for tokenizing streams.")
    (description "Conduits for tokenizing streams. Please see README.md")
    (license license:expat)))

haskell-8.6-hw-conduit

(define-public haskell-8.6-interpolate
  (package
    (name "haskell-8.6-interpolate")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolate/interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gkaj98yz363v38fv78sqby236mp8yqwqcilx7kr2b9z0w3204bf"))))
    (properties `((upstream-name . "interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)))
    (home-page "https://github.com/sol/interpolate#readme")
    (synopsis "String interpolation done right")
    (description "String interpolation done right")
    (license license:expat)))

haskell-8.6-interpolate

(define-public haskell-8.6-interpolatedstring-perl6
  (package
    (name "haskell-8.6-interpolatedstring-perl6")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)))
    (home-page "https://hackage.haskell.org/package/interpolatedstring-perl6")
    (synopsis "QuasiQuoter for Perl6-style multi-line interpolated strings")
    (description
     "QuasiQuoter for Perl6-style multi-line interpolated strings with \\\"q\\\", \\\"qq\\\" and \\\"qc\\\" support.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-interpolatedstring-perl6

(define-public haskell-8.6-interpolatedstring-qq2
  (package
    (name "haskell-8.6-interpolatedstring-qq2")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolatedstring-qq2/interpolatedstring-qq2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d7xq1pdrhfl1vfl1axhzpv04hbc9yhvfagisrfq42hj6mbh8djx"))))
    (properties `((upstream-name . "interpolatedstring-qq2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)))
    (home-page "https://github.com/isovector/interpolatedstring-qq2#readme")
    (synopsis "QuasiQuoter for multi-line interpolated strings")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/interpolatedstring-qq2#readme>")
    (license license:bsd-3)))

haskell-8.6-interpolatedstring-qq2

(define-public haskell-8.6-language-c-quote
  (package
    (name "haskell-8.6-language-c-quote")
    (version "0.12.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-c-quote/language-c-quote-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hwv4b40wj953f39gqn8ji4ycli67c90b8xbizskd4i1x3nqbi35"))))
    (properties `((upstream-name . "language-c-quote") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ffull-haskell-antiquotes")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-alex)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-exception-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exception-transformers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-happy)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-mainland-pretty)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-srcloc)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-symbol)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://github.com/mainland/language-c-quote")
    (synopsis "C/CUDA/OpenCL/Objective-C quasiquoting library.")
    (description
     "This package provides a general parser for the C language, including most GCC
extensions and some CUDA and OpenCL extensions as well as the entire Objective-C
language.")
    (license license:bsd-3)))

haskell-8.6-language-c-quote

(define-public haskell-8.6-lens
  (package
    (name "haskell-8.6-lens")
    (version "4.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lens/lens-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gpkc53l2cggnfrgg5k4ih82rycjbdvpj9pnbi5cq8ms0dbvs4a7"))))
    (properties `((upstream-name . "lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-benchmark-uniplate" "-finlining" "-f-old-inline-pragmas" "-f-dump-splices" "-ftest-doctests" "-ftest-hunit" "-ftest-properties" "-ftest-templates" "-f-safe" "-ftrustworthy" "-f-j")
       #:cabal-revision
       ("3" "1j1wfgfganwvhrsfhr7mml91fv659gysy5nz92915y6x1x2gqdfb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-base-orphans)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-bifunctors)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-contravariant)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-distributive)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-generic-deriving)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-nats)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parallel)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-profunctors)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-reflection)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-simple-reflect)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-test-framework-th)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/ekmett/lens/")
    (synopsis "Lenses, Folds and Traversals")
    (description
     "This package comes \\\"Batteries Included\\\" with many useful lenses for the types
commonly used from the Haskell Platform, and with tools for automatically
generating lenses and isomorphisms for user-supplied data types.

The combinators in @@Control.Lens@@ provide a highly generic toolbox for composing
families of getters, folds, isomorphisms, traversals, setters and lenses and their
indexed variants.

An overview, with a large number of examples can be found in the <https://github.com/ekmett/lens#lens-lenses-folds-and-traversals README>.

An introductory video on the style of code used in this library by Simon Peyton Jones is available from <http://skillsmatter.com/podcast/scala/lenses-compositional-data-access-and-manipulation Skills Matter>.

A video on how to use lenses and how they are constructed is available on <http://youtu.be/cefnmjtAolY?hd=1 youtube>.

Slides for that second talk can be obtained from <http://comonad.com/haskell/Lenses-Folds-and-Traversals-NYC.pdf comonad.com>.

More information on the care and feeding of lenses, including a brief tutorial and motivation
for their types can be found on the <https://github.com/ekmett/lens/wiki lens wiki>.

A small game of @@pong@@ and other more complex examples that manage their state using lenses can be found in the <https://github.com/ekmett/lens/blob/master/examples/ example folder>.

/Lenses, Folds and Traversals/

With some signatures simplified, the core of the hierarchy of lens-like constructions looks like:


<<http://i.imgur.com/ALlbPRa.png>>

<Hierarchy.png (Local Copy)>

You can compose any two elements of the hierarchy above using @@(.)@@ from the @@Prelude@@, and you can
use any element of the hierarchy as any type it linked to above it.

The result is their lowest upper bound in the hierarchy (or an error if that bound doesn't exist).

For instance:

* You can use any 'Traversal' as a 'Fold' or as a 'Setter'.

* The composition of a 'Traversal' and a 'Getter' yields a 'Fold'.

/Minimizing Dependencies/

If you want to provide lenses and traversals for your own types in your own libraries, then you
can do so without incurring a dependency on this (or any other) lens package at all.

/e.g./ for a data type:

> data Foo a = Foo Int Int a

You can define lenses such as

> -- bar :: Lens' (Foo a) Int
> bar :: Functor f => (Int -> f Int) -> Foo a -> f (Foo a)
> bar f (Foo a b c) = fmap (\\a' -> Foo a' b c) (f a)

> -- quux :: Lens (Foo a) (Foo b) a b
> quux :: Functor f => (a -> f b) -> Foo a -> f (Foo b)
> quux f (Foo a b c) = fmap (Foo a b) (f c)

without the need to use any type that isn't already defined in the @@Prelude@@.

And you can define a traversal of multiple fields with 'Control.Applicative.Applicative':

> -- traverseBarAndBaz :: Traversal' (Foo a) Int
> traverseBarAndBaz :: Applicative f => (Int -> f Int) -> Foo a -> f (Foo a)
> traverseBarAndBaz f (Foo a b c) = Foo <$> f a <*> f b <*> pure c

What is provided in this library is a number of stock lenses and traversals for
common haskell types, a wide array of combinators for working them, and more
exotic functionality, (/e.g./ getters, setters, indexed folds, isomorphisms).")
    (license license:bsd-2)))

haskell-8.6-lens

(define-public haskell-8.6-libyaml
  (package
    (name "haskell-8.6-libyaml")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libyaml/libyaml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dcpbsjg6n305l07isxmavgp01lbv1qggy16acjyxjlz35pxchlg"))))
    (properties `((upstream-name . "libyaml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-no-unicode" "-f-system-libyaml")
       #:cabal-revision
       ("1" "00f1rag6sd7c8kza2agw9089p9vf21iiga2aq41nbf6d3yqn7dkz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (home-page "https://github.com/snoyberg/yaml#readme")
    (synopsis "Low-level, streaming YAML interface.")
    (description
     "README and API documentation are available at <https://www.stackage.org/package/libyaml>")
    (license license:bsd-3)))

haskell-8.6-libyaml

(define-public haskell-8.6-lifted-async
  (package
    (name "haskell-8.6-lifted-async")
    (version "0.10.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lifted-async/lifted-async-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1x3dzw6bh50h0na3y7f49im786x49w1skwj6qbqjh3h6cmh2dd87"))))
    (properties `((upstream-name . "lifted-async") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-lifted-base)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tasty-th)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/maoe/lifted-async")
    (synopsis
     "Run lifted IO operations asynchronously and wait for their results")
    (description
     "This package provides IO operations from @@async@@ package lifted to any
instance of 'MonadBase' or 'MonadBaseControl'.")
    (license license:bsd-3)))

haskell-8.6-lifted-async

(define-public haskell-8.6-lzma-conduit
  (package
    (name "haskell-8.6-lzma-conduit")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lzma-conduit/lzma-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hm72da7xk9l3zxjh274yg444vf405djxqbkf3q3p2qhicmxlmg9"))))
    (properties `((upstream-name . "lzma-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-lzma)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)))
    (home-page "http://github.com/alphaHeavy/lzma-conduit")
    (synopsis "Conduit interface for lzma/xz compression.")
    (description
     "This package provides an Conduit interface for the LZMA compression algorithm used in the .xz file format.")
    (license license:bsd-3)))

haskell-8.6-lzma-conduit

(define-public haskell-8.6-messagepack
  (package
    (name "haskell-8.6-messagepack")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/messagepack/messagepack-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z2xbfqg9x8ymbr0j81br610ja8f0wd2wvvrnjrk222vbp0915ck"))))
    (properties `((upstream-name . "messagepack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "199x0hqa6h6wqysaip1wc7kivc26f3wkb8y4il70mzmz80skmm29")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-test-framework-th)))
    (home-page "https://github.com/rodrigosetti/messagepack")
    (synopsis "Serialize instance for Message Pack Object")
    (description "Serialize instance for Message Pack Object")
    (license license:expat)))

haskell-8.6-messagepack

(define-public haskell-8.6-mighty-metropolis
  (package
    (name "haskell-8.6-mighty-metropolis")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mighty-metropolis/mighty-metropolis-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h3ik18vnya6sm0x1s6hxxx5hky0wm2pqm2g3hllcj02cm5hng4d"))))
    (properties `((upstream-name . "mighty-metropolis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-mcmc-types)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-mwc-probability)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)))
    (home-page "http://github.com/jtobin/mighty-metropolis")
    (synopsis "The Metropolis algorithm.")
    (description
     "The classic Metropolis algorithm.

Wander around parameter space according to a simple spherical Gaussian
distribution.

Exports a 'mcmc' function that prints a trace to stdout, a 'chain' function
for collecting results in-memory, and a 'metropolis' transition operator that
can be used more generally.

> import Numeric.MCMC.Metropolis
>
> rosenbrock :: [Double] -> Double
> rosenbrock [x0, x1] = negate (5  *(x1 - x0 ^ 2) ^ 2 + 0.05 * (1 - x0) ^ 2)
>
> main :: IO ()
> main = withSystemRandom . asGenIO $ mcmc 10000 1 [0, 0] rosenbrock")
    (license license:expat)))

haskell-8.6-mighty-metropolis

(define-public haskell-8.6-monad-unlift-ref
  (package
    (name "haskell-8.6-monad-unlift-ref")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-unlift-ref/monad-unlift-ref-"
                    version ".tar.gz"))
              (sha256
               (base32
                "078xjz3a6rgqqgf8zg9ngspixf9pgch845l6gs5ssy3l54wra18g"))))
    (properties `((upstream-name . "monad-unlift-ref") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-constraints)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-monad-control)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-monad-unlift)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-mutable-containers)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-transformers-base)))
    (home-page "https://github.com/fpco/monad-unlift")
    (synopsis "Typeclasses for representing monad transformer unlifting")
    (description "See README.md")
    (license license:expat)))

haskell-8.6-monad-unlift-ref

(define-public haskell-8.6-mpi-hs
  (package
    (name "haskell-8.6-mpi-hs")
    (version "0.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mpi-hs/mpi-hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0z2m4xfk0w1zx29jb27xb6hs01xid0ghv93yhqx7zwiw01815krk"))))
    (properties `((upstream-name . "mpi-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-mpich-macports" "-f-mpich-ubuntu" "-fopenmpi-debian" "-fopenmpi-macports" "-fopenmpi-ubuntu")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-c2hs-notests)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-monad-loops)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-store)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages mpi) mpich)))
    (home-page "https://github.com/eschnett/mpi-hs#readme")
    (synopsis "MPI bindings for Haskell")
    (description
     "MPI (the [Message Passing Interface](https://www.mpi-forum.org)) is
widely used standard for distributed-memory programming on HPC (High
Performance Computing) systems. MPI allows exchanging data
(_messages_) between programs running in parallel. There are several
high-quality open source MPI implementations (e.g. MPICH, MVAPICH,
OpenMPI) as well as a variety of closed-source implementations.
These libraries can typically make use of high-bandwidth low-latency
communication hardware such as InfiniBand.

This library @@mpi-hs@@ provides Haskell bindings for MPI. It is based
on ideas taken from
[haskell-mpi](https://github.com/bjpop/haskell-mpi),
[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html),
and [MPI for Python](https://mpi4py.readthedocs.io/en/stable/).

@@mpi-hs@@ provides two API levels: A low-level API gives rather
direct access to the MPI API, apart from certain \"reasonable\"
mappings from C to Haskell (e.g. output arguments that are in C
stored to a pointer are in Haskell regular return values). A
high-level API simplifies exchanging arbitrary values that can be
serialized.

Note that the automated builds on
[Hackage](http://hackage.haskell.org) will currently always fail
since no MPI library is present there. However, builds on
[Stackage](https://www.stackage.org) should succeed -- if not, there
is an error in this package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-mpi-hs

(define-public haskell-8.6-ndjson-conduit
  (package
    (name "haskell-8.6-ndjson-conduit")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ndjson-conduit/ndjson-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ccxliyy0flpby9jix2n8jy1i4jgiap42maqhh9ny53vqkvvhdy0"))))
    (properties `((upstream-name . "ndjson-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)))
    (home-page "https://github.com/srijs/haskell-ndjson-conduit")
    (synopsis
     "Conduit-based parsing and serialization for newline delimited JSON.")
    (description
     "Hackage documentation generation is not reliable.
For up to date documentation, please see: <http://www.stackage.org/package/ndjson-conduit>.")
    (license license:expat)))

haskell-8.6-ndjson-conduit

(define-public haskell-8.6-network-uri
  (package
    (name "haskell-8.6-network-uri")
    (version "2.6.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-uri/network-uri-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fmjc4p6pnzjxyg32pp7xh4wdbpqzp0rya80mccixyracvs1q3nw"))))
    (properties `((upstream-name . "network-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "14ab4k2biga40z7nyksy0ca56zwghmrlab2fxhnq1km3rj7qa4k6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-criterion)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/haskell/network-uri")
    (synopsis "URI manipulation")
    (description
     "This package provides facilities for parsing and unparsing URIs, and creating
and resolving relative URI references, closely following the URI spec,
<http://www.ietf.org/rfc/rfc3986.txt IETF RFC 3986>.

== Backward-compatibility

In @@network-2.6@@ the \"Network.URI\" module was split off from the
@@network@@ package into this package. If you're using the \"Network.URI\"
module you can be backward compatible and automatically get it from
the right package by using the
</package/network-uri-flag network-uri-flag pseudo-package>
in your @@.cabal@@ file's build-depends (along with dependencies for
both @@network-uri@@ and @@network@@):

>  build-depends:
>     network-uri-flag == 0.1.*

Or you can do the same manually by adding this boilerplate to your
@@.cabal@@ file:

> flag network-uri
>   description: Get Network.URI from the network-uri package
>   default: True
>
> library
>   -- ...
>   if flag(network-uri)
>     build-depends: network-uri >= 2.6, network >= 2.6
>   else
>     build-depends: network-uri < 2.6, network < 2.6

That is, get the module from either @@network < 2.6@@ or from
@@network-uri >= 2.6@@.")
    (license license:bsd-3)))

haskell-8.6-network-uri

(define-public haskell-8.6-optparse-enum
  (package
    (name "haskell-8.6-optparse-enum")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-enum/optparse-enum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0d3wpfss1nm42hjn8l7x34ksa7yx5ccc4iglbfvln0rkbqdsjh13"))))
    (properties `((upstream-name . "optparse-enum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-enum-text)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-fmt)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)))
    (home-page "https://github.com/cdornan/optparse-enum#readme")
    (synopsis "An enum-text based toolkit for optparse-applicative")
    (description
     "Please see the README on GitHub at <https://github.com/cdornan/optparse-enum#readme>")
    (license license:bsd-3)))

haskell-8.6-optparse-enum

(define-public haskell-8.6-parsec-numeric
  (package
    (name "haskell-8.6-parsec-numeric")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-parsec)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tasty-th)))
    (home-page "https://github.com/AndrewRademacher/parsec-numeric")
    (synopsis "Parsec combinators for parsing Haskell numeric types.")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.6-parsec-numeric

(define-public haskell-8.6-pipes-aeson
  (package
    (name "haskell-8.6-pipes-aeson")
    (version "0.4.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-aeson/pipes-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xdybqszcs14sb02g7garfx8ivmp48fm5rsl4md8vypyjbs1211m"))))
    (properties `((upstream-name . "pipes-aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-pipes-parse)))
    (home-page "https://github.com/k0001/pipes-aeson")
    (synopsis "Encode and decode JSON streams using Aeson and Pipes.")
    (description
     "Utilities to encode and decode Pipes streams of JSON.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.6-pipes-aeson

(define-public haskell-8.6-pipes-binary
  (package
    (name "haskell-8.6-pipes-binary")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-binary/pipes-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s3462i85zd6byr18mfabfmiapb0yy3fnrsaw6mnasw19kyxjngn"))))
    (properties `((upstream-name . "pipes-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-lens-family-core)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-pipes-bytestring)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-pipes-parse)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-smallcheck)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-tasty-smallcheck)))
    (home-page "https://github.com/k0001/pipes-binary")
    (synopsis
     "Encode and decode binary streams using the pipes and binary libraries.")
    (description
     "Encode and decode binary Pipes streams using the @@binary@@ library.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.6-pipes-binary

(define-public haskell-8.6-pipes-fastx
  (package
    (name "haskell-8.6-pipes-fastx")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-fastx/pipes-fastx-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xds11gfacj7m5lz6cssaj4v5z73ycrdmn57f0qxzqdsc2kln9ii"))))
    (properties `((upstream-name . "pipes-fastx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-pipes)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-pipes-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-pipes-bytestring)))
    (home-page "https://hackage.haskell.org/package/pipes-fastx")
    (synopsis "Streaming parsers for Fasta and Fastq")
    (description "Streaming parsers for Fasta and Fastq")
    (license license:bsd-3)))

haskell-8.6-pipes-fastx

(define-public haskell-8.6-pkcs10
  (package
    (name "haskell-8.6-pkcs10")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pkcs10/pkcs10-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15328w93rbpxx1wz3agw0271gxcy1ykgr6lcwkqcgi5scwzr4vl9"))))
    (properties `((upstream-name . "pkcs10") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-asn1-parse)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-asn1-types)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/fcomb/pkcs10-hs#readme")
    (synopsis "PKCS#10 library")
    (description "Please see README.md")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-pkcs10

(define-public haskell-8.6-pointed
  (package
    (name "haskell-8.6-pointed")
    (version "5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pointed/pointed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p91a762xglckscnhpflxzav8byf49a02mli3983i4kpr2jkaimr"))))
    (properties `((upstream-name . "pointed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcomonad" "-fcontainers" "-fkan-extensions" "-fsemigroupoids" "-fsemigroups" "-fstm" "-ftagged" "-ftransformers" "-funordered-containers")
       #:cabal-revision
       ("3" "17dyzz0mq24n8pd25chh8gxvcy9jvjgpcm0iz0kcjcwp92ivr848")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-comonad)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-default-class)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)))
    (home-page "http://github.com/ekmett/pointed/")
    (synopsis "Pointed and copointed data")
    (description "Pointed and copointed data.")
    (license license:bsd-3)))

haskell-8.6-pointed

(define-public haskell-8.6-postgresql-binary
  (package
    (name "haskell-8.6-postgresql-binary")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-prelude)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-binary-parser)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-loch-th)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-network-ip)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-placeholders)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-scientific)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-uuid)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

haskell-8.6-postgresql-binary

(define-public haskell-8.6-prospect
  (package
    (name "haskell-8.6-prospect")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prospect/prospect-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rvdhk3vnkmblg0zg9vw9akvlsqsc125av3889ipi0axzdcygykg"))))
    (properties `((upstream-name . "prospect") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-inspection-testing)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-kan-extensions)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)))
    (home-page "https://github.com/isovector/prospect#readme")
    (synopsis "Explore continuations with trepidation")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/prospect#readme>")
    (license license:bsd-3)))

haskell-8.6-prospect

(define-public haskell-8.6-proto-lens-setup
  (package
    (name "haskell-8.6-proto-lens-setup")
    (version "0.4.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-setup/proto-lens-setup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zqlkkzdg9myfy2myv0y19zmsjsvcd5rcimf6f48gnijl3001i8v"))))
    (properties `((upstream-name . "proto-lens-setup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-Cabal)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-proto-lens-protoc)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-temporary)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Cabal support for codegen with proto-lens.")
    (description
     "This package provides Cabal support for the @@proto-lens@@ package.
It automatically generates Haskell source files from protocol buffer
files (@@.proto@@).

To generate Haskell modules for a Cabal package, import
\"Data.ProtoLens.Setup\" from the @@Setup.hs@@ file.  For example:

> import Data.ProtoLens.Setup
> -- Here, \"src\" is the directory where .proto source files may be found
> main = defaultMainGeneratingProtos \"src\"

Then, edit the @@.cabal@@ file of your project to:

* Specify @@build-type: Custom@@, and add a @@custom-setup@@ clause that
depends on @@proto-lens-setup@@.

* List the .proto files in @@extra-source-files@@.  Note that the field belongs
at the top level of the @@.cabal@@ file, rather than once per
library\\/executable\\/etc.

* List the generated modules (e.g. @@Proto.Foo.Bar@@) in @@exposed-modules@@
or @@other-modules@@ of the rule(s) that use them (e.g. the library or
executables).  Additionally, add @@proto-lens-runtime@@ to the @@build-depends@@
of those rules.

For example, in @@foo-bar-proto.cabal@@:

> build-type: Custom
> extra-source-files: src/foo/bar.proto
> ...
> custom-setup
>   setup-depends: base, Cabal, proto-lens-setup

> library
>     exposed-modules: Proto.Foo.Bar, Proto.Foo.Bar_Fields
>     autogen-modules: Proto.Foo.Bar, Proto.Foo.Bar_Fields
>     build-depends: proto-lens-runtime, ...")
    (license license:bsd-3)))

haskell-8.6-proto-lens-setup

(define-public haskell-8.6-qm-interpolated-string
  (package
    (name "haskell-8.6-qm-interpolated-string")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qm-interpolated-string/qm-interpolated-string-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1brbs4qwvb16bkmcg51spjjrzc83hwgi1fbsix25vrri2myk6sz8"))))
    (properties `((upstream-name . "qm-interpolated-string") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)))
    (home-page "https://github.com/unclechu/haskell-qm-interpolated-string")
    (synopsis "Implementation of interpolated multiline strings")
    (description "Implementation of interpolated multiline strings
that ignores indentation and trailing whitespaces")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-qm-interpolated-string

(define-public haskell-8.6-rhine
  (package
    (name "haskell-8.6-rhine")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rhine/rhine-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "026hnakysi7xqhc630c5mbxs0y4j3wkyk71771mlrf7q2l94vh79"))))
    (properties `((upstream-name . "rhine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-dunai)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-free)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-vector-sized)))
    (home-page "https://hackage.haskell.org/package/rhine")
    (synopsis "Functional Reactive Programming with type-level clocks")
    (description
     "Rhine is a library for synchronous and asynchronous Functional Reactive Programming (FRP).
It separates the aspects of clocking, scheduling and resampling
from each other, and ensures clock-safety on the type level.
Signal processing units can be annotated by clocks,
which hold the information when data will be
input, processed and output.
Different components of the signal network
will become active at different times, or work
at different rates.
To schedule the components and allow them to communicate,
several standard scheduling and resampling solutions are implemented.
Own schedules and resampling buffers can be implemented in a reusable fashion.
A (synchronous) program outputting \"Hello World!\" every tenth of a second looks like this:
@@flow $ constMCl (putStrLn \"Hello World!\") \\@@\\@@ (waitClock :: Millisecond 100)@@")
    (license license:bsd-3)))

haskell-8.6-rhine

(define-public haskell-8.6-roc-id
  (package
    (name "haskell-8.6-roc-id")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/roc-id/roc-id-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ac4hrl6qihrhcyx41rf0qnmf9bi848nhdgs71mq3i9gqbnxfi1i"))))
    (properties `((upstream-name . "roc-id") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-MonadRandom)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-Only)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-generic-arbitrary)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-vector-sized)))
    (home-page "https://github.com/jonathanknowles/roc-id#readme")
    (synopsis "Implementation of the ROC National ID standard.")
    (description
     "This package provides an implementation of the ROC National Identification
Number (中華民國身分證號碼) standard.

In particular, it provides functions for parsing and validating identification
numbers from textual input.

See the \"ROC.ID\" module to get started.

For more details of the standard on which this package is based, see:

* https://zh.wikipedia.org/wiki/中華民國國民身分證
* https://en.wikipedia.org/wiki/National_Identification_Card_(Republic_of_China)")
    (license license:bsd-3)))

haskell-8.6-roc-id

(define-public haskell-8.6-rocksdb-query
  (package
    (name "haskell-8.6-rocksdb-query")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rocksdb-query/rocksdb-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01n2zlbpldhx8rxvq89i9hsp99dvlhm6s4rwlygxd3y989an8bcf"))))
    (properties `((upstream-name . "rocksdb-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-rocksdb-haskell)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-unliftio)))
    (propagated-inputs (list (@ (gnu packages databases) rocksdb)))
    (home-page "https://github.com/xenog/rocksdb-query#readme")
    (synopsis "RocksDB database querying library for Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/xenog/rocksdb-query#readme>")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-rocksdb-query

(define-public haskell-8.6-safeio
  (package
    (name "haskell-8.6-safeio")
    (version "0.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/safeio/safeio-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04g3070cbjdqj0h9l9ii6470xcbn40xfv4fr89a8yvnkdim9nyfm"))))
    (properties `((upstream-name . "safeio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-test-framework-th)))
    (home-page "https://github.com/luispedro/safeio#readme")
    (synopsis "Write output to disk atomically")
    (description
     "This package implements utilities to perform atomic output so as to avoid the problem of partial intermediate files.")
    (license license:expat)))

haskell-8.6-safeio

(define-public haskell-8.6-serversession-frontend-wai
  (package
    (name "haskell-8.6-serversession-frontend-wai")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-path-pieces)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-serversession)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-unordered-containers)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-vault)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-wai-session)))
    (home-page "https://github.com/yesodweb/serversession")
    (synopsis "wai-session bindings for serversession.")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-wai>")
    (license license:expat)))

haskell-8.6-serversession-frontend-wai

(define-public haskell-8.6-strict-list
  (package
    (name "haskell-8.6-strict-list")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-list/strict-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06mv208bspfl2mh1razi6af3fri8w7f5p3klkc3b9yx5ddv3hwxs"))))
    (properties `((upstream-name . "strict-list") (hidden? . #f)))
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
                     haskell-8.6-hashable)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-rerebase)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-semigroupoids)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-quickcheck-notests)))
    (home-page "https://github.com/nikita-volkov/strict-list")
    (synopsis "Strict linked list")
    (description
     "Implementation of strict linked list with care taken about stack.")
    (license license:expat)))

haskell-8.6-strict-list

(define-public haskell-8.6-string-interpolate
  (package
    (name "haskell-8.6-string-interpolate")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-interpolate/string-interpolate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gk5driazck1h1hnpp17kw0ylgp15s9jnnmz53wxz4rjqy6g3z4c"))))
    (properties `((upstream-name . "string-interpolate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "05fgvfrvi57bncjig2p5q1850pyjn0awshk7ym7ii2zvympr9lfq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-haskell-src-meta)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-quickcheck-text)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-text-conversions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "https://hackage.haskell.org/package/string-interpolate")
    (synopsis "Haskell string/text/bytestring interpolation that just works")
    (description
     "Unicode-aware string interpolation that handles all textual types.

See the README at <https://gitlab.com/williamyaoh/string-interpolate.git#string-interpolate> for more info.")
    (license license:bsd-3)))

haskell-8.6-string-interpolate

(define-public haskell-8.6-tar-conduit
  (package
    (name "haskell-8.6-tar-conduit")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tar-conduit/tar-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bgn3hyf20g1gfnzy8f41s7nj54kfcyjk2izw99svrw8f3dphi80"))))
    (properties `((upstream-name . "tar-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-conduit-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-safe-exceptions)))
    (home-page "https://github.com/snoyberg/tar-conduit#readme")
    (synopsis "Extract and create tar files using conduit for streaming")
    (description
     "Please see README.md. This is just filler to avoid warnings.")
    (license license:expat)))

haskell-8.6-tar-conduit

(define-public haskell-8.6-tonaparser
  (package
    (name "haskell-8.6-tonaparser")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonaparser/tonaparser-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v9qfc13lyjclk7pqsld1lzzbdhimz7gziix7w2x6v2rr2nia8j0"))))
    (properties `((upstream-name . "tonaparser") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexample")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-envy)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-say)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tonatona)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "Scalable way to pass runtime configurations for tonatona")
    (description
     "Tonaparser provides a way to pass runtime configurations. This library is supposed to be used with @@tonatona@@.")
    (license license:expat)))

haskell-8.6-tonaparser

(define-public haskell-8.6-tonatona-logger
  (package
    (name "haskell-8.6-tonatona-logger")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tonatona-logger/tonatona-logger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14pirmflhyfmw6y7j1af7ryh8iq30prx7xsdjwmliacszhsqvvfa"))))
    (properties `((upstream-name . "tonatona-logger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage008) haskell-8.6-Glob)
                  (@ (gnu packages stackage ghc-8.6 stage008)
                     haskell-8.6-doctest)
                  (@ (gnu packages stackage ghc-8.6 stage013) haskell-8.6-rio)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-tonaparser-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-tonatona)))
    (home-page "https://github.com/tonatona-project/tonatona#readme")
    (synopsis "tonatona plugin for logging.")
    (description
     "Tonatona plugin for logging. This package provides a tonatona plugin for logging.")
    (license license:expat)))

haskell-8.6-tonatona-logger

(define-public haskell-8.6-tzdata
  (package
    (name "haskell-8.6-tzdata")
    (version "0.1.20190911.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tzdata/tzdata-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "156mq401xbrx325bc745va2nh7r5ybi01nlrwavm0gxijfs0i4b9"))))
    (properties `((upstream-name . "tzdata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-test-framework-th)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/nilcons/haskell-tzdata")
    (synopsis "Time zone database (as files and as a module)")
    (description
     "The goal of this package is to distribute the standard Time Zone
Database in a cabal package, so that it can be used in Haskell
programs uniformly on all platforms.

This package currently ships the @@2019c@@ version of the time zone
database.  The version of the time zone database shipped is always
reflected in the version of this package: @@x.y.YYYYMMDD.z@@, then
@@YYYYMMDD@@ is the official release date of time zone database.

See: <http://www.iana.org/time-zones> for more info about the time
zone database.

See also the @@tz@@ package <http://hackage.haskell.org/package/tz> or
the @@timezone-olson@@ and @@timezone-series@@ packages that provide
facilities to /use/ the data shipped here. (The @@tz@@ package
automatically installs this package.)")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.6-tzdata

(define-public haskell-8.6-ucam-webauth
  (package
    (name "haskell-8.6-ucam-webauth")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ucam-webauth/ucam-webauth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14l989aasyqdw1x7aq9ikhcq9p3s1ax4qk53rd5s53wdgbc20n9k"))))
    (properties `((upstream-name . "ucam-webauth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("6" "1dammzdhin226byx8p287kdnn9pc7s49hfxcdmflly6hsy1psnvy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-aeson)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-attoparsec)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-errors)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-http-api-data)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-microlens)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-parser-combinators)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage014)
                     haskell-8.6-ucam-webauth-types)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/dbaynard/UcamWebauth#readme")
    (synopsis "The Ucam-Webauth protocol, used by Raven")
    (description
     "An implementation of the Ucam-Webauth protocol, as used by the University of Cambridge’s
Raven authentication service.")
    (license license:bsd-3)))

haskell-8.6-ucam-webauth

(define-public haskell-8.6-universe
  (package
    (name "haskell-8.6-universe")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe/universe-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jm5wi5blc21jn5hfgmx13ra006dc08dvl1sx7ciq8id87kwvxzg"))))
    (properties `((upstream-name . "universe") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-universe-base)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-universe-dependent-sum)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-universe-instances-extended)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-universe-reverse-instances)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "A class for finite and recursively enumerable types.")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This also provides instances from @@universe-instances-*\" packages.")
    (license license:bsd-3)))

haskell-8.6-universe

(define-public haskell-8.6-wai-conduit
  (package
    (name "haskell-8.6-wai-conduit")
    (version "3.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-conduit/wai-conduit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07yn41rn2skd5p3wqqa09wa761vj7ibl8l19gh4bi4i8slxhk417"))))
    (properties `((upstream-name . "wai-conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-http-types)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)))
    (home-page "https://github.com/yesodweb/wai")
    (synopsis "conduit wrappers for WAI")
    (description
     "API docs and the README are available at <http://www.stackage.org/package/wai-conduit>.")
    (license license:expat)))

haskell-8.6-wai-conduit

(define-public haskell-8.6-wai-session-postgresql
  (package
    (name "haskell-8.6-wai-session-postgresql")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-session-postgresql/wai-session-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10xc34a1l6g2lr8b4grvv17281689gdb8q1vh3kkip5lk7fp1m9r"))))
    (properties `((upstream-name . "wai-session-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-cereal)
                  (@ (gnu packages stackage ghc-8.6 stage011)
                     haskell-8.6-cookie)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-data-default)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-entropy)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-resource-pool)
                  (@ (gnu packages stackage ghc-8.6 stage014) haskell-8.6-wai)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-wai-session)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/hce/postgresql-session#readme")
    (synopsis "PostgreSQL backed Wai session store")
    (description
     "Provides a PostgreSQL backed session store for the Network.Wai.Session interface.")
    (license license:bsd-3)))

haskell-8.6-wai-session-postgresql

(define-public haskell-8.6-x509-store
  (package
    (name "haskell-8.6-x509-store")
    (version "1.6.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/x509-store/x509-store-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1y8yyr1i95jkllg8k0z54k5v4vachp848clc07m33xpxidn3b1lp"))))
    (properties `((upstream-name . "x509-store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04h2h8kdzhd2fp3w4a834xc1n88b1jgrxlgcsynfn0iwpbsb41x7")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-asn1-types)
                  (@ (gnu packages stackage ghc-8.6 stage012)
                     haskell-8.6-cryptonite)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage005) haskell-8.6-pem)
                  (@ (gnu packages stackage ghc-8.6 stage010)
                     haskell-8.6-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.6 stage009)
                     haskell-8.6-tasty-notests)
                  (@ (gnu packages stackage ghc-8.6 stage015) haskell-8.6-x509)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X.509 collection accessing and storing methods")
    (description
     "X.509 collection accessing and storing methods for certificate, crl, exception list")
    (license license:bsd-3)))

haskell-8.6-x509-store

(define-public haskell-8.6-xeno
  (package
    (name "haskell-8.6-xeno")
    (version "0.3.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xeno/xeno-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xfhdi5d0y3rlsmzczdg8b896l9q31nify1vsq0vfqqhfn75pw8l"))))
    (properties `((upstream-name . "xeno") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-libxml2")
       #:cabal-revision
       ("1" "1lr9101j5a3740gia3p37cwjxw8idg8x0f8xkl9a23s6938mjmjs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hexml)
                  (@ (gnu packages stackage ghc-8.6 stage006)
                     haskell-8.6-hspec)
                  (@ (gnu packages stackage ghc-8.6 stage005)
                     haskell-8.6-hspec-discover)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-mutable-containers)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/ocramz/xeno")
    (synopsis "A fast event-based XML parser in pure Haskell")
    (description
     "A fast, low-memory use, event-based XML parser in pure Haskell.  ")
    (license license:bsd-3)))

haskell-8.6-xeno

(define-public haskell-8.6-xls
  (package
    (name "haskell-8.6-xls")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xls/xls-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0gpfc973g6ha9w3fqm9dy59kgl21hw20l2b444rrz0lxs9ix1wyp"))))
    (properties `((upstream-name . "xls") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-force-has-iconv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage015)
                     haskell-8.6-conduit)
                  (@ (gnu packages stackage ghc-8.6 stage013)
                     haskell-8.6-getopt-generics)
                  (@ (gnu packages stackage ghc-8.6 stage007)
                     haskell-8.6-resourcet)))
    (home-page "http://github.com/harendra-kumar/xls")
    (synopsis "Parse Microsoft Excel xls files (BIFF/Excel 97-2004)")
    (description
     "Parse Microsoft Excel spreadsheet files in @@.xls@@ file format
(extension '.xls') more specifically known as 'BIFF/Excel 97-2004'.

The library is based on the C library
'https://github.com/libxls/libxls'.")
    (license license:bsd-3)))

haskell-8.6-xls

