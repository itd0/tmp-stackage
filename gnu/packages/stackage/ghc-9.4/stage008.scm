;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage008)
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
(define-public haskell-9.4-HsOpenSSL-x509-system
  (package
    (name "haskell-9.4-HsOpenSSL-x509-system")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HsOpenSSL-x509-system/HsOpenSSL-x509-system-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15mp70bqg1lzp971bzp6wym3bwzvxb76hzbgckygbfa722xyymhr"))))
    (properties `((upstream-name . "HsOpenSSL-x509-system") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-HsOpenSSL)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)))
    (home-page "https://github.com/redneb/HsOpenSSL-x509-system")
    (synopsis "Use the system's native CA certificate store with HsOpenSSL")
    (description
     "A cross-platform library that tries to find a (reasonable) CA certificate
bundle that can be used with @@HsOpenSSL@@ to verify the certificates of
remote peers.

This package is for @@HsOpenSSL@@ what @@x509-system@@ is for the @@tls@@ package.
Additionally, it borrows some ideas from @@x509-system@@.")
    (license license:bsd-3)))

haskell-9.4-HsOpenSSL-x509-system

(define-public haskell-9.4-JuicyPixels
  (package
    (name "haskell-9.4-JuicyPixels")
    (version "3.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels/JuicyPixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1rrvapzcj0q8sigxq1zq2k4h88i1r2hyca4p7pkqa1b4pk6vhdny"))))
    (properties `((upstream-name . "JuicyPixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-mmap")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/Twinside/Juicy.Pixels")
    (synopsis
     "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)")
    (description
     "<<data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMAAAADABAMAAACg8nE0AAAAElBMVEUAAABJqDSTWEL/qyb///8AAABH/1GTAAAAAXRSTlMAQObYZgAAAN5JREFUeF7s1sEJgFAQxFBbsAV72v5bEVYWPwT/XDxmCsi7zvHXavYREBDI3XP2GgICqBBYuwIC+/rVayPUAyAg0HvIXBcQoDFDGnUBgWQQ2Bx3AYFaRoBpAQHWb3bt2ARgGAiCYFFuwf3X5HA/McgGJWI2FdykCv4aBYzmKwDwvl6NVmUAAK2vlwEALK7fo88GANB6HQsAAAAAAAAA7P94AQCzswEAAAAAAAAAAAAAAAAAAICzh4UAO4zWAYBfRutHA4Bn5C69JhowAMGoBaMWDG0wCkbBKBgFo2AUAACPmegUST/IJAAAAABJRU5ErkJggg==>>

This library can load and store images in PNG,Bitmap, Jpeg, Radiance, Tiff and Gif images.")
    (license license:bsd-3)))

haskell-9.4-JuicyPixels

(define-public haskell-9.4-asn1-parse
  (package
    (name "haskell-9.4-asn1-parse")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-parse/asn1-parse-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17pk8y3nwv9b9i5j15qlmwi7fmq9ab2z4kfpjk2rvcrh9lsf27wg"))))
    (properties `((upstream-name . "asn1-parse") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-asn1-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "Simple monadic parser for ASN1 stream types.")
    (description
     "Simple monadic parser for ASN1 stream types, when ASN1 pattern matching is not convenient.")
    (license license:bsd-3)))

haskell-9.4-asn1-parse

(define-public haskell-9.4-attoparsec-binary
  (package
    (name "haskell-9.4-attoparsec-binary")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-binary/attoparsec-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02vswxsgayw50xli7mbacsjmk1diifzkfgnyfn9ck5mk41dl9rh5"))))
    (properties `((upstream-name . "attoparsec-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "https://hackage.haskell.org/package/attoparsec-binary")
    (synopsis "Binary processing extensions to Attoparsec.")
    (description
     "This package adds a collection of helper functions to make
the task dealing with binary data of varying endianness from within an
Attoparsec parser easier.")
    (license license:bsd-3)))

haskell-9.4-attoparsec-binary

(define-public haskell-9.4-attoparsec-expr
  (package
    (name "haskell-9.4-attoparsec-expr")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-expr/attoparsec-expr-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z25pc3rq98ysk92jclr90n35982a566sxri51yh1s9c24vd8k4d"))))
    (properties `((upstream-name . "attoparsec-expr") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cpgzd24fvrpsly113ck8rhrc33pfw8qhfpk4wn85qj95763faqb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "https://hackage.haskell.org/package/attoparsec-expr")
    (synopsis "Port of parsec's expression parser to attoparsec.")
    (description "Port of parsec's expression parser to attoparsec.")
    (license license:bsd-3)))

haskell-9.4-attoparsec-expr

(define-public haskell-9.4-attoparsec-run
  (package
    (name "haskell-9.4-attoparsec-run")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-run/attoparsec-run-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sdia624pxc0xj7lvai0hw41zjnkfz2da3vpc9mlhldiwzdwa815"))))
    (properties `((upstream-name . "attoparsec-run") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "https://github.com/typeclasses/attoparsec-run")
    (synopsis "Conveniently run Attoparsec parsers")
    (description
     "This package fixes a number of problems with the API that
Attoparsec provides for running parsers. The difficulties stem from
the that that Attoparsec's @@IResult@@ type encompasses three situations:
When parsing has succeeded, when parsing has failed, and when parsing
is awaiting further input. This is insufficient to describe situations
in which we know we are dealing with a subset of these three cases.
We address this by introducing two smaller types: @@FinalResult@@ and
@@ParseError@@.")
    (license license:asl2.0)))

haskell-9.4-attoparsec-run

(define-public haskell-9.4-attoparsec-time
  (package
    (name "haskell-9.4-attoparsec-time")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-time/attoparsec-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zjr27ajqigl9nlmfrh7ypry36simcbxw61is73157pg0wjb7qyr"))))
    (properties `((upstream-name . "attoparsec-time") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "https://github.com/nikita-volkov/attoparsec-time")
    (synopsis "Attoparsec parsers of time")
    (description
     "A collection of Attoparsec parsers for the \\\"time\\\" library")
    (license license:expat)))

haskell-9.4-attoparsec-time

(define-public haskell-9.4-base16
  (package
    (name "haskell-9.4-base16")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base16/base16-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ybmcik5nlly7s9bfwlaqqk8jpgwxp5ac4bhdiq4lckbfynvm0qf"))))
    (properties `((upstream-name . "base16") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0qjaz2kkcmrfzbr6f44jkb1zdgbayh0yahp06j8gb281783ng6d8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-random-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base16")
    (synopsis "Fast RFC 4648-compliant Base16 encoding")
    (description
     "RFC 4648-compliant Base16 encodings and decodings.
This library provides performant encoding and decoding primitives, as well as support for textual values.")
    (license license:bsd-3)))

haskell-9.4-base16

(define-public haskell-9.4-base64
  (package
    (name "haskell-9.4-base64")
    (version "0.4.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/base64/base64-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "119mpqcv1rwkhwm69ga2b4f7hr825fa5wfm1w3i1szmhzh52s2k4"))))
    (properties `((upstream-name . "base64") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0cz3zzz9k490w9nfn4hpgdw4zx4w70fwqrwsfx8svcwqssqibqw3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/emilypi/base64")
    (synopsis "A modern RFC 4648-compliant Base64 library")
    (description
     "RFC 4648-compliant Base64 with an eye towards performance and modernity (additional support for RFC 7049 standards)")
    (license license:bsd-3)))

haskell-9.4-base64

(define-public haskell-9.4-bits
  (package
    (name "haskell-9.4-bits")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bits/bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "18s2aa99cwcshcws2zl2ll7xgqn9dpznpkv1nplamc9h4vmqqs93"))))
    (properties `((upstream-name . "bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1f118vwwskai74l6wn5sfy002k241qv1rhpsahphfr58llzgvv50")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)))
    (home-page "http://github.com/ekmett/bits")
    (synopsis "Various bit twiddling and bitwise serialization primitives")
    (description "Various bit twiddling and bitwise serialization primitives.")
    (license license:bsd-3)))

haskell-9.4-bits

(define-public haskell-9.4-blaze-html
  (package
    (name "haskell-9.4-blaze-html")
    (version "0.9.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-html/blaze-html-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k1r1hddjgqighazcazxrx6xfhvy2gm8il8l82ainv3cai13yl30"))))
    (properties `((upstream-name . "blaze-html") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1hjxvz62wlg0x7svc51zascgc96f5ly9xkkiyllgb4aqcvx9zf3l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://jaspervdj.be/blaze")
    (synopsis "A blazingly fast HTML combinator library for Haskell")
    (description "A blazingly fast HTML combinator library for the Haskell
programming language. The Text.Blaze module is a good
starting point, as well as this tutorial:
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-9.4-blaze-html

(define-public haskell-9.4-blaze-svg
  (package
    (name "haskell-9.4-blaze-svg")
    (version "0.3.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-svg/blaze-svg-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0q5a4wam0sidng0cfsivwkyph9snyilk7rsdx4vb6wz9l6xz397n"))))
    (properties `((upstream-name . "blaze-svg") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1vb78d0nvk0909963pm0mnzklcm57w563lhgx1wv7qzdfznpi8f9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-blaze-markup)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/deepakjois/blaze-svg")
    (synopsis "SVG combinator library")
    (description
     "A blazingly fast SVG combinator library for the Haskell
programming language. The \"Text.Blaze.SVG\" module is a good
starting point.

Other documentation:

* Programs in the /examples/ folder of this project: <https://github.com/deepakjois/blaze-svg/tree/master/examples/>

* Jasper Van Der Jeugt has written a tutorial for /blaze-html/,
which is a sister library of /blaze-svg/. It may not be directly relevant,
but still it gives a good overview on how to use the  combinators in
\"Text.Blaze.Svg11\" and \"Text.Blaze.Svg11.Attributes\":
<http://jaspervdj.be/blaze/tutorial.html>.")
    (license license:bsd-3)))

haskell-9.4-blaze-svg

(define-public haskell-9.4-bson
  (package
    (name "haskell-9.4-bson")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bson/bson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xmxhq1f8v00mbq2l1sb7akzhy0gd9wcylkanpizn68wczqkdi3b"))))
    (properties `((upstream-name . "bson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-_old-network")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-md5)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
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

haskell-9.4-bson

(define-public haskell-9.4-cases
  (package
    (name "haskell-9.4-cases")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cases/cases-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0sla22xr1b8b1655l2rzhy31lxirahypgri0bphd9l6jy874mr40"))))
    (properties `((upstream-name . "cases") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "https://github.com/nikita-volkov/cases ")
    (synopsis "A converter for spinal, snake and camel cases")
    (description
     "A parser-based converter library for spinal, snake and camel cases.")
    (license license:expat)))

haskell-9.4-cases

(define-public haskell-9.4-cassava
  (package
    (name "haskell-9.4-cassava")
    (version "0.5.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cassava/cassava-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gp954w05bj83z4i6isq2qxi1flqwppsgxxrp1f75mrs8cglbj5l"))))
    (properties `((upstream-name . "cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring--lt-0_10_4")
       #:cabal-revision
       ("1" "1lavd2c7w2p2x4i7h35r8kgcgrrlhcql70zk5vgqv5ll04pp0niy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-Only)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-hvr/cassava")
    (synopsis "A CSV parsing and encoding library")
    (description
     "@@cassava@@ is a library for parsing and encoding [RFC 4180](https://tools.ietf.org/html/rfc4180)
compliant [comma-separated values (CSV)](https://en.wikipedia.org/wiki/Comma-separated_values) data,
which is a textual line-oriented format commonly used for exchanging tabular data.

@@cassava@@'s API includes support for

- Index-based record-conversion
- Name-based record-conversion
- Typeclass directed conversion of fields and records
- Built-in field-conversion instances for standard types
- Customizable record-conversion instance derivation via GHC generics
- Low-level [bytestring](https://hackage.haskell.org/package/bytestring) builders (see \"Data.Csv.Builder\")
- Incremental decoding and encoding API (see \"Data.Csv.Incremental\")
- Streaming API for constant-space decoding (see \"Data.Csv.Streaming\")

Moreover, this library is designed to be easy to use; for instance, here's a
very simple example of encoding CSV data:

>>> Data.Csv.encode [(\"John\",27),(\"Jane\",28)]
\"John,27\\r\\nJane,28\\r\\n\"

Please refer to the documentation in \"Data.Csv\" and the included [README](#readme) for more usage examples.")
    (license license:bsd-3)))

haskell-9.4-cassava

(define-public haskell-9.4-character-cases
  (package
    (name "haskell-9.4-character-cases")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/character-cases/character-cases-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nq461ij8h529skb55yn7afvx846r0va97kzbd1c16z1n4h94nhy"))))
    (properties `((upstream-name . "character-cases") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)))
    (home-page "https://github.com/aiya000/hs-character-cases#readme")
    (synopsis "Exposes subspecies types of Char. And naming cases.")
    (description
     "e.g. meaning of [a-z], [A-Z], [0-9], PascalCase, camelCase, and snake_case. Please see https://github.com/aiya000/hs-character-cases#README.md")
    (license license:expat)))

haskell-9.4-character-cases

(define-public haskell-9.4-checkers
  (package
    (name "haskell-9.4-checkers")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/checkers/checkers-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1r4rsa4k0fy8xig3m530ryflry9viv9v47g4gh7h0ld27rbd6z60"))))
    (properties `((upstream-name . "checkers") (hidden? . #f)))
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
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "https://github.com/haskell-checkers/checkers")
    (synopsis "Check properties on standard classes and data structures.")
    (description
     "''Checkers'' wraps up the expected properties associated with various
standard type classes as QuickCheck properties.  Also some morphism
properties.  It also provides arbitrary instances and generator combinators
for common data types.

&#169; 2008-2013 by Conal Elliott; BSD3 license.")
    (license license:bsd-3)))

haskell-9.4-checkers

(define-public haskell-9.4-co-log-core
  (package
    (name "haskell-9.4-co-log-core")
    (version "0.3.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/co-log-core/co-log-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r8yq4wan48mm37p32vsym44icdx4c5dyc5wkm5vz8f4l39yv59l"))))
    (properties `((upstream-name . "co-log-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)))
    (home-page "https://github.com/co-log/co-log-core")
    (synopsis "Composable Contravariant Comonadic Logging Library")
    (description
     "This package provides core types and functions to work with the @@LogAction@@ data type which is both simple and powerful.

@@
__newtype__ LogAction m msg = LogAction
\\    @{ unLogAction :: msg -> m ()
\\    @}
@@

The ideas behind this package are described in the following blog post:

* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)

See the following packages for different implementations based on @@co-log-core@@:

* [co-log](http://hackage.haskell.org/package/co-log): taggless final implementations.
* [co-log-polysemy](http://hackage.haskell.org/package/co-log-polysemy): extensible
effects implementation based on @@polysemy@@.")
    (license license:mpl2.0)))

haskell-9.4-co-log-core

(define-public haskell-9.4-codec-beam
  (package
    (name "haskell-9.4-codec-beam")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/codec-beam/codec-beam-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0rg398vh36fb5bkb0anq0iv7g5z55avchswpkwjcjzilbx765sv1"))))
    (properties `((upstream-name . "codec-beam") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/hkgumbs/codec-beam#readme")
    (synopsis "Erlang VM byte code assembler")
    (description "Erlang VM byte code assembler.")
    (license license:bsd-3)))

haskell-9.4-codec-beam

(define-public haskell-9.4-comfort-array
  (package
    (name "haskell-9.4-comfort-array")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-array/comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rpv9mn1jmkb9f89y02zfg2vwz4slzny31yjrvwcm43jhdyvzkwh"))))
    (properties `((upstream-name . "comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsetindex")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-doctest-lib)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-guarded-allocation)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-empty)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prelude-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-storable-record)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-storablevector)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/comfort-array/")
    (synopsis "Arrays where the index type is a function of the shape type")
    (description
     "Arrays from the basic @@array@@ package are already very powerful
compared with arrays in other languages.
They may have any number of dimensions, are type safe
and defined in a uniform way using the Ix class
with free choice of the lower bounds (0, 1, or whatever you like).

This package goes one step further:
The shape and the index type are different,
but the index type is a type function of the shape type.
This offers much more flexibility and type safety.

Some examples are:

* @@Range@@:
Allow dynamic choice of lower and upper array bounds
such as in the 'Array's from the @@array@@ package.
You can combine it with other shapes in other dimensions.
It allows you to describe the bounds of each dimension individually.

* @@Shifted@@:
Describe array bounds by start index and length.
It is sometimes more natural to use these parameters.
E.g. a non-negative index type like 'Word' cannot represent @@-1@@
and thus cannot encode an empty range starting with index @@0@@.

* @@ZeroBased, OneBased@@:
Arrays with fixed lower bound, either 0 or 1, respectively.

* @@Cyclic@@:
Indices with wrap-around semantics.

* @@Zero, ()@@:
Arrays with fixed size 0 or 1, respectively.

* @@Enumeration@@:
Arrays with indices like 'LT', 'EQ', 'GT' and a shape of fixed size.

* @@NestedTuple@@:
Arrays with shapes that are compatible to nested tuples
like @@(a,(a,a))@@ and indices like @@fst@@ and @@fst.snd@@.

* @@(::+)@@:
The Append type constructor allows to respresent block arrays,
e.g. block matrices.
It also allows to represent non-empty arrays via @@()::+sh@@.

* @@Set@@: Use an arbitrary ordered set as index set.

* @@Map@@: Concatenate a set of shapes.

* @@Triangular@@:
A 2D array with the shape of a lower or upper triangular matrix.

* @@Simplex@@:
Simplices of any dimension, where the dimension is encoded in the type.
An index is a tuple of monotonic ordered sub-indices.

* @@Square@@: A 2D array where both dimensions always have equal size.

* @@Cube@@: A 3D array where all three dimensions always have equal size.

* @@Tagged@@: Statically distinguish shapes and indices that are isomorphic.

With our @@Array@@ type you can perform

* Fast Linear Algebra using the package @@lapack@@.
The @@lapack@@ package defines even more fancy shapes
like tall rectangular matrices, triangular matrices and banded matrices.

* Fast Fourier Transforms using the package @@comfort-fftw@@

* Fast Linear Programming using the package @@comfort-glpk@@

* Efficient Array Processing via LLVM Just-In-Time code generation
using the package @@knead@@.

See also @@comfort-graph@@ for a Graph data structure,
with non-Int node identifiers and flexible edge types.")
    (license license:bsd-3)))

haskell-9.4-comfort-array

(define-public haskell-9.4-comonad-extras
  (package
    (name "haskell-9.4-comonad-extras")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comonad-extras/comonad-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vsxxgqsiizprm2xxjks1n77mlx5rb9ybx36ag49fkzyb01rbb34"))))
    (properties `((upstream-name . "comonad-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "http://github.com/ekmett/comonad-extras/")
    (synopsis "Exotic comonad transformers")
    (description "Exotic comonad transformers")
    (license license:bsd-3)))

haskell-9.4-comonad-extras

(define-public haskell-9.4-core-text
  (package
    (name "haskell-9.4-core-text")
    (version "0.3.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/core-text/core-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vl463wdgnfb795nbir355w1cgy5ndqnwgfiiyr1j73xmngmvw04"))))
    (properties `((upstream-name . "core-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-fingertree)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/unbeliever#readme")
    (synopsis "A rope type based on a finger tree over UTF-8 fragments")
    (description
     "A rope data type for text, built as a finger tree over UTF-8 text
fragments. The package also includes utiltiy functions for breaking and
re-wrapping lines, conveniences for pretty printing and colourizing
terminal output, and a simple mechanism for multi-line Rope literals.

The main @@Rope@@ type and its usage are described at \"Core.Text.Rope\" in
this package.

This is part of a library intended to ease interoperability and assist in
building command-line programs, both tools and longer-running daemons.
A list of features and some background to the library's design is contained
in the
<https://github.com/aesiniath/unbeliever/blob/master/README.markdown README>
on GitHub.")
    (license license:expat)))

haskell-9.4-core-text

(define-public haskell-9.4-cpuinfo
  (package
    (name "haskell-9.4-cpuinfo")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cpuinfo/cpuinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0973bkgcfha0xyimizgq55w4a32gjgklcikfhcwkak4m9czwyynr"))))
    (properties `((upstream-name . "cpuinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "https://github.com/TravisWhitaker/cpuinfo")
    (synopsis "Haskell Library for Checking CPU Information")
    (description "Haskell Library for Checking CPU Information")
    (license license:expat)))

haskell-9.4-cpuinfo

(define-public haskell-9.4-cql
  (package
    (name "haskell-9.4-cql")
    (version "4.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cql/cql-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "04s947r9wsqamqx3sq0h41l0mwxcw7pqc11jlrj8r94wgiikpkh2"))))
    (properties `((upstream-name . "cql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-incompatible-varint")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-Decimal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-iproute)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-uuid)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/twittner/cql/")
    (synopsis "Cassandra CQL binary protocol.")
    (description
     "Implementation of Cassandra's CQL Binary Protocol
<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v3.spec Version 3>
and
<https://github.com/apache/cassandra/blob/trunk/doc/native_protocol_v4.spec Version 4>.

It provides encoding and decoding functionality as well as representations
of the various protocol related types.

Thus it can serve as a building block for writing Cassandra drivers, such
as <http://hackage.haskell.org/package/cql-io cql-io>.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.4-cql

(define-public haskell-9.4-crypt-sha512
  (package
    (name "haskell-9.4-crypt-sha512")
    (version "0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypt-sha512/crypt-sha512-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wsma9frdrn39i506zydlzlk1ir6jh1pidqfjms8rwqjpx965gn2"))))
    (properties `((upstream-name . "crypt-sha512") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "09fj4nghk80l8pqxjiddw0v8frwg46v5izkjsx2jvk1ksh6cif2b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cryptohash-sha512)))
    (home-page "https://github.com/phadej/crypt-sha512")
    (synopsis "Pure Haskell implelementation for GNU SHA512 crypt algorithm")
    (description
     "crypt() is the password encryption function.  It is based on the Data
Encryption Standard algorithm with variations intended (among other things) to
discourage use of hardware implementations of a key search.

This package provides a pure Haskell implementation of SHA512 crypt scheme.")
    (license license:bsd-3)))

haskell-9.4-crypt-sha512

(define-public haskell-9.4-crypto-pubkey-types
  (package
    (name "haskell-9.4-crypto-pubkey-types")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-asn1-encoding)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-asn1-types)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/vincenthz/hs-crypto-pubkey-types")
    (synopsis "Generic cryptography Public keys algorithm types")
    (description "Generic cryptography public keys algorithm types")
    (license license:bsd-3)))

haskell-9.4-crypto-pubkey-types

(define-public haskell-9.4-cryptonite
  (package
    (name "haskell-9.4-cryptonite")
    (version "0.30")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cryptonite/cryptonite-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07bb97iszhnrfddh5ql6p3dqd0c13xycjw5n2kljw7d0ia59q2an"))))
    (properties `((upstream-name . "cryptonite") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsupport_aesni" "-fsupport_rdrand" "-f-support_pclmuldq" "-f-support_sse" "-finteger-gmp" "-fsupport_deepseq" "-f-old_toolchain_inliner" "-f-check_alignment" "-fuse_target_attributes")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-basement)
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
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-crypto/cryptonite")
    (synopsis "Cryptography Primitives sink")
    (description
     "A repository of cryptographic primitives.

* Symmetric ciphers: AES, DES, 3DES, CAST5, Blowfish, Twofish, Camellia, RC4, Salsa, XSalsa, ChaCha.

* Hash: SHA1, SHA2, SHA3, SHAKE, MD2, MD4, MD5, Keccak, Skein, Ripemd, Tiger, Whirlpool, Blake2

* MAC: HMAC, KMAC, Poly1305

* Asymmetric crypto: DSA, RSA, DH, ECDH, ECDSA, ECC, Curve25519, Curve448, Ed25519, Ed448

* Key Derivation Function: PBKDF2, Scrypt, HKDF, Argon2, BCrypt, BCryptPBKDF

* Cryptographic Random generation: System Entropy, Deterministic Random Generator

* Data related: Anti-Forensic Information Splitter (AFIS)

If anything cryptographic related is missing from here, submit
a pull request to have it added. This package strives to be a
cryptographic kitchen sink that provides cryptography for everyone.

Evaluate the security related to your requirements before using.

Read \"Crypto.Tutorial\" for a quick start guide.")
    (license license:bsd-3)))

haskell-9.4-cryptonite

(define-public haskell-9.4-css-text
  (package
    (name "haskell-9.4-css-text")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/css-text/css-text-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ynd9f4hn2sfwqzbsa0y7phmxq8za7jiblpjwx0ry8b372zhgxaz"))))
    (properties `((upstream-name . "css-text") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "https://github.com/yesodweb/css-text.git#readme")
    (synopsis "CSS parser and renderer.")
    (description
     "Please see the README and generated docs at <https://www.stackage.org/package/css-text>")
    (license license:expat)))

haskell-9.4-css-text

(define-public haskell-9.4-data-dword
  (package
    (name "haskell-9.4-data-dword")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-dword/data-dword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0l6xvy89zch5kxkaafsg874xrwx0x1rpxpx1ywbhbs7qv3pz250i"))))
    (properties `((upstream-name . "data-dword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-data-bword)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mvv/data-dword")
    (synopsis "Stick two binary words together to get a bigger one")
    (description
     "This package provides Template Haskell utilities for declaring fixed-length
binary word data types. Signed and unsigned 96, 128, 160, 192, 224, and
256-bit types are predefined.")
    (license license:bsd-3)))

haskell-9.4-data-dword

(define-public haskell-9.4-derive-topdown
  (package
    (name "haskell-9.4-derive-topdown")
    (version "0.0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/derive-topdown/derive-topdown-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w36nczl0rl91sgm3vcd4gvm3lr6zdjqvmfdikkjq664xwnxrn8h"))))
    (properties `((upstream-name . "derive-topdown") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-th-expand-syns)))
    (home-page
     "https://github.com/HaskellZhangSong/derive-topdown                   ")
    (synopsis
     "Help Haskellers derive class instances for composited data types.")
    (description
     "This package will make it easier to derive class instance for complex composited data types by using Template Haskell.")
    (license license:bsd-3)))

haskell-9.4-derive-topdown

(define-public haskell-9.4-df1
  (package
    (name "haskell-9.4-df1")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/df1/df1-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0adsmfjfcxsg55y4pahw408b82bi7phyzq48vrf80p84nyxmmpsi"))))
    (properties `((upstream-name . "df1") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/di")
    (synopsis
     "Type, render and parse the df1 hierarchical structured log format")
    (description
     "Type, render and parse logs in /df1/ format, a hierarchical structured
log format that is easy for humans and fast for computers.")
    (license license:bsd-3)))

haskell-9.4-df1

(define-public haskell-9.4-dice
  (package
    (name "haskell-9.4-dice")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dice/dice-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1y4184xicjwp29cyriq3qcr066167nwfy0720dmxjbgw795jxpsb"))))
    (properties `((upstream-name . "dice") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1006bnawdn3fp76q2arz62q5dkkxgix18m7bcrb63xjzhssm09xy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-random-fu)))
    (home-page "https://hackage.haskell.org/package/dice")
    (synopsis "Simplistic D&D style dice-rolling system.")
    (description "Simplistic D&D style dice-rolling system.

> $ dice \"2d10 + 2 * (d100 / d6)\"
> (5+2) + 2 * 64 / 2 => 71")
    (license license:unlicense)))

haskell-9.4-dice

(define-public haskell-9.4-dimensional
  (package
    (name "haskell-9.4-dimensional")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dimensional/dimensional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16d50vlln11hq894y8qxrg4cricz1459dg14z0wc1fzfiydxb6ns"))))
    (properties `((upstream-name . "dimensional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-exact-pi)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ieee754)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-numtype-dk)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/bjornbm/dimensional/")
    (synopsis "Statically checked physical dimensions")
    (description
     "Dimensional is a library providing data types for performing arithmetic
with physical quantities and units. Information about the physical
dimensions of the quantities and units is embedded in their types and the
validity of operations is verified by the type checker at compile time.
The wrapping and unwrapping of numerical values as quantities is done by
multiplication and division with units. The library is designed to, as
far as is practical, enforce/encourage best practices of unit usage.
Version 1 of the dimensional package differs from earlier version in that
the dimension tracking is implemented using Closed Type Families and Data Kinds
rather than functional dependencies. This enables a number of features, including
improved support for unit names and quantities with statically-unknown dimensions.
Requires GHC 8.0 or later.")
    (license license:bsd-3)))

haskell-9.4-dimensional

(define-public haskell-9.4-either
  (package
    (name "haskell-9.4-either")
    (version "5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/either/either-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gl748ia68bldbqb2fl7vjv44g0y8ivn659fjmy1qyypgyb5p95z"))))
    (properties `((upstream-name . "either") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1w2rxrj0gc3a7p74pybji8yy2zsjnhxyi4zhlmx4qsyz6w616ggv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (home-page "http://github.com/ekmett/either/")
    (synopsis "Combinators for working with sums")
    (description "Combinators for working with sums.")
    (license license:bsd-3)))

haskell-9.4-either

(define-public haskell-9.4-email-validate
  (package
    (name "haskell-9.4-email-validate")
    (version "2.3.2.18")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/email-validate/email-validate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11bi5y5qmri62nl34nl5pv4zs59bjpjknw560yw5ds62gsi2sjcp"))))
    (properties `((upstream-name . "email-validate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "https://github.com/Porges/email-validate-hs")
    (synopsis "Email address validation")
    (description "Validating an email address string against RFC 5322")
    (license license:bsd-3)))

haskell-9.4-email-validate

(define-public haskell-9.4-eq
  (package
    (name "haskell-9.4-eq")
    (version "4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/eq/eq-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0p3189kq045vxh0h7is81q0qahaghni810x68g31yml05md37giz"))))
    (properties `((upstream-name . "eq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1b2k97n787730p3k4fsp16f2i9ddqf5k90cq4r7s2lddmdq0cshr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "http://github.com/ekmett/eq/")
    (synopsis "Leibnizian equality")
    (description "Leibnizian equality.")
    (license license:bsd-3)))

haskell-9.4-eq

(define-public haskell-9.4-equivalence
  (package
    (name "haskell-9.4-equivalence")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/equivalence/equivalence-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13q0lklm58n0l7bx0d4k1cw1i2il8hpdjp76lb79ix8lv7cxd2jr"))))
    (properties `((upstream-name . "equivalence") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-STMonadTrans)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pa-ba/equivalence")
    (synopsis
     "Maintaining an equivalence relation implemented as union-find using STT.")
    (description
     "This is an implementation of Tarjan's Union-Find algorithm (Robert
E. Tarjan. \"Efficiency of a Good But Not Linear Set Union
Algorithm\", JACM 22(2), 1975) in order to maintain an equivalence
relation.
This implementation is a port of the /union-find/ package using the
ST monad transformer (instead of the IO monad).")
    (license license:bsd-3)))

haskell-9.4-equivalence

(define-public haskell-9.4-fft
  (package
    (name "haskell-9.4-fft")
    (version "0.1.8.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fft/fft-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1kkdw08qzsgjgg9z7pf5876cn2hlq22cgvc3k2amidn317n2d6vz"))))
    (properties `((upstream-name . "fft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fbase4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages algebra) fftw)
                  (@ (gnu packages algebra) fftwf)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-carray)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ix-shapable)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-storable-complex)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/fft")
    (synopsis "Bindings to the FFTW library.")
    (description "Bindings to the FFTW library.

Provides high performance discrete fourier transforms in
arbitrary dimensions.  Include transforms of complex data,
real data, and real to real transforms.
")
    (license license:bsd-3)))

haskell-9.4-fft

(define-public haskell-9.4-fields-json
  (package
    (name "haskell-9.4-fields-json")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fields-json/fields-json-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pzh7j2ka4s4b2vgcj2qsrrmxb3gxry0r5wzhkblc82bk76sq4fn"))))
    (properties `((upstream-name . "fields-json") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-json)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (home-page "https://github.com/scrive/fields-json")
    (synopsis "Abusing monadic syntax JSON objects generation.")
    (description
     "Generation of big, complex JSON objects with 'Text.JSON' is painful.
And autoderivation is not always possible.
Check documentation of 'Text.JSON.Gen' for more info.")
    (license license:bsd-3)))

haskell-9.4-fields-json

(define-public haskell-9.4-foldl
  (package
    (name "haskell-9.4-foldl")
    (version "1.4.14")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/foldl/foldl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ihfari2d8czfxfxv5svczpq1cvi3qi55mxphjjqlnabxa76y1cc"))))
    (properties `((upstream-name . "foldl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0v055cj7sw5xa7v0lm2gryfhj8nxhnjrs1zm9nnxyzgv2aivb8vc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://hackage.haskell.org/package/foldl")
    (synopsis "Composable, streaming, and efficient left folds")
    (description
     "This library provides strict left folds that stream in constant
memory, and you can combine folds using @@Applicative@@ style to derive new
folds.  Derived folds still traverse the container just once and are often as
efficient as hand-written folds.")
    (license license:bsd-3)))

haskell-9.4-foldl

(define-public haskell-9.4-free
  (package
    (name "haskell-9.4-free")
    (version "5.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/free/free-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0whff0r0nvii5l9z9crw7v0rj0wwblwbnfp99515siyxjkzs9phj"))))
    (properties `((upstream-name . "free") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1qpn9sy2bpngkr9zdi0dvy5knnhbsli3d0nw1ljvw12pisv6njaq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)))
    (home-page "http://github.com/ekmett/free/")
    (synopsis "Monads for free")
    (description
     "Free monads are useful for many tree-like structures and domain specific languages.

If @@f@@ is a 'Functor' then the free 'Monad' on @@f@@ is the type
of trees whose nodes are labeled with the constructors of @@f@@. The word
\\\"free\\\" is used in the sense of \\\"unrestricted\\\" rather than \\\"zero-cost\\\":
@@Free f@@ makes no constraining assumptions beyond those given by @@f@@ and the
definition of 'Monad'. As used here it is a standard term from the
mathematical theory of adjoint functors.

Cofree comonads are dual to free monads. They provide convenient ways to talk
about branching streams and rose-trees, and can be used to annotate syntax
trees. The cofree comonad can be seen as a stream parameterized by a 'Functor'
that controls its branching factor.

More information on free monads, including examples, can be found in the
following blog posts:
<http://comonad.com/reader/2008/monads-for-free/>
<http://comonad.com/reader/2011/free-monads-for-less/>")
    (license license:bsd-3)))

haskell-9.4-free

(define-public haskell-9.4-from-sum
  (package
    (name "haskell-9.4-from-sum")
    (version "0.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/from-sum/from-sum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rdsynimmq81y3g5c8z9yvlqhsl99hnvjq4wvdci5ql788cq4m81"))))
    (properties `((upstream-name . "from-sum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)))
    (home-page "https://github.com/cdepillabout/from-sum")
    (synopsis "Combinators for working with Maybe and Either")
    (description
     "Provides many functions for working with 'Maybe' and 'Either', including canonical 'fromMaybeM' and 'fromEitherM' functions.  Please see @@README.md@@.")
    (license license:bsd-3)))

haskell-9.4-from-sum

(define-public haskell-9.4-ghc-prof
  (package
    (name "haskell-9.4-ghc-prof")
    (version "1.4.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-prof/ghc-prof-" version
                    ".tar.gz"))
              (sha256
               (base32
                "15gshlj8jp85m9y05z1wmssq5rkqyix9890hy1rkmy7nmkhij6mj"))))
    (properties `((upstream-name . "ghc-prof") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)))
    (home-page "https://github.com/maoe/ghc-prof")
    (synopsis "Library for parsing GHC time and allocation profiling reports")
    (description
     "ghc-prof is a library for parsing GHC time and allocation profiling reports.")
    (license license:bsd-3)))

haskell-9.4-ghc-prof

(define-public haskell-9.4-ghc-typelits-extra
  (package
    (name "haskell-9.4-ghc-typelits-extra")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-typelits-extra/ghc-typelits-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pjai171y374569xzqnp6amf7dvj57pcfykh3g48m5jij2b8jbc6"))))
    (properties `((upstream-name . "ghc-typelits-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-deverror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-ghc-tcplugins-extra)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-ghc-typelits-knownnat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-ghc-typelits-natnormalise)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.clash-lang.org/")
    (synopsis "Additional type-level operations on GHC.TypeLits.Nat")
    (description
     "Additional type-level operations on @@GHC.TypeLits.Nat@@:

* @@Max@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:max max>

* @@Min@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:min min>

* @@Div@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:div div>

* @@Mod@@: type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:mod mod>

* @@FLog@@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
i.e. the exact integer equivalent to @@floor (logBase x y)@@

* @@CLog@@: type-level equivalent of /the ceiling of/ <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
i.e. the exact integer equivalent to @@ceiling (logBase x y)@@

* @@Log@@: type-level equivalent of <https://hackage.haskell.org/package/integer-gmp/docs/GHC-Integer-Logarithms.html#v:integerLogBase-35- integerLogBase#>
where the operation only reduces when @@floor (logBase b x) ~ ceiling (logBase b x)@@

* @@GCD@@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:gcd gcd>

* @@LCM@@: a type-level <http://hackage.haskell.org/package/base-4.8.2.0/docs/Prelude.html#v:lcm lcm>

And a custom solver for the above operations defined in
@@GHC.TypeLits.Extra.Solver@@ as a GHC type-checker plugin. To use the plugin,
add the

@@
OPTIONS_GHC -fplugin GHC.TypeLits.Extra.Solver
@@

pragma to the header of your file.")
    (license license:bsd-2)))

haskell-9.4-ghc-typelits-extra

(define-public haskell-9.4-hasktags
  (package
    (name "haskell-9.4-hasktags")
    (version "0.72.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hasktags/hasktags-" version
                    ".tar.gz"))
              (sha256
               (base32
                "09p79w16fgpqi6bwq162769xdrnyb7wnmz56k00nz6dj1a0bbbdd"))))
    (properties `((upstream-name . "hasktags") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")
       #:cabal-revision
       ("2" "0f3v6k3bvsczz0z5i09286c0i74wz782vayzyp5lndqvrx3b4g0x")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-json)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-microlens-platform)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (home-page "http://github.com/MarcWeber/hasktags")
    (synopsis
     "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs")
    (description
     "Produces ctags \"tags\" and etags \"TAGS\" files for Haskell programs.")
    (license license:bsd-3)))

haskell-9.4-hasktags

(define-public haskell-9.4-headed-megaparsec
  (package
    (name "haskell-9.4-headed-megaparsec")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/headed-megaparsec/headed-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17k4zjvd4i47yz1izbrx98k2lxk5hh553wf94bjn1rdl06vlhc18"))))
    (properties `((upstream-name . "headed-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-selective)))
    (home-page "https://github.com/nikita-volkov/headed-megaparsec")
    (synopsis "More informative parser")
    (description "")
    (license license:expat)))

haskell-9.4-headed-megaparsec

(define-public haskell-9.4-hlibgit2
  (package
    (name "haskell-9.4-hlibgit2")
    (version "0.18.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hlibgit2/hlibgit2-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0plfzxzgph7iilwp434ndcw7pia47n96hcfa32fs7q5gz8kl17hr"))))
    (properties `((upstream-name . "hlibgit2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages version-control) git)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-bindings-DSL)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://hackage.haskell.org/package/hlibgit2")
    (synopsis "Low-level bindings to libgit2")
    (description "Bindings to libgit2 v0.18.0.")
    (license license:expat)))

haskell-9.4-hlibgit2

(define-public haskell-9.4-hostname-validate
  (package
    (name "haskell-9.4-hostname-validate")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hostname-validate/hostname-validate-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0my8g4kqf9mz7ii79ff53rwkx3yv9kkn4jbm60q4b7g1rzhb3bvz"))))
    (properties `((upstream-name . "hostname-validate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "https://hackage.haskell.org/package/hostname-validate")
    (synopsis "Validate hostnames e.g. localhost or foo.co.uk.")
    (description
     "Validate hostnames e.g. localhost or foo.co.uk. See also RFC 1123, RFC 952, and RFC 1035.")
    (license license:bsd-3)))

haskell-9.4-hostname-validate

(define-public haskell-9.4-hp2pretty
  (package
    (name "haskell-9.4-hp2pretty")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hp2pretty/hp2pretty-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1irm8mvcib39r8imdx7y7jisp162i0rwk8w3irs2j746c8vhyv12"))))
    (properties `((upstream-name . "hp2pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-floatshow)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "https://mathr.co.uk/blog/hp2pretty.html")
    (synopsis "generate pretty graphs from heap profiles")
    (description
     "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with
the aims of being maintainable, with more flexible output, and
more beautiful output.  Currently hp2pretty outputs Scalable
Vector Graphics (SVG) only, though PostScript (PS) is planned.
Not all of hp2ps' options are implemented yet in hp2pretty.

In hp2pretty-0.10 parsing of very large files is made possible
by reading the file(s) twice as Text.Lazy.

In hp2pretty-0.9 a mode for detached key is added:

> hp2pretty --key=inline *.hp
> hp2pretty --key=key.txt *.hp
> hp2pretty --key=- *.hp

The output file is an simple text file, that mentions additional
SVG files for the legend - how you format it is up to you.

A mode for detached titles is also added:

> hp2pretty --title=inline *.hp
> hp2pretty --title=title.txt *.hp
> hp2pretty --title=- *.hp

The output file is an simple text file, that mentions the image
SVG files.  You could use this for figure captions, etc.

See the examples/ directory in the source distribution for hints.

In hp2pretty-0.8 output filtering and sorting flags are added,
as well as low-ink pattern fills for printing:

> hp2pretty --trace=1     *.hp
> hp2pretty --bands=15    *.hp
> hp2pretty --sort=size   *.hp
> hp2pretty --sort=stddev *.hp
> hp2pretty --sort=name   *.hp
> hp2pretty --reverse     *.hp
> hp2pretty --pattern     *.hp

In hp2pretty-0.7 a parsing bug is fixed.

In hp2pretty-0.6 ByteString is replaced by Text, fixing bugs
with Unicode.

In hp2pretty-0.5 using attoparsec and floatshow internally
should give a healthy speedup.

In hp2pretty-0.4 usage changed since the previous release:

> hp2pretty *.hp
> hp2pretty --uniform-scale=time   *.hp
> hp2pretty --uniform-scale=memory *.hp
> hp2pretty --uniform-scale=both   *.hp

Colours also changed: now they are based on a hash of the
cost label, which should make colours have stable semantics
across program runs.")
    (license license:bsd-3)))

haskell-9.4-hp2pretty

(define-public haskell-9.4-hslogger
  (package
    (name "haskell-9.4-hslogger")
    (version "1.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hslogger/hslogger-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0nyar9xcblx5jwks85y8f4jfy9k1h4ss6rvj4mdbiidrq3v688vz"))))
    (properties `((upstream-name . "hslogger") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork--gt-3_0_0")
       #:cabal-revision
       ("6" "0xiqjl646kxynsccc2q1q91sch7pfx3274yl2745fsqhpb115df1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)))
    (home-page "https://github.com/haskell-hvr/hslogger/wiki")
    (synopsis "Versatile logging framework")
    (description
     "@@hslogger@@ is a logging framework for Haskell, roughly similar
to [Python's logging module](https://docs.python.org/2/library/logging.html).

@@hslogger@@ lets each log message have a priority and source be associated
with it.  The programmer can then define global handlers that route
or filter messages based on the priority and source.  @@hslogger@@ also
has a [Syslog](https://tools.ietf.org/html/rfc5424) handler built in.")
    (license license:bsd-3)))

haskell-9.4-hslogger

(define-public haskell-9.4-hspec-core
  (package
    (name "haskell-9.4-hspec-core")
    (version "2.10.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-core/hspec-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0bka7r8b2qh82sxnz5mcfw2swl4k2v3q97yb0n1rhs1g444lfcqn"))))
    (properties `((upstream-name . "hspec-core") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-haskell-lexer)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-hspec-meta)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-io)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-setenv)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-silently)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-tf-random)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "This package exposes internal types and functions that can be used to extend Hspec's functionality.")
    (license license:expat)))

haskell-9.4-hspec-core

(define-public haskell-9.4-html-entities
  (package
    (name "haskell-9.4-html-entities")
    (version "1.1.4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entities/html-entities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16b1n73qg7sv5is18i0zyg5x1i68zw2h9nh115zlqnavmdj913yv"))))
    (properties `((upstream-name . "html-entities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "https://github.com/nikita-volkov/html-entities")
    (synopsis "A codec library for HTML-escaped text and HTML-entities")
    (description
     "This library provides the following APIs for coding and decoding of
HTML-escaped text:

* \\\"attoparsec\\\" parser

* Text decoder

* Encoding text builder")
    (license license:expat)))

haskell-9.4-html-entities

(define-public haskell-9.4-htoml-megaparsec
  (package
    (name "haskell-9.4-htoml-megaparsec")
    (version "2.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/htoml-megaparsec/htoml-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08pka0z97b461bf45nvh9gymbvbwhn2dh70dy7x22xmzrigxnxw1"))))
    (properties `((upstream-name . "htoml-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sziwadc2wlkfpip65d0v2wl6ldlcbn1fww4bwgw4rvmfhyrwbbc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-composition-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://hub.darcs.net/vmchale/htoml-megaparsec")
    (synopsis "Parser for TOML files")
    (description "TOML is an obvious and minimal format for config files.
This package provides a TOML parser
built with the Megaparsec.")
    (license license:bsd-3)))

haskell-9.4-htoml-megaparsec

(define-public haskell-9.4-human-readable-duration
  (package
    (name "haskell-9.4-human-readable-duration")
    (version "0.2.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/human-readable-duration/human-readable-duration-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06yw7bab1hk8287d2zdg45m46pgp87fivh0cb2x1nxivvn1qfs6c"))))
    (properties `((upstream-name . "human-readable-duration") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)))
    (home-page
     "https://gitlab.esy.fun/yogsototh/human-readable-duration#readme")
    (synopsis "Provide duration helper")
    (description
     "This is a minimal Haskell library to display duration.

> let duration = 2 * ms + 3 * oneSecond + 2 * minute + 33*day + 2*year
> humanReadableDuration duration
> -- will return: \"2 years 33 days 2 min 3s 2ms\"
> getYears duration
> -- will return 2
> getDays duration
> -- will return 763
> getMs duration
> -- will return 65923323002")
    (license license:bsd-3)))

haskell-9.4-human-readable-duration

(define-public haskell-9.4-hweblib
  (package
    (name "haskell-9.4-hweblib")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hweblib/hweblib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "03dmx5irlsyb3b9zg2r6nz947sslizkn0nlk65ldb5n4m8my33hy"))))
    (properties `((upstream-name . "hweblib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)))
    (home-page "http://github.com/aycanirican/hweblib")
    (synopsis "Haskell Web Library")
    (description
     "The library includes attoparsec based incremental parsers for
rfc2616 (http) and rfc3986 (uri), rfc2045-46 (mime). The package
name will subject to change due to broad range of rfc coverage.")
    (license license:bsd-3)))

haskell-9.4-hweblib

(define-public haskell-9.4-hyphenation
  (package
    (name "haskell-9.4-hyphenation")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyphenation/hyphenation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05330kd99cg9v6w26sj87wk2nfvpmn2r177kr66vr9n0rlmia60y"))))
    (properties `((upstream-name . "hyphenation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fembed")
       #:cabal-revision
       ("1" "1ylp7a274rg3ymkj39v27ab387dp04cbagd5jxb4qfqqjrbkvyrs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-file-embed)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ekmett/hyphenation")
    (synopsis "Configurable Knuth-Liang hyphenation")
    (description
     "Configurable Knuth-Liang hyphenation

Uses the UTF8 encoded hyphenation patterns provided by
hyph-utf8 from
<http://www.ctan.org/tex-archive/language/hyph-utf8>

Usage:

>>> hyphenate english_US \"supercalifragilisticexpialadocious\"
[\"su\",\"per\",\"cal\",\"ifrag\",\"ilis\",\"tic\",\"ex\",\"pi\",\"al\",\"ado\",\"cious\"]

>>> hyphenate english_US \"hyphenation\"
[\"hy\",\"phen\",\"ation\"]

>>> hyphenate icelandic \"va\\240lahei\\240avegavinnuverkf\\230rageymslusk\\250r\"
[\"va\\240la\",\"hei\\240a\",\"vega\",\"vinnu\",\"verk\",\"f\\230ra\",\"geymslu\",\"sk\\250r\"]")
    (license license:bsd-2)))

haskell-9.4-hyphenation

(define-public haskell-9.4-irc
  (package
    (name "haskell-9.4-irc")
    (version "0.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/irc/irc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1q9p2qwfy9rsfyaja4x3gjr8ql2ka2ja5qv56b062bdkvzafl5iq"))))
    (properties `((upstream-name . "irc") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/irc")
    (synopsis "A small library for parsing IRC messages.")
    (description "A set of combinators and types for parsing IRC messages.")
    (license license:bsd-3)))

haskell-9.4-irc

(define-public haskell-9.4-jack
  (package
    (name "haskell-9.4-jack")
    (version "0.7.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/jack/jack-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0f47cyhsjw57k4cgbmwvawn02v9dvx4x1pn7k2z612srf5l1igb5"))))
    (properties `((upstream-name . "jack") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fpkgconfig" "-fjackfree" "-f-buildexamples")
       #:cabal-revision
       ("1" "08y9jiyqxxpv6kjivlk2qaiidj3hayyfi7baqzsfn28bskxr7d9b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-enumset)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-event-list)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-explicit-exception)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hsc2hs)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-midi)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-negative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages audio) jack-1)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://www.haskell.org/haskellwiki/JACK")
    (synopsis "Bindings for the JACK Audio Connection Kit")
    (description
     "Bindings for the JACK Audio Connection Kit <http://jackaudio.org/>.
It has support both for PCM audio and MIDI handling.

In order to adapt to your system,
you may have to disable pkgConfig or jackFree cabal flags.

You must compile your clients with @@-threaded@@
otherwise you will encounter segfaults.")
    (license license:gpl2)))

haskell-9.4-jack

(define-public haskell-9.4-language-protobuf
  (package
    (name "haskell-9.4-language-protobuf")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-protobuf/language-protobuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wxihyf320xsqi114dbl2cwylkc261d5wgd7migb1lh23gxnhhz2"))))
    (properties `((upstream-name . "language-protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)))
    (home-page "https://hackage.haskell.org/package/language-protobuf")
    (synopsis "Language definition and parser for Protocol Buffers.")
    (description
     "Language definition and parser for Protocol Buffers files, according to <https://developers.google.com/protocol-buffers/docs/reference/proto3-spec>.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-language-protobuf

(define-public haskell-9.4-lattices
  (package
    (name "haskell-9.4-lattices")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lattices/lattices-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mn78xqwsksybggnsnx8xkmzlc9his1si14dy5v6vmlchkjym9qg"))))
    (properties `((upstream-name . "lattices") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0nkcdqb3gsp1lqpj7hv4knndj7p258j0cp4cbqx7jixc93gkq044")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-universe-base)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-universe-reverse-instances)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://github.com/phadej/lattices/")
    (synopsis
     "Fine-grained library for constructing and manipulating lattices")
    (description
     "In mathematics, a lattice is a partially ordered set in which every two
elements @@x@@ and @@y@@ have a unique supremum (also called a least upper bound, join, or @@x /\\\\ y@@)
and a unique infimum (also called a greatest lower bound, meet, or @@x \\\\/ y@@).

This package provide type-classes for different lattice types, as well
as a class for the partial order.")
    (license license:bsd-3)))

haskell-9.4-lattices

(define-public haskell-9.4-log-domain
  (package
    (name "haskell-9.4-log-domain")
    (version "0.13.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/log-domain/log-domain-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i4fx9k8cwjvmj0pgfnbici1b68zmif1jmmqxplpjqy32ksnyifa"))))
    (properties `((upstream-name . "log-domain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1hddf1q0gvpx7ic0qynjl9nk9g37kjh352yfk5axi36k49zfpw8d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "http://github.com/ekmett/log-domain/")
    (synopsis "Log-domain arithmetic")
    (description
     "This package provides log-domain floats, doubles and complex numbers.")
    (license license:bsd-3)))

haskell-9.4-log-domain

(define-public haskell-9.4-lrucaching
  (package
    (name "haskell-9.4-lrucaching")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lrucaching/lrucaching-" version
                    ".tar.gz"))
              (sha256
               (base32
                "192a2zap1bmxa2y48n48rmngf18fr8k0az4a230hziv3g795yzma"))))
    (properties `((upstream-name . "lrucaching") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("12" "0jc46492lq09yrmp0887q9smk0z6nn35nlgcarm9rndsr2a1x0ya")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-psqueues)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/cocreature/lrucaching#readme")
    (synopsis "LRU cache")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-lrucaching

(define-public haskell-9.4-misfortune
  (package
    (name "haskell-9.4-misfortune")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/misfortune/misfortune-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0shzqc8yz4nrz31b55fsl00bkgbvj1kzdf2j845vwpnvmrwfr1g1"))))
    (properties `((upstream-name . "misfortune") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-knob)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-random-fu)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-regex-base)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-pcre)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/ncfavier/misfortune")
    (synopsis "fortune-mod clone")
    (description "fortune-mod clone, in library and executable form.")
    (license license:expat)))

haskell-9.4-misfortune

(define-public haskell-9.4-modular
  (package
    (name "haskell-9.4-modular")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/modular/modular-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1igg7am4z1kfvpyp5a53rsqan5i209rp1s0z9xamqydx60ilc2s3"))))
    (properties `((upstream-name . "modular") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list)))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-ghc-typelits-knownnat)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/pgujjula/modular#readme")
    (synopsis "Type-safe modular arithmetic")
    (description
     "Please see the GitHub page at <https://github.com/pgujjula/modular> for installation instructions, and the module documentation for Numeric.Modular for usage instructions.")
    (license license:bsd-3)))

haskell-9.4-modular

(define-public haskell-9.4-monad-chronicle
  (package
    (name "haskell-9.4-monad-chronicle")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-chronicle/monad-chronicle-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13f1qwylpj7wss2h5g69zlmn6k6qg5r3aqd9zhvjspg1a85m91kq"))))
    (properties `((upstream-name . "monad-chronicle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsemigroupoids")
       #:cabal-revision
       ("1" "09ibn640fkqlvgqxkrwm1dwr78amy399b6jysxklb6nngj10rcdc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "These as a transformer, ChronicleT")
    (description
     "This packages provides @@ChronicleT@@, a monad transformer based on
the @@Monad@@ instance for @@These a@@, along with the usual monad
transformer bells and whistles.")
    (license license:bsd-3)))

haskell-9.4-monad-chronicle

(define-public haskell-9.4-monad-products
  (package
    (name "haskell-9.4-monad-products")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-products/monad-products-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1skcjjkn14fh92l4rx3akxjg1c85jqhnlwvkkzqwz9g15bdy3gq2"))))
    (properties `((upstream-name . "monad-products") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "http://github.com/ekmett/monad-products")
    (synopsis "Monad products")
    (description "Monad products")
    (license license:bsd-3)))

haskell-9.4-monad-products

(define-public haskell-9.4-monoid-extras
  (package
    (name "haskell-9.4-monoid-extras")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monoid-extras/monoid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qaxp0cf2cvzvfpk7x9mjz1zmlpjfzxij8v2n45w89s7bq9ckvlw"))))
    (properties `((upstream-name . "monoid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-groups)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "https://hackage.haskell.org/package/monoid-extras")
    (synopsis "Various extra monoid-related definitions and utilities")
    (description "Various extra monoid-related definitions and utilities,
such as monoid actions, monoid coproducts, semi-direct
products, \\\"deletable\\\" monoids, \\\"split\\\" monoids,
and \\\"cut\\\" monoids.")
    (license license:bsd-3)))

haskell-9.4-monoid-extras

(define-public haskell-9.4-mpi-hs-binary
  (package
    (name "haskell-9.4-mpi-hs-binary")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mpi-hs-binary/mpi-hs-binary-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10wlrm31drjgdviqzsvxlnj1mn1lli3n41z1xbfp0i80vmh29av3"))))
    (properties `((upstream-name . "mpi-hs-binary") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-mpi-hs)))
    (propagated-inputs (list (@ (gnu packages mpi) mpich)))
    (home-page "https://github.com/eschnett/mpi-hs-binary#readme")
    (synopsis "MPI bindings for Haskell")
    (description
     "MPI (the [Message Passinag Interface](https://www.mpi-forum.org)) is
a widely used standard for distributed-memory programming on HPC
(High Performance Computing) systems. MPI allows exchanging data
(_messages_) between programs running in parallel. There are several
high-quality open source MPI implementations (e.g. MPICH, MVAPICH,
OpenMPI) as well as a variety of closed-source implementations.
These libraries can typically make use of high-bandwidth low-latency
communication hardware such as InfiniBand.

This library @@mpi-hs@@ provides Haskell bindings for MPI. It is based
on ideas taken from
[haskell-mpi](https://github.com/bjpop/haskell-mpi),
[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html)
for C++, and [MPI for
Python](https://mpi4py.readthedocs.io/en/stable/).

@@mpi-hs@@ provides two API levels: A low-level API gives rather
direct access to the actual MPI API, apart from certain \"reasonable\"
mappings from C to Haskell (e.g. output arguments that are in C
stored via a pointer are in Haskell regular return values). A
high-level API simplifies exchanging arbitrary values that can be
serialized.

Note that the automated builds on
[Hackage](http://hackage.haskell.org) will currently always fail
since no system MPI library is present there. However, builds on
[Stackage](https://www.stackage.org) should succeed -- if not, there
is an error in this package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-mpi-hs-binary

(define-public haskell-9.4-mpi-hs-cereal
  (package
    (name "haskell-9.4-mpi-hs-cereal")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mpi-hs-cereal/mpi-hs-cereal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sdizjk4xpc2hdh71s9ckjhq22appqj1c9s10mwxjgb9vd7bz07b"))))
    (properties `((upstream-name . "mpi-hs-cereal") (hidden? . #f)))
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
                     haskell-9.4-monad-loops)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-mpi-hs)))
    (propagated-inputs (list (@ (gnu packages mpi) mpich)))
    (home-page "https://github.com/eschnett/mpi-hs-cereal#readme")
    (synopsis "MPI bindings for Haskell")
    (description
     "MPI (the [Message Passinag Interface](https://www.mpi-forum.org)) is
a widely used standard for distributed-memory programming on HPC
(High Performance Computing) systems. MPI allows exchanging data
(_messages_) between programs running in parallel. There are several
high-quality open source MPI implementations (e.g. MPICH, MVAPICH,
OpenMPI) as well as a variety of closed-source implementations.
These libraries can typically make use of high-bandwidth low-latency
communication hardware such as InfiniBand.

This library @@mpi-hs@@ provides Haskell bindings for MPI. It is based
on ideas taken from
[haskell-mpi](https://github.com/bjpop/haskell-mpi),
[Boost.MPI](https://www.boost.org/doc/libs/1_64_0/doc/html/mpi.html)
for C++, and [MPI for
Python](https://mpi4py.readthedocs.io/en/stable/).

@@mpi-hs@@ provides two API levels: A low-level API gives rather
direct access to the actual MPI API, apart from certain \"reasonable\"
mappings from C to Haskell (e.g. output arguments that are in C
stored via a pointer are in Haskell regular return values). A
high-level API simplifies exchanging arbitrary values that can be
serialized.

Note that the automated builds on
[Hackage](http://hackage.haskell.org) will currently always fail
since no system MPI library is present there. However, builds on
[Stackage](https://www.stackage.org) should succeed -- if not, there
is an error in this package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.4-mpi-hs-cereal

(define-public haskell-9.4-mysql-simple
  (package
    (name "haskell-9.4-mysql-simple")
    (version "0.4.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mysql-simple/mysql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hwv1hlr65m5l2zrrj5zmvrjz9y2814jy05l17l5jb4j4j5xw3z2"))))
    (properties `((upstream-name . "mysql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-mysql)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-old-locale)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-pcre-light)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/paul-rouse/mysql-simple")
    (synopsis "A mid-level MySQL client library.")
    (description
     "A mid-level client library for the MySQL database, intended to be
fast and easy to use.

/Important licensing note/: This library is BSD-licensed under the
terms of the MySQL FOSS License Exception
<http://www.mysql.com/about/legal/licensing/foss-exception/>.

Since this library links against the GPL-licensed @@mysqlclient@@
library, a non-open-source application that uses it /may/ be
subject to the terms of the GPL.")
    (license license:bsd-3)))

haskell-9.4-mysql-simple

(define-public haskell-9.4-neat-interpolation
  (package
    (name "haskell-9.4-neat-interpolation")
    (version "0.5.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/neat-interpolation/neat-interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "01v5ccv16gw13mjxdxcxnbs6ggzmqh4vwzybzkzqzm40la163aqz"))))
    (properties `((upstream-name . "neat-interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)))
    (home-page "https://github.com/nikita-volkov/neat-interpolation")
    (synopsis "A quasiquoter for neat and simple multiline text interpolation")
    (description
     "A quasiquoter for producing Text values with support for
a simple interpolation of input values.
It removes the excessive indentation from the input and
accurately manages the indentation of all lines of the interpolated variables.")
    (license license:expat)))

haskell-9.4-neat-interpolation

(define-public haskell-9.4-netlib-carray
  (package
    (name "haskell-9.4-netlib-carray")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/netlib-carray/netlib-carray-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rh4m4xxwm8n0577khqa2cx74hnwmgz94phq2rwhsdppg6dd2xx5"))))
    (properties `((upstream-name . "netlib-carray") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18nniq616c9l65g6vxhs6w6yi9rcp8s8vid2v9v0r96i7x1a5g14")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-carray)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-netlib-ffi)))
    (home-page "http://hub.darcs.net/thielema/netlib-carray/")
    (synopsis "Helper modules for CArray wrappers to BLAS and LAPACK")
    (description
     "Netlib is a collection of packages for efficient numeric linear algebra.
Most prominent parts of Netlib are BLAS and LAPACK.
These packages contain functions for matrix computations,
solution of simultaneous linear equations and eigenvalue problems.

This package provides definitions shared by
the packages @@blas-carray@@ and @@lapack-carray@@.")
    (license license:bsd-3)))

haskell-9.4-netlib-carray

(define-public haskell-9.4-network-byte-order
  (package
    (name "haskell-9.4-network-byte-order")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-byte-order/network-byte-order-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pnwcg13k4qw82n0zc1xibyc24sc77y79j5a62pqdmjrnz4wrc7j"))))
    (properties `((upstream-name . "network-byte-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0fpyfd1adg9fr7w6afxkx306c0kaz3ji3x78sl29v9j3mh4vdn13")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)))
    (home-page "https://hackage.haskell.org/package/network-byte-order")
    (synopsis "Network byte order utilities")
    (description "Peek and poke functions for network byte order.")
    (license license:bsd-3)))

haskell-9.4-network-byte-order

(define-public haskell-9.4-network-multicast
  (package
    (name "haskell-9.4-network-multicast")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-multicast/network-multicast-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0whvi0pbwjy6dbwfdf9rv1j3yr3lcmfp3q7a8pwq63g537l4l2l3"))))
    (properties `((upstream-name . "network-multicast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-network-bsd)))
    (home-page "https://hackage.haskell.org/package/network-multicast")
    (synopsis "Simple multicast library")
    (description "The \"Network.Multicast\" module is for sending
UDP datagrams over multicast (class D) addresses.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-network-multicast

(define-public haskell-9.4-nix-derivation
  (package
    (name "haskell-9.4-nix-derivation")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nix-derivation/nix-derivation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0248xbxq4889hc3qp9z0yr21f97j3lxrjjx2isxdf8ah4hpidzy7"))))
    (properties `((upstream-name . "nix-derivation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1bvrnaw0qpiaxdnwvdf7w1ybds4b5c5z8wfizla5pby2lnf8cv0x")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-pretty-show)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://hackage.haskell.org/package/nix-derivation")
    (synopsis "Parse and render *.drv files")
    (description
     "Use this package to parse and render Nix derivation files (i.e. *.drv files)

This package also provides a @@pretty-derivation@@ executable which reads a
derivation on standard input and outputs the pretty-printed Haskell
representation on standard output")
    (license license:bsd-3)))

haskell-9.4-nix-derivation

(define-public haskell-9.4-nonempty-vector
  (package
    (name "haskell-9.4-nonempty-vector")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonempty-vector/nonempty-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w6fn8dinf8lcbhr5797i5kyixpasylpwn97ljmkjc6n3ad1b21y"))))
    (properties `((upstream-name . "nonempty-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "18w57f8sdix71a27gwbifw7hmg34lms22c99gp7i7j7g154f3cn3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/emilypi/nonempty-vector")
    (synopsis "Non-empty vectors")
    (description "Performant, non-empty mutable and immutable vectors")
    (license license:bsd-3)))

haskell-9.4-nonempty-vector

(define-public haskell-9.4-nonempty-zipper
  (package
    (name "haskell-9.4-nonempty-zipper")
    (version "1.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonempty-zipper/nonempty-zipper-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19r7lxjwiscg5ml7l2bx6sizb2rlbxmv81shqwnf8yjbnmpibmkp"))))
    (properties `((upstream-name . "nonempty-zipper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)))
    (home-page "https://github.com/freckle/nonempty-zipper#readme")
    (synopsis "A non-empty comonadic list zipper")
    (description "A non-empty comonadic list zipper")
    (license license:expat)))

haskell-9.4-nonempty-zipper

(define-public haskell-9.4-nonemptymap
  (package
    (name "haskell-9.4-nonemptymap")
    (version "0.0.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/nonemptymap/nonemptymap-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1pzs51kmsyarv62qqbskhw2xlkjp74bwcgs9a8ri1jk96m64rg94"))))
    (properties `((upstream-name . "nonemptymap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "https://github.com/ChristopherDavenport/nonemptymap#readme")
    (synopsis "A NonEmptyMap Implementation")
    (description
     "This package intends to allow general use of a NonEmptyMap
which is very beneficial as sometimes you want the functionality
this provides.")
    (license license:bsd-3)))

haskell-9.4-nonemptymap

(define-public haskell-9.4-nsis
  (package
    (name "haskell-9.4-nsis")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nsis/nsis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12vp44g56x6lkagh9qm5rf0hfrn7kqk4jxsswlml60iji7r8x9mx"))))
    (properties `((upstream-name . "nsis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-uniplate)))
    (home-page "https://github.com/ndmitchell/nsis#readme")
    (synopsis "DSL for producing Windows Installer using NSIS.")
    (description
     "NSIS (Nullsoft Scriptable Install System, <http://nsis.sourceforge.net/>) is a tool that allows programmers
to create installers for Windows.
This library provides an alternative syntax for NSIS scripts, as an embedded Haskell language, removing much
of the hard work in developing an install script. Simple NSIS installers should look mostly the same, complex ones should
be significantly more maintainable.")
    (license license:bsd-3)))

haskell-9.4-nsis

(define-public haskell-9.4-openpgp-asciiarmor
  (package
    (name "haskell-9.4-openpgp-asciiarmor")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/openpgp-asciiarmor/openpgp-asciiarmor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1g99llkpqp7r01xlbq9m9nrii33yagiy1ah4fgdcmjnkmqg64hjk"))))
    (properties `((upstream-name . "openpgp-asciiarmor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nm5c9x4nzqkklk7a8gkh3v0w08anz17y00h3av6ll260m6m8szy")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "http://floss.scru.org/openpgp-asciiarmor")
    (synopsis "OpenPGP (RFC4880) ASCII Armor codec")
    (description "OpenPGP (RFC4880) ASCII Armor codec")
    (license license:expat)))

haskell-9.4-openpgp-asciiarmor

(define-public haskell-9.4-optics-extra
  (package
    (name "haskell-9.4-optics-extra")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-extra/optics-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hfa5yb7l3l310lfxkii13fjzb69g619agadc5a86i734nisf8vy"))))
    (properties `((upstream-name . "optics-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0bpr1bkb7mmww028n8ikwa0qhdl7ybxpb9s887dlp3dvxr5iq8nq")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-optics-core)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://hackage.haskell.org/package/optics-extra")
    (synopsis "Extra utilities and instances for optics-core")
    (description
     "This package provides extra definitions and instances that extend the
@@<https://hackage.haskell.org/package/optics-core optics-core>@@ package,
without incurring too many dependencies.  See the
@@<https://hackage.haskell.org/package/optics optics>@@ package for more
documentation.")
    (license license:bsd-3)))

haskell-9.4-optics-extra

(define-public haskell-9.4-pcf-font
  (package
    (name "haskell-9.4-pcf-font")
    (version "0.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcf-font/pcf-font-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gzlbdyhcrf7ap6zjd0fvkfwyakvb805198hpb9a86hrs5bih9mj"))))
    (properties `((upstream-name . "pcf-font") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "https://github.com/michael-swan/pcf-font")
    (synopsis "PCF font parsing and rendering library.")
    (description
     "pcf-font is a library for parsing and rendering X11 PCF fonts.")
    (license license:bsd-3)))

haskell-9.4-pcf-font

(define-public haskell-9.4-pcre-utils
  (package
    (name "haskell-9.4-pcre-utils")
    (version "0.1.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-utils/pcre-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1plawzvgxww9m0vjawmkf59bfxzxf0l93g7hfwyqjq4hcc8pwq2l"))))
    (properties `((upstream-name . "pcre-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/bartavelle/pcre-utils")
    (synopsis "Perl-like substitute and split for PCRE regexps.")
    (description
     "This package introduces split and replace like functions using PCRE regexps.")
    (license license:bsd-3)))

haskell-9.4-pcre-utils

(define-public haskell-9.4-pgp-wordlist
  (package
    (name "haskell-9.4-pgp-wordlist")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pgp-wordlist/pgp-wordlist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15g6qh0fb7kjj3l0w8cama7cxgnhnhybw760md9yy7cqfq15cfzg"))))
    (properties `((upstream-name . "pgp-wordlist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/quchen/pgp-wordlist")
    (synopsis "Translate between binary data and a human-readable
collection of words.")
    (description "Translate between binary data and a human-readable
collection of words.

The PGP Word List consists of two phonetic alphabets, each
with one word per possible byte value. A string of bytes
is translated with these alphabets, alternating between
them at each byte.

The PGP words corresponding to the bytes @@5B 1D CA 6E@@
are \"erase breakaway spellbind headwaters\", for example.

For further information, see
<http://en.wikipedia.org/wiki/PGP_word_list Wikipedia>.")
    (license license:bsd-3)))

haskell-9.4-pgp-wordlist

(define-public haskell-9.4-pipes-attoparsec
  (package
    (name "haskell-9.4-pipes-attoparsec")
    (version "0.5.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-attoparsec/pipes-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zfaj6jxmld95xi4yxyrj1wl31dqfw464ffyrm54rg4x513b97py"))))
    (properties `((upstream-name . "pipes-attoparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-mmorph)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-pipes)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-pipes-parse)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/k0001/pipes-attoparsec")
    (synopsis "Attoparsec and Pipes integration.")
    (description
     "Utilities to run Attoparsec parsers on Pipes input streams.

See the @@changelog.md@@ file in the source distribution to learn about any
important changes between version.")
    (license license:bsd-3)))

haskell-9.4-pipes-attoparsec

(define-public haskell-9.4-prettyprinter-convert-ansi-wl-pprint
  (package
    (name "haskell-9.4-prettyprinter-convert-ansi-wl-pprint")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-convert-ansi-wl-pprint/prettyprinter-convert-ansi-wl-pprint-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kfrwnaldx0cyr3mwx3ys14bl58nfjpxkzrfi6152gvfh8ly44c6"))))
    (properties `((upstream-name . "prettyprinter-convert-ansi-wl-pprint")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-prettyprinter)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-prettyprinter-ansi-terminal)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis
     "Converter from »ansi-wl-pprint« documents to »prettyprinter«-based ones.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-9.4-prettyprinter-convert-ansi-wl-pprint

(define-public haskell-9.4-primitive-unlifted
  (package
    (name "haskell-9.4-primitive-unlifted")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/primitive-unlifted/primitive-unlifted-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gilzgclpvz200sybw86nmdm7084nrklscq48cs36qqlgcd0wcwb"))))
    (properties `((upstream-name . "primitive-unlifted") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y3zdwbs1fdzspj1k95jyjrhm7za38gb6ada031bp02ifxbvsvsf")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-primitive/primitive-unlifted")
    (synopsis "Primitive GHC types with unlifted types inside")
    (description "Primitive GHC types with unlifted types inside. There used
to be a module named `Data.Primitive.UnliftedArray` in the
`primitive` library. However, the techniques it used were
unsound in the presence of certain FFI calls. This library
a successor to that module.")
    (license license:bsd-3)))

haskell-9.4-primitive-unlifted

(define-public haskell-9.4-proto-lens-runtime
  (package
    (name "haskell-9.4-proto-lens-runtime")
    (version "0.7.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-runtime/proto-lens-runtime-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fb64xcrgd7v2l4hqqcs0riszklkxh516l7n4p9lwwqmagmgz36y"))))
    (properties `((upstream-name . "proto-lens-runtime") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-lens-family)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-proto-lens)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "")
    (description
     "Modules that are needed by the Haskell files generated by proto-lens-protoc. For forwards compatibility, we reexport them as new module names so that other packages don't accidentally write non-generated code that relies on these modules being reexported by this package.")
    (license license:bsd-3)))

haskell-9.4-proto-lens-runtime

(define-public haskell-9.4-pureMD5
  (package
    (name "haskell-9.4-pureMD5")
    (version "2.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pureMD5/pureMD5-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qwkvxwi9wh6knn69rg2hvc8ngmv1if77kmpcnp0xqr0l30fwavq"))))
    (properties `((upstream-name . "pureMD5") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-crypto-api)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-crypto-api-tests)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-pretty-hex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/pureMD5")
    (synopsis
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.")
    (description
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports
the crypto-api class interface.")
    (license license:bsd-3)))

haskell-9.4-pureMD5

(define-public haskell-9.4-quickcheck-instances
  (package
    (name "haskell-9.4-quickcheck-instances")
    (version "0.3.28")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-instances/quickcheck-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jycijv7gaj6qrkp219nllrdv9zd0ifp0mb0rch430fm95xin4f4"))))
    (properties `((upstream-name . "quickcheck-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-OneTuple)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-case-insensitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-data-fix)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-old-time)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-scientific)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-splitmix)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-strict)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-short)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-time-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-uuid-types)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskellari/qc-instances")
    (synopsis "Common quickcheck instances")
    (description
     "QuickCheck instances.

The goal is to supply QuickCheck instances for
types provided by the Haskell Platform.

Since all of these instances are provided as
orphans, I recommend that you do not use this library
within another library module, so that you don't
impose these instances on down-stream consumers of
your code.

For information on writing a test-suite with Cabal
see <https://www.haskell.org/cabal/users-guide/developing-packages.html#test-suites>")
    (license license:bsd-3)))

haskell-9.4-quickcheck-instances

(define-public haskell-9.4-quickcheck-special
  (package
    (name "haskell-9.4-quickcheck-special")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-special/quickcheck-special-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1dhwgy1jwglp4y3nbysr1i182415aibqlcsrvwxn2c5x162qjwwm"))))
    (properties `((upstream-name . "quickcheck-special") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1whwmij115vw0qwkzlkc4z4yhj7iwwqjhf5aaxn5np0gh2gzihb3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-special-values)))
    (home-page "https://github.com/minad/quickcheck-special#readme")
    (synopsis
     "Edge cases and special values for QuickCheck Arbitrary instances")
    (description
     "The standard Arbitrary instances of QuickCheck don't generate special values. This is fixed by this package which provides the newtype Special with an Arbitrary instance. The special values are given by the SpecialValues typeclass.")
    (license license:expat)))

haskell-9.4-quickcheck-special

(define-public haskell-9.4-ranged-list
  (package
    (name "haskell-9.4-ranged-list")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ranged-list/ranged-list-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0higq2v525f0i4fwckcq16lf0ig85hlkhiqz0cc3ipanwap8wr6n"))))
    (properties `((upstream-name . "ranged-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-typecheck-plugin-nat-simple)))
    (home-page "https://github.com/YoshikuniJujo/ranged-list#readme")
    (synopsis
     "The list like structure whose length or range of length can be specified")
    (description
     "Please see the README on GitHub at <https://github.com/YoshikuniJujo/ranged-list#readme>")
    (license license:bsd-3)))

haskell-9.4-ranged-list

(define-public haskell-9.4-rdf
  (package
    (name "haskell-9.4-rdf")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rdf/rdf-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0ghnmqzb0874fwhwv301n8scdxkq8x7b68fbwiqsqiym45ms33sf"))))
    (properties `((upstream-name . "rdf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-fgl)))
    (home-page "https://github.com/traviswhitaker/rdf")
    (synopsis "Representation and Incremental Processing of RDF Data")
    (description
     "Data structures, parsers, and encoders for RDF data sets based on the
RDF 1.1 abstract syntax and RFC 3987. The interface is intended to support
incremental graph processing in constant space.")
    (license license:expat)))

haskell-9.4-rdf

(define-public haskell-9.4-reactive-banana
  (package
    (name "haskell-9.4-reactive-banana")
    (version "1.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reactive-banana/reactive-banana-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06cmr70cbvnvm69lnj2hkxfmznqj97rxs7y6baxpjkyhm0lsv1dl"))))
    (properties `((upstream-name . "reactive-banana") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-pqueue)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-psqueues)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vault)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://wiki.haskell.org/Reactive-banana")
    (synopsis "Library for functional reactive programming (FRP).")
    (description
     "Reactive-banana is a library for Functional Reactive Programming (FRP).

FRP offers an elegant and concise way to express interactive programs such as graphical user interfaces, animations, computer music or robot controllers. It promises to avoid the spaghetti code that is all too common in traditional approaches to GUI programming.

See the project homepage <http://wiki.haskell.org/Reactive-banana>
for more detailed documentation and examples.

/Stability forecast./
This is a stable library, though minor API changes are still likely.
It features an efficient, push-driven implementation
and has seen some optimization work.

/API guide./
Start with the \"Reactive.Banana\" module.")
    (license license:bsd-3)))

haskell-9.4-reactive-banana

(define-public haskell-9.4-read-env-var
  (package
    (name "haskell-9.4-read-env-var")
    (version "1.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/read-env-var/read-env-var-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p5pw1y6wcq03bdixircf6bb9qjq2aci6bvpmqwfi360dwbwiwq3"))))
    (properties `((upstream-name . "read-env-var") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005) haskell-9.4-Glob)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)))
    (home-page "https://github.com/cdepillabout/read-env-var#readme")
    (synopsis "Functions for safely reading environment variables.")
    (description "Please see README.md")
    (license license:bsd-3)))

haskell-9.4-read-env-var

(define-public haskell-9.4-rec-def
  (package
    (name "haskell-9.4-rec-def")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rec-def/rec-def-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0dfw86ws00gsdnzb238pmr4i2lyfp405lp70nbak45qq2cbz0zj8"))))
    (properties `((upstream-name . "rec-def") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0kg2m81b4q73m8rysnqkmviiph1vf68f2dhyzawi9b2mj22q45fz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-concurrency)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-dejafu)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-dejafu)))
    (home-page "https://github.com/nomeata/haskell-rec-def")
    (synopsis "Recursively defined values")
    (description
     "This library provides safe APIs that allow you to define and calculate
values recursively, and still get a result out:

> let s1 = RS.insert 23 s2
>     s2 = RS.insert 42 s1
> in RS.get s1

will not loop, but rather produces the set @@fromList [23,42]@@

See \"Data.Recursive.Examples\" for more examples, or just browse the modules

* \"Data.Recursive.Bool\"
* \"Data.Recursive.Set\"
* \"Data.Recursive.Map\"
* \"Data.Recursive.DualBool\"

More APIs (e.g. for maps or 'Natural') can be added over time, as need and good
use-cases arise.

For the (unsafe) building blocks to build such APIs, see

* \"Data.Propagator.Purify\" for the wrapper that turns an IO-implemented
propagator into a pure data structure
* \"Data.Propagator.Naive\" for a naive propagator implementation
* \"Data.Propagator.P2\" for a smarter propagator implementation for
the two-point lattice, i.e. 'Bool'

The library is not (yet) focussed on performance, and uses a rather naive
propagator implementation. Expect this to be slow if you have large graphs.
This may be improved in the future (e.g. by propagating only deltas, and
accumulating deltas before applying a function), but for now the focus is on
foremost providing this capability in the first place and getting the
user-facing API right.")
    (license license:bsd-2)))

haskell-9.4-rec-def

(define-public haskell-9.4-reducers
  (package
    (name "haskell-9.4-reducers")
    (version "3.12.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reducers/reducers-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hsycdir52jdijnnvc77jj971fjrrc722v952wr62ivrvx2zarn0"))))
    (properties `((upstream-name . "reducers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "00xd4pyg0p4z0alyg1zy193jc3smq50y73dkafiphd73rzszxy9g")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-fingertree)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://github.com/ekmett/reducers/")
    (synopsis
     "Semigroups, specialized containers and a general map/reduce framework")
    (description
     "Semigroups, specialized containers and a general map/reduce framework.")
    (license license:bsd-3)))

haskell-9.4-reducers

(define-public haskell-9.4-regex-with-pcre
  (package
    (name "haskell-9.4-regex-with-pcre")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-with-pcre/regex-with-pcre-"
                    version ".tar.gz"))
              (sha256
               (base32
                "00x90kj8xc9pnnzryx45rnvfh0psya6kc174y7zx43jgvbz29icy"))))
    (properties `((upstream-name . "regex-with-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-compat)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-regex)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-regex-base)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)))
    (home-page "http://regex.uk")
    (synopsis "Toolkit for regex-base")
    (description "A regular expression toolkit for regex-base with
compile-time checking of RE syntax, data types for
matches and captures, a text replacement toolkit,
portable options, high-level AWK-like tools
for building text processing apps, regular expression
macros with parsers and test bench, comprehensive
documentation, tutorials and copious examples.")
    (license license:bsd-3)))

haskell-9.4-regex-with-pcre

(define-public haskell-9.4-replace-megaparsec
  (package
    (name "haskell-9.4-replace-megaparsec")
    (version "1.4.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/replace-megaparsec/replace-megaparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n9ik81hd5xgcbzzjrdqxp34q4qg6nklbg36124amdr14id03ylg"))))
    (properties `((upstream-name . "replace-megaparsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)))
    (home-page "https://github.com/jamesdbrock/replace-megaparsec")
    (synopsis
     "Find, replace, and split string patterns with Megaparsec parsers (instead of regex)")
    (description
     "Find text patterns, replace the patterns, split on the patterns. Use
Megaparsec monadic parsers instead of regular expressions for pattern matching.")
    (license license:bsd-2)))

haskell-9.4-replace-megaparsec

(define-public haskell-9.4-sbv
  (package
    (name "haskell-9.4-sbv")
    (version "9.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sbv/sbv-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0qmjdklrjcvyfkqbwafs79arjg46icnsbq018j0c6aqzhl94zknf"))))
    (properties `((upstream-name . "sbv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-libBF)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-uniplate)))
    (home-page "http://leventerkok.github.io/sbv/")
    (synopsis
     "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.")
    (description
     "Express properties about Haskell programs and automatically prove them using SMT
(Satisfiability Modulo Theories) solvers.

For details, please see: <http://leventerkok.github.io/sbv/>")
    (license license:bsd-3)))

haskell-9.4-sbv

(define-public haskell-9.4-semialign
  (package
    (name "haskell-9.4-semialign")
    (version "1.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semialign/semialign-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ci1jpp37p1lzyjxc1bljd6zgg407qmkl9s36b50qjxf85q6j06r"))))
    (properties `((upstream-name . "semialign") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsemigroupoids")
       #:cabal-revision
       ("3" "0dbcdnksik508i12arh3s6bis6779lx5f1df0jkc0bp797inhd7f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-indexed-traversable-instances)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-these)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-unordered-containers)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "Align and Zip type-classes from the common Semialign ancestor.")
    (description
     "The major use of @@These@@ of this is provided by the @@align@@ member of
@@Semialign@@ class, representing a generalized notion of \"zipping with padding\"
that combines structures without truncating to the size of the smaller input.

It turns out that @@zip@@ operation fits well the @@Semialign@@ class,
forming lattice-like structure.")
    (license license:bsd-3)))

haskell-9.4-semialign

(define-public haskell-9.4-semigroupoid-extras
  (package
    (name "haskell-9.4-semigroupoid-extras")
    (version "5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroupoid-extras/semigroupoid-extras-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ciq1jnc0d9d8jph9103v04vphiz7xqa69a8f4dmmcf3bjsk6bhh"))))
    (properties `((upstream-name . "semigroupoid-extras") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fprofunctors")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-profunctors)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)))
    (home-page "http://github.com/ekmett/semigroupoid-extras")
    (synopsis "Semigroupoids that depend on PolyKinds")
    (description "Semigroupoids that depend on PolyKinds")
    (license license:bsd-3)))

haskell-9.4-semigroupoid-extras

(define-public haskell-9.4-semver
  (package
    (name "haskell-9.4-semver")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/semver/semver-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hgn3wd1wv3y1723kvd9clj72z65f6m28yf75mxl1zjfd0kf6ivw"))))
    (properties `((upstream-name . "semver") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "13c692s2fbn6xygw70aglj84a8hq549gcj1p40g11j77w68p9xx4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)))
    (home-page "https://github.com/brendanhay/semver")
    (synopsis
     "Representation, manipulation, and de/serialisation of Semantic Versions.")
    (description
     "Representation, manipulation, and de/serialisation of a Version type
following the Semantic Versioning specification.

For more information see: <http://semver.org>")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-9.4-semver

(define-public haskell-9.4-simple-media-timestamp-attoparsec
  (package
    (name "haskell-9.4-simple-media-timestamp-attoparsec")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-media-timestamp-attoparsec/simple-media-timestamp-attoparsec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zkwb24blzmhb6y9yy2cjsgsv1l756wgpcp90drb5ga73qix0k5g"))))
    (properties `((upstream-name . "simple-media-timestamp-attoparsec")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-simple-media-timestamp)))
    (home-page
     "https://hackage.haskell.org/package/simple-media-timestamp-attoparsec")
    (synopsis "Attoparsec parser for simple-media-timestamp.")
    (description "Attoparsec parser for simple-media-timestamp.")
    (license license:expat)))

haskell-9.4-simple-media-timestamp-attoparsec

(define-public haskell-9.4-smallcheck
  (package
    (name "haskell-9.4-smallcheck")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smallcheck/smallcheck-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sf87zjlrgjw7q6a0499g2ywx66zvpv6rg6953fjc18fnl8rs7z4"))))
    (properties `((upstream-name . "smallcheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "141lvb58hy94gywchaaf2dbh1dncnj951q5l6xkg1drvm94dvj1b")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-logict)))
    (home-page "https://github.com/Bodigrim/smallcheck")
    (synopsis "A property-based testing library")
    (description
     "SmallCheck is a testing library that allows to verify properties
for all test cases up to some depth. The test cases are generated
automatically by SmallCheck.")
    (license license:bsd-3)))

haskell-9.4-smallcheck

(define-public haskell-9.4-sqlite-simple
  (package
    (name "haskell-9.4-sqlite-simple")
    (version "0.4.18.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sqlite-simple/sqlite-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14axfc9ii08g7yx3j9n5hrfrsmab3pjv7n0cshcg4a2lvnkv25fw"))))
    (properties `((upstream-name . "sqlite-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-Only)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-blaze-builder)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-blaze-textual)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-direct-sqlite)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)))
    (home-page "http://github.com/nurpax/sqlite-simple")
    (synopsis "Mid-Level SQLite client library")
    (description
     "Mid-level SQLite client library, based on postgresql-simple.

Main documentation (with examples): <docs/Database-SQLite-Simple.html Database.SQLite.Simple>

You can view the project page at <http://github.com/nurpax/sqlite-simple>
for more information.")
    (license license:bsd-3)))

haskell-9.4-sqlite-simple

(define-public haskell-9.4-streamt
  (package
    (name "haskell-9.4-streamt")
    (version "0.5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/streamt/streamt-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0adbn5kh2wqgvwzjgrhcd94abch7if6qz26ihpbm4igwbmwirzgw"))))
    (properties `((upstream-name . "streamt") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-logict)))
    (home-page "http://github.com/davidar/streamt")
    (synopsis "Simple, Fair and Terminating Backtracking Monad Transformer")
    (description "This Haskell library provides an implementation of the
MonadPlus type class that enumerates results of a
non-deterministic computation by interleaving
subcomputations in a way that has usually much better
memory performance than other strategies with the same
termination properties.")
    (license license:bsd-3)))

haskell-9.4-streamt

(define-public haskell-9.4-synthesizer-core
  (package
    (name "haskell-9.4-synthesizer-core")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/synthesizer-core/synthesizer-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a12qmr7fdlz5mbrki9nd1fl07670hll3wrdpp1apvf6zd36h7mn"))))
    (properties `((upstream-name . "synthesizer-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-foptimizeadvanced")
       #:cabal-revision
       ("2" "064a3xlqwl8v6q29djjcm0wx13wy1qw3p44v546amjbprk93kh1r")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-event-list)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-explicit-exception)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-empty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-non-negative)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-numeric-quest)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-sample-frame-np)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-sox)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-storable-record)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-storable-tuple)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-storablevector)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Synthesizer")
    (synopsis "Audio signal processing coded in Haskell: Low level part")
    (description
     "Low level audio signal processing
used by the other synthesizer packages.
The routines can be really fast
due to StorableVector, Stream-like list type and aggressive inlining.
For an interface to Haskore see <http://code.haskell.org/haskore/revised/synthesizer/>.
For introductory examples see \"Synthesizer.Plain.Tutorial\"
and \"Synthesizer.Generic.Tutorial\".

Functions:
Oscillators, Noise generators, Frequency filters,
Fast Fourier transform for computation of frequency spectrum")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-synthesizer-core

(define-public haskell-9.4-tagged-transformer
  (package
    (name "haskell-9.4-tagged-transformer")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tagged-transformer/tagged-transformer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10wlwqxzm1xdyzxl6xyfsrb40zmvh7g0y3w0a69b1lw2rp6v4vyy"))))
    (properties `((upstream-name . "tagged-transformer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01x7c98ag7wnmgyz7zkzz5109fp15v03lbkybp87x1zxlwh1rqg1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-reflection)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-semigroupoids)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "http://github.com/ekmett/tagged-transformer")
    (synopsis "Monad transformer carrying an extra phantom type tag")
    (description
     "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments")
    (license license:bsd-3)))

haskell-9.4-tagged-transformer

(define-public haskell-9.4-text-builder-linear
  (package
    (name "haskell-9.4-text-builder-linear")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-builder-linear/text-builder-linear-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0smhph72l0wzri8rn30sq46f53ghs6srib34w8m7350rksdwm3fc"))))
    (properties `((upstream-name . "text-builder-linear") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-quote-quot)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/linear-builder")
    (synopsis "Builder for Text based on linear types")
    (description
     "Strict Text builder, which hides mutable buffer behind linear types
and takes amortized linear time.")
    (license license:bsd-3)))

haskell-9.4-text-builder-linear

(define-public haskell-9.4-text-ldap
  (package
    (name "haskell-9.4-text-ldap")
    (version "0.1.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-ldap/text-ldap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wb5x5q099i1phgwzhi4rs3qrrimsrfg6cnxah33sdzszax7dqnn"))))
    (properties `((upstream-name . "text-ldap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-memory)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-simple)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)))
    (home-page "https://hackage.haskell.org/package/text-ldap")
    (synopsis "Parser and Printer for LDAP text data stream")
    (description "This package contains Parser and Printer for
LDAP text data stream like OpenLDAP backup LDIF.")
    (license license:bsd-3)))

haskell-9.4-text-ldap

(define-public haskell-9.4-text-printer
  (package
    (name "haskell-9.4-text-printer")
    (version "0.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-printer/text-printer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qzmgqcr1bmz34h24gvnfaxaqr3c7z727xv676sd1x51y2qjj2dl"))))
    (properties `((upstream-name . "text-printer") (hidden? . #f)))
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
                     haskell-9.4-test-framework)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-text-latin1)))
    (home-page "https://github.com/mvv/text-printer")
    (synopsis "Abstract interface for text builders/printers.")
    (description
     "This package provides an interface for injecting text into monoids such as
builders and printers.")
    (license license:bsd-3)))

haskell-9.4-text-printer

(define-public haskell-9.4-th-reify-many
  (package
    (name "haskell-9.4-th-reify-many")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-reify-many/th-reify-many-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19g4gc1q3zxbylmvrgk3dqjzychq2k02i7fwvs3vhbrg4ihhw9cx"))))
    (properties `((upstream-name . "th-reify-many") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-th-expand-syns)))
    (home-page "http://github.com/mgsloan/th-reify-many")
    (synopsis "Recurseively reify template haskell datatype info")
    (description
     "@@th-reify-many@@ provides functions for recursively reifying top
level declarations.  The main intended use case is for enumerating
the names of datatypes reachable from an initial datatype, and
passing these names to some function which generates instances.")
    (license license:bsd-3)))

haskell-9.4-th-reify-many

(define-public haskell-9.4-tidal
  (package
    (name "haskell-9.4-tidal")
    (version "1.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tidal/tidal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p3k65rgxjv701nk30jqf614bk1zmblyq0vlishzza2cdld5rhbc"))))
    (properties `((upstream-name . "tidal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0lxx3zb26winf19wl44bs4bqrac1r4yf1j5i77bhnqgwrap426j1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-colour)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-hosc)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-microspec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tidal-link)))
    (home-page "http://tidalcycles.org/")
    (synopsis "Pattern language for improvised music")
    (description
     "Tidal is a domain specific language for live coding patterns.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-tidal

(define-public haskell-9.4-timer-wheel
  (package
    (name "haskell-9.4-timer-wheel")
    (version "0.4.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/timer-wheel/timer-wheel-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h8g9mgp7hcmksvgwwx2n1p9mavdsykqlavpdms7xbh0kgsb445z"))))
    (properties `((upstream-name . "timer-wheel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-atomic-primops)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-ki)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-psqueues)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/timer-wheel")
    (synopsis "A timer wheel")
    (description
     "This library provides a timer wheel data structure for

* (Almost) /O(1)/ registering @@IO@@ actions to fire after a given amount of time
* /O(1)/ canceling registered actions

It is similar to @@TimerManager@@ from @@GHC.Event@@, but supports recurring
timers, can scale to handle many more registered timers.
")
    (license license:bsd-3)))

haskell-9.4-timer-wheel

(define-public haskell-9.4-type-errors
  (package
    (name "haskell-9.4-type-errors")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-errors/type-errors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ds1y5gjjgd2g3dsn8bfcviy6zv8nvmyaifysmb7ckggdfg3cdym"))))
    (properties `((upstream-name . "type-errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-doctest)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-first-class-families)
                  (@ (gnu packages stackage ghc-9.4 stage006) haskell-9.4-syb)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
    (home-page "https://github.com/isovector/type-errors#readme")
    (synopsis "Tools for writing better type errors")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/type-errors#readme>")
    (license license:bsd-3)))

haskell-9.4-type-errors

(define-public haskell-9.4-unification-fd
  (package
    (name "haskell-9.4-unification-fd")
    (version "0.11.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unification-fd/unification-fd-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1lyx3g10llkr7vl7c2j15ddlqrkz2r684d1laza7nvq97amrqnqv"))))
    (properties `((upstream-name . "unification-fd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-logict)))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "Simple generic unification algorithms.")
    (description
     "Generic functions for single-sorted first-order structural
unification (think of programming in Prolog, or of the metavariables
in type inference).")
    (license license:bsd-3)))

haskell-9.4-unification-fd

(define-public haskell-9.4-vector-bytes-instances
  (package
    (name "haskell-9.4-vector-bytes-instances")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/vector-bytes-instances/vector-bytes-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0i4cxgm984qs5ldp1x7m9blxh8wd5y8acy2ic8kpgaak8pzycrkn"))))
    (properties `((upstream-name . "vector-bytes-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-bytes)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/k0001/vector-bytes-instances")
    (synopsis
     "Serial (from the bytes package) for Vector (from the vector package)")
    (description
     "Serial (from the bytes package) for Vector (from the vector package)

Based on the original BSD3-licensed work by Don Stewart in the
vector-binary-instances library.")
    (license license:bsd-3)))

haskell-9.4-vector-bytes-instances

(define-public haskell-9.4-versions
  (package
    (name "haskell-9.4-versions")
    (version "5.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/versions/versions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zny1kkk42nxwsbjfg87kwgcz4amjbihzqqpwmr3vcwqgx06lx19"))))
    (properties `((upstream-name . "versions") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-megaparsec)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-microlens)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-parser-combinators)
                  (@ (gnu packages stackage ghc-9.4 stage004)
                     haskell-9.4-tasty)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fosskers/versions")
    (synopsis "Types and parsers for software version numbers.")
    (description
     "A library for parsing and comparing software version numbers. We like to give
version numbers to our software in a myriad of ways. Some ways follow strict
guidelines for incrementing and comparison. Some follow conventional wisdom
and are generally self-consistent. Some are just plain asinine. This library
provides a means of parsing and comparing /any/ style of versioning, be it a
nice Semantic Version like this:

> 1.2.3-r1+git123

...or a monstrosity like this:

> 2:10.2+0.0093r3+1-1

Please switch to <http://semver.org Semantic Versioning> if you aren't
currently using it. It provides consistency in version incrementing and has
the best constraints on comparisons.

This library implements version @@2.0.0@@ of the SemVer spec.")
    (license license:bsd-3)))

haskell-9.4-versions

(define-public haskell-9.4-vivid
  (package
    (name "haskell-9.4-vivid")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vivid/vivid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p4x6q2ks259xzigj31f8bz3562k07dzj77a9bnhl934sl85hz6q"))))
    (properties `((upstream-name . "vivid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-MonadRandom)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-cereal)
                  (@ (gnu packages stackage ghc-9.4 stage005)
                     haskell-9.4-hashable)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-network)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-random-shuffle)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-vivid-osc)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-vivid-supercollider)))
    (home-page "https://hackage.haskell.org/package/vivid")
    (synopsis "Sound synthesis with SuperCollider")
    (description
     "Music and sound synthesis with SuperCollider.

Example usage (after installing and booting SuperCollider):

@@
&#123;&#45;\\# LANGUAGE DataKinds, ExtendedDefaultRules \\#&#45;&#125;
@@

> import Vivid
>
> playSong :: VividAction m => m ()
> playSong = do
>    fork $ do
>       s0 <- synth theSound (36 ::I \"note\")
>       wait 1
>       free s0
>    s1 <- synth theSound (60 ::I \"note\")
>    forM_ [62,66,64] $ \\note -> do
>       wait (1/4)
>       set s1 (note ::I \"note\")
>    wait (1/4)
>    free s1
>
> theSound :: SynthDef '[\"note\"]
> theSound = sd (0 ::I \"note\") $ do
>    wobble <- sinOsc (freq_ 5) ? KR ~* 10 ~+ 10
>    s <- 0.1 ~* sinOsc (freq_ $ midiCPS (V::V \"note\") ~+ wobble)
>    out 0 [s,s]
>
> main :: IO ()
> main = do
>    putStrLn \"Simplest:\"
>    playSong
>
>    putStrLn \"With precise timing:\"
>    doScheduledIn 0.1 playSong
>    wait 1
>
>    putStrLn \"Written to a file, non-realtime synthesis:\"
>    putStrLn \"(Need to quit the running server for NRT)\"
>    quitSCServer
>    writeNRT \"song.wav\" playSong")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-vivid

(define-public haskell-9.4-wcwidth
  (package
    (name "haskell-9.4-wcwidth")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/wcwidth/wcwidth-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n1fq7v64b59ajf5g50iqj9sa34wm7s2j3viay0kxpmvlcv8gipz"))))
    (properties `((upstream-name . "wcwidth") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplit-base" "-f-cli")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-attoparsec)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-setlocale)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (home-page "http://github.com/solidsnack/wcwidth/")
    (synopsis "Native wcwidth.")
    (description
     "Bindings for your system's native wcwidth and a command line tool to examine
the widths assigned by it. The command line tool can compile a width table
to Haskell code that assigns widths to the Char type.")
    (license license:bsd-3)))

haskell-9.4-wcwidth

(define-public haskell-9.4-zeromq4-patterns
  (package
    (name "haskell-9.4-zeromq4-patterns")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-async)
                  (@ (gnu packages stackage ghc-9.4 stage007)
                     haskell-9.4-zeromq4-haskell)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/zeromq4-patterns#readme")
    (synopsis "Haskell implementation of several ZeroMQ patterns.")
    (description
     "Haskell implementation of several ZeroMQ patterns that you can find in the
official ZeroMQ guide.")
    (license license:bsd-3)))

haskell-9.4-zeromq4-patterns

(define-public haskell-9.4-zip-archive
  (package
    (name "haskell-9.4-zip-archive")
    (version "0.4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zip-archive/zip-archive-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02b76hm76gqallij70z77xz1y981ig4biklzm0wgxran8d06n0d4"))))
    (properties `((upstream-name . "zip-archive") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-executable")))
    (outputs (list "out" "doc"))
    (native-inputs (list (@ (gnu packages compression) unzip)
                         (@ (gnu packages base) which)))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-digest)
                  (@ (gnu packages stackage ghc-9.4 stage006)
                     haskell-9.4-temporary)
                  (@ (gnu packages stackage ghc-9.4 stage007) haskell-9.4-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/jgm/zip-archive")
    (synopsis "Library for creating and modifying zip archives.")
    (description
     "The zip-archive library provides functions for creating, modifying, and
extracting files from zip archives. The zip archive format is
documented in <http://www.pkware.com/documents/casestudies/APPNOTE.TXT>.

Certain simplifying assumptions are made about the zip archives: in
particular, there is no support for strong encryption, zip files that
span multiple disks, ZIP64, OS-specific file attributes, or compression
methods other than Deflate. However, the library should be able to read
the most common zip archives, and the archives it produces should be
readable by all standard unzip programs.

Archives are built and extracted in memory, so manipulating large zip
files will consume a lot of memory. If you work with large zip files or
need features not supported by this library, a better choice may be
<http://hackage.haskell.org/package/zip zip>, which uses a
memory-efficient streaming approach. However, zip can only read and
write archives inside instances of MonadIO, so zip-archive is a better
choice if you want to manipulate zip archives in \"pure\" contexts.

As an example of the use of the library, a standalone zip archiver and
extracter is provided in the source distribution.")
    (license license:bsd-3)))

haskell-9.4-zip-archive

