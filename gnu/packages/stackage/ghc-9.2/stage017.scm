;;; generated file
(define-module (gnu packages stackage ghc-9.2 stage017)
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
(define-public haskell-9.2-DAV
  (package
    (name "haskell-9.2-DAV")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/DAV/DAV-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1isvi4fahq70lzxfz23as7qzkc01g7kba568l6flrgd0j1984fsy"))))
    (properties `((upstream-name . "DAV") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mtl-compat")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskeline)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-transformers-compat)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-xml-hamlet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://floss.scru.org/hDAV")
    (synopsis "RFC 4918 WebDAV support")
    (description
     "This is a library for the Web Distributed Authoring and Versioning
(WebDAV) extensions to HTTP.  At present it supports a very small
subset of client functionality.

In addition, there is an executable, hdav, which can be used for
command-line operation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-DAV

(define-public haskell-9.2-acid-state
  (package
    (name "haskell-9.2-acid-state")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-filelock)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-network-bsd)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-safecopy)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-th-expand-syns)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acid-state/acid-state")
    (synopsis
     "Add ACID guarantees to any serializable Haskell data structure.")
    (description
     "Use regular Haskell data structures as your database and get stronger ACID guarantees than most RDBMS offer.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-acid-state

(define-public haskell-9.2-apecs-physics
  (package
    (name "haskell-9.2-apecs-physics")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apecs-physics/apecs-physics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ksxx5x998csgi3lr2yl18mk5sjccin20b15swyx1g9k7fsm7nx5"))))
    (properties `((upstream-name . "apecs-physics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-release")
       #:cabal-revision
       ("1" "0kzg82azksva8l13548qk4bkx5ww1z0ca1bv141gp4fr0vamw446")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-apecs)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-inline-c)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jonascarpay/apecs#readme")
    (synopsis "2D physics for apecs")
    (description
     "2D physics for apecs. Uses Chipmunk physics library under the hood.")
    (license license:bsd-3)))

haskell-9.2-apecs-physics

(define-public haskell-9.2-approximate
  (package
    (name "haskell-9.2-approximate")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-log-domain)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-pointed)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-safecopy)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/analytics/approximate/")
    (synopsis "Approximate discrete values and numbers")
    (description
     "This package provides approximate discrete values and numbers.")
    (license license:bsd-3)))

haskell-9.2-approximate

(define-public haskell-9.2-arbtt
  (package
    (name "haskell-9.2-arbtt")
    (version "0.12.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/arbtt/arbtt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a2gabg8v28jcl1nddj4pfmpwc57g68i0qnnx3p26k3psrkmy6xq"))))
    (properties `((upstream-name . "arbtt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001) haskell-9.2-X11)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-arbtt-notests)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-bytestring-progress)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-pcre-light)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-process-extras)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-terminal-progress-bar)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-tz)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://arbtt.nomeata.de/")
    (synopsis "Automatic Rule-Based Time Tracker")
    (description
     "arbtt is a background daemon that stores which windows are open, which one
has the focus and how long since your last action (and possbly more sources
later), and stores this. It is also a program that will, based on
expressive rules you specify, derive what you were doing, and what for.

The documentation, which includes the changelog, can also be found at
<http://arbtt.nomeata.de/doc/users_guide/>.

WARNING: The log file might contain very sensitive private data. Make sure
you understand the consequences of a full-time logger and be careful with this
data.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.2-arbtt

(define-public haskell-9.2-ascii-group
  (package
    (name "haskell-9.2-ascii-group")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ascii-char)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-group")
    (synopsis "ASCII character groups")
    (description "This package defines a @@Group@@ type that describes
the two varieties of ASCII character, and provides
some functions for classifying characters by group.")
    (license license:asl2.0)))

haskell-9.2-ascii-group

(define-public haskell-9.2-ascii-predicates
  (package
    (name "haskell-9.2-ascii-predicates")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ascii-char)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-predicates")
    (synopsis "Various categorizations of ASCII characters")
    (description "This package provides a variety of predicates
on the ASCII character set.")
    (license license:asl2.0)))

haskell-9.2-ascii-predicates

(define-public haskell-9.2-ascii-superset
  (package
    (name "haskell-9.2-ascii-superset")
    (version "1.0.1.15")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ascii-superset/ascii-superset-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jq2kfc6mmpavljrv89xqwn0iskf3z9l3m3hjcm3bw03wlyv6clp"))))
    (properties `((upstream-name . "ascii-superset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-ascii-char)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/ascii-superset")
    (synopsis "Representing ASCII with refined supersets")
    (description
     "This package defines classes which describe what subset of a type
is valid as ASCII, as well as a type constructor representing a
value of a superset that is known to be valid ASCII.

It also defines the Lift class, which provides a polymorphic lift
operation that can be used to convert characters and strings into
types that support a larger set of characters.")
    (license license:asl2.0)))

haskell-9.2-ascii-superset

(define-public haskell-9.2-autodocodec-openapi3
  (package
    (name "haskell-9.2-autodocodec-openapi3")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-openapi3)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/autodocodec#readme")
    (synopsis "Autodocodec interpreters for openapi3")
    (description "")
    (license license:expat)))

haskell-9.2-autodocodec-openapi3

