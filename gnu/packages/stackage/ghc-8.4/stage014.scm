;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage014)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.4-DRBG
  (package
    (name "haskell-8.4-DRBG")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/DRBG/DRBG-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1z9vqc1nw0mf2sqgddcipmlkz6mckq9wnrzqqdy3rj3c90135pr1"))))
    (properties `((upstream-name . "DRBG") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-cipher-aes128)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-crypto-api-tests)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash-cryptoapi)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-prettyclass)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/DRBG")
    (synopsis "Deterministic random bit generator (aka RNG, PRNG) based
HMACs, Hashes, and Ciphers.")
    (description "Cryptographically secure RNGs")
    (license license:bsd-3)))

haskell-8.4-DRBG

(define-public haskell-8.4-GLUT
  (package
    (name "haskell-8.4-GLUT")
    (version "2.7.0.14")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/GLUT/GLUT-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01i162fly4q1751fp60lgkzlb8kr0qqbvmxj74zc6skb19qggy2w"))))
    (properties `((upstream-name . "GLUT") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-OpenGL)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-OpenGLRaw)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-StateVar)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)))
    (home-page "http://www.haskell.org/haskellwiki/Opengl")
    (synopsis "A binding for the OpenGL Utility Toolkit")
    (description
     "A Haskell binding for the OpenGL Utility Toolkit, a window system independent
toolkit for writing OpenGL programs. For more information about the C library
on which this binding is based, please see:
<http://www.opengl.org/resources/libraries/glut/>.")
    (license license:bsd-3)))

haskell-8.4-GLUT

(define-public haskell-8.4-HTF
  (package
    (name "haskell-8.4-HTF")
    (version "0.13.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HTF/HTF-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1kmf95y4vijdiih27xa35acl02dsxqnd9qa56z1waki5qqiz6nin"))))
    (properties `((upstream-name . "HTF") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1ld2vkrf1a3x7ln4cqyc153vhyzmlrkybyjqdsxpzws4a4xv4xa6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Diff)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-cpphs)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-haskell-src)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-xmlgen)))
    (home-page "https://github.com/skogsbaer/HTF/")
    (synopsis "The Haskell Test Framework")
    (description
     "The Haskell Test Framework (/HTF/ for short) lets you define unit
tests (<http://hunit.sourceforge.net>), QuickCheck properties
(<http://www.cs.chalmers.se/~rjmh/QuickCheck/>), and black box
tests in an easy and convenient way. HTF uses a custom
preprocessor that collects test definitions automatically.
Furthermore, the preprocessor allows HTF to report failing
test cases with exact file name and line number information.
Additionally, HTF tries to produce highly readable output
for failing tests: for example, it colors and pretty prints expected and
actual results and provides a diff between the two values.

The documentation of the \"Test.Framework.Tutorial\" module
provides a tutorial for HTF. There is also a slightly out-dated
blog article (<http://factisresearch.blogspot.de/2011/10/new-version-of-htf-with-diffs-colors.html>)
demonstrating HTF's coloring, pretty-printing and diff functionality.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-HTF

(define-public haskell-8.4-HaskellNet
  (package
    (name "haskell-8.4-HaskellNet")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HaskellNet/HaskellNet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0f581izyh6bdk85i0g07xdp3fdzdfdfjiqpnl89r17vgswdd6i9j"))))
    (properties `((upstream-name . "HaskellNet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "12p3v58jhr54yzsmqgza3rbrp19w2iq5m43g568hcx20n7zwzwjk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base64-string)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-mime-mail)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/jtdaugherty/HaskellNet")
    (synopsis "Client support for POP3, SMTP, and IMAP")
    (description "This package provides client support for the POP3,
SMTP, and IMAP protocols.  NOTE: this package will be
split into smaller, protocol-specific packages in the
future.")
    (license license:bsd-3)))

haskell-8.4-HaskellNet

