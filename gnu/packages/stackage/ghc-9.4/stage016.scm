;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage016)
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
(define-public haskell-9.4-acid-state
  (package
    (name "haskell-9.4-acid-state")
    (version "0.16.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/acid-state/acid-state-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05hcbk5dhwygc29b1jbyh2zzjrxybm44hj02wmv2bhz04b5wldca"))))
    (properties `((upstream-name . "acid-state") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-skip-state-machine-test")
       #:cabal-revision
       ("3" "0ky6fsq5z9kd8wfri7fh7jzpf3d7l6r9574zpb4sc1wwvq0p45rr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-filelock)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-safecopy)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-th-expand-syns)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acid-state/acid-state")
    (synopsis
     "Add ACID guarantees to any serializable Haskell data structure.")
    (description
     "Use regular Haskell data structures as your database and get stronger ACID guarantees than most RDBMS offer.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-acid-state

(define-public haskell-9.4-advent-of-code-api
  (package
    (name "haskell-9.4-advent-of-code-api")
    (version "0.2.8.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/advent-of-code-api/advent-of-code-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l7bl0aqn5d6ph730jpwb5h0lwhvrkcw4vla0l73sxrm52j9ma58"))))
    (properties `((upstream-name . "advent-of-code-api") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-finite-typelits)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-servant-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-servant-client-core)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-tagsoup)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/mstksg/advent-of-code-api#readme")
    (synopsis "Advent of Code REST API bindings and servant API")
    (description
     "Haskell bindings for Advent of Code REST API and a servant API.  Please use
responsibly! See README.md or \"Advent\" module for an introduction and
tutorial.")
    (license license:bsd-3)))

haskell-9.4-advent-of-code-api