(define-public haskell-9.2-aws-cloudfront-signed-cookies
  (package
    (name "haskell-9.2-aws-cloudfront-signed-cookies")
    (version "0.2.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/aws-cloudfront-signed-cookies/aws-cloudfront-signed-cookies-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gdam3h8ir1lz8phhj03ckiv0f371xl79adi4kz2yqk2ayvcixhv"))))
    (properties `((upstream-name . "aws-cloudfront-signed-cookies")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-asn1-types)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-cookie)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-pem)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/aws-cloudfront-signed-cookies")
    (synopsis "Generate signed cookies for AWS CloudFront")
    (description
     "One way to serve private content through AWS CloudFront
is to use signed cookies. This package helps you generate signed
cookies using a custom IAM policy which may include a range of
time for which the cookie is valid and an IP address restriction.")
    (license license:expat)))

haskell-9.2-aws-cloudfront-signed-cookies

(define-public haskell-9.2-aws-xray-client-wai
  (package
    (name "haskell-9.2-aws-xray-client-wai")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-aws-xray-client)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-vault)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/freckle/aws-xray-client#readme")
    (synopsis "A client for AWS X-Ray integration with WAI.")
    (description
     "Works with `aws-xray-client` to enable X-Ray tracing with WAI.")
    (license license:expat)))

haskell-9.2-aws-xray-client-wai

(define-public haskell-9.2-beam-migrate
  (package
    (name "haskell-9.2-beam-migrate")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/beam-migrate/beam-migrate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h1nb5y6lzc5zclkz925kr446kc05sdj94hbvpf41lypx0b133xv"))))
    (properties `((upstream-name . "beam-migrate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-beam-core)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-dependent-map)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-dependent-sum)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-free)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-haskell-src-exts)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parallel)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-pqueue)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.2-beam-migrate

(define-public haskell-9.2-bugsnag-hs
  (package
    (name "haskell-9.2-bugsnag-hs")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jwoudenberg/bugsnag-hs#readme")
    (synopsis "A Bugsnag client for Haskell.")
    (description
     "Please see the README at <https://github.com/jwoudenberg/bugsnag-hs>.")
    (license license:bsd-3)))

haskell-9.2-bugsnag-hs

(define-public haskell-9.2-bytebuild
  (package
    (name "haskell-9.2-bytebuild")
    (version "0.3.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytebuild/bytebuild-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0n87jhn46yafnd3kjy07nxs2f36s99xk89x6cwkhiwhvz5hw6c2v"))))
    (properties `((upstream-name . "bytebuild") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-checked")
       #:cabal-revision
       ("1" "0mwnhra1nharn5kmbf5k6zqpb2jhkybfc9xbi3wpnq2kp2l1l1al")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-byteslice)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-haskell-src-meta)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-natural-arithmetic)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-primitive-offset)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-primitive-unlifted)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-quickcheck-classes)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-run-st)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-wide-word)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-zigzag)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/byteverse/bytebuild")
    (synopsis "Build byte arrays")
    (description
     "This is similar to the builder facilities provided by
`Data.ByteString.Builder`. It is intended to be used in
situations where the following apply:

* An individual entity will be serialized as a small
number of bytes (less than 512).

* A large number (more than 32) of entities will be serialized
one after another without anything between them.

Unlike builders from the `bytestring` package, these builders
do not track their state when they run out of space. A builder
that runs out of space simply aborts and is rerun at the beginning
of the next chunk. This strategy for building is suitable for most
CSVs and several line protocols (carbon, InfluxDB, etc.).")
    (license license:bsd-3)))

haskell-9.2-bytebuild

(define-public haskell-9.2-bytehash
  (package
    (name "haskell-9.2-bytehash")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytehash/bytehash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1jc8fz8rv7072is0srcp730ff37xkb68xl6s6yssba4anxc8s5nm"))))
    (properties `((upstream-name . "bytehash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0b840m5ykjgqzxd8sfzjgbs86qm87lzcf477xnl8zlmf11yhjyqg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-byte-order)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-byteslice)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-entropy)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-primitive-unlifted)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/bytehash")
    (synopsis "Universal hashing of bytes")
    (description
     "Taken together, universal hash functions and a good source of entropy
provide a foundation for hash maps guarantee O(1) lookups even if an
adversary chooses the keys. This library implements such a hash map.
The implementation of lookup is tuned for performance. The functions
for building hash maps are not since they are intended to be called
infrequently.")
    (license license:bsd-3)))

haskell-9.2-bytehash

(define-public haskell-9.2-bytesmith
  (package
    (name "haskell-9.2-bytesmith")
    (version "0.3.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytesmith/bytesmith-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10d0wzinc30b2xc26cfadvpn29gf30gnppysyl3n35ym3p9lnhm2"))))
    (properties `((upstream-name . "bytesmith") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11pmza7qlk63lw6ns6jsnlmfl8wdazz5sc5b2spb0pk29k9yymp2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-byte-order)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-byteslice)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-contiguous)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-run-st)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-text-short)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-wide-word)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/bytesmith")
    (synopsis "Nonresumable byte parser")
    (description
     "Parse bytes as fast as possible. This is a nonresumable parser
that aggresively uses `UnboxedSums` to avoid performing any
allocations.")
    (license license:bsd-3)))

haskell-9.2-bytesmith

(define-public haskell-9.2-cabal2nix
  (package
    (name "haskell-9.2-cabal2nix")
    (version "2.19.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal2nix/cabal2nix-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ck7yqvvxkylwh3pw8hj24jg5jqx6hqy3bm37dkg85q9p9fs7nz0"))))
    (properties `((upstream-name . "cabal2nix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-distribution-nixpkgs)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hackage-db)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-hopenssl)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hpack)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-language-nix)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-monad-par)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-monad-par-extras)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/nixos/cabal2nix#readme")
    (synopsis "Convert Cabal files into Nix build instructions.")
    (description
     "Convert Cabal files into Nix build instructions. Users of Nix can install the latest
version by running:

> nix-env -i cabal2nix")
    (license license:bsd-3)))

haskell-9.2-cabal2nix

(define-public haskell-9.2-classy-prelude
  (package
    (name "haskell-9.2-classy-prelude")
    (version "1.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/classy-prelude/classy-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0mxgx4hr5fsdg45wbilhsnryc61yclhf63bh94q88n26gjmjr60h"))))
    (properties `((upstream-name . "classy-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-basic-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-chunked-data)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-mono-traversable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-mono-traversable-instances)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-mutable-containers)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage012) haskell-9.2-say)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stm-chans)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-vector-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/mono-traversable#readme")
    (synopsis "A typeclass-based Prelude.")
    (description
     "See docs and README at <http://www.stackage.org/package/classy-prelude>")
    (license license:expat)))

haskell-9.2-classy-prelude

(define-public haskell-9.2-compensated
  (package
    (name "haskell-9.2-compensated")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bifunctors)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-bytes)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-distributive)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-log-domain)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-safecopy)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-semigroupoids)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/analytics/compensated/")
    (synopsis "Compensated floating-point arithmetic")
    (description
     "This package provides compensated floating point arithmetic.")
    (license license:bsd-3)))

haskell-9.2-compensated

(define-public haskell-9.2-composite-base
  (package
    (name "haskell-9.2-composite-base")
    (version "0.8.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/composite-base/composite-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i2mamh5gz7ay1cm5nkmdbh2lnaph42pfi2aa9jb2baxi0jgxdri"))))
    (properties `((upstream-name . "composite-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-profunctors)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-vinyl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/composite-hs/composite-base#readme")
    (synopsis "Shared utilities for composite-* packages.")
    (description "Shared helpers for the various composite packages.")
    (license license:bsd-3)))

haskell-9.2-composite-base

(define-public haskell-9.2-conduit-parse
  (package
    (name "haskell-9.2-conduit-parse")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduit-parse/conduit-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xdc04m88lk9183ky020670hj2ilfff3q0zxnphva5p0ij32iyq7"))))
    (properties `((upstream-name . "conduit-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-enable-hlint-test")
       #:cabal-revision
       ("1" "102y5wad007bz8iqv1nrz38gb24q15k9snl7l7zq9k7pisdxnans")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hlint)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-parsers)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0ral/conduit-parse")
    (synopsis "Parsing framework based on conduit.")
    (description "Please refer to README.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.2-conduit-parse

(define-public haskell-9.2-config-ini
  (package
    (name "haskell-9.2-config-ini")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage011) haskell-9.2-ini)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
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

haskell-9.2-config-ini

(define-public haskell-9.2-credential-store
  (package
    (name "haskell-9.2-credential-store")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/credential-store/credential-store-"
                    version ".tar.gz"))
              (sha256
               (base32
                "114jdbpiyx8xnjxnpz05nqpnb5s29y1iv330b0i491vik8hvrbad"))))
    (properties `((upstream-name . "credential-store") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-cryptonite)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-dbus)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-memory)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/rblaze/credential-store#readme")
    (synopsis "Library to access secure credential storage providers")
    (description
     "Cross-platform library for storing secrets.

Uses Windows credential store, gnome-keyring or kwallet as backends.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-credential-store

(define-public haskell-9.2-cyclotomic
  (package
    (name "haskell-9.2-cyclotomic")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-arithmoi)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-test-framework)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-test-framework-smallcheck)))
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

haskell-9.2-cyclotomic

(define-public haskell-9.2-d10
  (package
    (name "haskell-9.2-d10")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/d10/d10-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "138mhpl9yhaxbd98m1n5g8h4skbb4agyf7igl1ar3mr6snfhilas"))))
    (properties `((upstream-name . "d10") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/d10")
    (synopsis "Digits 0-9")
    (description
     "Data types representing the digits zero through nine.

Each of the following modules defines a different type named
@@D10@@, all of which are different representations of the same
concept @@D10.Char@@, @@D10.Num@@, @@D10.Safe@@.")
    (license license:expat)))

haskell-9.2-d10

(define-public haskell-9.2-dbus-hslogger
  (package
    (name "haskell-9.2-dbus-hslogger")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dbus-hslogger/dbus-hslogger-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i2y69kagp53cmlb7p3y6ysr9k5wvfd0vcnpwsasyn1jpk6g80zi"))))
    (properties `((upstream-name . "dbus-hslogger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-dbus)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hslogger)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/IvanMalison/dbus-hslogger#readme")
    (synopsis "Expose a dbus server to control hslogger")
    (description
     "Please see the README on Github at <https://github.com/IvanMalison/dbus-hslogger#readme>")
    (license license:bsd-3)))

haskell-9.2-dbus-hslogger

(define-public haskell-9.2-dhall-bash
  (package
    (name "haskell-9.2-dhall-bash")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-dhall)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-neat-interpolation)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-optparse-generic)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-shell-escape)))
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

haskell-9.2-dhall-bash