(define-public haskell-8.4-OpenAL
  (package
    (name "haskell-8.4-OpenAL")
    (version "1.7.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/OpenAL/OpenAL-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "067in6qb2i0xwy6bnkxfhzbn7gq88cf03p8421al6y23zv2gd29r"))))
    (properties `((upstream-name . "OpenAL") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fusenativewindowslibraries" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ObjectName)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-OpenGL)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-StateVar)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages gl) freeglut)
                             (@ (gnu packages audio) openal)))
    (home-page "https://github.com/haskell-openal/ALUT")
    (synopsis "A binding to the OpenAL cross-platform 3D audio API")
    (description
     "A Haskell binding for the OpenAL cross-platform 3D audio API,
appropriate for use with gaming applications and many other
types of audio applications.

On Windows, this package works well with the \\\"OpenAL Soft\\\" binary
distribution from <http://kcat.strangesoft.net/openal.html>.
Type \\'cabal install --extra-lib-dirs=\\<DIR\\>\\' where \\<DIR\\> is the
directory where libOpenAL32.dll.a is located (must be an absolute path).
Then rename soft_oal.dll to OpenAL32.dll and put it somewhere in
the PATH. I found that c:\\\\Windows\\\\ worked.

This package has also been tested on GNU/Linux and iOS.")
    (license license:bsd-3)))

haskell-8.4-OpenAL

(define-public haskell-8.4-ace
  (package
    (name "haskell-8.4-ace")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-markup)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
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

haskell-8.4-ace

(define-public haskell-8.4-asn1-parse
  (package
    (name "haskell-8.4-asn1-parse")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-parse/asn1-parse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "025prsihk5g6rdv9xlfmj0zpa0wa3qjzj5i4ilzvg7f6f3sji8y6"))))
    (properties `((upstream-name . "asn1-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-asn1-types)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "Simple monadic parser for ASN1 stream types.")
    (description
     "Simple monadic parser for ASN1 stream types, when ASN1 pattern matching is not convenient.")
    (license license:bsd-3)))

haskell-8.4-asn1-parse

(define-public haskell-8.4-blas-carray
  (package
    (name "haskell-8.4-blas-carray")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blas-carray/blas-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ijzcdrbfb9w3vs4g96p30h7ilh9s05ij8n0prinmr1ngmvipbdx"))))
    (properties `((upstream-name . "blas-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-blas-ffi)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-carray)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-netlib-carray)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-storable-complex)))
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

haskell-8.4-blas-carray

(define-public haskell-8.4-bson
  (package
    (name "haskell-8.4-bson")
    (version "0.3.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bson/bson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0avzr3aa3mbr9hcjwd0nr0pnpiym7s35qw7nghz51mrzb76rsci7"))))
    (properties `((upstream-name . "bson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1y6gy4rq2wb123p1qc35p0hnk8dqh2hnlys2c97znwcjjsd5p203")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/mongodb-haskell/bson")
    (synopsis "BSON documents are JSON-like objects with a standard binary
encoding.")
    (description
     "A BSON Document is an untyped (dynamically type-checked) record.
I.e. it is a list of name-value pairs, where a Value is a single
sum type with constructors for basic types (Bool, Int, Float,
String, and Time), compound types (List, and (embedded) Document),
and special types (Binary, Javascript, ObjectId, RegEx, and a few
others).
A BSON Document is serialized to a standard binary encoding
defined at <http://bsonspec.org>. This implements version 1 of
that spec.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-bson

(define-public haskell-8.4-connection-pool
  (package
    (name "haskell-8.4-connection-pool")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/connection-pool/connection-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lvkcsd042s936fj5c9y5gg4iiq09n42adkv8q2rnwcbd6vl7kzj"))))
    (properties `((upstream-name . "connection-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-pedantic")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-between)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-streaming-commons)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/trskop/connection-pool")
    (synopsis
     "Connection pool built on top of resource-pool and streaming-commons.")
    (description
     "Connection poll is a family of specialised resource pools. Currently package
provides two variants:

1. pool for TCP client connections,

2. and pool for UNIX Sockets client connections.

In addition it can be used to build your own connection pool using provided
primitives.

This package is built on top of
<http://hackage.haskell.org/package/resource-pool resource-pool> and
<http://hackage.haskell.org/package/streaming-commons streaming-commons>.
The later allows us to use
<http://hackage.haskell.org/package/conduit-extra conduit-extra> package
for implementation of TCP or UNIX Sockets clients.

For examples and other details see documentation in \"Data.ConnectionPool\"
module.")
    (license license:bsd-3)))

haskell-8.4-connection-pool

(define-public haskell-8.4-crypto-pubkey-types
  (package
    (name "haskell-8.4-crypto-pubkey-types")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-pubkey-types/crypto-pubkey-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0q0wlzjmpx536h1zcdzrpxjkvqw8abj8z0ci38138kpch4igbnby"))))
    (properties `((upstream-name . "crypto-pubkey-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-asn1-types)))
    (home-page "http://github.com/vincenthz/hs-crypto-pubkey-types")
    (synopsis "Generic cryptography Public keys algorithm types")
    (description "Generic cryptography public keys algorithm types")
    (license license:bsd-3)))

haskell-8.4-crypto-pubkey-types

(define-public haskell-8.4-di
  (package
    (name "haskell-8.4-di")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/di/di-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0h7c6s18vj60higi23icjsf1ky756l553v3a18bdkf4dgcxfs4r9"))))
    (properties `((upstream-name . "di") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-df1)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-di-core)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-di-df1)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-di-handle)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-di-monad)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)))
    (home-page "https://github.com/k0001/di")
    (synopsis "Typeful hierarchical structured logging using di, mtl and df1.")
    (description
     "Typeful hierarchical structured logging using di, mtl and df1.

This is meta-package bringing in together things from the @@di-core@@,
@@di-monad@@, @@di-handle@@ and @@di-df1@@ libraries.

See the \"Di\" module for more documentation.")
    (license license:bsd-3)))

haskell-8.4-di

(define-public haskell-8.4-eliminators
  (package
    (name "haskell-8.4-eliminators")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/eliminators/eliminators-"
                    version ".tar.gz"))
              (sha256
               (base32
                "000x3gjwyf2s44ry16a2a9dk7cqjvl0dh21r5k85s19ljrxsxv1v"))))
    (properties `((upstream-name . "eliminators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-singleton-nats)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-th-desugar)))
    (home-page "https://github.com/RyanGlScott/eliminators")
    (synopsis "Dependently typed elimination functions using singletons")
    (description "This library provides eliminators for inductive data types,
leveraging the power of the @@singletons@@ library to allow
dependently typed elimination.")
    (license license:bsd-3)))

haskell-8.4-eliminators

(define-public haskell-8.4-enclosed-exceptions
  (package
    (name "haskell-8.4-enclosed-exceptions")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enclosed-exceptions/enclosed-exceptions-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fghjj7nkiddrf03ks8brjpr5x25yi9fs7xg6adbi4mc2gqr6vdg"))))
    (properties `((upstream-name . "enclosed-exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://github.com/jcristovao/enclosed-exceptions")
    (synopsis "Catching all exceptions from within an enclosed computation")
    (description
     "Catching all exceptions raised within an enclosed computation,
while remaining responsive to (external) asynchronous exceptions.
For more information on the technique, please see:
<https://www.fpcomplete.com/user/snoyberg/general-haskell/exceptions/catching-all-exceptions>")
    (license license:expat)))

haskell-8.4-enclosed-exceptions

(define-public haskell-8.4-etc
  (package
    (name "haskell-8.4-etc")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/etc/etc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1j17g8jij4y782vwpx7b52fv9nwv4v4mygk2hbq6vihzkbrdbd31"))))
    (properties `((upstream-name . "etc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-extra" "-f-cli" "-f-yaml")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-rio)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-typed-process)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)))
    (home-page "https://github.com/roman/Haskell-etc")
    (synopsis "Declarative configuration spec for Haskell projects")
    (description
     "`etc` gathers configuration values from multiple sources (cli options, OS
environment variables, files) using a declarative spec file that defines where
these values are to be found and located in a configuration map.")
    (license license:expat)))

haskell-8.4-etc

(define-public haskell-8.4-executable-hash
  (package
    (name "haskell-8.4-executable-hash")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/executable-hash/executable-hash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "191blh2kr2xha8l7j1nbwfq00jf5bfn25cv63y2bglwh5mkgbsil"))))
    (properties `((upstream-name . "executable-hash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-executable-path)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-file-embed)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/fpco/executable-hash")
    (synopsis "Provides the SHA1 hash of the program executable")
    (description "See README.md")
    (license license:expat)))

haskell-8.4-executable-hash

(define-public haskell-8.4-file-modules
  (package
    (name "haskell-8.4-file-modules")
    (version "0.1.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-modules/file-modules-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dgjy3axfhgv5nkvwbaylc8hc8d1fjb53n2rhmpxfzppa6yjvspz"))))
    (properties `((upstream-name . "file-modules") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-MissingH)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-compat)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/yamadapc/stack-run-auto")
    (synopsis "Takes a Haskell source-code file and outputs its modules.")
    (description
     "Uses @@haskell-src-exts@@ to parse module imports and follows links
. to local modules in order to build a list of module dependencies.")
    (license license:expat)))

haskell-8.4-file-modules

(define-public haskell-8.4-flac-picture
  (package
    (name "haskell-8.4-flac-picture")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flac-picture/flac-picture-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kn1zvv5izinyidmxij7zqml94a8q52bbm2icg7704sj906gh71w"))))
    (properties `((upstream-name . "flac-picture") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "02vdh61nzig0yrv6ja6fjlgfcznj5k4iqh3i5f9g5p078ycqb17w")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-flac)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/flac-picture")
    (synopsis
     "Support for writing picture to FLAC metadata blocks with JuicyPixels")
    (description
     "Support for writing picture to FLAC metadata blocks with JuicyPixels.")
    (license license:bsd-3)))

haskell-8.4-flac-picture

(define-public haskell-8.4-fn
  (package
    (name "haskell-8.4-fn")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.4-fn

(define-public haskell-8.4-fuzzcheck
  (package
    (name "haskell-8.4-fuzzcheck")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzcheck/fuzzcheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qfr4f0b50l368b45yzwhqd4g2y1kvfrfj4hr84cdxcwdrwn9mpc"))))
    (properties `((upstream-name . "fuzzcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (home-page "https://github.com/fpco/fuzzcheck")
    (synopsis "A simple checker for stress testing monadic code")
    (description "A simple checker for stress testing monadic code")
    (license license:bsd-3)))

haskell-8.4-fuzzcheck

(define-public haskell-8.4-genvalidity-bytestring
  (package
    (name "haskell-8.4-genvalidity-bytestring")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-bytestring/genvalidity-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qy19j0cyza2a6z59br4wma68081xqsq9m4ndmv195ym04a0bfa3"))))
    (properties `((upstream-name . "genvalidity-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-bytestring)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for ByteString")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-bytestring

(define-public haskell-8.4-genvalidity-containers
  (package
    (name "haskell-8.4-genvalidity-containers")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-containers/genvalidity-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "098360pcf522xcwa3lk091pyjl6a08cl12z18ybrlai38saskd83"))))
    (properties `((upstream-name . "genvalidity-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for containers")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-containers

(define-public haskell-8.4-genvalidity-hspec-binary
  (package
    (name "haskell-8.4-genvalidity-hspec-binary")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-binary/genvalidity-hspec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h14b0m5kq3md5rys07rrn5jjcpk0c09fln40v221z2rrssnh211"))))
    (properties `((upstream-name . "genvalidity-hspec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for binary-related Instances")
    (description
     "Standard spec's for cereal-related Instances, see https://hackage.haskell.org/package/binary.")
    (license license:expat)))

haskell-8.4-genvalidity-hspec-binary

(define-public haskell-8.4-genvalidity-hspec-cereal
  (package
    (name "haskell-8.4-genvalidity-hspec-cereal")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-cereal/genvalidity-hspec-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16r4g9k9rjifvbmy5nwkan6lnwhjvp85nlfihr1in5lwxf3gcl71"))))
    (properties `((upstream-name . "genvalidity-hspec-cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "http://cs-syd.eu")
    (synopsis "Standard spec's for cereal-related instances")
    (description "Standard spec's for cereal-related Instances")
    (license license:expat)))

haskell-8.4-genvalidity-hspec-cereal

(define-public haskell-8.4-genvalidity-hspec-hashable
  (package
    (name "haskell-8.4-genvalidity-hspec-hashable")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec-hashable/genvalidity-hspec-hashable-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s4z5k4myx4c6sky11l7s2lsvkxgyri11ikq75nfinff8b44h7iw"))))
    (properties `((upstream-name . "genvalidity-hspec-hashable")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for Hashable instances")
    (description "Standard spec's for Hashable instances")
    (license license:expat)))

haskell-8.4-genvalidity-hspec-hashable

(define-public haskell-8.4-genvalidity-scientific
  (package
    (name "haskell-8.4-genvalidity-scientific")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-scientific/genvalidity-scientific-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gchsn5pvmbk57y7jn33zcbdr78mx3vb8v4cwr8b4pj5af6d84dg"))))
    (properties `((upstream-name . "genvalidity-scientific") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-scientific)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Scientific")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-scientific

(define-public haskell-8.4-genvalidity-text
  (package
    (name "haskell-8.4-genvalidity-text")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-text/genvalidity-text-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j7fx2zzv6ljqk87148h1rq3yg6vvy0dsl7kfl3f2p6ghnz7wggg"))))
    (properties `((upstream-name . "genvalidity-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-text)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for Text")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-text

(define-public haskell-8.4-genvalidity-unordered-containers
  (package
    (name "haskell-8.4-genvalidity-unordered-containers")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-unordered-containers/genvalidity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r89pisv6a7m0vf6dif7lx7w7gc4jsx33d4hzskwz3x6si07xadd"))))
    (properties `((upstream-name . "genvalidity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-unordered-containers)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for unordered-containers")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-unordered-containers

(define-public haskell-8.4-genvalidity-uuid
  (package
    (name "haskell-8.4-genvalidity-uuid")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-uuid/genvalidity-uuid-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04pladdynmjdcd553cp44nli7k5hxp82rlpyihi1ynm7q3glndfi"))))
    (properties `((upstream-name . "genvalidity-uuid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-uuid)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for UUID")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-uuid

(define-public haskell-8.4-genvalidity-vector
  (package
    (name "haskell-8.4-genvalidity-vector")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-vector/genvalidity-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "161w5shgj1k8691mmi9ddhxrnrqhsp502ywln2h0sk55zqcj1i5k"))))
    (properties `((upstream-name . "genvalidity-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-genvalidity)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-validity-vector)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "GenValidity support for vector")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-genvalidity-vector

(define-public haskell-8.4-groom
  (package
    (name "haskell-8.4-groom")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/groom/groom-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17g51p15209wwgq83clsd97xvy4kchbx8jzh74qgc9hvmz9s9d56"))))
    (properties `((upstream-name . "groom") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)))
    (home-page "https://hackage.haskell.org/package/groom")
    (synopsis "Pretty printing for well-behaved Show
instances.")
    (description
     "Automatically derived Show instances are an easy way
to inspect data in your program.  However, for large
data-structures, the resulting output lacks
whitespace, making it unreadable.  Groom offers an
replacement to `show' called `groom' which attempts
to pretty-print the output of `show'.  For example:

> let x = parseExp \"foobar 1 [1,2]\"
> in do
>   putStrLn (show x)
>   putStrLn (groom x)

results in:

> ParseOk (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1))) (List [Lit (Int 1),Lit (Int 2)]))
> ParseOk
>   (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1)))
>      (List [Lit (Int 1), Lit (Int 2)]))

Groom works only on Show instances that output valid
Haskell code; if Groom can't understand its input,
it will not make any changes.")
    (license license:bsd-3)))

haskell-8.4-groom

(define-public haskell-8.4-groundhog-postgresql
  (package
    (name "haskell-8.4-groundhog-postgresql")
    (version "0.9.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog-postgresql/groundhog-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p88l85rsmbdpfnrh2411n68yy70g0iw7pqmp496b8n6gr0mmvl5"))))
    (properties `((upstream-name . "groundhog-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-groundhog)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://hackage.haskell.org/package/groundhog-postgresql")
    (synopsis "PostgreSQL backend for the groundhog library.")
    (description "This package uses postgresql-simple and postgresql-libpq.")
    (license license:bsd-3)))

haskell-8.4-groundhog-postgresql

(define-public haskell-8.4-groundhog-sqlite
  (package
    (name "haskell-8.4-groundhog-sqlite")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/groundhog-sqlite/groundhog-sqlite-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06985myr96dc7f6hkkm9nihvvl2c19wdl1bn3nfvyj78yvz8ryxb"))))
    (properties `((upstream-name . "groundhog-sqlite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-direct-sqlite)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-groundhog)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-resourcet)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/groundhog-sqlite")
    (synopsis "Sqlite3 backend for the groundhog library")
    (description
     "It depends on direct-sqlite library which includes Sqlite C sources, so there are no system dependencies.")
    (license license:bsd-3)))

haskell-8.4-groundhog-sqlite

(define-public haskell-8.4-haskell-src-exts-simple
  (package
    (name "haskell-8.4-haskell-src-exts-simple")
    (version "1.20.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts-simple/haskell-src-exts-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p79ppmwb14lj2a1wy42zgm3z3zk5jbyn7rfgwxsyw2g424bw1dk"))))
    (properties `((upstream-name . "haskell-src-exts-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)))
    (home-page "https://github.com/int-e/haskell-src-exts-simple")
    (synopsis "A simplified view on the haskell-src-exts AST")
    (description
     "This package provides a shim for haskell-src-exts (HSE), exposing the
same AST but without annotations, using ghc's pattern synonyms.

See README.md for further information and compatibility considerations.")
    (license license:expat)))

haskell-8.4-haskell-src-exts-simple

(define-public haskell-8.4-haskell-src-exts-util
  (package
    (name "haskell-8.4-haskell-src-exts-util")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-exts-util/haskell-src-exts-util-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xbf28aisqizy3a0sy42p3rwib2s7jaqi6dcr6lp4b1j54xazf5y"))))
    (properties `((upstream-name . "haskell-src-exts-util") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "https://github.com/pepeiborra/haskell-src-exts-util")
    (synopsis "Helper functions for working with haskell-src-exts trees")
    (description "Helper functions for working with haskell-src-exts trees.")
    (license license:bsd-3)))

haskell-8.4-haskell-src-exts-util

(define-public haskell-8.4-haskell-src-meta
  (package
    (name "haskell-8.4-haskell-src-meta")
    (version "0.8.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/haskell-src-meta/haskell-src-meta-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08jq156zv4m0fjq6712n99c1jwxnpa6kj6sq8ch0r1l0a1ay6ww4"))))
    (properties `((upstream-name . "haskell-src-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0dp5v0yd0wgijzaggr22glgjswpa65hy84h8awdzd9d78g2fjz6c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-th-orphans)))
    (home-page "https://hackage.haskell.org/package/haskell-src-meta")
    (synopsis "Parse source to template-haskell abstract syntax.")
    (description "The translation from haskell-src-exts abstract syntax
to template-haskell abstract syntax isn't 100% complete yet.")
    (license license:bsd-3)))

haskell-8.4-haskell-src-meta

(define-public haskell-8.4-hmatrix-special
  (package
    (name "haskell-8.4-hmatrix-special")
    (version "0.19.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-special/hmatrix-special-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mywr61kr852sbff26n9x95kswx9l4ycbv6s68qsbkh02xzqq7qz"))))
    (properties `((upstream-name . "hmatrix-special") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-safe-cheap")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-hmatrix-gsl)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/albertoruiz/hmatrix")
    (synopsis "Interface to GSL special functions")
    (description "Interface to GSL special functions.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-hmatrix-special

(define-public haskell-8.4-hprotoc
  (package
    (name "haskell-8.4-hprotoc")
    (version "2.4.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hprotoc/hprotoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0740yc33ginskkiggyaqc1khkb2bzb4vg0r12rj59f3gimzfiwlk"))))
    (properties `((upstream-name . "hprotoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-protocol-buffers)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-protocol-buffers-descriptor)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/k-bx/protocol-buffers")
    (synopsis "Parse Google Protocol Buffer specifications")
    (description
     "Parse language defined at <http://code.google.com/apis/protocolbuffers/docs/proto.html> and general haskell code to implement messages.")
    (license license:bsd-3)))

haskell-8.4-hprotoc

(define-public haskell-8.4-hspec-pg-transact
  (package
    (name "haskell-8.4-hspec-pg-transact")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-pg-transact/hspec-pg-transact-"
                    version ".tar.gz"))
              (sha256
               (base32
                "030wy3ajlfd7pi6gwfn6xcsl2yi0gvznxl8m7kq001bkiabjmv55"))))
    (properties `((upstream-name . "hspec-pg-transact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-pg-transact)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-tmp-postgres)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/jfischoff/pg-transact-hspec#readme")
    (synopsis "Helpers for creating database tests with hspec and pg-transact")
    (description
     "Helpers for creating database tests with hspec and pg-transact

@@hspec-pg-transact@@ utilizes @@tmp-postgres@@ to automatically and connect to a temporary instance of @@postgres@@ on a random port.

>
> describeDB migrate \"Query” $
>   itDB \"work\" $ do
>     execute_ [sql|
>       INSERT INTO things
>       VALUES (‘me’) |]
>     query_ [sql|
>       SELECT name
>        FROM things |]
>       `shouldReturn` [Only \"me\"]

In the example above @@describeDB@@ wraps @@describe@@ with a @@beforeAll@@ hook for creating a db and a @@afterAll@@ hook for stopping a db.

Tests can be written with @@itDB@@ which is wrapper around @@it@@ that uses the passed in @@Connection@@ to run a db transaction automatically for the test.

The libary also provides a few other functions for more fine grained control over running transactions in tests.
")
    (license license:bsd-3)))

haskell-8.4-hspec-pg-transact

(define-public haskell-8.4-hspec-wai
  (package
    (name "haskell-8.4-hspec-wai")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-wai/hspec-wai-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0gr8j8x8vvzygxyqc0likam63f3427x4p73g95a387aksr5l2ph5"))))
    (properties `((upstream-name . "hspec-wai") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hspec-core)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-wai-extra)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/hspec/hspec-wai#readme")
    (synopsis "Experimental Hspec support for testing WAI applications")
    (description "Experimental Hspec support for testing WAI applications")
    (license license:expat)))

haskell-8.4-hspec-wai

(define-public haskell-8.4-io-choice
  (package
    (name "haskell-8.4-io-choice")
    (version "0.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/io-choice/io-choice-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16v6b9r5k2y5vm2s8k3j7xc5wh77nqd8j636mc6wxcxwn3260jir"))))
    (properties `((upstream-name . "io-choice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)))
    (home-page "https://hackage.haskell.org/package/io-choice")
    (synopsis "Choice for IO and lifted IO")
    (description "Providing choice features for IO and lifted IO")
    (license license:bsd-3)))

haskell-8.4-io-choice

(define-public haskell-8.4-ipython-kernel
  (package
    (name "haskell-8.4-ipython-kernel")
    (version "0.9.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ipython-kernel/ipython-kernel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0944riw00i3m8n3cab0g9c14b24xryf9w8ddlddnmxgys4sn8qak"))))
    (properties `((upstream-name . "ipython-kernel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-cryptonite)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-zeromq4-haskell)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/gibiansky/IHaskell")
    (synopsis "A library for creating kernels for IPython frontends")
    (description
     "ipython-kernel is a library for communicating with frontends for the interactive IPython framework. It is used extensively in IHaskell, the interactive Haskell environment.")
    (license license:expat)))

haskell-8.4-ipython-kernel

(define-public haskell-8.4-jvm
  (package
    (name "haskell-8.4-jvm")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jvm/jvm-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1z3lk2f7bmhi8bj4v32fymjr2bf9czjd73qm6gk33z4mxknddwbh"))))
    (properties `((upstream-name . "jvm") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-choice)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-constraints)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributed-closure)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-jni)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-singletons)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages maths) gsl)
                             (@ (gnu packages java) openjdk)))
    (home-page "http://github.com/tweag/inline-java/tree/master/jvm#readme")
    (synopsis "Call JVM methods from Haskell.")
    (description "Please see README.md.")
    (license license:bsd-3)))

haskell-8.4-jvm

(define-public haskell-8.4-lapack-carray
  (package
    (name "haskell-8.4-lapack-carray")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lapack-carray/lapack-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dr4mbhc5y21mbnksyi530rsvckfp4mclhhig2rjhx3b06cksfna"))))
    (properties `((upstream-name . "lapack-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-carray)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lapack-ffi)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-netlib-carray)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-storable-complex)))
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

haskell-8.4-lapack-carray

(define-public haskell-8.4-locators
  (package
    (name "haskell-8.4-locators")
    (version "0.2.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/locators/locators-" version
                    ".tar.gz"))
              (sha256
               (base32
                "19csw13qbxxv7lr3blx856k2y21sidgpnv56dq45la3f4100jv9d"))))
    (properties `((upstream-name . "locators") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/locators")
    (synopsis "Human exchangable identifiers and locators")
    (description
     "/Overview/

Simple identifiers (as used, for example, as \"locators\" in airline reservation
systems) using a subset of the Latin1 alphabet whose characters are unambigious
when written or spoken.")
    (license license:bsd-3)))

haskell-8.4-locators

(define-public haskell-8.4-lucid
  (package
    (name "haskell-8.4-lucid")
    (version "2.9.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lucid/lucid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13xz21hf9ywbyqwm33z8pfrjq03rzffhqswi30xsi13rrawj99cc"))))
    (properties `((upstream-name . "lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10k3x9cn4a23kqk909xiv8phkfgagf7p16qlfpr9swn1dn4xasgf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-mmorph)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/chrisdone/lucid")
    (synopsis "Clear to write, read and edit DSL for HTML")
    (description
     "Clear to write, read and edit DSL for HTML.

* Names are consistent, and do not conflict with base or are keywords (all have suffix @@_@@)

* Same combinator can be used for attributes and elements (e.g. 'style_')

* For more, read <https://chrisdone.com/posts/lucid the blog post>

See the \"Lucid\" module for more documentation.")
    (license license:bsd-3)))

haskell-8.4-lucid

(define-public haskell-8.4-mbtiles
  (package
    (name "haskell-8.4-mbtiles")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mbtiles/mbtiles-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bynkbwq33fqyyv4bkl2y3sx57b73w1pyn292jb5j6jm3h52za5q"))))
    (properties `((upstream-name . "mbtiles") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-sqlite-simple)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/caneroj1/mbtiles#readme")
    (synopsis "Haskell MBTiles client.")
    (description "Read and manipulate MBTiles files and associated metadata.")
    (license license:bsd-3)))

haskell-8.4-mbtiles

(define-public haskell-8.4-mltool
  (package
    (name "haskell-8.4-mltool")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mltool/mltool-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zz06c0xv718faygnsgzmhg17xc5hrjsj9xkdaf3qmzbr1gwfvki"))))
    (properties `((upstream-name . "mltool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-ascii-progress)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-hmatrix)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-hmatrix-morpheus)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/aligusnet/mltool")
    (synopsis "Machine Learning Toolbox")
    (description
     "Haskell Machine Learning Toolkit
includes various methods of supervised learning:
linear regression, logistic regression, SVN, neural networks, etc.
as well as some methods of unsupervised methods: K-Means and PCA.")
    (license license:bsd-3)))

haskell-8.4-mltool

(define-public haskell-8.4-nagios-check
  (package
    (name "haskell-8.4-nagios-check")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nagios-check/nagios-check-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dv0g25iz61ql9nz9s7krlpa1hjv3iqf4i1wsm1njf8cn5fbij8v"))))
    (properties `((upstream-name . "nagios-check") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)))
    (home-page "https://github.com/olorin/haskell-nagios-check")
    (synopsis "Package for writing monitoring plugins")
    (description "Implements Nagios plugin development guidelines
within a Haskell framework for writing Nagios
checks.")
    (license license:expat)))

haskell-8.4-nagios-check

(define-public haskell-8.4-pipes-network
  (package
    (name "haskell-8.4-pipes-network")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-network/pipes-network-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15f7kn9vpzsm8s108cly80pi6yqpv6v04w032ng0wr9g78an393l"))))
    (properties `((upstream-name . "pipes-network") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-network-simple)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-pipes)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-pipes-safe)))
    (home-page "https://github.com/k0001/pipes-network")
    (synopsis "Use network sockets together with the pipes library.")
    (description
     "Use network sockets together with the @@pipes@@ library.

This package is organized using the following namespaces:

* \"Pipes.Network.TCP\" exports pipes and utilities for using TCP connections in
a streaming fashion.

* \"Pipes.Network.TCP.Safe\" subsumes \"Pipes.Network.TCP\", exporting pipes and
functions that allow you to safely establish new TCP connections within a
pipeline using the @@pipes-safe@@ facilities. You only need to use this module
if you want to safely acquire and release operating system resources within a
pipeline.

See the @@changelog@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-8.4-pipes-network

(define-public haskell-8.4-postgresql-binary
  (package
    (name "haskell-8.4-postgresql-binary")
    (version "0.12.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-binary/postgresql-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10h5299fxqmfz0kxyvivfy396q35gzg60spnjagyha33kx5m3bc3"))))
    (properties `((upstream-name . "postgresql-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-binary-parser)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-bytestring-strict-builder)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-loch-th)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-network-ip)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-placeholders)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-postgresql-binary

(define-public haskell-8.4-postgresql-simple-migration
  (package
    (name "haskell-8.4-postgresql-simple-migration")
    (version "0.1.13.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple-migration/postgresql-simple-migration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xblb0k3xnsbvdqrl5k3i6jimj4cskgip6w021byirn8i73s7j8a"))))
    (properties `((upstream-name . "postgresql-simple-migration")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/ameingast/postgresql-simple-migration")
    (synopsis "PostgreSQL Schema Migrations")
    (description "A PostgreSQL-simple schema migration utility")
    (license license:bsd-3)))

haskell-8.4-postgresql-simple-migration

(define-public haskell-8.4-postgresql-simple-queue
  (package
    (name "haskell-8.4-postgresql-simple-queue")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/postgresql-simple-queue/postgresql-simple-queue-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gss9s2splrvwgxhkjpqvx0cg9kx9dqpw4aq2wbh8l879v2nj2rk"))))
    (properties `((upstream-name . "postgresql-simple-queue") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-pg-transact)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/jfischoff/postgresql-queue#readme")
    (synopsis "A PostgreSQL backed queue")
    (description
     "This module utilize PostgreSQL to implement a durable queue for efficently processing arbitrary payloads which can be represented as JSON.

Typically a producer would enqueue a new payload as part of larger database
transaction

>  createAccount userRecord = do
>     'runDBTSerializable' $ do
>        createUserDB userRecord
>        'enqueueDB' \"queue_schema\" $ makeVerificationEmail userRecord

In another thread or process, the consumer would drain the queue.

>   forever $ do
>     -- Attempt get a payload or block until one is available
>     payload <- lock \"queue\" conn
>
>     -- Perform application specifc parsing of the payload value
>     case fromJSON $ pValue payload of
>       Success x -> sendEmail x -- Perform application specific processing
>       Error err -> logErr err
>
>     -- Remove the payload from future processing
>     dequeue \"queue\" conn $ pId payload
>
> To support multiple queues in the same database, the API expects a table name string
> to determine which queue tables to use.")
    (license license:bsd-3)))

haskell-8.4-postgresql-simple-queue

(define-public haskell-8.4-pptable
  (package
    (name "haskell-8.4-pptable")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pptable/pptable-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05wkvnk2h3xvjivk8cd6z8xlscipvd2az1v1n4sdianf9r0gzdwq"))))
    (properties `((upstream-name . "pptable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0c1srvgwyczbfnw3zw5pbsjqgxifq9yb1h60w3aq91q7iamrvdgb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-boxes)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-quickcheck-notests)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/gdevanla/pptable#readme")
    (synopsis "Pretty Print containers in a tabular format")
    (description
     "When you are faced with tens of records data types contained in a list or similar structure if becomes difficult to view all records during iterative development. This library provides a generic funciton to print any such record types in a tabular format that makes visualizing the data more pleasing. Please see README.md for examples of this.")
    (license license:expat)))

haskell-8.4-pptable

(define-public haskell-8.4-prettyprinter-compat-ansi-wl-pprint
  (package
    (name "haskell-8.4-prettyprinter-compat-ansi-wl-pprint")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-compat-ansi-wl-pprint/prettyprinter-compat-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gzpjddnxl4z8pvb0lyal13jbr94dk900k8g4qwcq9fs26vnnb81"))))
    (properties `((upstream-name . "prettyprinter-compat-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0rzvap56ygygzs95091ipmcdc7n76sczc2dk88g4nr7zskb2nf1k")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Drop-in compatibility package to migrate from »ansi-wl-pprint« to »prettyprinter«.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.4-prettyprinter-compat-ansi-wl-pprint

(define-public haskell-8.4-prettyprinter-convert-ansi-wl-pprint
  (package
    (name "haskell-8.4-prettyprinter-convert-ansi-wl-pprint")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-convert-ansi-wl-pprint/prettyprinter-convert-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03565w1qvqgdr1g2nwj3d2xpqbx04xm45pjfkb9d6jb2fww2v65q"))))
    (properties `((upstream-name . "prettyprinter-convert-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1c4zcscmvq0vbdgnp7n0avv8si5jshl4kw2qd1lqmhr28kj8x45f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Converter from »ansi-wl-pprint« documents to »prettyprinter«-based ones.")
    (description
     "This package defines a converter from the
old [ansi-wl-pprint](/package/ansi-wl-pprint) document type to the
new [prettyprinter](/package/prettyprinter) one. Its purpose is making
packages that only generate [ansi-wl-pprint](/package/ansi-wl-pprint)
data available to the [prettyprinter](/package/prettyprinter)
ecosystem.

Note the difference to
the [prettyprinter-compat-ansi-wl-pprint](package/prettyprinter-compat-ansi-wl-pprint)
package, which does /not/ convert any data, and instead provides an
API that mimicks [ansi-wl-pprint](/package/ansi-wl-pprint), while
secretly being [prettyprinter](/package/prettyprinter)-based behind
the curtains. This package on the other hand does a proper conversion.

> ╭────────────────────╮    fromAnsiWlPprint    ╭────────────────────╮
> │        Doc         ├───────────────────────▷│   Doc AnsiStyle    │
> │  (ansi-wl-pprint)  │◁───────────────────────┤  (prettyprinter)   │
> ╰────────────────────╯     toAnsiWlPprint     ╰────────────────────╯")
    (license license:bsd-2)))

haskell-8.4-prettyprinter-convert-ansi-wl-pprint

(define-public haskell-8.4-profunctors
  (package
    (name "haskell-8.4-profunctors")
    (version "5.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/profunctors/profunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0s1pwjidbn761xk43pmzyvn99hm3psdifjd78ylki7f97aiyd0g9"))))
    (properties `((upstream-name . "profunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1xils193rfyd6c3bsvn430m21ay4ipqajjc99ihd97m7fp4xvjva")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)))
    (home-page "http://github.com/ekmett/profunctors/")
    (synopsis "Profunctors")
    (description "Profunctors.")
    (license license:bsd-3)))

haskell-8.4-profunctors

(define-public haskell-8.4-protocol-radius-test
  (package
    (name "haskell-8.4-protocol-radius-test")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-radius-test/protocol-radius-test-"
                    version ".tar.gz"))
              (sha256
               (base32
                "185d85d9gfylcg575rvr43p4p8wzh0mi9frvkm2cn3liwwarmk5m"))))
    (properties `((upstream-name . "protocol-radius-test") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-protocol-radius)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-simple)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://hackage.haskell.org/package/protocol-radius-test")
    (synopsis "testsuit of protocol-radius haskell package")
    (description "This package provides
testsuit of protocol-radius haskell package.")
    (license license:bsd-3)))

haskell-8.4-protocol-radius-test

(define-public haskell-8.4-s3-signer
  (package
    (name "haskell-8.4-s3-signer")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/s3-signer/s3-signer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r48j7ni8byzdi0girkj6lf2hp4q85ir2xnqpckzdxd0ppap2dnp"))))
    (properties `((upstream-name . "s3-signer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/dmjio/s3-signer")
    (synopsis "Pre-signed Amazon S3 URLs")
    (description
     "
s3-signer creates cryptographically secure Amazon S3 URLs that expire within a user-defined
period. It allows uploading and downloading of content from Amazon S3.
Ideal for AJAX direct-to-s3 uploads via CORS and secure downloads.
Web framework agnostic with minimal dependencies.

> module Main where
> import           Network.S3
> main :: IO ()
> main = print =<< generateS3URL credentials request
>   where
>     credentials = S3Keys \"<public-key-goes-here>\" \"<secret-key-goes-here>\"
>     request     = S3Request S3GET \"application/extension\" \"bucket-name\" \"file-name.extension\" 3 -- three seconds until expiration

Result

> S3URL \"https://bucket-name.s3.amazonaws.com/file-name.extension?AWSAccessKeyId=<public-key-goes-here>&Expires=1402346638&Signature=1XraY%2Bhp117I5CTKNKPc6%2BiihRA%3D\"")
    (license license:bsd-3)))

haskell-8.4-s3-signer

(define-public haskell-8.4-semigroupoids
  (package
    (name "haskell-8.4-semigroupoids")
    (version "5.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroupoids/semigroupoids-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17i96y4iqj8clcs090lf6k0ij3j16nj14vsfwz0mm9nd6i4gbpp4"))))
    (properties `((upstream-name . "semigroupoids") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcontainers" "-fcontravariant" "-fdistributive" "-fdoctests" "-fcomonad" "-ftagged" "-funordered-containers")
       #:cabal-revision
       ("4" "0pqfrxzypjq6z8lgdkzq4vhcyqkpk5326hny0r6snpc3gm78r4ij")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-comonad)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-distributive)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/ekmett/semigroupoids")
    (synopsis "Semigroupoids: Category sans id")
    (description
     "Provides a wide array of (semi)groupoids and operations for working with them.

A 'Semigroupoid' is a 'Category' without the requirement of identity arrows for every object in the category.

A 'Category' is any 'Semigroupoid' for which the Yoneda lemma holds.

When working with comonads you often have the @@\\<*\\>@@ portion of an @@Applicative@@, but
not the @@pure@@. This was captured in Uustalu and Vene's \\\"Essence of Dataflow Programming\\\"
in the form of the @@ComonadZip@@ class in the days before @@Applicative@@. Apply provides a weaker invariant, but for the comonads used for data flow programming (found in the streams package), this invariant is preserved. Applicative function composition forms a semigroupoid.

Similarly many structures are nearly a comonad, but not quite, for instance lists provide a reasonable 'extend' operation in the form of 'tails', but do not always contain a value.

Ideally the following relationships would hold:

> Foldable ----> Traversable <--- Functor ------> Alt ---------> Plus           Semigroupoid
>      |               |            |                              |                  |
>      v               v            v                              v                  v
> Foldable1 ---> Traversable1     Apply --------> Applicative -> Alternative      Category
>                                   |               |              |                  |
>                                   v               v              v                  v
>                                 Bind ---------> Monad -------> MonadPlus          Arrow
>

Apply, Bind, and Extend (not shown) give rise the Static, Kleisli and Cokleisli semigroupoids respectively.

This lets us remove many of the restrictions from various monad transformers
as in many cases the binding operation or @@\\<*\\>@@ operation does not require them.

Finally, to work with these weaker structures it is beneficial to have containers
that can provide stronger guarantees about their contents, so versions of 'Traversable'
and 'Foldable' that can be folded with just a 'Semigroup' are added.")
    (license license:bsd-3)))

haskell-8.4-semigroupoids

(define-public haskell-8.4-ses-html
  (package
    (name "haskell-8.4-ses-html")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HsOpenSSL)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-http-streams)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/ses-html")
    (synopsis
     "Send HTML formatted emails using Amazon's SES REST API with blaze")
    (description
     "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell")
    (license license:bsd-3)))

haskell-8.4-ses-html

(define-public haskell-8.4-smtp-mail
  (package
    (name "haskell-8.4-smtp-mail")
    (version "0.1.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smtp-mail/smtp-mail-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1g0lsbd9h8bhk4xddgzm96i8fy233904jnqnl4i94ld2hzpwpnl6"))))
    (properties `((upstream-name . "smtp-mail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lvzami2vzrkgz5na71k1yi7346xdarxm0sbi6alq3wbpj1raakq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-cryptohash)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-mime-mail)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/jhickner/smtp-mail")
    (synopsis "Simple email sending via SMTP")
    (description "")
    (license license:bsd-3)))

haskell-8.4-smtp-mail

(define-public haskell-8.4-snap-core
  (package
    (name "haskell-8.4-snap-core")
    (version "1.0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-core/snap-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "136q7l4hd5yn5hb507q1ziqx124ma1lkzh5dx0n150p8dx3rhhsc"))))
    (properties `((upstream-name . "snap-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-debug" "-fnetwork-uri")
       #:cabal-revision
       ("3" "0wlhn33r7c9g7j23y006ddq9d87lkmianvvfrbl8jd8mvjvj2gfa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-case-insensitive)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-io-streams)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parallel)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-readable)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://snapframework.com/")
    (synopsis "Snap: A Haskell Web Framework (core interfaces and types)")
    (description
     "Snap is a simple and fast web development framework and server written in
Haskell. For more information or to download the latest version, you can
visit the Snap project website at <http://snapframework.com/>.

This library contains the core definitions and types for the Snap framework,
including:

1. Primitive types and functions for HTTP (requests, responses, cookies,
post/query parameters, etc)

2. A monad for programming web handlers called \\\"Snap\\\", which allows:

* Stateful access to the HTTP request and response objects

* Monadic failure (i.e. MonadPlus/Alternative instances) for declining
to handle requests and chaining handlers together

* Early termination of the computation if you know early what you want
to return and want to prevent further monadic processing

/Quick start/: The 'Snap' monad and HTTP definitions are in \"Snap.Core\".")
    (license license:bsd-3)))

haskell-8.4-snap-core

(define-public haskell-8.4-sqlite-simple-errors
  (package
    (name "haskell-8.4-sqlite-simple-errors")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlite-simple-errors/sqlite-simple-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0vvim8zcrl3yqhf30j69x59qs5f6sdx5bvy4ihwmimkldm5gh0ai"))))
    (properties `((upstream-name . "sqlite-simple-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-sqlite-simple)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "https://github.com/caneroj1/sqlite-simple-errors")
    (synopsis "Wrapper around errors from sqlite-simple")
    (description
     "Wrapper around errors from sqlite-simple. Get easy-to-pattern-match
data types for constraint errors.")
    (license license:bsd-3)))

haskell-8.4-sqlite-simple-errors

(define-public haskell-8.4-stm-containers
  (package
    (name "haskell-8.4-stm-containers")
    (version "0.2.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/stm-containers/stm-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bsha98j8ryzcrcs3n1iyrvx7b37ipc66f7qxkhnkp3wch32y139"))))
    (properties `((upstream-name . "stm-containers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-focus)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-list-t)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://github.com/nikita-volkov/stm-containers")
    (synopsis "Containers for STM")
    (description
     "This library is based on an STM-specialized implementation of
Hash Array Mapped Trie.
It provides efficient implementations of @@Map@@, @@Set@@
and other data structures,
which are marginally slower than their counterparts from \\\"unordered-containers\\\",
but scale well on concurrent access patterns.

For details on performance of the library see
<http://nikita-volkov.github.io/stm-containers/ this blog post>.")
    (license license:expat)))

haskell-8.4-stm-containers

(define-public haskell-8.4-streaming-attoparsec
  (package
    (name "haskell-8.4-streaming-attoparsec")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-attoparsec/streaming-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00k1vwqr7ns7s4r6xvq59kpwimqd0f02jj0ay4zg167dd5994a7z"))))
    (properties `((upstream-name . "streaming-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "07hqs8nn1rhsqckqmw46yp19kd0vk35q139al6yq0k1dzpvsrcsx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-streaming)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-streaming-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "https://github.com/haskell-streaming/streaming-attoparsec")
    (synopsis "Attoparsec integration for the streaming ecosystem")
    (description "Attoparsec integration for the streaming ecosystem.")
    (license license:bsd-3)))

haskell-8.4-streaming-attoparsec

(define-public haskell-8.4-tasty-th
  (package
    (name "haskell-8.4-tasty-th")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-th/tasty-th-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0b2ivrw2257m4cy4rjnkwqlarh83j1y3zywnmaqqqbvy667sqnj3"))))
    (properties `((upstream-name . "tasty-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)))
    (home-page "http://github.com/bennofs/tasty-th")
    (synopsis "Automatic tasty test case discovery using TH")
    (description
     "Generate tasty TestTrees automatically with TemplateHaskell. See the README for example usage.")
    (license license:bsd-3)))

haskell-8.4-tasty-th

(define-public haskell-8.4-teardown
  (package
    (name "haskell-8.4-teardown")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/teardown/teardown-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0p1rjvl36gl4dqpvcjsb06jyiwsxg2qyha8rfdiddljb4ixw1sjh"))))
    (properties `((upstream-name . "teardown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-prettyprinter)
                  (@ (gnu packages stackage ghc-8.4 stage013) haskell-8.4-rio)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-tasty-hunit-notests)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-tasty-notests)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-typed-process)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-unliftio)))
    (home-page "https://github.com/roman/Haskell-teardown#readme")
    (synopsis "Build safe and composable teardown sub-routines for resources")
    (description
     "The teardown library allows you to reliably execute cleanup sub-routines for
allocated resources. When a program is initialized, it:

* Ensures that teardown sub-routines are executed /exactly/ once

* Ensures that if errors occur on the execution of a Teardown sub-routine, the
error does not propagate to others; bulkheading failure on cleanup.

* Requires every sub-routine to be documented at creation time; thus helping
tracing your application structure.

* Allows tracing the teardown of your application, how is structured, how much
time it takes to execute, and what component (if any) failed to finalize.")
    (license license:expat)))

haskell-8.4-teardown

(define-public haskell-8.4-test-framework-th
  (package
    (name "haskell-8.4-test-framework-th")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-th/test-framework-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12lw7yj02jb9s0i7rb98jjam43j2h0gzmnbj9zi933fx7sg0sy4b"))))
    (properties `((upstream-name . "test-framework-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-language-haskell-extract)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)))
    (home-page "http://github.com/finnsson/test-generator")
    (synopsis
     "Automagically generate the HUnit- and Quickcheck-bulk-code using Template Haskell.")
    (description
     "@@test-framework-th@@ contains two interesting functions: @@defaultMainGenerator@@ and @@testGroupGenerator@@.

@@defaultMainGenerator@@ will extract all functions beginning with case_, prop_ or test_in the module and put them in a testGroup.

> -- file SomeModule.hs
> ( -# LANGUAGE TemplateHaskell #- )
> module SomeModule where
> import Test.Framework.TH
> import Test.Framework
> import Test.HUnit
> import Test.Framework.Providers.HUnit
> import Test.Framework.Providers.QuickCheck2
>
> -- observe this line!
> main = $(defaultMainGenerator)
> case_1 = do 1 @@=? 1
> case_2 = do 2 @@=? 2
> prop_reverse xs = reverse (reverse xs) == xs
>    where types = xs::[Int]

is the same as

> -- file SomeModule.hs
> ( -# LANGUAGE TemplateHaskell #- )
> module SomeModule where
> import Test.Framework.TH
> import Test.Framework
> import Test.HUnit
> import Test.Framework.Providers.HUnit
> import Test.Framework.Providers.QuickCheck2
>
> -- observe this line!
> main =
>   defaultMain [
>     testGroup \"SomeModule\" [ testCase \"1\" case_1, testCase \"2\" case_2, testProperty \"reverse\" prop_reverse]
>     ]
>
> case_1 = do 1 @@=? 1
> case_2 = do 2 @@=? 2
> prop_reverse xs = reverse (reverse xs) == xs
>    where types = xs::[Int]

@@testGroupGenerator@@ is like @@defaultMainGenerator@@ but without @@defaultMain@@. It is useful if you need a function for the testgroup
(e.g. if you want to be able to call the testgroup from another module).")
    (license license:bsd-3)))

haskell-8.4-test-framework-th

(define-public haskell-8.4-text-show
  (package
    (name "haskell-8.4-text-show")
    (version "3.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-show/text-show-" version
                    ".tar.gz"))
              (sha256
               (base32
                "068yp74k4ybhvycivnr7x238dl1qdnkjdzf25pcz127294rn9yry"))))
    (properties `((upstream-name . "text-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-4-9" "-ftemplate-haskell-2-11" "-fnew-functor-classes")
       #:cabal-revision
       ("3" "1r2g3g0bcl7xgxw35bhp6a9n1rdz3bf1qhiqb2hhjscmm2szq3jd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-base-orphans)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-bifunctors)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-contravariant)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-deriving-compat)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-generic-deriving)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-nats)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-th-lift)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://github.com/RyanGlScott/text-show")
    (synopsis "Efficient conversion of values into Text")
    (description
     "@@text-show@@ offers a replacement for the @@Show@@ typeclass intended
for use with @@Text@@ instead of @@String@@s. This package was created
in the spirit of
@@<http://hackage.haskell.org/package/bytestring-show bytestring-show>@@.

At the moment, @@text-show@@ provides instances for most data
types in the @@<http://hackage.haskell.org/package/array array>@@,
@@<http://hackage.haskell.org/package/base base>@@,
@@<http://hackage.haskell.org/package/bytestring bytestring>@@, and
@@<http://hackage.haskell.org/package/text text>@@ packages.
Therefore, much of the source code for @@text-show@@ consists of
borrowed code from those packages in order to ensure that the
behaviors of @@Show@@ and @@TextShow@@ coincide.

For most uses, simply importing \"TextShow\"
will suffice:

@@
module Main where

import TextShow

main :: IO ()
main = printT (Just \\\"Hello, World!\\\")
@@

See also the
<https://github.com/RyanGlScott/text-show/wiki/Naming-conventions naming conventions>
page.

Support for automatically deriving @@TextShow@@ instances can be found
in the \"TextShow.TH\" and \"TextShow.Generic\" modules.")
    (license license:bsd-3)))

haskell-8.4-text-show

(define-public haskell-8.4-th-nowq
  (package
    (name "haskell-8.4-th-nowq")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-nowq/th-nowq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1r9qwj3aw5adxzgxb1kgr9s1scrqclf4jfmlhv8nz1dhbqwg84h1"))))
    (properties `((upstream-name . "th-nowq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-markdown-unlit)))
    (home-page "https://github.com/dzhus/th-nowq#readme")
    (synopsis "Template Haskell splice that expands to current time")
    (description
     "TH splice that expands to current time as a string literal in ISO-8601 format. Can be used to embed the compilation timestamp in your application.")
    (license license:bsd-3)))

haskell-8.4-th-nowq

(define-public haskell-8.4-validity-path
  (package
    (name "haskell-8.4-validity-path")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-path/validity-path-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ip1qm6sip1yxbrcx9zn2saipd6bfs88cgn5jd3pw9ffkydxm74p"))))
    (properties `((upstream-name . "validity-path") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-genvalidity-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-hspec)
                  (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-hspec-discover)
                  (@ (gnu packages stackage ghc-8.4 stage009) haskell-8.4-path)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for Path")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-validity-path

(define-public haskell-8.4-wai-session-postgresql
  (package
    (name "haskell-8.4-wai-session-postgresql")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-cookie)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-default)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-entropy)
                  (@ (gnu packages stackage ghc-8.4 stage009)
                     haskell-8.4-postgresql-simple)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-resource-pool)
                  (@ (gnu packages stackage ghc-8.4 stage011) haskell-8.4-wai)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-wai-session)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-14)))
    (home-page "https://github.com/hce/postgresql-session#readme")
    (synopsis "PostgreSQL backed Wai session store")
    (description
     "Provides a PostgreSQL backed session store for the Network.Wai.Session interface.")
    (license license:bsd-3)))

haskell-8.4-wai-session-postgresql

(define-public haskell-8.4-webdriver
  (package
    (name "haskell-8.4-webdriver")
    (version "0.8.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/webdriver/webdriver-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gn168cjwlpv2f4jchj48a9pvk8zqdxsf9qpx0lsj4bl2j5pl5m8"))))
    (properties `((upstream-name . "webdriver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork-uri" "-f-developer")
       #:cabal-revision
       ("1" "1qif6ll3fygyzv1x44yisddwcq28wy3gw9q4knamb3r899lgqwxy")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage008)
                     haskell-8.4-aeson)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-directory-tree)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-http-client)
                  (@ (gnu packages stackage ghc-8.4 stage010)
                     haskell-8.4-http-types)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-lifted-base)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-monad-control)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-temporary)
                  (@ (gnu packages stackage ghc-8.4 stage011)
                     haskell-8.4-transformers-base)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage012)
                     haskell-8.4-zip-archive)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.4-webdriver

(define-public haskell-8.4-zeromq4-patterns
  (package
    (name "haskell-8.4-zeromq4-patterns")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zeromq4-patterns/zeromq4-patterns-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n9yndiw0z2asslkx2nlx56w3qhb55p7ih03j52889m2f8maiwvl"))))
    (properties `((upstream-name . "zeromq4-patterns") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage013)
                     haskell-8.4-zeromq4-haskell)))
    (home-page "https://github.com/hverr/zeromq4-patterns#readme")
    (synopsis "Haskell implementation of several ZeroMQ patterns.")
    (description
     "Haskell implementation of several ZeroMQ patterns that you can find in the
official ZeroMQ guide.")
    (license license:bsd-3)))

haskell-8.4-zeromq4-patterns