(define-public haskell-9.4-approximate
  (package
    (name "haskell-9.4-approximate")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/approximate/approximate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f168ac9xryrv50k7gvh89xv0mj6c42cxw7pj01pqcbppbs0rm3g"))))
    (properties `((upstream-name . "approximate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-herbie")
       #:cabal-revision
       ("2" "1yak9kv090502q8kqszmrjdp13dd737klppp78983yipd9k2h5gv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-log-domain)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-pointed)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-safecopy)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/analytics/approximate/")
    (synopsis "Approximate discrete values and numbers")
    (description
     "This package provides approximate discrete values and numbers.")
    (license license:bsd-3)))

haskell-9.4-approximate

(define-public haskell-9.4-ascii-group
  (package
    (name "haskell-9.4-ascii-group")
    (version "1.0.0.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-group/ascii-group-"
                    version ".tar.gz"))
              (sha256
               (base32
                "006b4idi63hz8x54a5fmx5isypdvif8q4ijf274dr93n0c9wh1di"))))
    (properties `((upstream-name . "ascii-group") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ascii-char)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-group")
    (synopsis "ASCII character groups")
    (description "This package defines a @@Group@@ type that describes
the two varieties of ASCII character, and provides
some functions for classifying characters by group.")
    (license license:asl2.0)))

haskell-9.4-ascii-group

(define-public haskell-9.4-ascii-numbers
  (package
    (name "haskell-9.4-ascii-numbers")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-numbers/ascii-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dqqnqrn3hvmjgakm6vzbidlik4p483wcslcwr60qbxa1v5lmznv"))))
    (properties `((upstream-name . "ascii-numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1jam0pzzb678k5bfr6prdzg8v68md2rg39k7sqr4csh1lzkq86im")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-ascii-case)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ascii-char)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-ascii-superset)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-invert)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-numbers")
    (synopsis "ASCII representations of numbers")
    (description "This package provides functions for converting back and
forth between numbers and their ASCII representations.")
    (license license:asl2.0)))

haskell-9.4-ascii-numbers

(define-public haskell-9.4-ascii-predicates
  (package
    (name "haskell-9.4-ascii-predicates")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-predicates/ascii-predicates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0awk97iib6rzrpsh7322f09sj6rkmhkn1hrgsw0zxq0w0bfp7kyj"))))
    (properties `((upstream-name . "ascii-predicates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-ascii-char)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-predicates")
    (synopsis "Various categorizations of ASCII characters")
    (description "This package provides a variety of predicates
on the ASCII character set.")
    (license license:asl2.0)))

haskell-9.4-ascii-predicates

(define-public haskell-9.4-autodocodec-openapi3
  (package
    (name "haskell-9.4-autodocodec-openapi3")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/autodocodec-openapi3/autodocodec-openapi3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0klk2xxj4mwlfg4irxsc98av5grp5g1jv1qkivlzfhxrnviyfkqw"))))
    (properties `((upstream-name . "autodocodec-openapi3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-autodocodec)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-openapi3)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/autodocodec#readme")
    (synopsis "Autodocodec interpreters for openapi3")
    (description "")
    (license license:expat)))

haskell-9.4-autodocodec-openapi3

(define-public haskell-9.4-aws-xray-client-wai
  (package
    (name "haskell-9.4-aws-xray-client-wai")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-xray-client-wai/aws-xray-client-wai-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n6viya3j94nx1sys9lqabmnc72szmslkpibhc1df1gl453633y9"))))
    (properties `((upstream-name . "aws-xray-client-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-aws-xray-client)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray integration with WAI.")
    (description
     "Works with `aws-xray-client` to enable X-Ray tracing with WAI.")
    (license license:expat)))

haskell-9.4-aws-xray-client-wai

(define-public haskell-9.4-bitwise-enum
  (package
    (name "haskell-9.4-bitwise-enum")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bitwise-enum/bitwise-enum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vmdr8csmxwab7s4nmqdfpqdssivh90fddk94i8wkwj1la867y1z"))))
    (properties `((upstream-name . "bitwise-enum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1f94gscpmffhx1m88nq6h6y46b1xpzp1kwfxb362zq6k1rq7dbk9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jnbooth/bitwise-enum")
    (synopsis "Bitwise operations on bounded enumerations")
    (description
     "Bitwise operations on bounded enumerations.

[\"Data.Enum.Set\"] Constant-time sets using bit flags.

[\"Data.Enum.Memo\"] Constant-time lookup memoization for functions on enumerated types.")
    (license license:bsd-3)))

haskell-9.4-bitwise-enum

(define-public haskell-9.4-bugsnag-hs
  (package
    (name "haskell-9.4-bugsnag-hs")
    (version "0.2.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bugsnag-hs/bugsnag-hs-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0af7xgjcgv5wly2hq0n82paa4qi35xv726y3f44zcvipjh8c4zvq"))))
    (properties `((upstream-name . "bugsnag-hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/bugsnag-hs#readme")
    (synopsis "A Bugsnag client for Haskell.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/bugsnag-hs>.")
    (license license:bsd-3)))

haskell-9.4-bugsnag-hs

(define-public haskell-9.4-compensated
  (package
    (name "haskell-9.4-compensated")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/compensated/compensated-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xigi4pcw581d8kjbhdjkksyz9bgcgvq0j17br9z1x6a3hw1m39a"))))
    (properties `((upstream-name . "compensated") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0fccjb5q07w1k3pl6x0jrglvbkfycqfjhbd121h3bxg6y5c3fs40")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-log-domain)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-safecopy)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/analytics/compensated/")
    (synopsis "Compensated floating-point arithmetic")
    (description
     "This package provides compensated floating point arithmetic.")
    (license license:bsd-3)))

haskell-9.4-compensated

(define-public haskell-9.4-conduit
  (package
    (name "haskell-9.4-conduit")
    (version "1.3.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/conduit/conduit-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zchhxcpciq4nr7ll4z4c7wshlngphr0dz0y3xfml1pfls3a18mc"))))
    (properties `((upstream-name . "conduit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fsvnlx8gd9d8f70f6gl68ljhmff790anrifrixcflz0j2kfxwjh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/snoyberg/conduit")
    (synopsis "Streaming data processing library.")
    (description
     "`conduit` is a solution to the streaming data problem, allowing for production,
transformation, and consumption of streams of data in constant memory. It is an
alternative to lazy I\\/O which guarantees deterministic resource handling.

For more information about conduit in general, and how this package in
particular fits into the ecosystem, see [the conduit
homepage](https://github.com/snoyberg/conduit#readme).

Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/conduit>.")
    (license license:expat)))

haskell-9.4-conduit

(define-public haskell-9.4-config-ini
  (package
    (name "haskell-9.4-config-ini")
    (version "0.2.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/config-ini/config-ini-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07vgpydzd44ayhq9c3q1335vphw384z8baf0wd0mnarr48yfaz3g"))))
    (properties `((upstream-name . "config-ini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-enable-doctests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage010) haskell-9.4-ini)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aisamanra/config-ini")
    (synopsis "A library for simple INI-based configuration files.")
    (description
     "The @@config-ini@@ library is a set of small monadic languages
for writing simple configuration languages with convenient,
human-readable error messages.

> parseConfig :: IniParser (Text, Int, Bool)
> parseConfig = section \"NETWORK\" $ do
>   user <- field        \"user\"
>   port <- fieldOf      \"port\" number
>   enc  <- fieldFlagDef \"encryption\" True
>   return (user, port, enc)")
    (license license:bsd-3)))

haskell-9.4-config-ini

(define-public haskell-9.4-dhall-bash
  (package
    (name "haskell-9.4-dhall-bash")
    (version "1.0.40")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-bash/dhall-bash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0fkzrj4q97cfg96slc6y3sihr9ahcj7lsjpv4kfyrvlw7jxgxld9"))))
    (properties `((upstream-name . "dhall-bash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1hpkwk2lwfkvrizwifggm1dv1cmn612axvrbpv7hnxxzz22yf3a1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-dhall)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-optparse-generic)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-shell-escape)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
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

haskell-9.4-dhall-bash

(define-public haskell-9.4-diagrams-lib
  (package
    (name "haskell-9.4-diagrams-lib")
    (version "1.4.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/diagrams-lib/diagrams-lib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h762gc9l4gsbx3r035mkfrwqblwshjaxk943bq277rw9d5vi7ic"))))
    (properties `((upstream-name . "diagrams-lib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "10m1nh6swfh4jvky2mx692g0jp1xk1cym9gvzljmmni3pf41mzsf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-active)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-adjunctions)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-diagrams-core)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-diagrams-solve)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-dual-tree)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-fingertree)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-fsnotify)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-intervals)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-monoid-extras)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-numeric-extras)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://diagrams.github.io")
    (synopsis "Embedded domain-specific language for declarative graphics")
    (description "Diagrams is a flexible, extensible EDSL for creating
graphics of many types.  Graphics can be created
in arbitrary vector spaces and rendered with
multiple backends.  diagrams-lib provides a
standard library of primitives and operations for
creating diagrams.  To get started using it, see
the \"Diagrams\" module, and refer to the tutorials and
documentation on the diagrams website,
<http://diagrams.github.io>.")
    (license license:bsd-3)))

haskell-9.4-diagrams-lib

(define-public haskell-9.4-eliminators
  (package
    (name "haskell-9.4-eliminators")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eliminators/eliminators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qw6fd6mskwyj1mzz6a6vdxh80jqxn0dzmwp1vq8py1cgnzrpfda"))))
    (properties `((upstream-name . "eliminators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-extra)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-singleton-nats)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-singletons-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-th-desugar)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/RyanGlScott/eliminators")
    (synopsis "Dependently typed elimination functions using singletons")
    (description "This library provides eliminators for inductive data types,
leveraging the power of the @@singletons@@ library to allow
dependently typed elimination.")
    (license license:bsd-3)))

haskell-9.4-eliminators

(define-public haskell-9.4-explainable-predicates
  (package
    (name "haskell-9.4-explainable-predicates")
    (version "0.1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/explainable-predicates/explainable-predicates-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ch86wb7bz9ydvrbdd2arskaj5pdc2x9vby4pbvnwv1r4d8n40la"))))
    (properties `((upstream-name . "explainable-predicates") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fregex" "-fcontainers" "-fquickcheck" "-fhunit" "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-doctest-lib)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdsmith/explainable-predicates")
    (synopsis "Predicates that can explain themselves.")
    (description "Explainable predicates are essentially functions from types
to 'Bool' which can additionally describe themselves and
explain why an argument does or doesn't match.  They are
intended to be used during unit tests to provide better
error messages when tests fail.  For example, if a
collection is missing an element, an explainable predicate
can tell you which element is missing.")
    (license license:bsd-3)))

haskell-9.4-explainable-predicates

(define-public haskell-9.4-flat
  (package
    (name "haskell-9.4-flat")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flat/flat-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11mg3m760vm3b33c39h5n79lpsh9s4rjlmsmn6xxlycv2ms42cm4"))))
    (properties `((upstream-name . "flat") (hidden? . #f)))
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
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-list-t)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-text)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-timeit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://quid2.org")
    (synopsis "Principled and efficient bit-oriented binary serialization.")
    (description
     "Reference implementation of `flat`, a principled and efficient binary serialization format.")
    (license license:bsd-3)))

haskell-9.4-flat

(define-public haskell-9.4-focuslist
  (package
    (name "haskell-9.4-focuslist")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cdepillabout/focuslist")
    (synopsis "Lists with a focused element")
    (description
     "Please see <https://github.com/cdepillabout/focuslist#readme README.md>.")
    (license license:bsd-3)))

haskell-9.4-focuslist

(define-public haskell-9.4-genvalidity-hspec-aeson
  (package
    (name "haskell-9.4-genvalidity-hspec-aeson")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-aeson/genvalidity-hspec-aeson-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18ga4g62z0fwkxbr2390dbmhpxpzczgz923gq0vvhnvc34r1vjh6"))))
    (properties `((upstream-name . "genvalidity-hspec-aeson") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-genvalidity)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-genvalidity-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-genvalidity-text)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-validity)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for aeson-related instances")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-hspec-aeson

(define-public haskell-9.4-genvalidity-path
  (package
    (name "haskell-9.4-genvalidity-path")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-path/genvalidity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rafj9sj8xv0b404wb7gjm1qnkvq2f8b9fk40pq5r2jp1wd0id1z"))))
    (properties `((upstream-name . "genvalidity-path") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-validity-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Path")
    (description "")
    (license license:expat)))

haskell-9.4-genvalidity-path

(define-public haskell-9.4-graphql-client
  (package
    (name "haskell-9.4-graphql-client")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graphql-client/graphql-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02wrwb5vgj4px6m178wmfzzy1d2h6018wj106n0j4lzbxyh107iy"))))
    (properties `((upstream-name . "graphql-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0483nnw03ddv94w02ffr93p5h4aabyv738fbf4qp1v0lrzd54v5k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-aeson-schemas)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-http-types)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-typed-process)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/LeapYear/graphql-client#readme")
    (synopsis "A client for Haskell programs to query a GraphQL API")
    (description "A client for Haskell programs to query a GraphQL API.")
    (license license:bsd-3)))

haskell-9.4-graphql-client

(define-public haskell-9.4-handwriting
  (package
    (name "haskell-9.4-handwriting")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ismailmustafa/handwriting-haskell#readme")
    (synopsis "API Client for the handwriting.io API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-handwriting

(define-public haskell-9.4-hedgehog-classes
  (package
    (name "haskell-9.4-hedgehog-classes")
    (version "0.2.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-classes/hedgehog-classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z9ik5asddc2pnz430jsi1pyahkh6jy36ng0vwm7ywcq7cvhcvlz"))))
    (properties `((upstream-name . "hedgehog-classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-faeson" "-fcomonad" "-fsemirings" "-fprimitive" "-fvector")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-semirings)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-wl-pprint-annotated)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hedgehogqa/haskell-hedgehog-classes")
    (synopsis "Hedgehog will eat your typeclass bugs")
    (description
     "This library provides Hedgehog properties to ensure
that typeclass instances adhere to the set of laws
that they are supposed to. There are other libraries
that do similar things, such as `genvalidity-hspec` and `checkers`.
This library differs from other solutions by not introducing any
new typeclasses that the user needs to learn, and otherwise minimal
API overhead.

This library is directly inspired by `quickcheck-classes`.")
    (license license:bsd-3)))

haskell-9.4-hedgehog-classes

(define-public haskell-9.4-hedgehog-fn
  (package
    (name "haskell-9.4-hedgehog-fn")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/qfpl/hedgehog-fn")
    (synopsis "Function generation for `hedgehog`")
    (description
     "Generating shrinkable, showable functions with `hedgehog`. See
`Hedgehog.Function` for example usages.")
    (license license:bsd-3)))

haskell-9.4-hedgehog-fn

(define-public haskell-9.4-hedgehog-optics
  (package
    (name "haskell-9.4-hedgehog-optics")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-optics/hedgehog-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i39s3ajrfdf87qy8i2k5v4dh42snc3jw4ar49c9hc76gzhxw2qj"))))
    (properties `((upstream-name . "hedgehog-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/hedgehog-optics")
    (synopsis "Hedgehog properties for optics laws")
    (description "Are your prisms well-formed? Test and be confident.")
    (license license:expat)))

haskell-9.4-hedgehog-optics

(define-public haskell-9.4-hedgehog-quickcheck
  (package
    (name "haskell-9.4-hedgehog-quickcheck")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-quickcheck/hedgehog-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z2ja63wqz83qhwzh0zs98k502v8fjdpnsnhqk3srypx2nw5vdlp"))))
    (properties `((upstream-name . "hedgehog-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1838hm2p22n8qrps17zjzf9k0jwvrw9g99r0crii3igfbi22m8nf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hedgehog.qa")
    (synopsis "Use QuickCheck generators in Hedgehog and vice versa.")
    (description
     "Use QuickCheck generators in Hedgehog and vice versa.

Hedgehog is a modern property-based testing system, in the spirit of
QuickCheck. Hedgehog uses integrated shrinking, so shrinks obey the
invariants of generated values by construction.

To get started quickly, see the examples:
<https://github.com/hedgehogqa/haskell-hedgehog/tree/master/hedgehog-")
    (license license:bsd-3)))

haskell-9.4-hedgehog-quickcheck

(define-public haskell-9.4-hedn
  (package
    (name "haskell-9.4-hedn")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hedn/hedn-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06js9mcif99k8bfyrsynlg1w5rjygydk5l0qhlrk6pa5v288a7wv"))))
    (properties `((upstream-name . "hedn") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13cmpyx7givc5ay43slf2ss4dqgnhb91nvyxp4201zznl5w570nh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-deriving-compat)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hedn")
    (synopsis "EDN parsing and encoding")
    (description
     "A EDN parsing and encoding library.

Based on \"specs\" published at <https://github.com/edn-format/edn>.")
    (license license:bsd-3)))

haskell-9.4-hedn

(define-public haskell-9.4-hexml-lens
  (package
    (name "haskell-9.4-hexml-lens")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hexml-lens/hexml-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1z522r600b0jzz0fw612a78k296cmpnfddwd5dfg4d4bcqc1db6n"))))
    (properties `((upstream-name . "hexml-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-foundation)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hexml)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/pepeiborra/hexml-lens#readme")
    (synopsis "Lenses for the hexml package")
    (description "Lenses for the hexml package")
    (license license:bsd-3)))

haskell-9.4-hexml-lens

(define-public haskell-9.4-hmatrix-vector-sized
  (package
    (name "haskell-9.4-hmatrix-vector-sized")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-vector-sized)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/hmatrix-vector-sized#readme")
    (synopsis "Conversions between hmatrix and vector-sized types")
    (description
     "Conversions between statically sized types in hmatrix and vector-sized.

See README on Github <https://github.com/mstksg/hmatrix-vector-sized#readme>")
    (license license:bsd-3)))

haskell-9.4-hmatrix-vector-sized

(define-public haskell-9.4-hspec-hedgehog
  (package
    (name "haskell-9.4-hspec-hedgehog")
    (version "0.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-hedgehog/hspec-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17gbr4ssnzjk7nvpsnh47av6vd9wz27ax92xvr4jwyw0z7h2wn13"))))
    (properties `((upstream-name . "hspec-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1qv2gap0775d2zg8wbd3kq4ypziz05qlz5jfisvl3jfd6jzcf2ad")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/hspec-hedgehog#readme")
    (synopsis "Integrate Hedgehog and Hspec!")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/hspec-hedgehog#readme>")
    (license license:bsd-3)))

haskell-9.4-hspec-hedgehog

(define-public haskell-9.4-hw-hedgehog
  (package
    (name "haskell-9.4-hw-hedgehog")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-hedgehog/hw-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kksignrvx566vfz52q5lid9f2zh02dpvnw1gznnkhwnvbldmbi8"))))
    (properties `((upstream-name . "hw-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0c9wy5jmsmfwz151k9zxfsj5663zz3rsvmr0i9vsv5agw8fb8xhq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-hedgehog#readme")
    (synopsis "Extra hedgehog functionality")
    (description "Extra hedgehog functionality.")
    (license license:bsd-3)))

haskell-9.4-hw-hedgehog

(define-public haskell-9.4-hw-hspec-hedgehog
  (package
    (name "haskell-9.4-hw-hspec-hedgehog")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-hspec-hedgehog/hw-hspec-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ilgqrx8jvgvmns99d74qz8c11ifyrccbvszfzwwhk28fhai0k7s"))))
    (properties `((upstream-name . "hw-hspec-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "129bnprzh8nglbi5x8i5dlc4v5qr7cqg6bajy6id1168r26ciwcq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-doctest-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-hspec-hedgehog#readme")
    (synopsis "Interoperability between hspec and hedgehog")
    (description "Interoperability between hspec and hedgehog.")
    (license license:bsd-3)))

haskell-9.4-hw-hspec-hedgehog

(define-public haskell-9.4-isomorphism-class
  (package
    (name "haskell-9.4-isomorphism-class")
    (version "0.1.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/isomorphism-class/isomorphism-class-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kngrwjj5m2pg4pkcvcxamsx82y03lfpj4hs7ifsxf64qm67bmgy"))))
    (properties `((upstream-name . "isomorphism-class") (hidden? . #f)))
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
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-rebase)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/isomorphism-class")
    (synopsis "Isomorphism typeclass solving the conversion problem")
    (description "")
    (license license:expat)))

haskell-9.4-isomorphism-class

(define-public haskell-9.4-keyed-vals-hspec-tests
  (package
    (name "haskell-9.4-keyed-vals-hspec-tests")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/keyed-vals-hspec-tests/keyed-vals-hspec-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pmhd9gjq92gn5z36l6av3hbxq5ynwhzy3igij7wvndx3mkj94hm"))))
    (properties `((upstream-name . "keyed-vals-hspec-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-benri-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-api-data)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-keyed-vals)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/adetokunbo/keyed-vals#readme")
    (synopsis "Validate a keyed-vals Handle")
    (description
     "Provides a Hspec fixture for testing implementations of the abstract
Handle defined in the keyed-vals package")
    (license license:bsd-3)))

haskell-9.4-keyed-vals-hspec-tests

(define-public haskell-9.4-massiv-test
  (package
    (name "haskell-9.4-massiv-test")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-test/massiv-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hd9y2n038ja3wz317ah0k84dz30cnmzx0nms9hkr5inf62gbd3n"))))
    (properties `((upstream-name . "massiv-test") (hidden? . #f)))
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
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-massiv)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-scheduler)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/lehins/massiv")
    (synopsis
     "Library that contains generators, properties and tests for Massiv Array Library.")
    (description
     "This library is designed for users of massiv library that need random generators for writing custom property tests and reusing some of the predefined ones.")
    (license license:bsd-3)))

haskell-9.4-massiv-test

(define-public haskell-9.4-math-extras
  (package
    (name "haskell-9.4-math-extras")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/math-extras/math-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzk277a3h9ahnlx538p9f821d1i0npf3n6a8wgg8gmmbyn0sk49"))))
    (properties `((upstream-name . "math-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zliu41/math-extras")
    (synopsis "A variety of mathematical utilities")
    (description "A variety of mathematical utilities not covered in base.")
    (license license:bsd-3)))

haskell-9.4-math-extras

(define-public haskell-9.4-min-max-pqueue
  (package
    (name "haskell-9.4-min-max-pqueue")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/min-max-pqueue/min-max-pqueue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nbvd8w4wj00dbh1zknxqb28wlxi87k3z3snjfqg7zz7j7mvy0jp"))))
    (properties `((upstream-name . "min-max-pqueue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zliu41/min-max-pqueue")
    (synopsis "Double-ended priority queues.")
    (description
     "Min-max priority queues, also known as double-ended priority queues.")
    (license license:bsd-3)))

haskell-9.4-min-max-pqueue

(define-public haskell-9.4-mono-traversable-instances
  (package
    (name "haskell-9.4-mono-traversable-instances")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-dlist-instances)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Extra typeclass instances for mono-traversable")
    (description
     "See docs and README at <http://www.stackage.org/package/mono-traversable-instance>")
    (license license:expat)))

haskell-9.4-mono-traversable-instances

(define-public haskell-9.4-mutable-containers
  (package
    (name "haskell-9.4-mutable-containers")
    (version "0.3.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mutable-containers/mutable-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1krndid8s8x0gklrzjaqfas1gl31qbhizpnidfa0ibclkk39whkr"))))
    (properties `((upstream-name . "mutable-containers") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "Abstactions and concrete implementations of mutable containers")
    (description
     "See docs and README at <http://www.stackage.org/package/mutable-containers>")
    (license license:expat)))

haskell-9.4-mutable-containers

(define-public haskell-9.4-ormolu
  (package
    (name "haskell-9.4-ormolu")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ormolu/ormolu-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ai2wza4drirvf9pb7qsf03kii5jiayqs49c19ir93jd0ak9pi96"))))
    (properties `((upstream-name . "ormolu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-MemoTrie)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ghc-lib-parser)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-gitrev)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tweag/ormolu")
    (synopsis "A formatter for Haskell source code")
    (description "A formatter for Haskell source code.")
    (license license:bsd-3)))

haskell-9.4-ormolu

(define-public haskell-9.4-path-dhall-instance
  (package
    (name "haskell-9.4-path-dhall-instance")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/path-dhall-instance/path-dhall-instance-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17igz9936lfivph9rr04075sp7ik5k8byljw2vj0zx8lnznjwn6a"))))
    (properties `((upstream-name . "path-dhall-instance") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-dhall)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/path-dhall-instance")
    (synopsis "ToDhall and FromDhall instances for Path.")
    (description "ToDhall and FromDhall instances for Path.")
    (license license:expat)))

haskell-9.4-path-dhall-instance

(define-public haskell-9.4-polysemy-fs
  (package
    (name "haskell-9.4-polysemy-fs")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-fs/polysemy-fs-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16lf6a5ypf5injdl8aljrnrdrfz21b0rhcmypx5ngvw1k2mgh6zl"))))
    (properties `((upstream-name . "polysemy-fs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0cbplvbx35q3h4ln9ldyk8yvx1c4sgbybbm02frf8nlp1khxji0w")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-polysemy)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-unliftio-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-fs")
    (synopsis "Low level filesystem operations for polysemy.")
    (description "")
    (license license:bsd-3)))

haskell-9.4-polysemy-fs

(define-public haskell-9.4-polysemy-fskvstore
  (package
    (name "haskell-9.4-polysemy-fskvstore")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy-fskvstore/polysemy-fskvstore-"
                    version ".tar.gz"))
              (sha256
               (base32
                "165lj55kmra01kxpr26n6a35989qihvwipdxkdbf2gi78xglryrp"))))
    (properties `((upstream-name . "polysemy-fskvstore") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-polysemy)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-polysemy-kvstore)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-unliftio-path)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/polysemy-fskvstore")
    (synopsis "Run a KVStore as a filesystem in polysemy.")
    (description "")
    (license license:expat)))

haskell-9.4-polysemy-fskvstore

(define-public haskell-9.4-postgresql-schema
  (package
    (name "haskell-9.4-postgresql-schema")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-basic-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-shelly)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/mfine/postgresql-schema")
    (synopsis "PostgreSQL Schema Management")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-postgresql-schema

(define-public haskell-9.4-quickcheck-state-machine
  (package
    (name "haskell-9.4-quickcheck-state-machine")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-state-machine/quickcheck-state-machine-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s6j3y0fkbbhmid0skqxx2m3mpbphz6npw9fvim5kx7w4i6jrvfz"))))
    (properties `((upstream-name . "quickcheck-state-machine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-generic-data)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-graphviz)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-markov-chain-usage-model)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-matrix)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-sop-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-tree-diff)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stevana/quickcheck-state-machine#readme")
    (synopsis "Test monadic programs using state machine based models")
    (description
     "See README at <https://github.com/stevana/quickcheck-state-machine#readme>")
    (license license:bsd-3)))

haskell-9.4-quickcheck-state-machine

(define-public haskell-9.4-rasterific-svg
  (package
    (name "haskell-9.4-rasterific-svg")
    (version "0.3.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rasterific-svg/rasterific-svg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i0pl1hin1ipi3l0074ywd1khacpbvz3x0frx0j0hmbfiv4n3nq2"))))
    (properties `((upstream-name . "rasterific-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1938sp9m0yi7ypxk74bzrbkp9b4yk6hsaqhlhbraf9yb7w61228v")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-FontyFruity)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-Rasterific)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-linear)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-svg-tree)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rasterific-svg")
    (synopsis "SVG renderer based on Rasterific.")
    (description "SVG renderer that will let you render svg-tree parsed
SVG file to a JuicyPixel image or Rasterific Drawing.")
    (license license:bsd-3)))

haskell-9.4-rasterific-svg

(define-public haskell-9.4-ratel-wai
  (package
    (name "haskell-9.4-ratel-wai")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ratel-wai/ratel-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hh99f7dwl5gihgqjn627s6sn4p68h1lifl2m8qqlhhdnnbwy4lr"))))
    (properties `((upstream-name . "ratel-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-ratel)
                  (@ (gnu packages stackage ghc-9.4 stage011) haskell-9.4-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/ratel-wai")
    (synopsis "Notify Honeybadger about exceptions via a WAI middleware.")
    (description
     "ratel-wai notifies Honeybadger about exceptions via a WAI middleware.")
    (license license:expat)))

haskell-9.4-ratel-wai

(define-public haskell-9.4-reddit-scrape
  (package
    (name "haskell-9.4-reddit-scrape")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reddit-scrape/reddit-scrape-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i95qlp84v8q2a7czfl66vqmzypp0pg5qlk25nyg4wsja22pryaj"))))
    (properties `((upstream-name . "reddit-scrape") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-http-client)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-http-client-tls)
                  (@ (gnu packages stackage ghc-9.4 stage012) haskell-9.4-rio)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-scalpel)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/reddit-scrape")
    (synopsis "Library for getting links from a sub-reddit")
    (description "")
    (license license:bsd-2)))

haskell-9.4-reddit-scrape

(define-public haskell-9.4-rerebase
  (package
    (name "haskell-9.4-rerebase")
    (version "1.16.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rerebase/rerebase-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04pw2j4nh8x53axmfzp9d2plmiwxpxddgwcji0a8j24lkdyv8k32"))))
    (properties `((upstream-name . "rerebase") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-rebase)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/rerebase ")
    (synopsis
     "Reexports from \"base\" with a bunch of other standard libraries")
    (description
     "A rich drop-in replacement for \\\"base\\\".
For details and docs please visit
<https://github.com/nikita-volkov/rerebase the project's GitHub page>.")
    (license license:expat)))

haskell-9.4-rerebase

(define-public haskell-9.4-sdl2-gfx
  (package
    (name "haskell-9.4-sdl2-gfx")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-gfx/sdl2-gfx-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0r9m54ffkp1dv2ffz9i9318qhvpinc76iih7vg1dwq3siwgpxaxw"))))
    (properties `((upstream-name . "sdl2-gfx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-sdl2)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-gfx)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages sdl) sdl2-gfx)))
    (home-page "https://hackage.haskell.org/package/sdl2-gfx")
    (synopsis "Haskell bindings to SDL2_gfx")
    (description "")
    (license license:expat)))

haskell-9.4-sdl2-gfx

(define-public haskell-9.4-sdl2-image
  (package
    (name "haskell-9.4-sdl2-image")
    (version "2.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-image/sdl2-image-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03cjlmj844gmfxqn9mp8333hpsg227kaipgs6g68xwg0cvch696j"))))
    (properties `((upstream-name . "sdl2-image") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-sdl2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-image)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages sdl) sdl2-image)))
    (home-page "https://hackage.haskell.org/package/sdl2-image")
    (synopsis "Haskell bindings to SDL2_image")
    (description "")
    (license license:expat)))

haskell-9.4-sdl2-image

(define-public haskell-9.4-sdl2-mixer
  (package
    (name "haskell-9.4-sdl2-mixer")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-mixer/sdl2-mixer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16fgnxq2nmifbz3lrr7dn1qj57l5f2kzv124lya1fjaxmwk1h52q"))))
    (properties `((upstream-name . "sdl2-mixer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-sdl2)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2-mixer)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages sdl) sdl2-mixer)))
    (home-page "https://hackage.haskell.org/package/sdl2-mixer")
    (synopsis "Haskell bindings to SDL2_mixer")
    (description "")
    (license license:bsd-3)))

haskell-9.4-sdl2-mixer

(define-public haskell-9.4-sdl2-ttf
  (package
    (name "haskell-9.4-sdl2-ttf")
    (version "2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sdl2-ttf/sdl2-ttf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sm5lrdif5wmz3iah1658zlr7yr45d1hfihb2hdxdia4h7z1j0mn"))))
    (properties `((upstream-name . "sdl2-ttf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-sdl2)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-ttf)))
    (propagated-inputs (list (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-ttf")
    (synopsis "Bindings to SDL2_ttf.")
    (description
     "Haskell bindings to SDL2_ttf C++ library <https://github.com/libsdl-org/SDL_ttf>.")
    (license license:bsd-3)))

haskell-9.4-sdl2-ttf

(define-public haskell-9.4-servant-openapi3
  (package
    (name "haskell-9.4-servant-openapi3")
    (version "2.0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-openapi3/servant-openapi3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hxz3n6l5l8p9s58sjilrn4lv1z17kfik0xdh05v5v1bzf0j2aij"))))
    (properties `((upstream-name . "servant-openapi3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ixl07scnz0664sxbl7k784mi0pd2vdpsgizwnz9ik7j8hjqdi5c")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-openapi3)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-singleton-bool)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/biocad/servant-openapi3")
    (synopsis
     "Generate a Swagger/OpenAPI/OAS 3.0 specification for your servant API.")
    (description
     "Swagger is a project used to describe and document RESTful APIs. The core of the
project is the [OpenAPI Specification (OAS)](https://swagger.io/docs/specification/about/).
This library implements v3.0 of the spec. Unlike Servant it is language-agnostic and thus is
quite popular among developers in different languages. It has also existed for a longer time
and has more helpful tooling.

This package provides means to generate a Swagger/OAS specification for a Servant API
and also to partially test whether an API conforms with its specification.

Generated Swagger specification then can be used for many things such as

* displaying interactive documentation using [Swagger UI](http://swagger.io/swagger-ui/);

* generating clients and servers in many languages using [Swagger Codegen](http://swagger.io/swagger-codegen/);

* and [many others](http://swagger.io/open-source-integrations/).")
    (license license:bsd-3)))

haskell-9.4-servant-openapi3

(define-public haskell-9.4-servant-swagger
  (package
    (name "haskell-9.4-servant-swagger")
    (version "1.1.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-swagger/servant-swagger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kvnjq3iqc8xbgmbaz881r48vj4cpzx7pkwdgwbhqlmhg808bfgl"))))
    (properties `((upstream-name . "servant-swagger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-http-media)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-servant)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-singleton-bool)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-swagger2)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/haskell-servant/servant/tree/master/servant-swagger#readme")
    (synopsis
     "Generate a Swagger/OpenAPI/OAS 2.0 specification for your servant API.")
    (description
     "Swagger is a project used to describe and document RESTful APIs. The core of the
project is the [OpenAPI Specification (OAS)](https://swagger.io/docs/specification/about/).
This library implements v2.0 of the spec. Unlike Servant it is language-agnostic and thus is
quite popular among developers in different languages. It has also existed for a longer time
and has more helpful tooling.

This package provides means to generate a Swagger/OAS specification for a Servant API
and also to partially test whether an API conforms with its specification.

Generated Swagger specification then can be used for many things such as

* displaying interactive documentation using [Swagger UI](http://swagger.io/swagger-ui/);

* generating clients and servers in many languages using [Swagger Codegen](http://swagger.io/swagger-codegen/);

* and [many others](http://swagger.io/open-source-integrations/).")
    (license license:bsd-3)))

haskell-9.4-servant-swagger

(define-public haskell-9.4-slack-progressbar
  (package
    (name "haskell-9.4-slack-progressbar")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/slack-progressbar/slack-progressbar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12iy8d0mvk0gcs65pb797qm9kx7d9wpa5gdkg4mvb4r13vqb5x9d"))))
    (properties `((upstream-name . "slack-progressbar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-interpolate)
                  (@ (gnu packages stackage ghc-9.4 stage013) haskell-9.4-lens)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-lens-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-network-uri)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/codedownio/slack-progressbar#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/codedownio/slack-progressbar#readme>")
    (license license:expat)))

haskell-9.4-slack-progressbar

(define-public haskell-9.4-squeather
  (package
    (name "haskell-9.4-squeather")
    (version "0.8.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/squeather/squeather-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1pjiq97gq8rjp4v7cx2bhj7zcwkswc593fxdwqajssi1i39679r6"))))
    (properties `((upstream-name . "squeather") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/squeather")
    (synopsis
     "Use databases with the version 3 series of the SQLite C library")
    (description
     "This library allows you to use databases with the version 3 series
of the [SQLite](https://sqlite.org) C library.  The biggest difference
between this library and others available on Hackage is that it uses the
extended error descriptions that SQLite makes available.  It also cleans up
resources such as database and statement handles in an automatic, though
non-deterministic, fashion.")
    (license license:bsd-3)))

haskell-9.4-squeather

(define-public haskell-9.4-statistics
  (package
    (name "haskell-9.4-statistics")
    (version "0.16.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/statistics/statistics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15yr0w25dqaqz16635qxkxvr6nj6mkjj9pl7wzw5yr3pn84xjryq"))))
    (properties `((upstream-name . "statistics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-aeson)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-dense-linear-algebra)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-math-functions)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parallel)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage014)
                     haskell-9.4-vector-algorithms)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-vector-binary-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-vector-th-unbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/statistics")
    (synopsis "A library of statistical types, data, and functions")
    (description
     "This library provides a number of common functions and types useful
in statistics.  We focus on high performance, numerical robustness,
and use of good algorithms.  Where possible, we provide
references to the statistical literature.

The library's facilities can be divided into four broad categories:

* Working with widely used discrete and continuous probability
distributions.  (There are dozens of exotic distributions in use;
we focus on the most common.)

* Computing with sample data: quantile estimation, kernel density
estimation, histograms, bootstrap methods, significance testing,
and regression and autocorrelation analysis.

* Random variate generation under several different distributions.

* Common statistical tests for significant differences between
samples.")
    (license license:bsd-2)))

haskell-9.4-statistics

(define-public haskell-9.4-store
  (package
    (name "haskell-9.4-store")
    (version "0.7.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/store/store-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "125n9jcqjcyk7ypky4i0fydy1msgn8ldrhyhclqp1w0p7s2wazsg"))))
    (properties `((upstream-name . "store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-comparison-bench" "-f-integer-simple" "-f-small-bench")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-cryptohash)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-lifted-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-nats)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-resourcet)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-store-core)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-th-lift)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-th-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-th-reify-many)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-th-utilities)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mgsloan/store#readme")
    (synopsis "Fast binary serialization")
    (description "")
    (license license:expat)))

haskell-9.4-store

(define-public haskell-9.4-sydtest-discover
  (package
    (name "haskell-9.4-sydtest-discover")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sydtest-discover/sydtest-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1naraj9cp0036ppd42l4zjz6rfzn25n71nkvxjd0x979pakv3h7v"))))
    (properties `((upstream-name . "sydtest-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-io)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis "Automatic test suite discovery for sydtest")
    (description "")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-sydtest-discover

(define-public haskell-9.4-tasty-hedgehog
  (package
    (name "haskell-9.4-tasty-hedgehog")
    (version "1.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hedgehog/tasty-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gcwbiqnxv7bkq48sh1d7ra3i53kdflzhpqrx4vlmhd7i69h1r4k"))))
    (properties `((upstream-name . "tasty-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-expected-failure)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/qfpl/tasty-hedgehog")
    (synopsis "Integration for tasty and hedgehog.")
    (description
     "Integrates the <https://hackage.haskell.org/package/hedgehog hedgehog testing library> with the <https://hackage.haskell.org/package/tasty tasty testing framework>.")
    (license license:bsd-3)))

haskell-9.4-tasty-hedgehog

(define-public haskell-9.4-transaction
  (package
    (name "haskell-9.4-transaction")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/transaction/transaction-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1if04fm2kvkd25ksk1llqqkwaqy8y7pafbywmz70mrr68wrb2r6j"))))
    (properties `((upstream-name . "transaction") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage009)
                     haskell-9.4-hspec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/arowM/haskell-transaction#readme")
    (synopsis "Monadic representation of transactions.")
    (description
     "Monadic representation of transactions. Alike `List`, but can be declared with `do` notations.")
    (license license:expat)))

haskell-9.4-transaction

(define-public haskell-9.4-unboxing-vector
  (package
    (name "haskell-9.4-unboxing-vector")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unboxing-vector/unboxing-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10sj7npfmhb9niagyhw5v68fpbhxa637x99dyw6njalsmsyimj91"))))
    (properties `((upstream-name . "unboxing-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fmono-traversable")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-mono-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage010)
                     haskell-9.4-should-not-typecheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/minoki/unboxing-vector#readme")
    (synopsis "A newtype-friendly variant of unboxed vectors")
    (description
     "Please see the README on GitHub at <https://github.com/minoki/unboxing-vector#readme>")
    (license license:bsd-3)))

haskell-9.4-unboxing-vector

(define-public haskell-9.4-union
  (package
    (name "haskell-9.4-union")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/union/union-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i4fvlwkw1wx64a6l8342aqfqsdq7fqa4p24g3i5gn5704lxrsb3"))))
    (properties `((upstream-name . "union") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "0rm4nm47arflmbqngzq9ajri8f43wgplzrk9qfvjm6ag12vnjrl5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-vinyl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/union")
    (synopsis "Extensible type-safe unions")
    (description
     "Extensible type-safe unions for Haskell with prisms using modern
GHC features. Dual to vinyl records. Unions are also known as
corecords or polymorphic variants.
Neither requires a @@Typeable@@ constraint nor uses unsafe coercions
at the cost of linear time access (negligible in practice).")
    (license license:bsd-3)))

haskell-9.4-union

(define-public haskell-9.4-verbosity
  (package
    (name "haskell-9.4-verbosity")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/verbosity/verbosity-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1h2vgy3ai3rxh76zi68yi5n5qmj0kyjm0sjg2m1gf9nr4z47afjx"))))
    (properties `((upstream-name . "verbosity") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-pedantic" "-fbinary" "-fdeepseq" "-f-cereal" "-f-safecopy" "-f-lattices" "-fdhall" "-fserialise")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-dhall)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-generic-lens)
                  (@ (gnu packages stackage ghc-9.4 stage013)
                     haskell-9.4-serialise)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/trskop/verbosity")
    (synopsis "Simple enum that encodes application verbosity.")
    (description
     "Simple enum that encodes application verbosity with various useful instances.")
    (license license:bsd-3)))

haskell-9.4-verbosity

(define-public haskell-9.4-vinyl-loeb
  (package
    (name "haskell-9.4-vinyl-loeb")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vinyl-loeb/vinyl-loeb-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vxw57c17lajq6qb2kcblymbg42y7ddh85kiik5kwmbxgfmqyrrv"))))
    (properties `((upstream-name . "vinyl-loeb") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-vinyl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/vinyl-loeb")
    (synopsis "Loeb's theorem for extensible records.")
    (description "")
    (license license:expat)))

haskell-9.4-vinyl-loeb

(define-public haskell-9.4-wide-word
  (package
    (name "haskell-9.4-wide-word")
    (version "0.1.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wide-word/wide-word-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jajlkcbymf0jqmcbn46x3yxqxjslzdcnp1v582jjpa2glibsnf0"))))
    (properties `((upstream-name . "wide-word") (hidden? . #f)))
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
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-hedgehog)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage012)
                     haskell-9.4-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.4 stage011)
                     haskell-9.4-semirings)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/erikd/wide-word")
    (synopsis
     "Data types for large but fixed width signed and unsigned integers")
    (description
     "A library to provide data types for large (ie > 64 bits) but fixed width signed
and unsigned integers with the usual typeclass instances to allow them to be used
interchangeably with `Word64`.

The types and operations are coded to be as fast as possible using strictness
annotations, `INLINEABLE` pragmas and unboxed values and operations where
appropriate.")
    (license license:bsd-2)))

haskell-9.4-wide-word

(define-public haskell-9.4-within
  (package
    (name "haskell-9.4-within")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/within/within-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1yzfzizx45ngvvbshgw9z8hxl8z7vcr1gann6wnxq4b9669h29ic"))))
    (properties `((upstream-name . "within") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage014) haskell-9.4-path)
                  (@ (gnu packages stackage ghc-9.4 stage015)
                     haskell-9.4-path-like)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/within")
    (synopsis "A value within another path.")
    (description
     "Simple newtype for representing a value within a well-typed directory. Useful for when you need to jump between directories and change filenames independently. Uses the path library.")
    (license license:expat)))

haskell-9.4-within

(define-public haskell-9.4-wreq-stringless
  (package
    (name "haskell-9.4-wreq-stringless")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage015) haskell-9.4-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
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

haskell-9.4-wreq-stringless