(define-public haskell-9.2-dhall-json
  (package
    (name "haskell-9.2-dhall-json")
    (version "1.7.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dhall-json/dhall-json-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0a7gcnx5xm2b1kvprvxlm7bjk68c30qs8cy3596pyngw7grsrhi6"))))
    (properties `((upstream-name . "dhall-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0m5sngc1j7jagn95qmjz7gpw2jgqnnafgr6nwd506q8z2jg2a3my")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-aeson-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-dhall)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-lens-family-core)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-silver)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/dhall-json")
    (synopsis "Convert between Dhall and JSON or YAML")
    (description
     "Use this package if you want to convert between Dhall expressions and JSON
or YAML. You can use this package as a library or an executable:

* See the \"Dhall.JSON\" or \"Dhall.JSONToDhall\" modules if you want to use
this package as a library

* Use the @@dhall-to-json@@, @@dhall-to-yaml@@, or @@json-to-dhall@@ programs from
this package if you want an executable

The \"Dhall.JSON\" and \"Dhall.JSONToDhall\" modules also contains instructions
for how to use this package")
    (license license:bsd-3)))

haskell-9.2-dhall-json

(define-public haskell-9.2-download
  (package
    (name "haskell-9.2-download")
    (version "0.3.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/download/download-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qg61d7z05dxpzfnv1gyf0dm2mpx23p29a9n5mx4pham5hfmfm3i"))))
    (properties `((upstream-name . "download") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-feed)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-xml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/psibi/download")
    (synopsis "High-level file download based on URLs")
    (description "High-level file download based on URLs")
    (license license:bsd-3)))

haskell-9.2-download

(define-public haskell-9.2-download-curl
  (package
    (name "haskell-9.2-download-curl")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/download-curl/download-curl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wf3pf2k4i6jvpfsjlxdj6v53qd33jj1z1ipaf3p47glgx4xw3lm"))))
    (properties `((upstream-name . "download-curl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsmall_base")
       #:cabal-revision
       ("2" "032f19gn7bnx3fpfdwclm1z1hsxaya6yml7p2hcg3b2ad6d11pyl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-curl)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-feed)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-tagsoup)
                  (@ (gnu packages stackage ghc-9.2 stage000) haskell-9.2-xml)))
    (propagated-inputs (list (@ (gnu packages curl) curl)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://code.haskell.org/~dons/code/download-curl")
    (synopsis "High-level file download based on URLs")
    (description
     "High-level file download based on URLs

Download web content as strict or lazy bytestringrs, strings, HTML
tags, XML, RSS or Atom feeds or JSON, using the curl network library.

Importing the library:

> import Network.Curl.Download

Loading a webpage as a \"ByteString\":

> doc  <- openURI \"http://haskell.org\"

Loading from a file:

> doc  <- openURI \"file:///tmp/A.hs\"

Loading a HTML page as a list of tags:

> tags <- openAsTags \"http://haskell.org\"

Loading a HTML page as XML:

> tags <- openAsXML \"http://haskell.org\"

Loading an RSS or Atom feed:

> feed <- openAsFeed \"http://haskell.org\"

These data types can the be processed further with the XML, Feed and
TagSoup libraries.
")
    (license license:bsd-3)))

haskell-9.2-download-curl

(define-public haskell-9.2-fakedata-quickcheck
  (package
    (name "haskell-9.2-fakedata-quickcheck")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fakedata-quickcheck/fakedata-quickcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0m70r66vbkgi1d016cpgahaas17hysabp44nigz4cda9l3x6qmh6"))))
    (properties `((upstream-name . "fakedata-quickcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-fakedata)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/fakedata-haskell/fakedata-quickcheck#readme")
    (synopsis "Fake a -> Gen a")
    (description
     "Use fakedata Fake monad for quicheck tests. See readme for examples at <https://github.com/fakedata-haskell/fakedata-quickcheck>.")
    (license license:expat)))

haskell-9.2-fakedata-quickcheck

(define-public haskell-9.2-fdo-notify
  (package
    (name "haskell-9.2-fdo-notify")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fdo-notify/fdo-notify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1n4zk1i7g34w0wk5zy8n4r63xbglxf62h8j78kv5fc2yn95l30vh"))))
    (properties `((upstream-name . "fdo-notify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-dbus)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://bitbucket.org/taejo/fdo-notify/")
    (synopsis "Desktop Notifications client")
    (description
     "A library for issuing notifications using FreeDesktop.org's Desktop
Notifications protcol. This protocol is supported by services such
as Ubuntu's NotifyOSD.")
    (license license:bsd-3)))

haskell-9.2-fdo-notify

(define-public haskell-9.2-fsnotify
  (package
    (name "haskell-9.2-fsnotify")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-hinotify)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-shelly)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unix-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-fswatch/hfsnotify")
    (synopsis "Cross platform library for file change notification.")
    (description "Cross platform library for file creation, modification,
and deletion notification. This library builds upon
existing libraries for platform-specific Windows, Mac,
and Linux filesystem event notification.")
    (license license:bsd-3)))

haskell-9.2-fsnotify

(define-public haskell-9.2-genvalidity-mergeful
  (package
    (name "haskell-9.2-genvalidity-mergeful")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-mergeful/genvalidity-mergeful-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dd22kdlydhdns86awmmzbnr9bwrb84623zcyb5b9aaxmq75ifza"))))
    (properties `((upstream-name . "genvalidity-mergeful") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-mergeful)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/mergeful#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>")
    (license license:expat)))

haskell-9.2-genvalidity-mergeful

(define-public haskell-9.2-genvalidity-mergeless
  (package
    (name "haskell-9.2-genvalidity-mergeless")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-mergeless/genvalidity-mergeless-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1glz1w7mpbwpn800khqd2jzigs19k6y0bxx7cid2zvzwrnhz6prl"))))
    (properties `((upstream-name . "genvalidity-mergeless") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-time)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-mergeless)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/mergeless#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/NorfairKing/mergeless#readme>")
    (license license:expat)))

haskell-9.2-genvalidity-mergeless

(define-public haskell-9.2-genvalidity-typed-uuid
  (package
    (name "haskell-9.2-genvalidity-typed-uuid")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-typed-uuid/genvalidity-typed-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18lfvw9slpgpng80mcj7mh7pfpl4xdyn9cfydafb7yq5lyr1vkym"))))
    (properties `((upstream-name . "genvalidity-typed-uuid") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-genvalidity-hspec-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-genvalidity-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-typed-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/typed-uuid#readme")
    (synopsis "Generators for Phantom-Typed version of UUID")
    (description
     "Please see the README on Github at <https://github.com/NorfairKing/typed-uuid#readme>")
    (license license:expat)))

haskell-9.2-genvalidity-typed-uuid

(define-public haskell-9.2-gi-cairo
  (package
    (name "haskell-9.2-gi-cairo")
    (version "1.0.27")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-cairo/gi-cairo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1f074s37fw1wjd2ycmji8vhvl1lzaclqh7n2pippdfvhfidrkbxf"))))
    (properties `((upstream-name . "gi-cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
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
    (synopsis "Cairo bindings")
    (description "Bindings for Cairo, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-cairo

(define-public haskell-9.2-gi-freetype2
  (package
    (name "haskell-9.2-gi-freetype2")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gi-freetype2/gi-freetype2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "066xpysbzzfjd0gpjxvhfbgy1zwhqd14gibs4daycszk09d9kspp"))))
    (properties `((upstream-name . "gi-freetype2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages fontutils) freetype)
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
    (synopsis "freetype2 bindings")
    (description "Bindings for freetype2, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-freetype2

(define-public haskell-9.2-gi-glib
  (package
    (name "haskell-9.2-gi-glib")
    (version "2.0.27")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-glib/gi-glib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cd0kbl7lsk5jjilhcs8969xaa7ncm81ilpdsqpxvdm2hgrg06y2"))))
    (properties `((upstream-name . "gi-glib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
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
    (synopsis "GLib bindings")
    (description "Bindings for GLib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-glib

(define-public haskell-9.2-gi-xlib
  (package
    (name "haskell-9.2-gi-xlib")
    (version "2.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/gi-xlib/gi-xlib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dy1xfzbhkyh7nj270mmz1acnwdf0f7c3rzz31lw9zrjyf9670gj"))))
    (properties `((upstream-name . "gi-xlib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-haskell-gi)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-haskell-gi-base)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskell-gi-overloading)
                  (@ (gnu packages xorg) libx11)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/haskell-gi/haskell-gi")
    (synopsis "xlib bindings")
    (description "Bindings for xlib, autogenerated by haskell-gi.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.2-gi-xlib

(define-public haskell-9.2-graphql-client
  (package
    (name "haskell-9.2-graphql-client")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-aeson-schemas)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-file-embed)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-typed-process)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/LeapYear/graphql-client#readme")
    (synopsis "A client for Haskell programs to query a GraphQL API")
    (description "A client for Haskell programs to query a GraphQL API.")
    (license license:bsd-3)))

haskell-9.2-graphql-client

(define-public haskell-9.2-hakyll-convert
  (package
    (name "haskell-9.2-hakyll-convert")
    (version "0.3.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hakyll-convert/hakyll-convert-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09fqr05mvs0qs53psq97kn1s4axinwn1vr5d6af4sqj3zc5k6k39"))))
    (properties `((upstream-name . "hakyll-convert") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "04j3f0p71y8hwx92daj31r609xj647r3v5yhxr9whzfn432wj7p1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-feed)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-tasty-golden)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Minoru/hakyll-convert#readme")
    (synopsis "Convert from other blog engines to Hakyll.")
    (description
     "WordPress and Blogger only let one export posts in a limited number of formats, none of which are supported by Hakyll. @@hakyll-convert@@ is created to bridge this gap, providing a way to turn other platform's datadumps into a set of files Hakyll understands.")
    (license license:bsd-3)))

haskell-9.2-hakyll-convert

(define-public haskell-9.2-handwriting
  (package
    (name "haskell-9.2-handwriting")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ismailmustafa/handwriting-haskell#readme")
    (synopsis "API Client for the handwriting.io API.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-handwriting

(define-public haskell-9.2-hashids
  (package
    (name "haskell-9.2-hashids")
    (version "1.0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hashids/hashids-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zl43g73czc4253a235vnnsv64m5rf7337q7qjgfrfb0pjyxsj55"))))
    (properties `((upstream-name . "hashids") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://hashids.org/")
    (synopsis
     "Hashids generates short, unique, non-sequential ids from numbers.")
    (description
     "This is a Haskell port of the Hashids library. It is typically used to encode numbers to a format suitable to appear in visible places like urls. It converts numbers like 347 into strings like yr8, or a list of numbers like [27, 986] into 3kTMd. You can also decode those ids back. This is useful in bundling several parameters into one.")
    (license license:expat)))

haskell-9.2-hashids

(define-public haskell-9.2-hedgehog-classes
  (package
    (name "haskell-9.2-hedgehog-classes")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-comonad)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-semirings)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-silently)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-wl-pprint-annotated)))
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

haskell-9.2-hedgehog-classes

(define-public haskell-9.2-hedgehog-fakedata
  (package
    (name "haskell-9.2-hedgehog-fakedata")
    (version "0.0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hedgehog-fakedata/hedgehog-fakedata-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00k26d83v0646klrg0k3cf94r4fnnx3ykxv7i8shjjgbkbzlzz78"))))
    (properties `((upstream-name . "hedgehog-fakedata") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0a4lc2pi391m2ss507hrpdvdg8pk300k14cpxwmi3d5pz579w1fq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-fakedata)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/hedgehog-fakedata#readme")
    (synopsis "Use 'fakedata' with 'hedgehog'")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/hedgehog-fakedata#readme>")
    (license license:bsd-3)))

haskell-9.2-hedgehog-fakedata

(define-public haskell-9.2-hedgehog-fn
  (package
    (name "haskell-9.2-hedgehog-fn")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-contravariant)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/qfpl/hedgehog-fn")
    (synopsis "Function generation for `hedgehog`")
    (description
     "Generating shrinkable, showable functions with `hedgehog`. See
`Hedgehog.Function` for example usages.")
    (license license:bsd-3)))

haskell-9.2-hedgehog-fn

(define-public haskell-9.2-hedgehog-quickcheck
  (package
    (name "haskell-9.2-hedgehog-quickcheck")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
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

haskell-9.2-hedgehog-quickcheck

(define-public haskell-9.2-hedn
  (package
    (name "haskell-9.2-hedn")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-deriving-compat)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-parser-combinators)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-uuid-types)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/hedn")
    (synopsis "EDN parsing and encoding")
    (description
     "A EDN parsing and encoding library.

Based on \"specs\" published at <https://github.com/edn-format/edn>.")
    (license license:bsd-3)))

haskell-9.2-hedn

(define-public haskell-9.2-hledger
  (package
    (name "haskell-9.2-hledger")
    (version "1.27.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hledger/hledger-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qdg87m7ys2ykqqq32p7h7aw827w4f5bcqx4dspxxq6zqlvzddqb"))))
    (properties `((upstream-name . "hledger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fterminfo" "-fthreaded")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-Decimal)
                  (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-breakpoint)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-githash)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskeline)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hledger-lib)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-lucid)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-math-functions)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-megaparsec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-microlens)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-shakespeare)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-tabular)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-timeit)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-utility-ht)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-wizards)))
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

