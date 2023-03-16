;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage009)
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
(define-public haskell-9.4-DBFunctor
  (package
    (name "haskell-9.4-DBFunctor")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/DBFunctor/DBFunctor-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ikb4s9g1mrp4pdz1119dq1vci7mfcvcw92xs47rcin26a3ysdcz"))))
    (properties `((upstream-name . "DBFunctor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nkarag/haskell-DBFunctor#readme")
    (synopsis
     "DBFunctor - Functional Data Management =>  ETL/ELT Data Processing in Haskell")
    (description
     "Please see the README on Github at https://github.com/nkarag/haskell-DBFunctor")
    (license license:bsd-3)))

haskell-9.4-DBFunctor

(define-public haskell-9.4-JuicyPixels-scale-dct
  (package
    (name "haskell-9.4-JuicyPixels-scale-dct")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels-scale-dct/JuicyPixels-scale-dct-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04rhrmjnh12hh2nz04k245avgdcwqfyjnsbpcrz8j9328j41nf7p"))))
    (properties `((upstream-name . "JuicyPixels-scale-dct") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("9" "130s6r1p7v0dhfk9q0kb5qlapccap3mbkjzn2y59r00n011rs6bi")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-carray)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-fft)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/phadej/JuicyPixels-scale-dct#readme")
    (synopsis "Scale JuicyPixels images with DCT")
    (description
     "Scale JuicyPixels Images with DCT

There is also a @@friday@@ version: <http://hackage.haskell.org/package/friday-scale-dct friday-scale-dct>")
    (license license:bsd-3)))

haskell-9.4-JuicyPixels-scale-dct

(define-public haskell-9.4-MissingH
  (package
    (name "haskell-9.4-MissingH")
    (version "1.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MissingH/MissingH-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0krd15c5c1k92zm1w2qmqwib2gg93bxqz76xmyhcjkx1l229cfzw"))))
    (properties `((upstream-name . "MissingH") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags
       (list "-fnetwork--ge-3_0_0")))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-old-time)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-regex-compat)))
    (home-page "https://hackage.haskell.org/package/MissingH")
    (synopsis "Large utility library")
    (description
     "@@MissingH@@ is a library of all sorts of utility functions for Haskell
programmers.  It is written in pure Haskell and thus should be
extremely portable and easy to use.")
    (license license:bsd-3)))

haskell-9.4-MissingH

(define-public haskell-9.4-Network-NineP
  (package
    (name "haskell-9.4-Network-NineP")
    (version "0.4.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/Network-NineP/Network-NineP-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19m5iz99igw6bdqh9zln1cmfms0nrghvf9553fb2gjzv0i9dbygs"))))
    (properties `((upstream-name . "Network-NineP") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-NineP)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-convertible)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hslogger)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-monad-peel)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-mstate)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-posix)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-stateref)))
    (home-page "https://hackage.haskell.org/package/Network-NineP")
    (synopsis "High-level abstraction over 9P protocol")
    (description
     "A library providing one with a somewhat higher level interface to 9P2000 protocol than existing implementations. Designed to facilitate rapid development of synthetic filesystems.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-Network-NineP

(define-public haskell-9.4-RSA
  (package
    (name "haskell-9.4-RSA")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/RSA/RSA-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0hchsqrxpfw7mqrqwscfy8ig1w2di6w3nxpzi873w0gibv2diibj"))))
    (properties `((upstream-name . "RSA") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-SHA)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-crypto-api)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-crypto-pubkey-types)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/RSA")
    (synopsis
     "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.")
    (description
     "This library implements the RSA encryption and signature
algorithms for arbitrarily-sized ByteStrings. While the
implementations work, they are not necessarily the fastest ones
on the planet. Particularly key generation. The algorithms
included are based of RFC 3447, or the Public-Key Cryptography
Standard for RSA, version 2.1 (a.k.a, PKCS#1 v2.1).")
    (license license:bsd-3)))

haskell-9.4-RSA

(define-public haskell-9.4-ace
  (package
    (name "haskell-9.4-ace")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ace/ace-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0f07j2rj9ylvdrijwwlpx66mj503mhjfq1x2mylpxkr6kmjjniyk"))))
    (properties `((upstream-name . "ace") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ace")
    (synopsis "Attempto Controlled English parser and printer")
    (description
     "Attempto Controlled English is a formally defined unambiguous language which
is a subset of the English language. This package provides a tokenizer,
parser and printer for that language. Specifically, it implements the
declarative mood and the interrogative mood.
The imperative mood is omitted at this time. Interpretation rules,
conversion to FoL, or any further analysis is not implemented by this
library.")
    (license license:bsd-3)))

haskell-9.4-ace

(define-public haskell-9.4-attoparsec-data
  (package
    (name "haskell-9.4-attoparsec-data")
    (version "1.0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-data/attoparsec-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00clpsv9ggkz34csdwx17fhz6sirvy71g897fwi33qzdv7sb2fx0"))))
    (properties `((upstream-name . "attoparsec-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-attoparsec-time)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)))
    (home-page "https://github.com/nikita-volkov/attoparsec-data")
    (synopsis "Parsers for the standard Haskell data types")
    (description "")
    (license license:expat)))

haskell-9.4-attoparsec-data

(define-public haskell-9.4-binary-parser
  (package
    (name "haskell-9.4-binary-parser")
    (version "0.5.7.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-parser/binary-parser-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l739h7aixw6dlwbblk7g2cablyn6265715mwywwjq7wb73va1vd"))))
    (properties `((upstream-name . "binary-parser") (hidden? . #f)))
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
                     haskell-9.4-base-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/binary-parser")
    (synopsis "An efficient but limited parser API specialised to bytestrings")
    (description "")
    (license license:expat)))

haskell-9.4-binary-parser

(define-public haskell-9.4-blas-carray
  (package
    (name "haskell-9.4-blas-carray")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blas-carray/blas-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1aqphwgzcryzfzjzsv6ph4kcmswqd7mgs65dj8lsjzkhfc6izggl"))))
    (properties `((upstream-name . "blas-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-blas-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-carray)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-netlib-carray)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-storable-complex)))
    (home-page "http://hub.darcs.net/thielema/blas-carray/")
    (synopsis "Auto-generated interface to Fortran BLAS via CArrays")
    (description
     "BLAS is a package for efficient basic linear algebra operations.
The reference implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

See also package @@lapack-carray@@.")
    (license license:bsd-3)))

haskell-9.4-blas-carray

(define-public haskell-9.4-blaze-bootstrap
  (package
    (name "haskell-9.4-blaze-bootstrap")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-bootstrap/blaze-bootstrap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qsis1hwd8sqcciibxwy8p6irszwa2fy5m75qxp46ymfal5lrdak"))))
    (properties `((upstream-name . "blaze-bootstrap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/blaze-bootstrap")
    (synopsis "Blaze helper functions for bootstrap pages")
    (description "Simplify building blaze and bootstrap powered pages")
    (license license:expat)))

haskell-9.4-blaze-bootstrap

(define-public haskell-9.4-check-email
  (package
    (name "haskell-9.4-check-email")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/check-email/check-email-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09wkz853ikr4yns2z12rnzprb98q4b8li1n6lmx5v6m0vgx1a9hw"))))
    (properties `((upstream-name . "check-email") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-email-validate)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages base) glibc)))
    (home-page "https://github.com/qoelet/check-email#readme")
    (synopsis "Confirm whether an email is valid and probably existant.")
    (description
     "See README at <https://github.com/qoelet/check-email#readme>")
    (license license:bsd-3)))

haskell-9.4-check-email

(define-public haskell-9.4-comfort-array-shape
  (package
    (name "haskell-9.4-comfort-array-shape")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-array-shape/comfort-array-shape-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0caw0d9566qi9difgprfg3g9yqfiks2ycqjbr7wx7xcplagqdcn7"))))
    (properties `((upstream-name . "comfort-array-shape") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-comfort-array)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-doctest-lib)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-fixed-length)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-empty)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-tfp)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/comfort-array-shape/")
    (synopsis "Additional shape types for the comfort-array package")
    (description
     "Some extra array shape types
additional to the ones in the @@comfort-array@@ package.
These require some more package dependencies
and use type-encoded natural numbers.

* @@Static.ZeroBased@@:
Like @@Shape.ZeroBased@@ but with type-encoded number as size.

* @@Simplex@@:
Simplices of any dimension, where the dimension is encoded in the type.
Only a private module for demonstration.
Production-ready implementation in @@comfort-array@@.")
    (license license:bsd-3)))

haskell-9.4-comfort-array-shape

(define-public haskell-9.4-comfort-fftw
  (package
    (name "haskell-9.4-comfort-fftw")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-fftw/comfort-fftw-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g43fj1wmzdsfqz9axrq35bp2ad2900zcqvf9b2w57k3pl2cdk65"))))
    (properties `((upstream-name . "comfort-fftw") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-comfort-array)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-doctest-lib)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-fftw-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-empty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-storable-record)))
    (home-page "https://hub.darcs.net/thielema/comfort-fftw/")
    (synopsis
     "High-level interface to FFTW (Fast Fourier Transform) based on comfort-array")
    (description "FFTW claims to be the fastest Fourier Transform in the West.
This is a high-level interface to @@libfftw@@.
We re-use the type classes from @@netlib-ffi@@.

For rather simple examples
see the packages @@align-audio@@ and @@morbus-meniere@@.

See also package @@fft@@.")
    (license license:bsd-3)))

haskell-9.4-comfort-fftw

(define-public haskell-9.4-commutative
  (package
    (name "haskell-9.4-commutative")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/commutative/commutative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0scrc0bwa3ggvhmhmj0pvi7q7sbm495nc8m30jjjcp5wbd26mg6c"))))
    (properties `((upstream-name . "commutative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/commutative#readme")
    (synopsis "Commutative binary operations.")
    (description
     "Please see the README on Github at <https://github.com/athanclark/commutative#readme>")
    (license license:bsd-3)))

haskell-9.4-commutative

(define-public haskell-9.4-conduino
  (package
    (name "haskell-9.4-conduino")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/conduino/conduino-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jdhj71nva9v8f40wzkd2wzikpgwlzqid0inyfdlj4wnn83qwwk2"))))
    (properties `((upstream-name . "conduino") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-list-transformer)))
    (home-page "https://github.com/mstksg/conduino#readme")
    (synopsis "Lightweight composable continuation-based stream processors")
    (description
     "A lightweight continuation-based stream processing library.

It is similar in nature to pipes and conduit, but useful if you just want
something quick to manage composable stream processing without focus on IO.

See README for more information.")
    (license license:bsd-3)))

haskell-9.4-conduino

(define-public haskell-9.4-cryptohash
  (package
    (name "haskell-9.4-cryptohash")
    (version "0.11.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash/cryptohash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1yr2iyb779znj79j3fq4ky8l1y8a600a2x1fx9p5pmpwq5zq93y2"))))
    (properties `((upstream-name . "cryptohash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteable)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-cryptohash")
    (synopsis "collection of crypto hashes, fast, pure and practical")
    (description
     "DEPRECATED: this library is still fully functional, but please use cryptonite for new projects
and convert old one to use cryptonite. This is where things are at nowadays.

A collection of crypto hashes, with a practical incremental and one-pass, pure APIs,
with performance close to the fastest implementations available in other languages.

The implementations are made in C with a haskell FFI wrapper that hide the C implementation.

Simple examples using the unified API:

> import Crypto.Hash
>
> sha1 :: ByteString -> Digest SHA1
> sha1 = hash
>
> hexSha3_512 :: ByteString -> String
> hexSha3_512 bs = show (hash bs :: Digest SHA3_512)

Simple examples using the module API:

> import qualified Crypto.Hash.SHA1 as SHA1
>
> main = putStrLn $ show $ SHA1.hash (Data.ByteString.pack [0..255])

> import qualified Crypto.Hash.SHA3 as SHA3
>
> main = putStrLn $ show $ digest
>   where digest = SHA3.finalize ctx
>         ctx    = foldl' SHA3.update iCtx (map Data.ByteString.pack [ [1,2,3], [4,5,6] ]
>         iCtx   = SHA3.init 224")
    (license license:bsd-3)))

haskell-9.4-cryptohash

(define-public haskell-9.4-cryptohash-cryptoapi
  (package
    (name "haskell-9.4-cryptohash-cryptoapi")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptohash-cryptoapi/cryptohash-cryptoapi-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13h5f9pmcd0swa4asl7wzpf5lskpgjdqrmy1mqdc78gsxdj8cyki"))))
    (properties `((upstream-name . "cryptohash-cryptoapi") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-crypto-api)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-cryptohash-cryptoapi")
    (synopsis "Crypto-api interfaces for cryptohash")
    (description "Crypto-api interfaces for cryptohash")
    (license license:bsd-3)))

haskell-9.4-cryptohash-cryptoapi

(define-public haskell-9.4-cryptonite-openssl
  (package
    (name "haskell-9.4-cryptonite-openssl")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite-openssl/cryptonite-openssl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xj41354dx24rfh6i7av7qamvin34z4g6m1hxw1fc9jg4q41qkly"))))
    (properties `((upstream-name . "cryptonite-openssl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-basement)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-tasty-kat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-crypto/cryptonite-openssl")
    (synopsis "Crypto stuff using OpenSSL cryptographic library")
    (description
     "Crypto stuff using the OpenSSL cryptographic library as bindings")
    (license license:bsd-3)))

haskell-9.4-cryptonite-openssl

(define-public haskell-9.4-dlist-nonempty
  (package
    (name "haskell-9.4-dlist-nonempty")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dlist-nonempty/dlist-nonempty-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1phdqr9fi2smscmqn7l9kfjxfnqfw6ws1v0a1lrqm5civ15gxhms"))))
    (properties `((upstream-name . "dlist-nonempty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsemigroupoids")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/phadej/dlist-nonempty")
    (synopsis "Non-empty difference lists")
    (description
     "Difference lists are a list-like type supporting O(1) append. This is
particularly useful for efficient logging and pretty printing (e.g. with the
Writer monad), where list append quickly becomes too expensive.

> DList a         ≅ [a] -> [a]
> NonEmptyDList a ≅ [a] -> NonEmpty a

For empty variant, @@DList@@, see <http://hackage.haskell.org/package/dlist dlist package>.")
    (license license:bsd-3)))

haskell-9.4-dlist-nonempty

(define-public haskell-9.4-drifter-sqlite
  (package
    (name "haskell-9.4-drifter-sqlite")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/drifter-sqlite/drifter-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07267h287bpn2smr50m7cf179kfmv8vhv4cwa4qdi1wpifiz8pic"))))
    (properties `((upstream-name . "drifter-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-drifter)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-sqlite-simple)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichaelXavier/drifter-sqlite#readme")
    (synopsis "SQLite support for the drifter schema migraiton tool")
    (description
     "Please see the README on GitHub at <https://github.com/MichaelXavier/drifter-sqlite#readme>")
    (license license:bsd-3)))

haskell-9.4-drifter-sqlite

(define-public haskell-9.4-dual-tree
  (package
    (name "haskell-9.4-dual-tree")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dual-tree/dual-tree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19nm34d166fhlkk7npx0iq9kbx7300a82bg75q1sx98jqfa4nffh"))))
    (properties `((upstream-name . "dual-tree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-monoid-extras)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-testing-feat)))
    (home-page "https://hackage.haskell.org/package/dual-tree")
    (synopsis "Rose trees with cached and accumulating monoidal annotations")
    (description "Rose (n-ary) trees with both upwards- (/i.e./
cached) and downwards-traveling (/i.e./
accumulating) monoidal annotations.  This is used
as the core data structure underlying
the @@diagrams@@ framework
(<https://diagrams.github.io>), but
potentially has other applications as well.

Abstractly, a DUALTree is a rose (n-ary) tree
with data (of type @@l@@) at leaves, data (of type
@@a@@) at internal nodes, and two types of monoidal
annotations, one (of type @@u@@) travelling \\\"up\\\"
the tree and one (of type @@d@@) traveling
\\\"down\\\".

See \"Data.Tree.DUAL\" for full documentation.
\"Data.Tree.DUAL\" provides a public API which
should suffice for most purposes.
\"Data.Tree.DUAL.Internal\" exports more of the
internal implementation---use it at your own
risk.")
    (license license:bsd-3)))

haskell-9.4-dual-tree

(define-public haskell-9.4-eap
  (package
    (name "haskell-9.4-eap")
    (version "0.9.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/eap/eap-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0bgx7sxpmvhd84j7kkqznazw7p1fl862w7jxlap473g2q5365kqc"))))
    (properties `((upstream-name . "eap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lsy7pl39s02f45l7g9alw49xwh7m8m4bm3ydcz11rh9xdgcb9jv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-pretty-hex)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/codemonkeylabs/eap#readme")
    (synopsis "Extensible Authentication Protocol (EAP)")
    (description
     "This module provides types and on the wire de/coding of EAP packets as per RFC 3748")
    (license license:bsd-3)))

haskell-9.4-eap

(define-public haskell-9.4-edit-distance-vector
  (package
    (name "haskell-9.4-edit-distance-vector")
    (version "1.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/edit-distance-vector/edit-distance-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07qgc8dyi9kkzkd3xcd78wdlljy0xwhz65b4r2qg2piidpcdvpxp"))))
    (properties `((upstream-name . "edit-distance-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/thsutton/edit-distance-vector")
    (synopsis "Calculate edit distances and edit scripts between vectors.")
    (description
     "An implementation of the Wagner–Fischer dynamic programming algorithm to
find the optimal edit script and cost between two sequences.

The implementation in this package is specialised to sequences represented
with \"Data.Vector\" but is otherwise agnostic to:

* The type of values in the vectors;

* The type representing edit operations; and

* The type representing the cost of operations.
")
    (license license:bsd-3)))

haskell-9.4-edit-distance-vector

(define-public haskell-9.4-extra
  (package
    (name "haskell-9.4-extra")
    (version "1.7.12")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/extra/extra-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g5h8fp0nq4k9asiknw0bhvb10zpfnsixfp0n3xz0rc83pnajwg5"))))
    (properties `((upstream-name . "extra") (hidden? . #f)))
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
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ndmitchell/extra#readme")
    (synopsis "Extra functions I use.")
    (description
     "A library of extra functions for the standard Haskell libraries. Most functions are simple additions, filling out missing functionality. A few functions are available in later versions of GHC, but this package makes them available back to GHC 7.2.

The module \"Extra\" documents all functions provided by this library. Modules such as \"Data.List.Extra\" provide extra functions over \"Data.List\" and also reexport \"Data.List\". Users are recommended to replace \"Data.List\" imports with \"Data.List.Extra\" if they need the extra functionality.")
    (license license:bsd-3)))

haskell-9.4-extra

(define-public haskell-9.4-geodetics
  (package
    (name "haskell-9.4-geodetics")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/geodetics/geodetics-" version
                    ".tar.gz"))
              (sha256
               (base32
                "18jjq4z16v6mkmm4as67srrwzk75cl32jlph3qbm106gms54vska"))))
    (properties `((upstream-name . "geodetics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-checkers)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-dimensional)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/PaulJohnson/geodetics")
    (synopsis "Terrestrial coordinate systems and geodetic calculations.")
    (description
     "Precise geographical coordinates (latitude & longitude), with conversion between
different reference frames and projections.

Certain distinguished reference frames and grids are given distinct
types so that coordinates expressed within them cannot be confused with
from coordinates in other frames.")
    (license license:bsd-3)))

haskell-9.4-geodetics

(define-public haskell-9.4-ghc-exactprint
  (package
    (name "haskell-9.4-ghc-exactprint")
    (version "1.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-exactprint/ghc-exactprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dzl5nhiwi6a5jq226qjq0vlb70iq50hk0kv0h675j4pr93v50w8"))))
    (properties `((upstream-name . "ghc-exactprint") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-roundtrip" "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-data-default)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fail)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)))
    (home-page "https://hackage.haskell.org/package/ghc-exactprint")
    (synopsis "ExactPrint for GHC")
    (description "Using the API Annotations available from GHC 9.2.1, this
library provides a means to round trip any code that can
be compiled by GHC, currently excluding lhs files.

Note: requires GHC 9.4.*. For earlier GHC
versions see lower version numbers.
")
    (license license:bsd-3)))

haskell-9.4-ghc-exactprint

(define-public haskell-9.4-hashing
  (package
    (name "haskell-9.4-hashing")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hashing/hashing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1a3ws6dlmm9gfpcipq2kx7mzbr0kn3faq2cfnavqdxy18ipvxnbi"))))
    (properties `((upstream-name . "hashing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/wangbj/hashing")
    (synopsis "A pure haskell library implements several hash algorithms.")
    (description
     "hashing is a pure haskell hash library, supported hash algorithm: SHA1/SHA224/SHA256/SHA384/SHA512
MD5 and Whirlpool. It provides a simple interface ``hash`` and ``hashLazy`` to compute a hash value
Based on the type signature.
Performance wise it only has 1/5 - 1/15 of native C implementations, or ``cryptonite``.
Compare to other pure hash libraries such as PureMD5/SHA, it provides a simpler interface,
implements more algorithms, and has less dependencies.")
    (license license:expat)))

haskell-9.4-hashing

(define-public haskell-9.4-highlighting-kate
  (package
    (name "haskell-9.4-highlighting-kate")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/highlighting-kate/highlighting-kate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bqv00gfmrsf0jjr4qf3lhshvfkyzmhbi3pjb6mafbnsyn2k7f6q"))))
    (properties `((upstream-name . "highlighting-kate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-executable" "-f-pcre-light")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Diff)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jgm/highlighting-kate")
    (synopsis "Syntax highlighting")
    (description "highlighting-kate is a syntax highlighting library
with support for nearly one hundred languages. The syntax
parsers are automatically generated from Kate
syntax descriptions (<http://kate-editor.org/>),
so any syntax supported by Kate can be added.
An (optional) command-line program is provided, along
with a utility for generating new parsers from Kate
XML syntax descriptions.
__This library has been deprecated.
Please use skylighting instead.__")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-highlighting-kate

(define-public haskell-9.4-hslua-core
  (package
    (name "haskell-9.4-hslua-core")
    (version "2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslua-core/hslua-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hy3a7rn940bcj0shxyk75dndwl23wwmmvbnwnay36py60hy3rbq"))))
    (properties `((upstream-name . "hslua-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-lua)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-lua-arbitrary)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hslua.org/")
    (synopsis "Bindings to Lua, an embeddable scripting language")
    (description "Wrappers and helpers to bridge Haskell and
<https://www.lua.org/ Lua>.

It builds upon the /lua/ package, which allows to bundle
a Lua interpreter with a Haskell program.")
    (license license:expat)))

haskell-9.4-hslua-core

(define-public haskell-9.4-hspec
  (package
    (name "haskell-9.4-hspec")
    (version "2.10.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hspec/hspec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13g46fk7hcnk3058pb2wwq257pi8628qaa9md9sfw5rlw878z25r"))))
    (properties `((upstream-name . "hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hspec-discover)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "Hspec is a testing framework for Haskell.  Some of Hspec's distinctive
features are:

* a friendly DSL for defining tests

* integration with QuickCheck, SmallCheck, and HUnit

* parallel test execution

* automatic discovery of test files

The Hspec Manual is at <http://hspec.github.io/>.")
    (license license:expat)))

haskell-9.4-hspec

(define-public haskell-9.4-hspec-contrib
  (package
    (name "haskell-9.4-hspec-contrib")
    (version "0.5.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-contrib/hspec-contrib-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nyb5n2jiq920yyf3flzyxrs5xpfyppl3jn18zhviyysjjk5drpx"))))
    (properties `((upstream-name . "hspec-contrib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-hspec-core)))
    (home-page "http://hspec.github.io/")
    (synopsis "Contributed functionality for Hspec")
    (description "Contributed functionality for Hspec")
    (license license:expat)))

haskell-9.4-hspec-contrib

(define-public haskell-9.4-htoml-parse
  (package
    (name "haskell-9.4-htoml-parse")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/htoml-parse/htoml-parse-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02zp241wgc7lkywp1wd7qz69k2gkgdhk72vdwqfmvxg3l61z0wb8"))))
    (properties `((upstream-name . "htoml-parse") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-htoml-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-prettyprinter-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/sergv/htoml-parse")
    (synopsis "Parse TOML values produced by htoml-megaparsec package.")
    (description
     "Package definecs set of parser combinators that allows analyzing arbitrary TOML structures.
Includes formatted errors that keep track of where in the original TOML file a value
came from.")
    (license license:asl2.0)))

haskell-9.4-htoml-parse

(define-public haskell-9.4-keys
  (package
    (name "haskell-9.4-keys")
    (version "3.12.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/keys/keys-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ik6wsff306dnbz0v3gpiajlj5b558hrk9176fzcb2fclf4447nm"))))
    (properties `((upstream-name . "keys") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "16s7yj70fms01ab8x2f3262p576lwqdxlkq798qf9pjxfg95jvy9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://github.com/ekmett/keys/")
    (synopsis "Keyed functors and containers")
    (description
     "This package provides a bunch of ad hoc classes for accessing parts of a container.

In practice this package is largely subsumed by the
<https://hackage.haskell.org/package/lens lens package>,
but it is maintained for now as it has much
simpler dependencies.")
    (license license:bsd-3)))

haskell-9.4-keys

(define-public haskell-9.4-lapack-carray
  (package
    (name "haskell-9.4-lapack-carray")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-carray/lapack-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1l4dwkdk6m5ran92j7k9yxqin1spgx8sg0bi2kfn1pcs6jzgn3si"))))
    (properties `((upstream-name . "lapack-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1awpjmazz5vz95zzfxflcmivs2ga2jknr53rbgkakfkr5hcqnq1b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-carray)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-lapack-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-netlib-carray)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-storable-complex)))
    (home-page "http://hub.darcs.net/thielema/lapack-carray/")
    (synopsis "Auto-generated interface to Fortran LAPACK via CArrays")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.
This is a semi-automatically generated mid-level wrapper.
The functions are not ready to use for high-level applications,
but they are a step closer.

The functions are all in IO monad because they are auto-generated and
we cannot make sure automatically that unsafePerformIO is always safe.
Instead of raw pointers we use CArrays and IOCArrays
and assign and check array bounds to LAPACK function parameters,
as far we can retrieve this information from the FORTRAN comments.
We check consistency of dimensions where consistent dimensions are required,
but we cannot do all kind of bound checks.
We use immutable CArray for input and output parameters
and mutable IOCArray for input/output parameters.
LAPACK plays some nasty tricks of in-place array updates
on input/output arrays
even if the dimensions of input and output array differ (see e.g. GELS).
The wrappers also manage allocation of memory for function parameters.
This is necessary since FORTRAN passes all parameters by reference.
Further on, the wrappers convert from Haskell values like @@Int@@
to low-level values like @@CInt@@.

We provide bindings to functions of all variants
for @@Float@@, @@Double@@, @@Complex Float@@ and @@Complex Double@@.
We do not use TemplateHaskell nor HSC nor CHS, but instead Haskell 98 code
generated by the custom @@lapack-ffi-tools@@ package.")
    (license license:bsd-3)))

haskell-9.4-lapack-carray

(define-public haskell-9.4-lapack-ffi-tools
  (package
    (name "haskell-9.4-lapack-ffi-tools")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-ffi-tools/lapack-ffi-tools-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mf41wcbxkgiv71c3jjwhsdg9d7qpa88qsifpa5vgplpx2v1p6ya"))))
    (properties `((upstream-name . "lapack-ffi-tools") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cassava)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-explicit-exception)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-empty)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pathtype)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/lapack-ffi-tools/")
    (synopsis "Generator for Haskell interface to Fortran LAPACK")
    (description
     "LAPACK is a package for efficient numerically robust linear algebra.
The original implementation is written in FORTRAN.

The program in this package generates the modules
for the packages @@blas-ffi@@, @@blas-comfort-array@@, @@blas-carray@@,
@@lapack-ffi@@, @@lapack-comfort-array@@, @@lapack-carray@@
from the FORTRAN source files.")
    (license license:bsd-3)))

haskell-9.4-lapack-ffi-tools

(define-public haskell-9.4-list-t
  (package
    (name "haskell-9.4-list-t")
    (version "1.0.5.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/list-t/list-t-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ilbc3kjvqanwn4zysy9sdp45cizdqkfyibiymzb1ibg2s56a4sg"))))
    (properties `((upstream-name . "list-t") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-logict)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
    (home-page "https://github.com/nikita-volkov/list-t")
    (synopsis "ListT done right")
    (description "A correct implementation of the list monad-transformer.
Useful for basic streaming.")
    (license license:expat)))

haskell-9.4-list-t

(define-public haskell-9.4-model
  (package
    (name "haskell-9.4-model")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/model/model-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0yynva6zk986yl04ilkr171m2m8k649fihc2z1lkvfn6vl8qpw0d"))))
    (properties `((upstream-name . "model") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-convertible)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)))
    (home-page "http://github.com/Quid2/model")
    (synopsis "Derive a model of a data type using Generics")
    (description "See the <http://github.com/Quid2/model online tutorial>.")
    (license license:bsd-3)))

haskell-9.4-model

(define-public haskell-9.4-monoid-subclasses
  (package
    (name "haskell-9.4-monoid-subclasses")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-subclasses/monoid-subclasses-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10q71zpj2q81q4dpb9mmsds0jwhcvlxqdgxk0kjiqf8i78qy54hn"))))
    (properties `((upstream-name . "monoid-subclasses") (hidden? . #f)))
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
                     haskell-9.4-commutative-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primes)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/blamario/monoid-subclasses/")
    (synopsis "Subclasses of Monoid")
    (description
     "A hierarchy of subclasses of 'Monoid' together with their instances for all data structures from base, containers, and
text packages.")
    (license license:bsd-3)))

haskell-9.4-monoid-subclasses

(define-public haskell-9.4-murmur3
  (package
    (name "haskell-9.4-murmur3")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/murmur3/murmur3-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ldmhprzldcxdbv5cd7nm7dfaavns4iv4z6mi1prnx1yn41lp6d0"))))
    (properties `((upstream-name . "murmur3") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-base16)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskoin/murmur3#readme")
    (synopsis "Pure Haskell implementation of the MurmurHash3 x86 algorithm")
    (description
     "MurmurHash3 is a non-cryptographic hash function suitable for general hash-based lookup. We provide the x86 version which closely follows  the following implementation: <https://code.google.com/p/smhasher/source/browse/trunk/MurmurHash3.cpp>")
    (license license:expat)))

haskell-9.4-murmur3

(define-public haskell-9.4-natural-transformation
  (package
    (name "haskell-9.4-natural-transformation")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/natural-transformation/natural-transformation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1by8xwjc23l6pa9l4iv7zp82dykpll3vc3hgxk0pgva724n8xhma"))))
    (properties `((upstream-name . "natural-transformation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("10" "18d14fasp1l5xdfgp8swgcyyjd3irqj19cn298ksx9wiw43j818p")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ku-fpg/natural-transformation")
    (synopsis "A natural transformation package.")
    (description
     "A natural transformation transforms a container @@f a@@ into another
container @@g a@@. Natural transformations act as functor morphisms
in category theory.

The naming of '~>', ':~>' and '$$' were taken,
with permission, from Edward Kmett's @@indexed@@ package.")
    (license license:bsd-3)))

haskell-9.4-natural-transformation

(define-public haskell-9.4-netlib-comfort-array
  (package
    (name "haskell-9.4-netlib-comfort-array")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-comfort-array/netlib-comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mwgdll9m0ryy5y1385sx2asff98kqfkz4bif8s4i0dkrqalsfx4"))))
    (properties `((upstream-name . "netlib-comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sl8xf5rgf4g5is5kfr6sai9i5mkw46391zv7j7v2zfw36iwx8i9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-comfort-array)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-netlib-ffi)))
    (home-page "https://hub.darcs.net/thielema/netlib-comfort-array/")
    (synopsis "Helper modules for comfort-array wrappers to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-comfort-array@@ and @@lapack-comfort-array@@.")
    (license license:bsd-3)))

haskell-9.4-netlib-comfort-array

(define-public haskell-9.4-optics
  (package
    (name "haskell-9.4-optics")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/optics/optics-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1irk0m3194vmrqwm29p5gjwd8w7i5hmg1ikxfw11yjfk0hvmbrzb"))))
    (properties `((upstream-name . "optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-optics-extra)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-optics-th)))
    (home-page "https://hackage.haskell.org/package/optics")
    (synopsis "Optics as an abstract interface")
    (description
     "This package makes it possible to define and use Lenses, Traversals, Prisms
and other optics, using an abstract interface. See the main module \"Optics\"
for the documentation.

This is the \"batteries-included\" variant with many dependencies; see the
@@<https://hackage.haskell.org/package/optics-core optics-core>@@ package and
other @@optics-*@@ dependencies if you need a more limited dependency footprint.

Note: Hackage does not yet display documentation for reexported-modules,
but you can start from the \"Optics\" module documentation or see the module
list in @@<https://hackage.haskell.org/package/optics-core optics-core>@@.")
    (license license:bsd-3)))

haskell-9.4-optics

(define-public haskell-9.4-pandoc-symreg
  (package
    (name "haskell-9.4-pandoc-symreg")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pandoc-symreg/pandoc-symreg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lw82q4mygcnwfasiz3gps1y1i5cn80q7ch2g6xshjyxrbqq3qnf"))))
    (properties `((upstream-name . "pandoc-symreg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-attoparsec-expr)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-srtree)))
    (home-page "https://github.com/folivetti/pandoc-symreg#readme")
    (synopsis
     "A tool to convert symbolic regression expressions into different formats.")
    (description
     "A pandoc-like cli tool and library to convert symbolic regression expressions to convenient formats")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-pandoc-symreg

(define-public haskell-9.4-parsers
  (package
    (name "haskell-9.4-parsers")
    (version "0.12.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/parsers/parsers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "068k7fm0s13z0jkkffc149cqcxnzpk1m066lp4ccdfcb41km1zwi"))))
    (properties `((upstream-name . "parsers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbinary" "-fparsec" "-fattoparsec")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-charset)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/parsers/")
    (synopsis "Parsing combinators")
    (description
     "This library provides convenient combinators for working with and building parsing combinator libraries.

Given a few simple instances, e.g. for the class 'Text.Parser.Combinators.Parsing' in \"Text.Parser.Combinators.Parsing\" you
get access to a large number of canned definitions. Instances exist for the parsers provided by @@parsec@@,
@@attoparsec@@ and base’s \"Text.Read\".")
    (license license:bsd-3)))

haskell-9.4-parsers

(define-public haskell-9.4-pipes-group
  (package
    (name "haskell-9.4-pipes-group")
    (version "1.0.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-group/pipes-group-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1issfj3syi6lfbcdn3bhlbnlh86s92ldsb04c4ac69xipsgyhwqk"))))
    (properties `((upstream-name . "pipes-group") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "0g6xrp4xi4gzar5l4jhpfi617zvy1hv0i9rg7gg23fcqfyc1kh22")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-lens-family-core)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-pipes-parse)))
    (home-page "https://hackage.haskell.org/package/pipes-group")
    (synopsis "Group streams into substreams")
    (description
     "@@pipes-group@@ uses @@FreeT@@ and lenses to group streams into
sub-streams.  Notable features include:

* /Perfect Streaming/: Group elements without collecting them into memory

* /Lens Support/: Use lenses to simplify many common operations

@@Pipes.Group@@ contains the full documentation for this library.

Read @@Pipes.Group.Tutorial@@ for an extensive tutorial.")
    (license license:bsd-3)))

haskell-9.4-pipes-group

(define-public haskell-9.4-polysemy
  (package
    (name "haskell-9.4-polysemy")
    (version "1.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy/polysemy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09629gyjdp567dsqk0mgzzk5glrwnpn0cwanank5z3zkqg05d5ac"))))
    (properties `((upstream-name . "polysemy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump-core")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-first-class-families)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-type-errors)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-unagi-chan)))
    (home-page "https://github.com/polysemy-research/polysemy#readme")
    (synopsis "Higher-order, low-boilerplate free monads.")
    (description
     "Please see the README on GitHub at <https://github.com/polysemy-research/polysemy#readme>")
    (license license:bsd-3)))

haskell-9.4-polysemy

(define-public haskell-9.4-protocol-radius
  (package
    (name "haskell-9.4-protocol-radius")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-radius/protocol-radius-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cd1qr5c2s25136lljqj2xfl8anrrc6m1yf8dpscjil2y4r27629"))))
    (properties `((upstream-name . "protocol-radius") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/protocol-radius")
    (synopsis "parser and printer for radius protocol packet")
    (description "This package provides
parser and printer for radius protocol packet.")
    (license license:bsd-3)))

haskell-9.4-protocol-radius

(define-public haskell-9.4-range
  (package
    (name "haskell-9.4-range")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/range/range-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kvb5bl4k2gwm0hd71plwh7hmwbgk17g77iq39d7lqw4nmlg3j0k"))))
    (properties `((upstream-name . "range") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (home-page "https://bitbucket.org/robertmassaioli/range")
    (synopsis "An efficient and versatile range library.")
    (description
     "The range library alows the use of performant and versatile ranges in your code.
It supports bounded and unbounded ranges, ranges in a nested manner (like library
versions), an efficient algebra of range computation and even a simplified interface
for ranges for the common cases. This library is far more efficient than using the
default Data.List functions to approximate range behaviour. Performance is the major
value offering of this library.
If this is your first time using this library it is highly recommended that you start
with \"Data.Range\"; it contains the basics of this library that meet most use
cases.")
    (license license:expat)))

haskell-9.4-range

(define-public haskell-9.4-recursion-schemes
  (package
    (name "haskell-9.4-recursion-schemes")
    (version "5.2.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/recursion-schemes/recursion-schemes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04233y5qw7vm0kyh4h44zpfk2zsd6kz9081ngvi098y0xiphrwm9"))))
    (properties `((upstream-name . "recursion-schemes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftemplate-haskell")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-data-fix)
                  (@ (gnu packages stackage ghc-9.4 stage008) haskell-9.4-free)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
    (home-page "http://github.com/ekmett/recursion-schemes/")
    (synopsis
     "Representing common recursion patterns as higher-order functions")
    (description
     "Many recursive functions share the same structure, e.g. pattern-match on the input and, depending on the data constructor, either recur on a smaller input or terminate the recursion with the base case. Another one: start with a seed value, use it to produce the first element of an infinite list, and recur on a modified seed in order to produce the rest of the list. Such a structure is called a recursion scheme. Using higher-order functions to implement those recursion schemes makes your code clearer, faster, and safer. See README for details.")
    (license license:bsd-2)))

haskell-9.4-recursion-schemes

(define-public haskell-9.4-reform-blaze
  (package
    (name "haskell-9.4-reform-blaze")
    (version "0.2.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-blaze/reform-blaze-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cf1nimvkpag4fqs9jk17cl0h9wkpv2lcq5m1l704pznms22s7c7"))))
    (properties `((upstream-name . "reform-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-blaze-html)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-reform)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "Add support for using blaze-html with Reform")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with blaze-html.")
    (license license:bsd-3)))

haskell-9.4-reform-blaze

(define-public haskell-9.4-riak-protobuf
  (package
    (name "haskell-9.4-riak-protobuf")
    (version "0.25.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/riak-protobuf/riak-protobuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r4rhgdwr2pnr01szdci8l0nmf0fd1vbj8a323lj946rj472kxri"))))
    (properties `((upstream-name . "riak-protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-proto-lens)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-proto-lens-runtime)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/riak-haskell-client/riak-haskell-client")
    (synopsis "Haskell types for the Riak protocol buffer API")
    (description
     "A set of Haskell types for interacting with the protocol buffer
API of the Riak decentralized data store.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-riak-protobuf

(define-public haskell-9.4-run-st
  (package
    (name "haskell-9.4-run-st")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/run-st/run-st-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11if8xwv22ry0mxrglg3pcx3cx8ljnq56f3m9vjkr9jcj2881dvf"))))
    (properties `((upstream-name . "run-st") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "15cm4zv9848sa2a2ipb66lv791pdnkx7j3pwksmjvkhkzr3bkl51")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-primitive-unlifted)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/run-st")
    (synopsis "runST without boxing penalty")
    (description
     "This package provides specializations of `runST` that avoid a needless
data-constructor allocation for the returned value.
If <https://gitlab.haskell.org/ghc/ghc/issues/15127 issue 15127> is
resolved, this package will no longer be necessary.")
    (license license:bsd-3)))

haskell-9.4-run-st

(define-public haskell-9.4-sampling
  (package
    (name "haskell-9.4-sampling")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sampling/sampling-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13xkq8p656xybbpvkxp42qkkgc1majp18w384ap7l4sbxrxif7kv"))))
    (properties `((upstream-name . "sampling") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-foldl)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/jtobin/sampling")
    (synopsis "Sample values from collections.")
    (description
     "Basic sampling tools.

Exports variations on two simple functions for sampling from arbitrary
'Foldable' collections:

* 'sample', for sampling without replacement

* 'resample', for sampling with replacement (i.e., a bootstrap)

Each variation can be prefixed with 'p' to sample from a container of values
weighted by probability.")
    (license license:expat)))

haskell-9.4-sampling

(define-public haskell-9.4-semialign-optics
  (package
    (name "haskell-9.4-semialign-optics")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign-optics/semialign-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04vh689mmnb5q77v6ifhg7xf7m2qh5x4i4804rm4biw78130xqr1"))))
    (properties `((upstream-name . "semialign-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)
       #:cabal-revision
       ("2" "107qx6qxqyl3lbg59by9jbys39fc5mdbgph8iwxxklk3xr5v5nj1")))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-semialign)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "SemialignWithIndex, i.e. izipWith and ialignWith")
    (description
     "This package is deprecated.
It simply re-exports [semialign](https://hackage.haskell.org/package/semialign)
(and adds a @@optics-core@@ constraint).")
    (license license:bsd-3)))

haskell-9.4-semialign-optics

(define-public haskell-9.4-string-conv
  (package
    (name "haskell-9.4-string-conv")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-conv/string-conv-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15lh7b3jhhv4bwgsswmq447nz4l97gi0hh8ws9njpidi1q0s7kir"))))
    (properties `((upstream-name . "string-conv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Soostone/string-conv")
    (synopsis "Standardized conversion between string types")
    (description
     "Avoids the need to remember many different functions for converting string types. Just use one universal function toS for all monomorphic string conversions.")
    (license license:bsd-3)))

haskell-9.4-string-conv

(define-public haskell-9.4-tagged-binary
  (package
    (name "haskell-9.4-tagged-binary")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagged-binary/tagged-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nv41x5ijw5wdb2nyfgxyspbgmk9qisp32fs1izzp3c3jl4smkvj"))))
    (properties `((upstream-name . "tagged-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-pureMD5)))
    (home-page "https://hackage.haskell.org/package/tagged-binary")
    (synopsis "Provides tools for serializing data tagged with type
information.")
    (description "Very minimal library providing tools for serializing and
decoding data into 'ByteString' tagged with information
about its type, inspired by Cloud Haskell and
distributed-process.

Intended for use by libraries and frameworks in
distributed contexts, such as distributed computation
between native servers and communication between native
servers and ghcjs/various front-ends, for behavior
similar to the polymorphic communication channels of
Cloud Haskell and distributed-process; servers can send
tagged data, and clients can choose to selectively
accept, ignore or queue incoming messages depending on
their types.

For basic encoding, decoding and categorization, only
'Data.Binary.Tagged' should be necessary.
'Data.Binary.Tagged.Internal' is exported in case you
need it.

Quick example:

> > let x = encodeTagged (1 :: Int)
> > decodeTagged x :: Maybe Bool
> Nothing
> > decodeTagged x :: Maybe Int
> Just 1")
    (license license:expat)))

haskell-9.4-tagged-binary

(define-public haskell-9.4-tasty-smallcheck
  (package
    (name "haskell-9.4-tasty-smallcheck")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-smallcheck/tasty-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0csgwn3vch0jnpqyyfnrfjq4z0dpl67imh5a7byll3hhlyidgjym"))))
    (properties `((upstream-name . "tasty-smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0033ha2w9rzc1rxpzh1dkfdrn256i5lvb41pqbdh2i6kli0v5vmh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "SmallCheck support for the Tasty test framework.")
    (description "SmallCheck support for the Tasty test framework.")
    (license license:expat)))

haskell-9.4-tasty-smallcheck

(define-public haskell-9.4-termbox-banana
  (package
    (name "haskell-9.4-termbox-banana")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/termbox-banana/termbox-banana-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0fj9h3nbgsr9321kb4a2m0m1afmjass5x22pc2dbn602k9d9fmyy"))))
    (properties `((upstream-name . "termbox-banana") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-reactive-banana)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-termbox)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/termbox-banana")
    (synopsis "termbox + reactive-banana")
    (description
     "This package provides a @@reactive-banana@@ FRP interface to @@termbox@@ programs.

See also:

* @@<https://hackage.haskell.org/package/termbox-tea termbox-tea>@@ for an Elm Architecture interface.")
    (license license:bsd-3)))

haskell-9.4-termbox-banana

(define-public haskell-9.4-test-framework-smallcheck
  (package
    (name "haskell-9.4-test-framework-smallcheck")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-smallcheck/test-framework-smallcheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xpgpk1gp4w7w46b4rhj80fa0bcyz8asj2dcjb5x1c37b7rw90b0"))))
    (properties `((upstream-name . "test-framework-smallcheck")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-smallcheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)))
    (home-page "https://github.com/feuerbach/smallcheck")
    (synopsis "Support for SmallCheck tests in test-framework")
    (description "Support for SmallCheck tests in test-framework")
    (license license:bsd-3)))

haskell-9.4-test-framework-smallcheck

(define-public haskell-9.4-tmapmvar
  (package
    (name "haskell-9.4-tmapmvar")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmapmvar/tmapmvar-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qxl48wcbqvg6fymb8kpr4wz25ixkfvnvli2c7ncjxzdigyqrrd6"))))
    (properties `((upstream-name . "tmapmvar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/tmapmvar")
    (synopsis "A single-entity stateful Map in STM, similar to tmapchan")
    (description
     "Please see the README on Github at <https://git.localcooking.com/tooling/tmapmvar#readme>")
    (license license:bsd-3)))

haskell-9.4-tmapmvar

(define-public haskell-9.4-triplesec
  (package
    (name "haskell-9.4-triplesec")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/triplesec/triplesec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wfrb1qkisbypfw4djm2cwlzrb1xhmkkv6cy8wyxvyrhqs5zzdrs"))))
    (properties `((upstream-name . "triplesec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1axxq9q33jf79lv0ydwai24bgczvn4pdxw6a7sk3715js2di6xgn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/SamProtas/hs-triplesec")
    (synopsis
     "TripleSec is a simple, triple-paranoid, symmetric encryption library")
    (description
     "Additional details about this protocol can be found at the official website: <https://keybase.io/triplesec>

A tutorial for how to use this library can be found in @@ Crypto.TripleSec.Tutorial @@")
    (license license:bsd-3)))

haskell-9.4-triplesec

(define-public haskell-9.4-witherable
  (package
    (name "haskell-9.4-witherable")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/witherable/witherable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0121ic4xkv3k568j23zp22a5lrv0k11h94fq7cbijd18fjr2n3br"))))
    (properties `((upstream-name . "witherable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1f6kb8cslgqq4x3mbg1gcxfbd9qb5a8hmrv802mm7zzhbnridiff")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fumieval/witherable")
    (synopsis "filterable traversable")
    (description
     "A stronger variant of `traverse` which can remove elements and generalised mapMaybe, catMaybes, filter")
    (license license:bsd-3)))

haskell-9.4-witherable

(define-public haskell-9.4-x509
  (package
    (name "haskell-9.4-x509")
    (version "1.7.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/x509/x509-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zk8lll1hmzl5xvrd16dhyz25151y59xhsqp2mm1wgymwl7r5ijr"))))
    (properties `((upstream-name . "x509") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-asn1-parse)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-asn1-types)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-cryptonite)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-hourglass)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-pem)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-certificate")
    (synopsis "X509 reader and writer")
    (description "X509 reader and writer. please see README")
    (license license:bsd-3)))

haskell-9.4-x509

(define-public haskell-9.4-yarn-lock
  (package
    (name "haskell-9.4-yarn-lock")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yarn-lock/yarn-lock-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x4zhczp6qgzm3sgmc2j5mjffg1ibfpvkxfwh2dv5bcx9nzv7bxy"))))
    (properties `((upstream-name . "yarn-lock") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-either)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)))
    (home-page "https://github.com/Profpatsch/yarn2nix#readme")
    (synopsis "Represent and parse yarn.lock files")
    (description
     "Types and parser for the lock file format of the npm successor yarn. All modules should be imported qualified.")
    (license license:expat)))

haskell-9.4-yarn-lock

(define-public haskell-9.4-zipper-extra
  (package
    (name "haskell-9.4-zipper-extra")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zipper-extra/zipper-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cq21hf40qp025ir9kihsp6b09bsrlgiqd5cfq688w57c2vhcmci"))))
    (properties `((upstream-name . "zipper-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage008)
                     haskell-9.4-comonad-extras)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
    (home-page "https://hackage.haskell.org/package/zipper-extra")
    (synopsis "Zipper utils that weren't in Control.Comonad.Store.Zipper")
    (description
     "Adds some utility functions for and reexports Control.Comonad.Store.Zipper")
    (license license:expat)))

haskell-9.4-zipper-extra