haskell-9.2-hledger

(define-public haskell-9.2-hledger-interest
  (package
    (name "haskell-9.2-hledger-interest")
    (version "1.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hledger-interest/hledger-interest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1719sa7zxaa5amrqhkckn9ip5wzc2qbi8gn4f3l98a7sh77f9fym"))))
    (properties `((upstream-name . "hledger-interest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "050x8yfvk3vqlipirfwn9h0ckghmsp6f8l6skg70d330i868zahm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-Decimal)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hledger-lib)))
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

haskell-9.2-hledger-interest

(define-public haskell-9.2-hmatrix-vector-sized
  (package
    (name "haskell-9.2-hmatrix-vector-sized")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hmatrix)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-vector-sized)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mstksg/hmatrix-vector-sized#readme")
    (synopsis "Conversions between hmatrix and vector-sized types")
    (description
     "Conversions between statically sized types in hmatrix and vector-sized.

See README on Github <https://github.com/mstksg/hmatrix-vector-sized#readme>")
    (license license:bsd-3)))

haskell-9.2-hmatrix-vector-sized

(define-public haskell-9.2-hslua
  (package
    (name "haskell-9.2-hslua")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hslua-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hslua-classes)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-hslua-objectorientation)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-lua)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-tasty-hslua)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
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

haskell-9.2-hslua

(define-public haskell-9.2-hslua-module-path
  (package
    (name "haskell-9.2-hslua-module-path")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Lua module to work with file paths.")
    (description "Lua module to work with file paths in a platform
independent way.")
    (license license:expat)))

haskell-9.2-hslua-module-path

(define-public haskell-9.2-hslua-module-system
  (package
    (name "haskell-9.2-hslua-module-system")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-tasty-lua)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
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

haskell-9.2-hslua-module-system

(define-public haskell-9.2-hslua-module-text
  (package
    (name "haskell-9.2-hslua-module-text")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hslua/hslua")
    (synopsis "Lua module for text")
    (description "UTF-8 aware subset of Lua's `string` module.

This package is part of HsLua, a Haskell framework
built around the embeddable scripting language
<https://lua.org Lua>.")
    (license license:expat)))

haskell-9.2-hslua-module-text

(define-public haskell-9.2-hslua-module-version
  (package
    (name "haskell-9.2-hslua-module-version")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-hslua-core)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-hslua-marshalling)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hslua-packaging)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-tasty-lua)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Lua module to work with version specifiers.")
    (description "Wrapper for the Data.Version.Version Haskell type.")
    (license license:expat)))

haskell-9.2-hslua-module-version

(define-public haskell-9.2-hspec-hedgehog
  (package
    (name "haskell-9.2-hspec-hedgehog")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hspec-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-splitmix)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/parsonsmatt/hspec-hedgehog#readme")
    (synopsis "Integrate Hedgehog and Hspec!")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/hspec-hedgehog#readme>")
    (license license:bsd-3)))

haskell-9.2-hspec-hedgehog

(define-public haskell-9.2-hw-hedgehog
  (package
    (name "haskell-9.2-hw-hedgehog")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-hedgehog#readme")
    (synopsis "Extra hedgehog functionality")
    (description "Extra hedgehog functionality.")
    (license license:bsd-3)))

haskell-9.2-hw-hedgehog

(define-public haskell-9.2-hw-hspec-hedgehog
  (package
    (name "haskell-9.2-hw-hspec-hedgehog")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-call-stack)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-doctest-discover)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-works/hw-hspec-hedgehog#readme")
    (synopsis "Interoperability between hspec and hedgehog")
    (description "Interoperability between hspec and hedgehog.")
    (license license:bsd-3)))

haskell-9.2-hw-hspec-hedgehog

(define-public haskell-9.2-ihaskell
  (package
    (name "haskell-9.2-ihaskell")
    (version "0.10.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ihaskell/ihaskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0caghqp1k04mhfxqpz2hics92wdw8krnjycqsxsjp8s7impl36vl"))))
    (properties `((upstream-name . "ihaskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fuse-hlint")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cmdargs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-parser)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-ghc-paths)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-haskeline)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hlint)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-http-client-tls)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-ipython-kernel)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-shelly)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-strict)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A Haskell backend kernel for the Jupyter project.")
    (description
     "IHaskell is a Haskell backend kernel for the Jupyter project. This allows using Haskell via
a console or notebook interface. Additional packages may be installed to provide richer data visualizations.")
    (license license:expat)))

haskell-9.2-ihaskell

(define-public haskell-9.2-isomorphism-class
  (package
    (name "haskell-9.2-isomorphism-class")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-rebase)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/isomorphism-class")
    (synopsis "Isomorphism typeclass solving the conversion problem")
    (description "")
    (license license:expat)))

haskell-9.2-isomorphism-class

(define-public haskell-9.2-ixset
  (package
    (name "haskell-9.2-ixset")
    (version "1.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ixset/ixset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15dgh9lgjqgn0483p98q21ym1mrwi5h7ygdjxf48aap1d20x6swp"))))
    (properties `((upstream-name . "ixset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-safecopy)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-syb-with-class)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://happstack.com")
    (synopsis "Efficient relational queries on Haskell sets.")
    (description "Create and query sets that are indexed by multiple indices.")
    (license license:bsd-3)))

haskell-9.2-ixset

(define-public haskell-9.2-ixset-typed
  (package
    (name "haskell-9.2-ixset-typed")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ixset-typed/ixset-typed-"
                    version ".tar.gz"))
              (sha256
               (base32
                "033rm2sik1qz4dmqlabjzwwqw38vj3hrwlkmhm554yvk1n3v9dq8"))))
    (properties `((upstream-name . "ixset-typed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-safecopy)
                  (@ (gnu packages stackage ghc-9.2 stage006) haskell-9.2-syb)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ixset-typed")
    (synopsis "Efficient relational queries on Haskell sets.")
    (description
     "This Haskell package provides a data structure of sets that are indexed
by potentially multiple indices.

Sets can be created, modified, and queried in various ways.

The package is a variant of the <https://hackage.haskell.org/package/ixset ixset>
package. The ixset package makes use
of run-time type information to find a suitable index on a query, resulting
in possible run-time errors when no suitable index exists. In ixset-typed,
the types of all indices available or tracked in the type system.
Thus, ixset-typed should be safer to use than ixset, but in turn requires
more GHC extensions.

At the moment, the two packages are relatively compatible. As a consequence
of the more precise types, a few manual tweaks are necessary when switching
from one to the other, but the interface is mostly the same.")
    (license license:bsd-3)))

haskell-9.2-ixset-typed

(define-public haskell-9.2-lsp
  (package
    (name "haskell-9.2-lsp")
    (version "1.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lsp/lsp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0w04n299d8yh545jggh93wm6nxpp5jwz8hr7qynbxslcdrv06s49"))))
    (properties `((upstream-name . "lsp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-demo")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-co-log-core)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-hashable)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-lsp-types)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-sorted-list)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-text-rope)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell/lsp")
    (synopsis "Haskell library for the Microsoft Language Server Protocol")
    (description
     "An implementation of the types, and basic message server to
allow language implementors to support the Language Server
Protocol for their specific language.

An example of this is for Haskell via the Haskell Language
Server, at https://github.com/haskell/haskell-language-server")
    (license license:expat)))

haskell-9.2-lsp

(define-public haskell-9.2-massiv-persist
  (package
    (name "haskell-9.2-massiv-persist")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-persist/massiv-persist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qpnrqjhj6y2spg9izxc3jzqs4jcqzn6zlgi87816ycpdgxq6s02"))))
    (properties `((upstream-name . "massiv-persist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-massiv)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-massiv-test)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-persist)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/massiv-compat")
    (synopsis "Compatibility of 'massiv' with 'persist'")
    (description
     "Orphan 'Persist' class instances from <https://hackage.haskell.org/package/persist persist> package that allow serialization of arrays defined in <https://hackage.haskell.org/package/massiv massiv> package")
    (license license:bsd-3)))

haskell-9.2-massiv-persist

(define-public haskell-9.2-massiv-serialise
  (package
    (name "haskell-9.2-massiv-serialise")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/massiv-serialise/massiv-serialise-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1309nsjk36l1qiq769f9yrvn20xgf6abkmqqddzb8gqfbvhkzzym"))))
    (properties `((upstream-name . "massiv-serialise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-massiv)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-massiv-test)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-serialise)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/lehins/massiv-compat")
    (synopsis "Compatibility of 'massiv' with 'serialise'")
    (description
     "Orphan 'Serialise' class instances from <https://hackage.haskell.org/package/serialise serialise> package that allow serialization of arrays defined in <https://hackage.haskell.org/package/massiv massiv> package")
    (license license:bsd-3)))

haskell-9.2-massiv-serialise

(define-public haskell-9.2-math-extras
  (package
    (name "haskell-9.2-math-extras")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zliu41/math-extras")
    (synopsis "A variety of mathematical utilities")
    (description "A variety of mathematical utilities not covered in base.")
    (license license:bsd-3)))

haskell-9.2-math-extras

(define-public haskell-9.2-min-max-pqueue
  (package
    (name "haskell-9.2-min-max-pqueue")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/zliu41/min-max-pqueue")
    (synopsis "Double-ended priority queues.")
    (description
     "Min-max priority queues, also known as double-ended priority queues.")
    (license license:bsd-3)))

haskell-9.2-min-max-pqueue

(define-public haskell-9.2-monomer
  (package
    (name "haskell-9.2-monomer")
    (version "1.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/monomer/monomer-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0asp7j9xmysspyv2l8fcr36flcayqyhp41139kzg00b7jglpbpyg"))))
    (properties `((upstream-name . "monomer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ig93calrshb8q4jp8iw0y2yqkxmd5n7xg1nabc9bp0ypacba13m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-OpenGLRaw)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-bytestring-to-vector)
                  (@ (gnu packages stackage ghc-9.2 stage004) haskell-9.2-c2hs)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-formatting)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-nanovg)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-sdl2)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-text-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-wreq)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-wuss)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages gl) glew)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/fjvallarino/monomer#readme")
    (synopsis "A GUI library for writing native Haskell applications.")
    (description
     "Monomer is an easy to use, cross platform, GUI library for writing native
Haskell applications.

It provides a framework similar to the Elm Architecture, allowing the creation
of GUIs using an extensible set of widgets with pure Haskell.

Please see the README on Github at <https://github.com/fjvallarino/monomer#readme>")
    (license license:bsd-3)))

haskell-9.2-monomer

(define-public haskell-9.2-morpheus-graphql-subscriptions
  (package
    (name "haskell-9.2-morpheus-graphql-subscriptions")
    (version "0.27.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/morpheus-graphql-subscriptions/morpheus-graphql-subscriptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "138fcganlaj4fyq1aygiyy6f4hhw58n26ldrdkxhd66hr1mqv6j9"))))
    (properties `((upstream-name . "morpheus-graphql-subscriptions")
                  (hidden? . #f)))
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
                     haskell-9.2-morpheus-graphql-app)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-morpheus-graphql-core)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-relude)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-unliftio-core)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage010) haskell-9.2-uuid)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-websockets)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://morpheusgraphql.com")
    (synopsis "Morpheus GraphQL Subscriptions")
    (description "Build GraphQL APIs with your favourite functional language!")
    (license license:expat)))

haskell-9.2-morpheus-graphql-subscriptions

(define-public haskell-9.2-net-mqtt-lens
  (package
    (name "haskell-9.2-net-mqtt-lens")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/net-mqtt-lens/net-mqtt-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rlib45yqlcij12pij8y690n3ajma35fyj8292b1vggk07dscycq"))))
    (properties `((upstream-name . "net-mqtt-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-HUnit)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-net-mqtt)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dustin/net-mqtt-lens#readme")
    (synopsis "Optics for net-mqtt")
    (description
     "Please see the README on GitHub at <https://github.com/dustin/net-mqtt-lens#readme>")
    (license license:bsd-3)))

haskell-9.2-net-mqtt-lens

(define-public haskell-9.2-nvim-hs-contrib
  (package
    (name "haskell-9.2-nvim-hs-contrib")
    (version "2.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nvim-hs-contrib/nvim-hs-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15ds92qxhax0y9d9zl1sz061ali1rj9vwvcjn415ph1cyqgr3ink"))))
    (properties `((upstream-name . "nvim-hs-contrib") (hidden? . #f)))
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
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-messagepack)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-nvim-hs)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-prettyprinter)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-prettyprinter-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage015) haskell-9.2-yaml)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/neovimhaskell/nvim-hs-contrib")
    (synopsis "Haskell plugin backend for neovim")
    (description "Library for nvim-hs.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-nvim-hs-contrib

(define-public haskell-9.2-partial-semigroup
  (package
    (name "haskell-9.2-partial-semigroup")
    (version "0.6.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/partial-semigroup/partial-semigroup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zzpv5b860k22wng7qa0pcj129vgzm2vxda5x1f26f9vc0bm8q18"))))
    (properties `((upstream-name . "partial-semigroup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/typeclasses/partial-semigroup")
    (synopsis "A partial binary associative operator")
    (description "A partial semigroup is like a semigroup, but
the operator is partial. We represent this in Haskell
as a total function @@(<>?) :: a -> a -> Maybe a@@.")
    (license license:asl2.0)))

haskell-9.2-partial-semigroup

(define-public haskell-9.2-path-dhall-instance
  (package
    (name "haskell-9.2-path-dhall-instance")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-dhall)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-either)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/path-dhall-instance")
    (synopsis "ToDhall and FromDhall instances for Path.")
    (description "ToDhall and FromDhall instances for Path.")
    (license license:expat)))

haskell-9.2-path-dhall-instance

(define-public haskell-9.2-postgresql-schema
  (package
    (name "haskell-9.2-postgresql-schema")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-basic-prelude)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-postgresql-simple)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-shelly)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/mfine/postgresql-schema")
    (synopsis "PostgreSQL Schema Management")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.2-postgresql-schema

(define-public haskell-9.2-prometheus-metrics-ghc
  (package
    (name "haskell-9.2-prometheus-metrics-ghc")
    (version "1.0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prometheus-metrics-ghc/prometheus-metrics-ghc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06pah4wn9yj65shpgg6lb5pwfmx46gk2nbrs1d6bqiqni05s9pzk"))))
    (properties `((upstream-name . "prometheus-metrics-ghc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-prometheus-client)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis
     "Metrics exposing GHC runtime information for use with prometheus-client.")
    (description
     "Metrics exposing GHC runtime information for use with prometheus-client.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-prometheus-metrics-ghc

(define-public haskell-9.2-quadratic-irrational
  (package
    (name "haskell-9.2-quadratic-irrational")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-arithmoi)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-integer-roots)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-numbers)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)))
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

haskell-9.2-quadratic-irrational

(define-public haskell-9.2-quickcheck-state-machine
  (package
    (name "haskell-9.2-quickcheck-state-machine")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-generic-data)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-graphviz)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-markov-chain-usage-model)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-matrix)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-sop-core)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-tree-diff)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-unliftio)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stevana/quickcheck-state-machine#readme")
    (synopsis "Test monadic programs using state machine based models")
    (description
     "See README at <https://github.com/stevana/quickcheck-state-machine#readme>")
    (license license:bsd-3)))

haskell-9.2-quickcheck-state-machine

(define-public haskell-9.2-rasterific-svg
  (package
    (name "haskell-9.2-rasterific-svg")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-FontyFruity)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-Rasterific)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-linear)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-primitive)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-scientific)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-svg-tree)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/rasterific-svg")
    (synopsis "SVG renderer based on Rasterific.")
    (description "SVG renderer that will let you render svg-tree parsed
SVG file to a JuicyPixel image or Rasterific Drawing.")
    (license license:bsd-3)))

haskell-9.2-rasterific-svg

(define-public haskell-9.2-rerebase
  (package
    (name "haskell-9.2-rerebase")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-rebase)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/rerebase ")
    (synopsis
     "Reexports from \"base\" with a bunch of other standard libraries")
    (description
     "A rich drop-in replacement for \\\"base\\\".
For details and docs please visit
<https://github.com/nikita-volkov/rerebase the project's GitHub page>.")
    (license license:expat)))

haskell-9.2-rerebase

(define-public haskell-9.2-sdl2-gfx
  (package
    (name "haskell-9.2-sdl2-gfx")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-sdl2)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-gfx)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages sdl) sdl2-gfx)))
    (home-page "https://hackage.haskell.org/package/sdl2-gfx")
    (synopsis "Haskell bindings to SDL2_gfx")
    (description "")
    (license license:expat)))

haskell-9.2-sdl2-gfx

(define-public haskell-9.2-sdl2-image
  (package
    (name "haskell-9.2-sdl2-image")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-sdl2)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-image)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages sdl) sdl2-image)))
    (home-page "https://hackage.haskell.org/package/sdl2-image")
    (synopsis "Haskell bindings to SDL2_image")
    (description "")
    (license license:expat)))

haskell-9.2-sdl2-image

(define-public haskell-9.2-sdl2-mixer
  (package
    (name "haskell-9.2-sdl2-mixer")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-data-default-class)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-sdl2)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2-mixer)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)
                             (@ (gnu packages sdl) sdl2-mixer)))
    (home-page "https://hackage.haskell.org/package/sdl2-mixer")
    (synopsis "Haskell bindings to SDL2_mixer")
    (description "")
    (license license:bsd-3)))

haskell-9.2-sdl2-mixer

(define-public haskell-9.2-sdl2-ttf
  (package
    (name "haskell-9.2-sdl2-ttf")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-sdl2)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-th-abstraction)
                  (@ (gnu packages pkg-config) %pkg-config)
                  (@ (gnu packages sdl) sdl2)
                  (@ (gnu packages sdl) sdl2-ttf)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages sdl) sdl2)))
    (home-page "https://hackage.haskell.org/package/sdl2-ttf")
    (synopsis "Bindings to SDL2_ttf.")
    (description
     "Haskell bindings to SDL2_ttf C++ library <https://github.com/libsdl-org/SDL_ttf>.")
    (license license:bsd-3)))

haskell-9.2-sdl2-ttf

(define-public haskell-9.2-sendgrid-v3
  (package
    (name "haskell-9.2-sendgrid-v3")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sendgrid-v3/sendgrid-v3-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rl1zz01ca61bmm795b769k7h399s0yhkivp2br85flhrqw3asmm"))))
    (properties `((upstream-name . "sendgrid-v3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-client)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-semigroups)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/marcelbuesing/sendgrid-v3")
    (synopsis "Sendgrid v3 API library")
    (description "SendGrid v3 Mail API client")
    (license license:expat)))

haskell-9.2-sendgrid-v3

(define-public haskell-9.2-servant-auth
  (package
    (name "haskell-9.2-servant-auth")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/servant-auth/servant-auth-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08ggnlknhzdpf49zjm1qpzm12gckss7yr8chmzm6h6ycigz77ndd"))))
    (properties `((upstream-name . "servant-auth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0qgaq8if56fh1ydx8crb24p5cb5axx3n1lnx8klvvkamwrbr870a")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-jose)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/haskell-servant/servant/servant-auth#readme")
    (synopsis "Authentication combinators for servant")
    (description
     "This package provides an @@Auth@@ combinator for 'servant'. This combinator
allows using different authentication schemes in a straightforward way,
and possibly in conjunction with one another.

'servant-auth' additionally provides concrete authentication schemes, such
as Basic Access Authentication, JSON Web Tokens, and Cookies.

For more details on how to use this, see the <http://github.com/haskell-servant/servant/servant-auth#readme README>.")
    (license license:bsd-3)))

haskell-9.2-servant-auth

(define-public haskell-9.2-servant-openapi3
  (package
    (name "haskell-9.2-servant-openapi3")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-openapi3)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-singleton-bool)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)))
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

haskell-9.2-servant-openapi3

(define-public haskell-9.2-servant-swagger
  (package
    (name "haskell-9.2-servant-swagger")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-aeson-pretty)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-base-compat)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-hspec)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-hspec-discover)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-insert-ordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-servant)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-singleton-bool)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-swagger2)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
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

haskell-9.2-servant-swagger

(define-public haskell-9.2-siggy-chardust
  (package
    (name "haskell-9.2-siggy-chardust")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/siggy-chardust/siggy-chardust-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hssby6mak0bq1fqv47hp6rnw51yz1kgzgsmnvh2k9jfq0y0qwwz"))))
    (properties `((upstream-name . "siggy-chardust") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lknm1jr6h5qpixc727aj3zbmj4ia21r9lb8gzj50iildgmfk33b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hlint)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/blockscope/flare-timing/tree/master/siggy-chardust#readme")
    (synopsis "Rounding rationals to significant digits and decimal places.")
    (description
     "The round function from the prelude returns an integer. The standard librarys of C and C++ have round functions that return floating point numbers. Rounding in this library takes and returns rationals and can round to a number of significant digits or a number of decimal places.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.2-siggy-chardust

(define-public haskell-9.2-skylighting-format-ansi
  (package
    (name "haskell-9.2-skylighting-format-ansi")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-format-ansi/skylighting-format-ansi-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16qavv10g5yqwi60axj7q595ll605vmnfjgdxyi029nd5rnaipr3"))))
    (properties `((upstream-name . "skylighting-format-ansi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-colour)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-skylighting-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "ANSI formatter for skylighting syntax highlighting library")
    (description "This module allows tokens produced by skylighting-core
to be rendered as ANSI colored text.")
    (license license:bsd-3)))

haskell-9.2-skylighting-format-ansi

(define-public haskell-9.2-skylighting-format-blaze-html
  (package
    (name "haskell-9.2-skylighting-format-blaze-html")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-format-blaze-html/skylighting-format-blaze-html-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04zg92x1jnzv6hac6wdgksgma7gi5g82x2kdxk8r7pk9yd6rn4xi"))))
    (properties `((upstream-name . "skylighting-format-blaze-html")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-blaze-html)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-skylighting-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "HTML formatter for skylighting syntax highlighting library")
    (description "This module allows tokens produced by skylighting-core
to be rendered as HTML.")
    (license license:bsd-3)))

haskell-9.2-skylighting-format-blaze-html

(define-public haskell-9.2-skylighting-format-context
  (package
    (name "haskell-9.2-skylighting-format-context")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-format-context/skylighting-format-context-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d4nf16wl2l4r627qnph09x21xwcq03r7bznqm08d4di1z241xv0"))))
    (properties `((upstream-name . "skylighting-format-context")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-skylighting-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "ConTeXt formatter for skylighting syntax highlighting
library")
    (description "This module allows tokens produced by skylighting-core
to be rendered as ConTeXt commands.")
    (license license:bsd-3)))

haskell-9.2-skylighting-format-context

(define-public haskell-9.2-skylighting-format-latex
  (package
    (name "haskell-9.2-skylighting-format-latex")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/skylighting-format-latex/skylighting-format-latex-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y7v5aifwar24i976pw32scfdywjwy2ad05ajhdf8l84nsd6rdlp"))))
    (properties `((upstream-name . "skylighting-format-latex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-skylighting-core)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/jgm/skylighting")
    (synopsis "LaTeX formatter for skylighting syntax highlighting library")
    (description "This module allows tokens produced by skylighting-core
to be rendered as LaTeX macros.")
    (license license:bsd-3)))

haskell-9.2-skylighting-format-latex

(define-public haskell-9.2-slack-progressbar
  (package
    (name "haskell-9.2-slack-progressbar")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-interpolate)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-lens-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/codedownio/slack-progressbar#readme")
    (synopsis "")
    (description
     "Please see the README on GitHub at <https://github.com/codedownio/slack-progressbar#readme>")
    (license license:expat)))

haskell-9.2-slack-progressbar

(define-public haskell-9.2-slynx
  (package
    (name "haskell-9.2-slynx")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/slynx/slynx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1g69ybqfhsl74n516dzby2dswp5z4qr9xhc1fcxh9j6ynan1vcmz"))))
    (properties `((upstream-name . "slynx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-elynx-markov)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-elynx-seq)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-elynx-tools)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-elynx-tree)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-hmatrix)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-matrices)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-statistics)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/dschrempf/elynx#readme")
    (synopsis "Handle molecular sequences")
    (description
     "Examine, modify, and simulate molecular sequences in a reproducible way. Please see the README on GitHub at <https://github.com/dschrempf/elynx>.")
    (license license:gpl3+)))

haskell-9.2-slynx

(define-public haskell-9.2-squeather
  (package
    (name "haskell-9.2-squeather")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-lifted-base)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-temporary)))
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

haskell-9.2-squeather

(define-public haskell-9.2-stripe-wreq
  (package
    (name "haskell-9.2-stripe-wreq")
    (version "1.0.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stripe-wreq/stripe-wreq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01z0hqqnnc2g8q0bzj4brjmd9wmpjda4rlk770brvk9ip9mjdlys"))))
    (properties `((upstream-name . "stripe-wreq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1ijsspbd5in2jv1kcz78y0xxi09px60n51snfx9b49dsjnh2yniv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-stripe-concepts)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-wreq)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/typeclasses/stripe")
    (synopsis "Use the Stripe API via Wreq")
    (description "This package helps you make requests to the
<https://stripe.com/ Stripe> API in conjunction with
the <https://hackage.haskell.org/package/wreq wreq> package.
This is a minimal library that makes no attempt obscure
either its underpinnings in Wreq or any of the details of the
Stripe API. Responses are returned as
<https://hackage.haskell.org/package/aeson aeson> values.")
    (license license:expat)))

haskell-9.2-stripe-wreq

(define-public haskell-9.2-sydtest
  (package
    (name "haskell-9.2-sydtest")
    (version "0.13.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sydtest/sydtest-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0msa5y6fl00qjrj08c6bccbav179f05jk9hb9lmfbffq6bc86rc5"))))
    (properties `((upstream-name . "sydtest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-MonadRandom)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-QuickCheck)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-async)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-autodocodec)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-autodocodec-yaml)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-envparse)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-path)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-path-io)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-pretty-show)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-quickcheck-io)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-random)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-random-shuffle)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-safe-coloured-text)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-safe-coloured-text-terminfo)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-split)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/NorfairKing/sydtest#readme")
    (synopsis
     "A modern testing framework for Haskell with good defaults and advanced testing features.")
    (description
     "A modern testing framework for Haskell with good defaults and advanced testing features. Sydtest aims to make the common easy and the hard possible. See https://github.com/NorfairKing/sydtest#readme for more information.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.2-sydtest

(define-public haskell-9.2-tasty-hedgehog
  (package
    (name "haskell-9.2-tasty-hedgehog")
    (version "1.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hedgehog/tasty-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iq452mvd9wc9pfmjsmm848jwp3cvsk1faf2mlr21vcs0yaxvq3m"))))
    (properties `((upstream-name . "tasty-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-hedgehog)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-expected-failure)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/qfpl/tasty-hedgehog")
    (synopsis "Integration for tasty and hedgehog.")
    (description
     "Integrates the <https://hackage.haskell.org/package/hedgehog hedgehog testing library> with the <https://hackage.haskell.org/package/tasty tasty testing framework>.")
    (license license:bsd-3)))

haskell-9.2-tasty-hedgehog

(define-public haskell-9.2-tasty-test-reporter
  (package
    (name "haskell-9.2-tasty-test-reporter")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-test-reporter/tasty-test-reporter-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aail968niiy4yicbb0nfd7z46vxgp5zf1k9ndh4smskihz8kjin"))))
    (properties `((upstream-name . "tasty-test-reporter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-concurrent-output)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-junit-xml)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/stoeffel/tasty-test-reporter#readme")
    (synopsis "Producing JUnit-style XML test reports.")
    (description
     "Please see the README at <https://github.com/stoeffel/tasty-test-reporter>.")
    (license license:bsd-3)))

haskell-9.2-tasty-test-reporter

(define-public haskell-9.2-userid
  (package
    (name "haskell-9.2-userid")
    (version "0.1.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/userid/userid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12ijma954vss6a2nicq17q5pz3l7qjgh1f6s8lcrrxcf8vc10m1c"))))
    (properties `((upstream-name . "userid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-aeson)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-boomerang)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-cereal)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-safecopy)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-web-routes)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-web-routes-th)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.github.com/Happstack/userid")
    (synopsis "The UserId type and useful instances for web development")
    (description
     "Includes instances for SafeCopy, Lens, Boomerang, PathInfo and more")
    (license license:bsd-3)))

haskell-9.2-userid

(define-public haskell-9.2-variable-media-field-dhall
  (package
    (name "haskell-9.2-variable-media-field-dhall")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/variable-media-field-dhall/variable-media-field-dhall-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h2gm5h86n7bm5gf9rbc0zlkkhrkyavygvrkz251r9l57qw48qax"))))
    (properties `((upstream-name . "variable-media-field-dhall")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-dhall)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-variable-media-field)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page
     "https://hackage.haskell.org/package/variable-media-field-dhall")
    (synopsis "Dhall instances for VF")
    (description "Dhall instances for VF")
    (license license:expat)))

haskell-9.2-variable-media-field-dhall

(define-public haskell-9.2-verbosity
  (package
    (name "haskell-9.2-verbosity")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-dhall)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-generic-lens)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-serialise)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/trskop/verbosity")
    (synopsis "Simple enum that encodes application verbosity.")
    (description
     "Simple enum that encodes application verbosity with various useful instances.")
    (license license:bsd-3)))

haskell-9.2-verbosity

(define-public haskell-9.2-vinyl-loeb
  (package
    (name "haskell-9.2-vinyl-loeb")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-vinyl)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/vinyl-loeb")
    (synopsis "Loeb's theorem for extensible records.")
    (description "")
    (license license:expat)))

haskell-9.2-vinyl-loeb

(define-public haskell-9.2-wai-middleware-prometheus
  (package
    (name "haskell-9.2-wai-middleware-prometheus")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/wai-middleware-prometheus/wai-middleware-prometheus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1657zar254550skn3hx7y1g06aww2pjls5i4frw6ci4sxy3nynxp"))))
    (properties `((upstream-name . "wai-middleware-prometheus")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-clock)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-doctest)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-prometheus-client)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fimad/prometheus-haskell")
    (synopsis "WAI middlware for exposing http://prometheus.io metrics.")
    (description "WAI middlware for exposing http://prometheus.io metrics.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.2-wai-middleware-prometheus

(define-public haskell-9.2-webgear-core
  (package
    (name "haskell-9.2-webgear-core")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webgear-core/webgear-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ah01znv18ll9lhlwn81yxvdy9q1f0xl2pcy4k24d0blrrva0nl7"))))
    (properties `((upstream-name . "webgear-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-arrows)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-case-insensitive)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-http-api-data)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-http-media)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-http-types)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-jose)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-mime-types)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-safe-exceptions)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-tagged)
                  (@ (gnu packages stackage ghc-9.2 stage009)
                     haskell-9.2-unordered-containers)
                  (@ (gnu packages stackage ghc-9.2 stage013) haskell-9.2-wai)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-webgear/webgear#readme")
    (synopsis "Composable, type-safe library to build HTTP APIs")
    (description
     "WebGear is a library to for building composable, type-safe HTTP APIs.
See the documentation of WebGear.Core module to get started.")
    (license license:mpl2.0)))

haskell-9.2-webgear-core

(define-public haskell-9.2-wreq-stringless
  (package
    (name "haskell-9.2-wreq-stringless")
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
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-utf8-string)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-wreq)))
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

haskell-9.2-wreq-stringless

(define-public haskell-9.2-xlsx
  (package
    (name "haskell-9.2-xlsx")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xlsx/xlsx-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1fs2xks7wcbr0idgd50kxlb35l5xy1icvkiyxm8q8772bq2zvadl"))))
    (properties `((upstream-name . "xlsx") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-microlens")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage005) haskell-9.2-Diff)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-attoparsec)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-binary-search)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-dlist)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-errors)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-extra)
                  (@ (gnu packages stackage ghc-9.2 stage014)
                     haskell-9.2-groom)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-hexpat)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-lens)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-monad-control)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-network-uri)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-old-locale)
                  (@ (gnu packages stackage ghc-9.2 stage002)
                     haskell-9.2-raw-strings-qq)
                  (@ (gnu packages stackage ghc-9.2 stage003) haskell-9.2-safe)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage004)
                     haskell-9.2-tasty)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.2 stage012)
                     haskell-9.2-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-transformers-base)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-vector)
                  (@ (gnu packages stackage ghc-9.2 stage014) haskell-9.2-xeno)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage000)
                     haskell-9.2-xml-types)
                  (@ (gnu packages stackage ghc-9.2 stage016) haskell-9.2-zip)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-zip-archive)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-zip-stream)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) bzip2)
                             (@ (gnu packages xml) expat)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-9.2-xlsx

(define-public haskell-9.2-xml-html-qq
  (package
    (name "haskell-9.2-xml-html-qq")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-html-qq/xml-html-qq-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ni354ihiaax7dlghq0qsili0sqy4z9vc3a75i24z2m59hgvnbhs"))))
    (properties `((upstream-name . "xml-html-qq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage007)
                     haskell-9.2-blaze-markup)
                  (@ (gnu packages stackage ghc-9.2 stage013)
                     haskell-9.2-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-data-default)
                  (@ (gnu packages stackage ghc-9.2 stage008)
                     haskell-9.2-from-sum)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-heterocephalus)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-html-conduit)
                  (@ (gnu packages stackage ghc-9.2 stage010)
                     haskell-9.2-resourcet)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-th-lift)
                  (@ (gnu packages stackage ghc-9.2 stage003)
                     haskell-9.2-th-lift-instances)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xml-conduit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/cdepillabout/xml-html-qq")
    (synopsis "Quasi-quoters for XML and HTML Documents")
    (description
     "Please see <https://github.com/cdepillabout/xml-html-qq#readme README.md>.")
    (license license:bsd-3)))

haskell-9.2-xml-html-qq

(define-public haskell-9.2-xmonad-extras
  (package
    (name "haskell-9.2-xmonad-extras")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xmonad-extras/xmonad-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kkwng84hp19vc9nw97y77n3hsg9scn0c9fa1ivf4r9s5x3p6flx"))))
    (properties `((upstream-name . "xmonad-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fwith_sound" "-fwith_hint" "-fwith_mpd" "-f-with_hlist" "-fwith_regex_posix" "-fwith_template_haskell" "-fwith_brightness" "-f-testing")
       #:cabal-revision
       ("1" "1ivm1nncg8qa5ww1kgk1d8zdawniz83ab5s2dj0hbcxffymgxp0k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.2 stage001) haskell-9.2-X11)
                  (@ (gnu packages stackage ghc-9.2 stage005)
                     haskell-9.2-alsa-mixer)
                  (@ (gnu packages stackage ghc-9.2 stage007) haskell-9.2-hint)
                  (@ (gnu packages stackage ghc-9.2 stage011)
                     haskell-9.2-libmpd)
                  (@ (gnu packages stackage ghc-9.2 stage006)
                     haskell-9.2-network)
                  (@ (gnu packages stackage ghc-9.2 stage001)
                     haskell-9.2-regex-posix)
                  (@ (gnu packages stackage ghc-9.2 stage015)
                     haskell-9.2-xmonad)
                  (@ (gnu packages stackage ghc-9.2 stage016)
                     haskell-9.2-xmonad-contrib)))
    (propagated-inputs (list (@ (gnu packages linux) alsa-lib)
                             (@ (gnu packages xorg) libx11)
                             (@ (gnu packages xorg) libxext)
                             (@ (gnu packages xorg) libxinerama)
                             (@ (gnu packages xorg) libxrandr)
                             (@ (gnu packages xorg) libxscrnsaver)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/xmonad/xmonad-extras")
    (synopsis "Third party extensions for xmonad with wacky dependencies")
    (description
     "Various modules for xmonad that cannot be added to xmonad-contrib
because of additional dependencies.")
    (license license:bsd-3)))

haskell-9.2-xmonad-extras

