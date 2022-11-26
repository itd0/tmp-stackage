;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage013)
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
(define-public haskell-8.10-Earley
  (package
    (name "haskell-8.10-Earley")
    (version "0.13.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Earley/Earley-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "169qjicjj09wg879vp86ali4rrqpw0ikazvdi3i1qi6pl3yvqq0y"))))
    (properties `((upstream-name . "Earley") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-ListLike)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/Earley")
    (synopsis "Parsing all context-free grammars using Earley's algorithm.")
    (description "See <https://www.github.com/ollef/Earley> for more
information and
<https://github.com/ollef/Earley/tree/master/examples> for
examples.")
    (license license:bsd-3)))

haskell-8.10-Earley

(define-public haskell-8.10-JuicyPixels-scale-dct
  (package
    (name "haskell-8.10-JuicyPixels-scale-dct")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-carray)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-fft)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/phadej/JuicyPixels-scale-dct#readme")
    (synopsis "Scale JuicyPixels images with DCT")
    (description
     "Scale JuicyPixels Images with DCT

There is also a @@friday@@ version: <http://hackage.haskell.org/package/friday-scale-dct friday-scale-dct>")
    (license license:bsd-3)))

haskell-8.10-JuicyPixels-scale-dct

(define-public haskell-8.10-Spintax
  (package
    (name "haskell-8.10-Spintax")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Spintax/Spintax-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "000yprzvq72ia6wfk3hjarb8anx3wfm54rzpv8x7d2zf09pzxk6k"))))
    (properties `((upstream-name . "Spintax") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichelBoucey/spintax")
    (synopsis "Random text generation based on spintax")
    (description
     "Random text generation based on spintax with nested alternatives and empty options.")
    (license license:bsd-3)))

haskell-8.10-Spintax

(define-public haskell-8.10-ace
  (package
    (name "haskell-8.10-ace")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)))
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

haskell-8.10-ace

(define-public haskell-8.10-aeson
  (package
    (name "haskell-8.10-aeson")
    (version "1.5.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aeson/aeson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s5z4bgb5150h6a4cjf5vh8dmyrn6ilh29gh05999v6jwd5w6q83"))))
    (properties `((upstream-name . "aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-f-fast" "-f-bytestring-builder" "-f-cffi")
       #:cabal-revision
       ("5" "01mbxj0cqbf20pwgx2021r79xwp8r3sjpvhxlpay5lk0s9pvn0sh")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-fix)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-strict)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/haskell/aeson")
    (synopsis "Fast JSON parsing and encoding")
    (description
     "A JSON parsing and encoding library optimized for ease of use
and high performance.

To get started, see the documentation for the @@Data.Aeson@@ module
below.

(A note on naming: in Greek mythology, Aeson was the father of Jason.)")
    (license license:bsd-3)))

haskell-8.10-aeson

(define-public haskell-8.10-alerts
  (package
    (name "haskell-8.10-alerts")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/alerts/alerts-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14fyckdwwhp786z2gg6m92xmz0rbvqwalj0bylqagi9n295ni74f"))))
    (properties `((upstream-name . "alerts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alx741/alerts#readme")
    (synopsis "Alert messages for web applications")
    (description "Alert messages for web applications:

* Bootstrap 3

* Bootstrap 4

* Foundation 5

* Bulma")
    (license license:bsd-3)))

haskell-8.10-alerts

(define-public haskell-8.10-asn1-encoding
  (package
    (name "haskell-8.10-asn1-encoding")
    (version "0.9.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/asn1-encoding/asn1-encoding-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02nsr30h5yic1mk7znf0q4z3n560ip017n60hg7ya25rsfmxxy6r"))))
    (properties `((upstream-name . "asn1-encoding") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "16503ryhq15f2rfdav2qnkq11dg2r3vk3f9v64q9dmxf8dh8zv97")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-asn1-types)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-hourglass)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "ASN1 data reader and writer in RAW, BER and DER forms")
    (description
     "ASN1 data reader and writer in raw form with supports for high level forms of ASN1 (BER, and DER).")
    (license license:bsd-3)))

haskell-8.10-asn1-encoding

(define-public haskell-8.10-basic-prelude
  (package
    (name "haskell-8.10-basic-prelude")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/basic-prelude/basic-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yckmnvm6i4vw0mykj4fzl4ldsf67v8d2h0vp1bakyj84n4myx8h"))))
    (properties `((upstream-name . "basic-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/snoyberg/basic-prelude#readme")
    (synopsis
     "An enhanced core prelude; a common foundation for alternate preludes.")
    (description
     "Please see the README on Github at <https://github.com/snoyberg/basic-prelude#readme>")
    (license license:expat)))

haskell-8.10-basic-prelude

(define-public haskell-8.10-blas-carray
  (package
    (name "haskell-8.10-blas-carray")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-blas-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-carray)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-netlib-carray)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-storable-complex)))
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

haskell-8.10-blas-carray

(define-public haskell-8.10-blaze-bootstrap
  (package
    (name "haskell-8.10-blaze-bootstrap")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/blaze-bootstrap")
    (synopsis "Blaze helper functions for bootstrap pages")
    (description "Simplify building blaze and bootstrap powered pages")
    (license license:expat)))

haskell-8.10-blaze-bootstrap

(define-public haskell-8.10-buffer-builder
  (package
    (name "haskell-8.10-buffer-builder")
    (version "0.2.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/buffer-builder/buffer-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0n1zb12zm86rm3jqpdh7j15w6dd1mii0fmaihkdqm0b1rv2zm2dk"))))
    (properties `((upstream-name . "buffer-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/chadaustin/buffer-builder")
    (synopsis
     "Library for efficiently building up buffers, one piece at a time")
    (description
     "\"Data.BufferBuilder\" is an efficient library for incrementally building
up 'ByteString's, one chunk at a time.  Early benchmarks show it
is over twice as fast as ByteString Builder, primarily because
'BufferBuilder' is built upon an ST-style restricted monad and
mutable state instead of ByteString Builder's monoidal AST.

Internally, BufferBuilder is backed by a few C functions.
Examination of GHC's output shows nearly optimal code generation
with no intermediate thunks -- and thus, continuation passing and
its associated indirect jumps and stack traffic only occur when
BufferBuilder is asked to append a non-strict ByteString.

I benchmarked four approaches with a URL encoding benchmark:

* State monad, concatenating ByteStrings: 6.98 us

* State monad, ByteString Builder: 2.48 us

* Crazy explicit RealWorld baton passing with unboxed state: 28.94 us (GHC generated really awful code for this, but see the revision history for the technique)

* C + FFI + ReaderT: 1.11 us

Using BufferBuilder is very simple:

> import qualified Data.BufferBuilder as BB
>
> let byteString = BB.runBufferBuilder $ do
>       BB.appendBS \"http\"
>       BB.appendChar8 '/'
>       BB.appendBS \"//\"

This package also provides \"Data.BufferBuilder.Utf8\" for generating UTF-8 buffers
and \"Data.BufferBuilder.Json\" for encoding data structures into JSON.")
    (license license:bsd-3)))

haskell-8.10-buffer-builder

(define-public haskell-8.10-bytes
  (package
    (name "haskell-8.10-bytes")
    (version "0.17.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bytes/bytes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1qmps8vvg98wfm9xm734hwzi56bsk8r1zc6vx20rlhc79krv5s9s"))))
    (properties `((upstream-name . "bytes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1lagk22sacal7dbygp4cgfixq7j8daybn19x0xmrh9d89xgsl7vs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-binary-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "https://github.com/ekmett/bytes")
    (synopsis "Sharing code for serialization between binary and cereal")
    (description "Sharing code for serialization between binary and cereal.")
    (license license:bsd-3)))

haskell-8.10-bytes

(define-public haskell-8.10-bytestring-lexing
  (package
    (name "haskell-8.10-bytestring-lexing")
    (version "0.5.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-lexing/bytestring-lexing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mgkip351x8br576zl1fwblanm03vwg25jcmpp4iibyz1adj9cwb"))))
    (properties `((upstream-name . "bytestring-lexing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis
     "Efficiently parse and produce common integral and fractional numbers.")
    (description
     "The bytestring-lexing package offers extremely efficient `ByteString`
parsers for some common lexemes: namely integral and fractional
numbers. In addition, it provides efficient serializers for (some
of) the formats it parses.

As of version 0.3.0, bytestring-lexing offers the best-in-show
parsers for integral values. (According to the Warp web server's
benchmark of parsing the Content-Length field of HTTP headers.) And
as of version 0.5.0 it offers (to my knowledge) the best-in-show
parser for fractional/floating numbers.

Some benchmarks for this package can be found at:
<https://github.com/wrengr/bytestring-lexing/tree/master/bench/html>")
    (license license:bsd-3)))

haskell-8.10-bytestring-lexing

(define-public haskell-8.10-bz2
  (package
    (name "haskell-8.10-bz2")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bz2/bz2-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1kskfgdfjpg2nn807298m605lc7jafnsi1phz3bp6jds48zwrfhq"))))
    (properties `((upstream-name . "bz2") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cross" "-f-with-bzlib")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://hackage.haskell.org/package/bz2")
    (synopsis "Bindings to libbz2")
    (description "High-level bindings to libbz2 via ByteString")
    (license license:bsd-3)))

haskell-8.10-bz2

(define-public haskell-8.10-cabal-file
  (package
    (name "haskell-8.10-cabal-file")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-file/cabal-file-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05sah1w0nbvirnvj520ijyz2jrdbp5cciryhziyrgaimfvi9kbnb"))))
    (properties `((upstream-name . "cabal-file") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hackage-security)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-simple-cabal)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-simple-cmd)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-simple-cmd-args)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://hackage.haskell.org/package/cabal-file")
    (synopsis "Cabal file access")
    (description
     "cabal-file is a small library on top of the 'hackage-security' library
for accessing the local Hackage repo index cache, and a command-line tool
'cblfile' which can diff .cabal versions, list package versions,
save a cabal file, and show metadata from the index. It uses
simple-cabal to display package dependency lists.")
    (license license:bsd-3)))

haskell-8.10-cabal-file

(define-public haskell-8.10-cabal2spec
  (package
    (name "haskell-8.10-cabal2spec")
    (version "2.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal2spec/cabal2spec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0x1r01fk5mch76zindalvmlkfaca4y1x89zw2dm0d46fncsfgdrv"))))
    (properties `((upstream-name . "cabal2spec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "196j1fga9cqlc0nbxbgl0c3g0ic8sf618whps95zzp58lac9dqak")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)))
    (home-page "https://github.com/peti/cabal2spec")
    (synopsis "Convert Cabal files into rpm spec files")
    (description
     "Convert
Cabal files into a
<http://ftp.rpm.org/max-rpm/s1-rpm-build-creating-spec-file.html spec file>
suitable for building the package with the RPM package manager. This
tool primarily targets the <http://www.suse.com/ SUSE> and
<http://www.opensuse.org openSUSE> familiy of distributions. Support
for other RPM-based distributions is currently not available. Check
out <http://hackage.haskell.org/package/cabal-rpm cabal-rpm> if you
need this.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-cabal2spec

(define-public haskell-8.10-cache
  (package
    (name "haskell-8.10-cache")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cache/cache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d75257kvjpnv95ja50x5cs77pj8ccfr0nh9q5gzvcps83qdksa2"))))
    (properties `((upstream-name . "cache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/hverr/haskell-cache#readme")
    (synopsis "An in-memory key/value store with expiration support")
    (description
     "An in-memory key/value store with expiration support, similar
to patrickmn/go-cache for Go.

The cache is a shared mutable HashMap implemented using STM and
with support for expiration times.")
    (license license:bsd-3)))

haskell-8.10-cache

(define-public haskell-8.10-cardano-coin-selection
  (package
    (name "haskell-8.10-cardano-coin-selection")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cardano-coin-selection/cardano-coin-selection-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1nvnkd5g0vq4vqj1w55hd1b1v7rwzhb3anhavablw9wy3w230qja"))))
    (properties `((upstream-name . "cardano-coin-selection") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-release")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-quiet)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page
     "https://github.com/input-output-hk/cardano-coin-selection#readme")
    (synopsis "Algorithms for coin selection and fee balancing.")
    (description
     "Please see the README on GitHub at <https://github.com/input-output-hk/cardano-coin-selection>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-cardano-coin-selection

(define-public haskell-8.10-cassava
  (package
    (name "haskell-8.10-cassava")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cassava/cassava-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "01h1zrdqb313cjd4rqm1107azzx4czqi018c2djf66a5i7ajl3dk"))))
    (properties `((upstream-name . "cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring--lt-0_10_4")
       #:cabal-revision
       ("9" "087489f6wx9gcr107xnw7pbmnwh9rkdqqk2sky3g43k87j2aqhbj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Only)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-text-short)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-cassava

(define-public haskell-8.10-cdar-mBound
  (package
    (name "haskell-8.10-cdar-mBound")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cdar-mBound/cdar-mBound-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p7ri7vfvj3ym0038aq12szs6jgdkq8a4730i67appv9lmxgycfn"))))
    (properties `((upstream-name . "cdar-mBound") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/cdar-mBound")
    (synopsis "Exact real arithmetic using Centred Dyadic Approximations")
    (description
     "Please see https://github.com/michalkonecny/cdar/tree/mBound#readme")
    (license license:bsd-3)))

haskell-8.10-cdar-mBound

(define-public haskell-8.10-charset
  (package
    (name "haskell-8.10-charset")
    (version "0.3.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/charset/charset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "12wrphd5j1asb3n6awbph4n695mfmnzk6yzggrp387hx960qfkyb"))))
    (properties `((upstream-name . "charset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/ekmett/charset")
    (synopsis
     "Fast unicode character sets based on complemented PATRICIA tries")
    (description
     "Fast unicode character sets based on complemented PATRICIA tries.")
    (license license:bsd-3)))

haskell-8.10-charset

(define-public haskell-8.10-co-log-concurrent
  (package
    (name "haskell-8.10-co-log-concurrent")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/co-log-concurrent/co-log-concurrent-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07qmx9z03vmgq2cgz4352fsav7r1nx8n7svmrhg2lkdiyp0j7a59"))))
    (properties `((upstream-name . "co-log-concurrent") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-co-log-core)))
    (home-page "https://github.com/qnikst/co-log-concurrent/")
    (synopsis "Asynchronous backend for co-log library")
    (description "Buiding block for writing asynchronous logger pipelines.")
    (license license:mpl2.0)))

haskell-8.10-co-log-concurrent

(define-public haskell-8.10-config-ini
  (package
    (name "haskell-8.10-config-ini")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/config-ini/config-ini-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0dfm4xb1sd713rcqzplzdgw68fyhj24i6lj8j3q8kldpmkl98lbf"))))
    (properties `((upstream-name . "config-ini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-enable-doctests")
       #:cabal-revision
       ("2" "0iwraaa0y1b3xdsg760j1wpylkqshky0k2djcg0k4s97lrwqpbcz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
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

haskell-8.10-config-ini

(define-public haskell-8.10-configurator
  (package
    (name "haskell-8.10-configurator")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator/configurator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d1iq1knwiq6ia5g64rw5hqm6dakz912qj13r89737rfcxmrkfbf"))))
    (properties `((upstream-name . "configurator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/bos/configurator")
    (synopsis "Configuration management")
    (description
     "A configuration management library for programs and daemons.

Features include:

* Automatic, dynamic reloading in response to modifications to
configuration files.

* A simple, but flexible, configuration language, supporting several
of the most commonly needed types of data, along with
interpolation of strings from the configuration or the system
environment (e.g. @@$(HOME)@@).

* Subscription-based notification of changes to configuration
properties.

* An @@import@@ directive allows the configuration of a complex
application to be split across several smaller files, or common
configuration data to be shared across several applications.

For details of the configuration file format, see
<http://hackage.haskell.org/packages/archive/configurator/latest/doc/html/Data-Configurator.html>.")
    (license license:bsd-3)))

haskell-8.10-configurator

(define-public haskell-8.10-countable
  (package
    (name "haskell-8.10-countable")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/countable/countable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0v0fdapdnzdqbkjhgkicx1njs3ybshk83h79fbgln13sd5pyp87r"))))
    (properties `((upstream-name . "countable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-silently)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://github.com/AshleyYakeley/countable")
    (synopsis "Countable, Searchable, Finite, Empty classes")
    (description
     "* @@class Countable@@, for countable types

* @@class AtLeastOneCountable@@, for countable types that have at least one value

* @@class InfiniteCountable@@, for infinite countable types

* @@class Searchable@@, for types that can be searched over. This turns out to include some infinite types, see <http://math.andrej.com/2007/09/28/seemingly-impossible-functional-programs/>.

* @@class Finite@@, for finite types

* @@class Empty@@, for empty types

* @@data Nothing@@, an empty type

Some orphan instances:

* @@(Searchable a,Eq b) => Eq (a -> b)@@ / /

* @@(Finite t) => Foldable ((->) t)@@ / /

* @@(Finite a) => Traversable ((->) a)@@ / /

* @@(Show a,Finite a,Show b) => Show (a -> b)@@ / /")
    (license license:bsd-3)))

haskell-8.10-countable

(define-public haskell-8.10-cryptohash
  (package
    (name "haskell-8.10-cryptohash")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)))
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

haskell-8.10-cryptohash

(define-public haskell-8.10-cryptohash-cryptoapi
  (package
    (name "haskell-8.10-cryptohash-cryptoapi")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-crypto-api)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-cryptohash-cryptoapi")
    (synopsis "Crypto-api interfaces for cryptohash")
    (description "Crypto-api interfaces for cryptohash")
    (license license:bsd-3)))

haskell-8.10-cryptohash-cryptoapi

(define-public haskell-8.10-cryptonite-openssl
  (package
    (name "haskell-8.10-cryptonite-openssl")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-basement)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-tasty-kat)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl-1.1)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-crypto/cryptonite-openssl")
    (synopsis "Crypto stuff using OpenSSL cryptographic library")
    (description
     "Crypto stuff using the OpenSSL cryptographic library as bindings")
    (license license:bsd-3)))

haskell-8.10-cryptonite-openssl

(define-public haskell-8.10-data-default-instances-unordered-containers
  (package
    (name "haskell-8.10-data-default-instances-unordered-containers")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-unordered-containers/data-default-instances-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1h1gap1afpyixz2amw1bfsdrc5rsxvksapz9h9vi4qgxj3mag0mk"))))
    (properties `((upstream-name . "data-default-instances-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ghfz68s70jrkz91qhnawc4bq3ylmqxg849d49zxckzg0pk7jbpw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/trskop/data-default-extra")
    (synopsis "Default instances for unordered-containers.")
    (description
     "Orphan instances for @@Default@@ type class, which is defined in package
<https://hackage.haskell.org/package/data-default-class data-default-class>.

Following @@Default@@ instances are provided:

> instance Default (HashMap k v) where
>     def = empty
>
> instance Default (HashSet a) where
>     def = empty")
    (license license:bsd-3)))

haskell-8.10-data-default-instances-unordered-containers

(define-public haskell-8.10-data-msgpack-types
  (package
    (name "haskell-8.10-data-msgpack-types")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-msgpack-types/data-msgpack-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05jg19sk42cpn2h1mfaam5khwlda4v99z6v0sdzi4kzkswpfj1i5"))))
    (properties `((upstream-name . "data-msgpack-types") (hidden? . #f)))
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
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "http://msgpack.org/")
    (synopsis "A Haskell implementation of MessagePack.")
    (description
     "A Haskell implementation of MessagePack <http://msgpack.org/>

This is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,
since the original author is unreachable. This fork incorporates a number of
bugfixes and is actively being developed.")
    (license license:bsd-3)))

haskell-8.10-data-msgpack-types

(define-public haskell-8.10-data-reify
  (package
    (name "haskell-8.10-data-reify")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-reify/data-reify-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sacbil9xn1n2085wpa0dq7ikf1wvh2kkddnvmwsp22ssx059h55"))))
    (properties `((upstream-name . "data-reify") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-tests")
       #:cabal-revision
       ("1" "137z993v7af9ym468vprys09416c7l7pys5hrng7k5vafga73y3b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://ku-fpg.github.io/software/data-reify/")
    (synopsis "Reify a recursive data structure into an explicit graph.")
    (description
     "'data-reify' provided the ability to turn recursive structures into explicit graphs.
Many (implicitly or explicitly) recursive data structure can be given this ability, via
a type class instance. This gives an alternative to using 'Ref' for observable sharing.

Observable sharing in general is unsafe, so we use the IO monad to bound this effect,
but can be used safely even with 'unsafePerformIO' if some simple conditions are met.
Typically this package will be used to tie the knot with DSL's that depend of
observable sharing, like Lava.

Providing an instance for 'MuRef' is the mechanism for allowing a structure to be
reified into a graph, and several examples of this are provided.

&#169; 2009 Andy Gill; BSD3 license.")
    (license license:bsd-3)))

haskell-8.10-data-reify

(define-public haskell-8.10-doclayout
  (package
    (name "haskell-8.10-doclayout")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doclayout/doclayout-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1p9kgjlf7y4p1symvkwndgs4lvyw2c45bsgld09y9r4aiqbhdrxp"))))
    (properties `((upstream-name . "doclayout") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-emojis)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-golden)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/jgm/doclayout")
    (synopsis "A prettyprinting library for laying out text documents.")
    (description "doclayout is a prettyprinting library for laying out
text documents, with several features not present
in prettyprinting libraries designed for code.  It
was designed for use in pandoc.")
    (license license:bsd-3)))

haskell-8.10-doclayout

(define-public haskell-8.10-dynamic-state
  (package
    (name "haskell-8.10-dynamic-state")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dynamic-state/dynamic-state-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0drmlb3cvx0blsnqrxzdylpff5jxvpazsy1bxq2szcp70gghpmf4"))))
    (properties `((upstream-name . "dynamic-state") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/dynamic-state")
    (synopsis "Optionally serializable dynamic state keyed by type")
    (description "Optionally serializable dynamic state keyed by type")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-dynamic-state

(define-public haskell-8.10-eap
  (package
    (name "haskell-8.10-eap")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-pretty-hex)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/codemonkeylabs/eap#readme")
    (synopsis "Extensible Authentication Protocol (EAP)")
    (description
     "This module provides types and on the wire de/coding of EAP packets as per RFC 3748")
    (license license:bsd-3)))

haskell-8.10-eap

(define-public haskell-8.10-either-both
  (package
    (name "haskell-8.10-either-both")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/either-both/either-both-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cm6g0wvwqlm405y8svv2fi49kpxqs7hffwd4gnsvlk2rfxng93f"))))
    (properties `((upstream-name . "either-both") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)))
    (home-page "https://hackage.haskell.org/package/either-both")
    (synopsis "Either or both")
    (description "")
    (license license:bsd-3)))

haskell-8.10-either-both

(define-public haskell-8.10-ekg-core
  (package
    (name "haskell-8.10-ekg-core")
    (version "0.1.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ekg-core/ekg-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "04nv6iwzrb63fs97ixb0amj8p6zhabg3ggbrg4nbkq7xjhmkz0a5"))))
    (properties `((upstream-name . "ekg-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "05h0jz42s1d3bjcvzbp3dv5rvil4ar244mdqdvzbf60z848ppygl")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-core")
    (synopsis "Tracking of system metrics")
    (description "This library lets you defined and track system metrics.")
    (license license:bsd-3)))

haskell-8.10-ekg-core

(define-public haskell-8.10-expiring-cache-map
  (package
    (name "haskell-8.10-expiring-cache-map")
    (version "0.0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/expiring-cache-map/expiring-cache-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fb47hsn06ybn2yzw7r6pjkmvvfpbdx7wjhbpxcywilbjyac4fqf"))))
    (properties `((upstream-name . "expiring-cache-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1k5wqilafxp3ksqb7qy90cwipk0db568f15amn3mnf9krc1qjabg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://codeberg.org/elblake/expiring-cache-map")
    (synopsis "General purpose simple caching.")
    (description
     "A simple general purpose shared state cache map with automatic expiration
of values, for caching the results of accessing a resource such as reading
a file. With variations for Ord and Hashable keys using \"Data.Map.Strict\"
and \"Data.HashMap.Strict\", respectively.")
    (license license:bsd-3)))

haskell-8.10-expiring-cache-map

(define-public haskell-8.10-fast-digits
  (package
    (name "haskell-8.10-fast-digits")
    (version "0.3.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fast-digits/fast-digits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1q6kq5rrd4ivg4s8yhzqsc3gx4n554nz7285mgfqwxgfx8r4mmki"))))
    (properties `((upstream-name . "fast-digits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/fast-digits")
    (synopsis "Integer-to-digits conversion.")
    (description "Convert an integer to digits and back.
This library is both asymptotically (O(n^1.4) vs. O(n^2))
and practically (2x-40x for typical inputs)
faster than \"Data.Digits\".")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-fast-digits

(define-public haskell-8.10-fixed-vector-hetero
  (package
    (name "haskell-8.10-fixed-vector-hetero")
    (version "0.6.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector-hetero/fixed-vector-hetero-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1amqpbvzyqfg5rsl4zm99qmiffbh0a5bf9jbwlm6snwm9024qsj3"))))
    (properties `((upstream-name . "fixed-vector-hetero") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-fixed-vector)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (home-page "http://github.org/Shimuuar/fixed-vector-hetero")
    (synopsis "Library for working with product types generically")
    (description
     "Library allow to work with arbitrary product types in generic
manner. They could be constructed, destucted, converted provided
they are product of identical types.")
    (license license:bsd-3)))

haskell-8.10-fixed-vector-hetero

(define-public haskell-8.10-flac-picture
  (package
    (name "haskell-8.10-flac-picture")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flac-picture/flac-picture-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02h36z65xmy0mvg7j2863h35dcf24l08ma0dxjbqcn42sca9ss0m"))))
    (properties `((upstream-name . "flac-picture") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("1" "1ib9ypz06i81bgkj08aw6fdyxi6fbl2029vwlcqybbhz9cnya1pm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-flac)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
    (propagated-inputs (list (@ (gnu packages xiph) flac)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/mrkkrp/flac-picture")
    (synopsis
     "Support for writing picture to FLAC metadata blocks with JuicyPixels")
    (description
     "Support for writing picture to FLAC metadata blocks with JuicyPixels.")
    (license license:bsd-3)))

haskell-8.10-flac-picture

(define-public haskell-8.10-fsnotify
  (package
    (name "haskell-8.10-fsnotify")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hinotify)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-shelly)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)))
    (home-page "https://github.com/haskell-fswatch/hfsnotify")
    (synopsis "Cross platform library for file change notification.")
    (description "Cross platform library for file creation, modification,
and deletion notification. This library builds upon
existing libraries for platform-specific Windows, Mac,
and Linux filesystem event notification.")
    (license license:bsd-3)))

haskell-8.10-fsnotify

(define-public haskell-8.10-functor-classes-compat
  (package
    (name "haskell-8.10-functor-classes-compat")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/functor-classes-compat/functor-classes-compat-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0p6kwj1yimis0rg2gihwkgxkjj1psxy38hxa94gz5pd638314hi3"))))
    (properties `((upstream-name . "functor-classes-compat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase-transformers-1" "-fbase-transformers-2" "-fvector" "-fcontainers" "-funordered-containers")
       #:cabal-revision
       ("1" "0x8g977xgg9jj597kvn4h725kh3nvbwhxlh1iglp1vzn39v73n6f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/phadej/functor-classes-compat#readme")
    (synopsis "Data.Functor.Classes instances for core packages")
    (description "\"Data.Functor.Classes\" instances for core packages:

* containers

* vector

* unordered-containers")
    (license license:bsd-3)))

haskell-8.10-functor-classes-compat

(define-public haskell-8.10-fuzzyset
  (package
    (name "haskell-8.10-fuzzyset")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fuzzyset/fuzzyset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1153xv53l6khw7yy36pfaf7pmmlwpg4ig7ywk4rxj375janlg1g8"))))
    (properties `((upstream-name . "fuzzyset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-data-default)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-text-metrics)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/laserpants/fuzzyset-haskell")
    (synopsis "Fuzzy set for approximate string matching")
    (description
     "This library is based on the Python and JavaScript libraries with similar names.")
    (license license:bsd-3)))

haskell-8.10-fuzzyset

(define-public haskell-8.10-generic-data
  (package
    (name "haskell-8.10-generic-data")
    (version "0.9.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-data/generic-data-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hs5ahl1nx61kw5j0pnwgjrph7jgqq0djma956ksz6aivzldjf7q"))))
    (properties `((upstream-name . "generic-data") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "01ly8r9s34pj8i7ppjclclx3fmnv24lhic1n7cjz5cdk3cxa8klc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ap-normalize)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-generic-lens)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-inspection-testing)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-one-liner)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-show-combinators)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/Lysxia/generic-data#readme")
    (synopsis "Deriving instances with GHC.Generics and related utilities")
    (description
     "Generic implementations of standard type classes.
Operations on generic representations to help using \"GHC.Generics\".
See README.")
    (license license:expat)))

haskell-8.10-generic-data

(define-public haskell-8.10-genvalidity-hspec
  (package
    (name "haskell-8.10-genvalidity-hspec")
    (version "0.7.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/genvalidity-hspec/genvalidity-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aajx07n2rznyqxb0c4pn9j2cvkzw5brz9ki4grhhigbcri3jzmv"))))
    (properties `((upstream-name . "genvalidity-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-genvalidity)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-genvalidity-property)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Standard spec's for GenValidity instances")
    (description
     "Note: There are companion packages for this library:

* <https://hackage.haskell.org/package/genvalidity-hspec-aeson genvalidity-hspec-aeson>

* <https://hackage.haskell.org/package/genvalidity-hspec-binary genvalidity-hspec-binary>

* <https://hackage.haskell.org/package/genvalidity-hspec-cereal genvalidity-hspec-cereal>

* <https://hackage.haskell.org/package/genvalidity-hspec-hashable genvalidity-hspec-hashable>")
    (license license:expat)))

haskell-8.10-genvalidity-hspec

(define-public haskell-8.10-graph-core
  (package
    (name "haskell-8.10-graph-core")
    (version "0.3.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/graph-core/graph-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0m7820dwasix5x6ni6gphbqwswxm7qv9xxw9qgl7ifzb82m0p3rp"))))
    (properties `((upstream-name . "graph-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/factisresearch/graph-core")
    (synopsis "Fast, memory efficient and persistent graph implementation")
    (description
     "A small package providing a powerful and easy to use Haskell graph implementation.")
    (license license:expat)))

haskell-8.10-graph-core

(define-public haskell-8.10-hall-symbols
  (package
    (name "haskell-8.10-hall-symbols")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hall-symbols/hall-symbols-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gf0whwmwlrnir01zi5v6bsp0864nh0qjvy59hql27hv12yypdwa"))))
    (properties `((upstream-name . "hall-symbols") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-matrix)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-matrix-as-xyz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/hall-symbols#readme")
    (synopsis "Symmetry operations generater of Hall Symbols")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/hall-symbols#readme>")
    (license license:bsd-3)))

haskell-8.10-hall-symbols

(define-public haskell-8.10-happstack-server
  (package
    (name "haskell-8.10-happstack-server")
    (version "7.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/happstack-server/happstack-server-"
                    version ".tar.gz"))
              (sha256
               (base32
                "175aal1l4g558y89skck3s04db0bjblkxp77bijf1s9iyc07n669"))))
    (properties `((upstream-name . "happstack-server") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-hslogger)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-html)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-sendfile)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-system-filepath)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-threads)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "http://happstack.com")
    (synopsis "Web related tools and services.")
    (description
     "Happstack Server provides an HTTP server and a rich set of functions for routing requests, handling query parameters, generating responses, working with cookies, serving files, and more. For in-depth documentation see the Happstack Crash Course <http://happstack.com/docs/crashcourse/index.html>")
    (license license:bsd-3)))

haskell-8.10-happstack-server

(define-public haskell-8.10-hashids
  (package
    (name "haskell-8.10-hashids")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
    (home-page "http://hashids.org/")
    (synopsis
     "Hashids generates short, unique, non-sequential ids from numbers.")
    (description
     "This is a Haskell port of the Hashids library. It is typically used to encode numbers to a format suitable to appear in visible places like urls. It converts numbers like 347 into strings like yr8, or a list of numbers like [27, 986] into 3kTMd. You can also decode those ids back. This is useful in bundling several parameters into one.")
    (license license:expat)))

haskell-8.10-hashids

(define-public haskell-8.10-hashing
  (package
    (name "haskell-8.10-hashing")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hashing/hashing-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "044lyj8kyhrm8xs1v3z60g9zh8wdc1nvf79qvans1w6ndjfa3975"))))
    (properties `((upstream-name . "hashing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1rwl68jiivw7f2f5cg73sr3dawlbmklnwyiwivrcsihrg4b1z1lq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/wangbj/hashing")
    (synopsis "A pure haskell library implements several hash algorithms.")
    (description
     "hashing is a pure haskell hash library, supported hash algorithm: SHA1\\/SHA224\\/SHA256\\/SHA384\\/SHA512
MD5 and Whirlpool.

It provides a simple interface 'hash' and 'hashLazy' to compute a hash value Based on the type signature.

Performance wise it only has 1\\/5 - 1\\/15 of native C implementations, or 'cryptonite'.

Compare to other pure hash libraries such as PureMD5/SHA, it provides a simpler interface,
implements more algorithms, and has less dependencies.")
    (license license:expat)))

haskell-8.10-hashing

(define-public haskell-8.10-hedgehog-fn
  (package
    (name "haskell-8.10-hedgehog-fn")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)))
    (home-page "https://github.com/qfpl/hedgehog-fn")
    (synopsis "Function generation for `hedgehog`")
    (description
     "Generating shrinkable, showable functions with `hedgehog`. See
`Hedgehog.Function` for example usages.")
    (license license:bsd-3)))

haskell-8.10-hedgehog-fn

(define-public haskell-8.10-hedgehog-quickcheck
  (package
    (name "haskell-8.10-hedgehog-quickcheck")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)))
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

haskell-8.10-hedgehog-quickcheck

(define-public haskell-8.10-highlighting-kate
  (package
    (name "haskell-8.10-highlighting-kate")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
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

haskell-8.10-highlighting-kate

(define-public haskell-8.10-hspec-hedgehog
  (package
    (name "haskell-8.10-hspec-hedgehog")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)))
    (home-page "https://github.com/parsonsmatt/hspec-hedgehog#readme")
    (synopsis "Integrate Hedgehog and Hspec!")
    (description
     "Please see the README on GitHub at <https://github.com/parsonsmatt/hspec-hedgehog#readme>")
    (license license:bsd-3)))

haskell-8.10-hspec-hedgehog

(define-public haskell-8.10-html-entities
  (package
    (name "haskell-8.10-html-entities")
    (version "1.1.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entities/html-entities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "190yh4ijg0pgy4y0jvkyjf8a0z7qxy1mly7c6589qx6lrx66r3rv"))))
    (properties `((upstream-name . "html-entities") (hidden? . #f)))
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
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/nikita-volkov/html-entities")
    (synopsis "A codec library for HTML-escaped text and HTML-entities")
    (description
     "This library provides the following APIs for coding and decoding of
HTML-escaped text:

* \\\"attoparsec\\\" parser

* Text decoder

* Encoding text builder")
    (license license:expat)))

haskell-8.10-html-entities

(define-public haskell-8.10-html-entity-map
  (package
    (name "haskell-8.10-html-entity-map")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entity-map/html-entity-map-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k1l1pbmrfmh44v9cc9ka01bx9xm1x4jabbl675fc5c57v1h0dlq"))))
    (properties `((upstream-name . "html-entity-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")
       #:cabal-revision
       ("5" "1776z73bs1v8z3qwpjvqqmzdlj6gm8qba93f41irhn7swdppfq72")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/mrkkrp/html-entity-map")
    (synopsis "Map from HTML5 entity names to the corresponding Unicode text")
    (description
     "Map from HTML5 entity names to the corresponding Unicode text.")
    (license license:bsd-3)))

haskell-8.10-html-entity-map

(define-public haskell-8.10-http-common
  (package
    (name "haskell-8.10-http-common")
    (version "0.8.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/http-common/http-common-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xpbnfac0fqa5r670ggwm4kq3cmz9jpaw9bx40j9w9qiw6xi4i28"))))
    (properties `((upstream-name . "http-common") (hidden? . #f)))
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
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/aesiniath/http-common")
    (synopsis "Common types for HTTP clients and servers")
    (description
     "/Overview/

Base types used by a variety of HTTP clients and servers. See http-streams
\"Network.Http.Client\" or pipes-http \"Pipes.Http.Client\" for full
documentation. You can import @@Network.Http.Types@@ if you like, but both
http-streams and pipes-http re-export this package's types and functions.")
    (license license:bsd-3)))

haskell-8.10-http-common

(define-public haskell-8.10-hyper
  (package
    (name "haskell-8.10-hyper")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hyper/hyper-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14p7r57g75ny8l9h4ilbm6mhdsfiysfs3rd56300dl0jkpgrh8r2"))))
    (properties `((upstream-name . "hyper") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/HeinrichApfelmus/hyper-haskell")
    (synopsis
     "Display class for the HyperHaskell graphical Haskell interpreter")
    (description
     "This package is part of the /HyperHaskell/ project and provides
the @@Display@@ class for visualizing and pretty printing Haskell values.
")
    (license license:bsd-3)))

haskell-8.10-hyper

(define-public haskell-8.10-hyphenation
  (package
    (name "haskell-8.10-hyphenation")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-file-embed)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
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

haskell-8.10-hyphenation

(define-public haskell-8.10-inflections
  (package
    (name "haskell-8.10-inflections")
    (version "0.4.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inflections/inflections-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1054v250p86gb1kvbrp60fzwds8v8nsqap1970j7hgk5hjwq1xj1"))))
    (properties `((upstream-name . "inflections") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/stackbuilders/inflections-hs")
    (synopsis "Inflections library for Haskell")
    (description
     "Inflections provides methods for singularization, pluralization,
dasherizing, etc. The library is based on Rails' inflections library.")
    (license license:expat)))

haskell-8.10-inflections

(define-public haskell-8.10-ini
  (package
    (name "haskell-8.10-ini")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ini/ini-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0mvwii8jbh2ll54qb9dij5m66c6324s2y4vrwz1qr4wz40m3qa8l"))))
    (properties `((upstream-name . "ini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/chrisdone/ini")
    (synopsis "Quick and easy configuration files in the INI format.")
    (description "Quick and easy configuration files in the INI format.")
    (license license:bsd-3)))

haskell-8.10-ini

(define-public haskell-8.10-intern
  (package
    (name "haskell-8.10-intern")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/intern/intern-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "00c74apc2ap1pjxmzk1c975zzqrc94p69l7v1fvfakv87mbrg8j0"))))
    (properties `((upstream-name . "intern") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1jd429wyh11py7yd95zgaqf3djwvmqznslanlp7jcbrv8ag3dyg8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/ekmett/intern/")
    (synopsis "Efficient hash-consing for arbitrary data types")
    (description "Efficient hash-consing for arbitrary data types.")
    (license license:bsd-3)))

haskell-8.10-intern

(define-public haskell-8.10-intset-imperative
  (package
    (name "haskell-8.10-intset-imperative")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/intset-imperative/intset-imperative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hlh154dlyb0m8alf2zpb4qvsnpnmccmb5jkyhj2fmhg6y3r2m5f"))))
    (properties `((upstream-name . "intset-imperative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/hverr/haskell-intset-imperative#readme")
    (synopsis "An imperative integer set written in Haskell.")
    (description
     "An imperative integer set written in Haskell.

Read <https://deliquus.com/posts/2018-07-30-imperative-programming-in-haskell.html> for more information.")
    (license license:bsd-3)))

haskell-8.10-intset-imperative

(define-public haskell-8.10-invariant
  (package
    (name "haskell-8.10-invariant")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invariant/invariant-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xf7w9jadv496g8jdnmnqkbjw2gvc6n7cwszjd62rxiih3zhl596"))))
    (properties `((upstream-name . "invariant") (hidden? . #f)))
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
                     haskell-8.10-StateVar)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/nfrisby/invariant-functors")
    (synopsis "Haskell98 invariant functors")
    (description
     "Haskell98 invariant functors (also known as exponential functors).

For more information, see Edward Kmett's article \\\"Rotten Bananas\\\":

<http://comonad.com/reader/2008/rotten-bananas/>")
    (license license:bsd-2)))

haskell-8.10-invariant

(define-public haskell-8.10-islink
  (package
    (name "haskell-8.10-islink")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/islink/islink-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mxfs8k0znc7v2iynjnhr4k5c9as4ip37ybvxnvjfqy4dld9rgyg"))))
    (properties `((upstream-name . "islink") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/redneb/islink")
    (synopsis "Check if an HTML element is a link")
    (description
     "This package provides a function that checks whether a particular
combination of an HTML tag name and an attribute corresponds to an HTML
element that links to an external resource. For example, the combination
of the tag @@img@@ and the attribute @@src@@ is an external link whereas
the combination @@div@@ and @@style@@ is not. This is particularly useful
for web scraping.")
    (license license:bsd-3)))

haskell-8.10-islink

(define-public haskell-8.10-lapack-carray
  (package
    (name "haskell-8.10-lapack-carray")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-carray)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lapack-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-netlib-carray)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-netlib-ffi)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-storable-complex)))
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

haskell-8.10-lapack-carray

(define-public haskell-8.10-llvm-hs-pure
  (package
    (name "haskell-8.10-llvm-hs-pure")
    (version "9.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/llvm-hs-pure/llvm-hs-pure-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pxb5ah8r5pzpz2ibqw3g9g1isigb4z7pbzfrwr8kmcjn74ab3kf"))))
    (properties `((upstream-name . "llvm-hs-pure") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fail)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/llvm-hs/llvm-hs/")
    (synopsis "Pure Haskell LLVM functionality (no FFI).")
    (description
     "llvm-hs-pure is a set of pure Haskell types and functions for interacting with LLVM <http://llvm.org/>.
It includes an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>). The llvm-hs package
builds on this one with FFI bindings to LLVM, but llvm-hs-pure does not require LLVM to be available.")
    (license license:bsd-3)))

haskell-8.10-llvm-hs-pure

(define-public haskell-8.10-loc
  (package
    (name "haskell-8.10-loc")
    (version "0.1.3.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/loc/loc-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0bizqfczhc5higdzrrhinr5q3s971a3klfl3gpffnq9gyzd16nrq"))))
    (properties `((upstream-name . "loc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "18fwdgf8l6nrnijla1x5c50ab05snaza27qdkya07sis2fa8286c")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)))
    (home-page "https://github.com/typeclasses/loc")
    (synopsis
     "Types representing line and column positions and ranges in text files.")
    (description "The package name /loc/ stands for “location” and is
also an allusion to the acronym for “lines of code”.

The @@Loc@@ type represents a caret position in a text file,
the @@Span@@ type is a nonempty range between two @@Loc@@s,
and the @@Area@@ type is a set of non-touching @@Span@@s.")
    (license license:asl2.0)))

haskell-8.10-loc

(define-public haskell-8.10-locators
  (package
    (name "haskell-8.10-locators")
    (version "0.3.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/locators/locators-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rjlgjm41mxflq4b7y7cl86mlkdlh5lgxsm40lmy1lwfcx7l2fmq"))))
    (properties `((upstream-name . "locators") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/locators")
    (synopsis "Human exchangable identifiers and locators")
    (description
     "/Overview/

Simple identifiers (as used, for example, as \"locators\" in airline reservation
systems) using a subset of the Latin1 alphabet whose characters are unambigious
when written or spoken.")
    (license license:expat)))

haskell-8.10-locators

(define-public haskell-8.10-lucid
  (package
    (name "haskell-8.10-lucid")
    (version "2.9.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lucid/lucid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nky4pqxd6828kg3js90ks6r3hxs5x48ibfz37pw2dr7y1nygq21"))))
    (properties `((upstream-name . "lucid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1xllyf26ypk37k807g5v6fl1449mhpvk18dljmqgwj723n0v8rpj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/chrisdone/lucid")
    (synopsis "Clear to write, read and edit DSL for HTML")
    (description
     "Clear to write, read and edit DSL for HTML.

* Names are consistent, and do not conflict with base or are keywords (all have suffix @@_@@)

* Same combinator can be used for attributes and elements (e.g. 'style_')

* For more, read <https://chrisdone.com/posts/lucid the blog post>

See the \"Lucid\" module for more documentation.")
    (license license:bsd-3)))

haskell-8.10-lucid

(define-public haskell-8.10-math-extras
  (package
    (name "haskell-8.10-math-extras")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)))
    (home-page "https://github.com/zliu41/math-extras")
    (synopsis "A variety of mathematical utilities")
    (description "A variety of mathematical utilities not covered in base.")
    (license license:bsd-3)))

haskell-8.10-math-extras

(define-public haskell-8.10-membrain
  (package
    (name "haskell-8.10-membrain")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/membrain/membrain-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nizjkiggm2ws8kkjw6v96a611kim4yjg4kdrk0rd83fa1zcf7cc"))))
    (properties `((upstream-name . "membrain") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02yayszbb6g7q7cz9gkjbxzn28v4zm1i9svzydzlrzfds9z603r6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-type-spec)))
    (home-page "https://github.com/kowainik/membrain")
    (synopsis "Type-safe memory units")
    (description
     "@@membrain@@ provides @@newtype@@ wrapper for type-safe work with memory units

@@
__newtype__ Memory (mem :: Nat) = Memory
\\    @{ unMemory :: Natural
\\    @}
@@

This data type stores memory unit value phantom type parameter which is
represented as type-level natural number.
The ideas behind this package are described in the following blog post:

* [Insane in the Membrain](https://kowainik.github.io/posts/membrain)")
    (license license:mpl2.0)))

haskell-8.10-membrain

(define-public haskell-8.10-mercury-api
  (package
    (name "haskell-8.10-mercury-api")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mercury-api/mercury-api-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ybpc1kai85rflgdr80jd8cvwxaxmbphv82nz2p17502jrmdfkhg"))))
    (properties `((upstream-name . "mercury-api") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "1qgcph7cmdxijxfgpwwszbyh07kwalnqli4fp85s7z1fxqfwl5n8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hsc2hs)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/ppelleti/hs-mercury-api")
    (synopsis "Haskell binding to Mercury API for ThingMagic RFID readers")
    (description
     "This package is a Haskell binding to the \\\"Mercury API\\\" C API for
ThingMagic RFID readers.  It is especially geared toward the
<https://www.sparkfun.com/products/14066 SparkFun Simultaneous RFID Reader>,
which uses ThingMagic's M6e Nano module, but it should work with other
ThingMagic readers.  (Though currently, only support for serial readers
is compiled in.)  Most of the function and type names are the same as
their counterparts in the C API, with the @@TMR_@@ prefix dropped.  For more
in-depth, language-independent documentation of Mercury API, see
<http://www.thingmagic.com/images/Downloads/Docs/MercuryAPI_ProgrammerGuide_for_v1.27.3.pdf Mercury API Programmers Guide>.")
    (license license:expat)))

haskell-8.10-mercury-api

(define-public haskell-8.10-mfsolve
  (package
    (name "haskell-8.10-mfsolve")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mfsolve/mfsolve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "190dszcnvy5j5bs3n0kya8a9nq0vdhrpgpndjpsxw7x70y3hc9d2"))))
    (properties `((upstream-name . "mfsolve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0938ji6l1bx787lxcw6rzjwskm9vxm615cvx7hxpbwp0hbxrj5sa")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-mtl-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/mfsolve")
    (synopsis "Equation solver and calculator à la metafont")
    (description
     "An equation solver and calculator in the spirit of Metafont.

Like metafont, it can solve linear equations, and evaluate nonlinear expressions.  In addition to metafont, it also solves for angles, and makes the solution independend of the order of the equations.")
    (license license:bsd-3)))

haskell-8.10-mfsolve

(define-public haskell-8.10-microlens-platform
  (package
    (name "haskell-8.10-microlens-platform")
    (version "0.4.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-platform/microlens-platform-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0z8snyzy18kqj32fb89mzgscjrg6w2z0jkkj4b9vl2jvbps0gkg6"))))
    (properties `((upstream-name . "microlens-platform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-ghc)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens + all batteries included (best for apps)")
    (description
     "This package exports a module which is the recommended starting point for using <http://hackage.haskell.org/package/microlens microlens> if you aren't trying to keep your dependencies minimal. By importing @@Lens.Micro.Platform@@ you get all functions and instances from <http://hackage.haskell.org/package/microlens microlens>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>, as well as instances for @@Vector@@, @@Text@@, and @@HashMap@@.

The minor and major versions of microlens-platform are incremented whenever the minor and major versions of any other microlens package are incremented, so you can depend on the exact version of microlens-platform without specifying the version of microlens (microlens-mtl, etc) you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-8.10-microlens-platform

(define-public haskell-8.10-min-max-pqueue
  (package
    (name "haskell-8.10-min-max-pqueue")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)))
    (home-page "https://github.com/zliu41/min-max-pqueue")
    (synopsis "Double-ended priority queues.")
    (description
     "Min-max priority queues, also known as double-ended priority queues.")
    (license license:bsd-3)))

haskell-8.10-min-max-pqueue

(define-public haskell-8.10-mixed-types-num
  (package
    (name "haskell-8.10-mixed-types-num")
    (version "0.5.9.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mixed-types-num/mixed-types-num-"
                    version ".tar.gz"))
              (sha256
               (base32
                "009hsagx0g1myf2jlljqnf96mwnz3a4jbcmrcjs0lizskprzj1n2"))))
    (properties `((upstream-name . "mixed-types-num") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-collect-errors)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hspec-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)))
    (home-page "https://github.com/michalkonecny/mixed-types-num#readme")
    (synopsis
     "Alternative Prelude with numeric and logic expressions typed bottom-up")
    (description
     "Please see the README on GitHub at <https://github.com/michalkonecny/mixed-types-num#readme>")
    (license license:bsd-3)))

haskell-8.10-mixed-types-num

(define-public haskell-8.10-monad-par
  (package
    (name "haskell-8.10-monad-par")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-par/monad-par-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1a8m99g9x1ivch4vhksk7fdzygbil3d33w8gdqngxbmwdikdafl2"))))
    (properties `((upstream-name . "monad-par") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-chaselev" "-f-newgeneric")
       #:cabal-revision
       ("2" "1q4npp0vrsjpxk7n7rcf3lgqg1sf2qx628ciiw48al9y9xlznsaz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-abstract-deque)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-abstract-par)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-par-extras)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/simonmar/monad-par")
    (synopsis "A library for parallel programming based on a monad")
    (description
     "The 'Par' monad offers a simple API for parallel programming.  The
library works for parallelising both pure and @@IO@@ computations,
although only the pure version is deterministic.  The default
implementation provides a work-stealing scheduler and supports
forking tasks that are much lighter weight than IO-threads.

For complete documentation see \"Control.Monad.Par\".

Some examples of use can be found in the @@examples/@@ directory of
the source package.

Other related packages:

* @@abstract-par@@ provides the type classes that abstract over different
implementations of the @@Par@@ monad.

* @@monad-par-extras@@ provides extra combinators and monad transformers layered on top of
the @@Par@@ monad.

Changes in 0.3.4 relative to 0.3:

* Fix bugs that cause \"thread blocked indefinitely on MVar\" crashes.

* Added \"Control.Monad.Par.IO\"")
    (license license:bsd-3)))

haskell-8.10-monad-par

(define-public haskell-8.10-mwc-probability
  (package
    (name "haskell-8.10-mwc-probability")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-probability/mwc-probability-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15gpvx1rhr24zvj6pfgyy9g2vnhgym5crmz4py3nly2jcmy9k39z"))))
    (properties `((upstream-name . "mwc-probability") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/jtobin/mwc-probability")
    (synopsis "Sampling function-based probability distributions.")
    (description
     "A simple probability distribution type, where distributions are characterized
by sampling functions.

This implementation is a thin layer over @@mwc-random@@, which handles RNG
state-passing automatically by using a @@PrimMonad@@ like @@IO@@ or @@ST s@@ under
the hood.

/Examples/

Transform a distribution's support while leaving its density structure
invariant:

> -- uniform over [0, 1] to uniform over [1, 2]
> fmap succ uniform

Sequence distributions together using bind:

> -- a beta-binomial compound distribution
> beta 1 10 >>= binomial 10

Use do-notation to build complex joint distributions from composable,
local conditionals:

> hierarchicalModel = do
>   [c, d, e, f] <- replicateM 4 $ uniformR (1, 10)
>   a <- gamma c d
>   b <- gamma e f
>   p <- beta a b
>   n <- uniformR (5, 10)
>   binomial n p")
    (license license:expat)))

haskell-8.10-mwc-probability

(define-public haskell-8.10-mwc-random-monad
  (package
    (name "haskell-8.10-mwc-random-monad")
    (version "0.7.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-random-monad/mwc-random-monad-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h4ljwwhqg4yy513lqk2ix0m9q2hmk276hgfrc6n3ja6wqbpkwyh"))))
    (properties `((upstream-name . "mwc-random-monad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-monad-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/mwc-random-monad")
    (synopsis "Monadic interface for mwc-random")
    (description "Simple monadic interface for mwc-random.")
    (license license:bsd-3)))

haskell-8.10-mwc-random-monad

(define-public haskell-8.10-netpbm
  (package
    (name "haskell-8.10-netpbm")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/netpbm/netpbm-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0728k34q14f3rv6rfln7lh8clb1r7nigxri6fkl4q7dbf6i8n86p"))))
    (properties `((upstream-name . "netpbm") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-attoparsec-binary)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-storable-record)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-vector-th-unbox)))
    (home-page "https://github.com/nh2/haskell-netpbm")
    (synopsis "Loading PBM, PGM, PPM image files")
    (description
     "This package contains pure Haskell parsers for the netpbm image formats: PBM, PGM and PPM, for both ASCII and binary encodings.

All netpbm image formats are implemented (P1 - P6).

The current implementation parses PPM images at around 10 MB/s on a Core i5-2520M.")
    (license license:expat)))

haskell-8.10-netpbm

(define-public haskell-8.10-once
  (package
    (name "haskell-8.10-once")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/once/once-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0az973cg4mf1azvh3x1gvp395ism7300mlajj9pvqmawvfar3g9h"))))
    (properties `((upstream-name . "once") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://gitlab.com/kaction/haskell-once")
    (synopsis "memoization for IO actions and functions")
    (description
     "Package provides single polymorphic function 'once', that allows you
to memoize IO actions and functions, evaluating them at most once.

>>> let mkStamp = (putStrLn \"stamping\" >> writeFile \"/tmp/stamp\" \"\") :: IO ()
>>> -- onceStamp :: IO ()
>>> onceStamp <- once mkStamp
>>> -- onceStamp actually evaluates mkStamp it wraps first time.
>>> onceStamp
stamping
>>> -- but second time result `()' is memoized, no action is performed.
>>> onceStamp
>>> -- we can memoize functions too
>>> foo <- once $ \\x -> print \"foo\" >> print (x :: Int)
>>> -- action will be performed once for every distinct argument
>>> foo 10
foo
10
>>> foo 10
10
>>> foo 4
foo
4")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-once

(define-public haskell-8.10-optics-extra
  (package
    (name "haskell-8.10-optics-extra")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-extra/optics-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15vnznmi4h9xrrp7dk6fqgz9cwlqlmdr2h4nx1n5q6hi2ic1bmm4"))))
    (properties `((upstream-name . "optics-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1mfxbi2a0hbdzd5blps2s6ik0phia5w8nh9fs3wfa990m63nsscr")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/optics-extra")
    (synopsis "Extra utilities and instances for optics-core")
    (description
     "This package provides extra definitions and instances that extend the
@@<https://hackage.haskell.org/package/optics-core optics-core>@@ package,
without incurring too many dependencies.  See the
@@<https://hackage.haskell.org/package/optics optics>@@ package for more
documentation.")
    (license license:bsd-3)))

haskell-8.10-optics-extra

(define-public haskell-8.10-partial-semigroup
  (package
    (name "haskell-8.10-partial-semigroup")
    (version "0.5.1.14")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/partial-semigroup/partial-semigroup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11xbdv24jy54wniappiqp6j27nm3wjgrbc8zmjkbfwdgb7fzlrws"))))
    (properties `((upstream-name . "partial-semigroup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fenable-hedgehog" "-fenable-doctest")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)))
    (home-page "https://github.com/chris-martin/partial-semigroup")
    (synopsis "A partial binary associative operator")
    (description
     "A partial semigroup is like a semigroup, but the operator
is partial. We represent this in Haskell as a total function
@@(<>?) :: a -> a -> Maybe a@@.

The
<https://hackage.haskell.org/package/partial-semigroup-hedgehog partial-semigroup-hedgehog>
companion package provides support for checking the partial
semigroup associativity axiom using the
<https://hackage.haskell.org/package/hedgehog hedgehog>
package.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-partial-semigroup

(define-public haskell-8.10-perfect-hash-generator
  (package
    (name "haskell-8.10-perfect-hash-generator")
    (version "0.2.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/perfect-hash-generator/perfect-hash-generator-"
                    version ".tar.gz"))
              (sha256
               (base32
                "045iyxjnx1yzl9xqk5fv8qxjz29sg2pfndry1v24z6a5r88pcwnz"))))
    (properties `((upstream-name . "perfect-hash-generator") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-ordlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/kostmo/perfect-hash-generator#readme")
    (synopsis "Perfect minimal hashing implementation in native Haskell")
    (description
     "A <https://en.wikipedia.org/wiki/Perfect_hash_function perfect hash function> for a set @@S@@ is a hash function that maps distinct elements in @@S@@ to a set of integers, with __no collisions__. A <https://en.wikipedia.org/wiki/Perfect_hash_function#Minimal_perfect_hash_function minimal perfect hash function> is a perfect hash function that maps @@n@@ keys to @@n@@ __consecutive__ integers, e.g. the numbers from @@0@@ to @@n-1@@.

In contrast with the <https://hackage.haskell.org/package/PerfectHash PerfectHash package>, which is a binding to a C-based library, this package is a fully-native Haskell implementation.

It is intended primarily for generating C code for embedded applications (compare to @@<https://www.gnu.org/software/gperf/manual/gperf.html#Search-Structures gperf>@@). The output of this tool is a pair of arrays that can be included in generated C code for __<https://en.wikipedia.org/wiki/C_dynamic_memory_allocation allocation-free> hash tables__.

Though lookups also perform reasonably well for Haskell applications, it hasn't been benchmarked thorougly with respect to other data structures.

This implementation was adapted from <http://stevehanov.ca/blog/index.php?id=119 Steve Hanov's Blog>.

= Usage
The library is written generically to hash both strings and raw integers according to the <http://isthe.com/chongo/tech/comp/fnv/ FNV-1a algorithm>. Integers are split by octets before hashing.

> import Data.PerfectHash.Construction (createMinimalPerfectHash)
> import qualified Data.HashMap.Strict as HashMap
>
> tuples = [
>    (1000, 1)
>  , (5555, 2)
>  , (9876, 3)
>  ]
>
> lookup_table = createMinimalPerfectHash $ HashMap.fromList tuples

Generation of C code based on the arrays in @@lookup_table@@ is left as an exercise to the reader. Algorithm documentation in the \"Data.PerfectHash.Hashing\" and \"Data.PerfectHash.Lookup\" modules will be helpful.

See the @@hash-perfectly-strings-demo@@ and @@hash-perfectly-ints-demo@@, as well as the test suite, for working examples.

> $ stack build
> $ stack exec hash-perfectly-strings-demo")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-perfect-hash-generator

(define-public haskell-8.10-pipes-random
  (package
    (name "haskell-8.10-pipes-random")
    (version "1.0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pipes-random/pipes-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xsb0cxksrrkv81yk9qb7b3g7niz3sc7sz0960hxn16hwjymkv5k"))))
    (properties `((upstream-name . "pipes-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-pipes)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/fosskers/pipes-random")
    (synopsis "Producers for handling randomness.")
    (description "Producers for handling randomness.")
    (license license:bsd-3)))

haskell-8.10-pipes-random

(define-public haskell-8.10-polysemy
  (package
    (name "haskell-8.10-polysemy")
    (version "1.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/polysemy/polysemy-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1d8qllllnwwjrjdaadgk4h07d7n2whw6hl8q3ikd474kfdagbiwz"))))
    (properties `((upstream-name . "polysemy") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-dump-core" "-ferror-messages")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-async)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-first-class-families)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-type-errors)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-type-errors-pretty)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-unagi-chan)))
    (home-page "https://github.com/polysemy-research/polysemy#readme")
    (synopsis "Higher-order, low-boilerplate free monads.")
    (description
     "Please see the README on GitHub at <https://github.com/isovector/polysemy#readme>")
    (license license:bsd-3)))

haskell-8.10-polysemy

(define-public haskell-8.10-pptable
  (package
    (name "haskell-8.10-pptable")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-boxes)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-generic-deriving)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/gdevanla/pptable#readme")
    (synopsis "Pretty Print containers in a tabular format")
    (description
     "When you are faced with tens of records data types contained in a list or similar structure if becomes difficult to view all records during iterative development. This library provides a generic funciton to print any such record types in a tabular format that makes visualizing the data more pleasing. Please see README.md for examples of this.")
    (license license:expat)))

haskell-8.10-pptable

(define-public haskell-8.10-pretty-sop
  (package
    (name "haskell-8.10-pretty-sop")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pretty-sop/pretty-sop-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10vybwbkqgr3fi13c5qwwhrwns9sdj7zvlkz6vag966pk238gnxy"))))
    (properties `((upstream-name . "pretty-sop") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "04gr1aaqaq347rv5vqh93qcnbc53y55hrds73js5329z2j1gbmng")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generics-sop)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)))
    (home-page "https://hackage.haskell.org/package/pretty-sop")
    (synopsis "A generic pretty-printer using generics-sop")
    (description
     "This library contains a generic implementation of the 'prettyVal'
function from the @@<https://hackage.haskell.org/package/pretty-show pretty-show>@@
package. Using the pretty printer, values can easily be rendered to
strings and HTML documents in a uniform way.

This library makes use of the
@@<https://hackage.haskell.org/package/generics-sop generics-sop>@@ package and
is an example of a generic function defined in the SOP style.
")
    (license license:bsd-3)))

haskell-8.10-pretty-sop

(define-public haskell-8.10-proto3-wire
  (package
    (name "haskell-8.10-proto3-wire")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto3-wire/proto3-wire-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fdzml0nsbz1bqf3lskvmfn46pgl5rnrc4b7azq8f0csm0v9ah4d"))))
    (properties `((upstream-name . "proto3-wire") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-parameterized)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://hackage.haskell.org/package/proto3-wire")
    (synopsis
     "A low-level implementation of the Protocol Buffers (version 3) wire format")
    (description "")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-proto3-wire

(define-public haskell-8.10-protobuf
  (package
    (name "haskell-8.10-protobuf")
    (version "0.2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protobuf/protobuf-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x99rf8hl5kcldj9fj6z22fxffv3wic5k6wmipnrayp9jj6zzyx9"))))
    (properties `((upstream-name . "protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/alphaHeavy/protobuf")
    (synopsis "Google Protocol Buffers via GHC.Generics")
    (description
     "Google Protocol Buffers via GHC.Generics.

Protocol Buffers are a way of encoding structured data in an efficient yet extensible format.
Google uses Protocol Buffers for almost all of its internal RPC protocols and file formats.

This library supports a useful subset of Google Protocol Buffers message specifications
in a Haskell. No preprocessor or additional build steps are required for message encoding and decoding.

Record specifications are built by defining records with specially defined fields that
capture most of the Protocol Buffers specification language.
")
    (license license:bsd-3)))

haskell-8.10-protobuf

(define-public haskell-8.10-protocol-radius
  (package
    (name "haskell-8.10-protocol-radius")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cereal)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/protocol-radius")
    (synopsis "parser and printer for radius protocol packet")
    (description "This package provides
parser and printer for radius protocol packet.")
    (license license:bsd-3)))

haskell-8.10-protocol-radius

(define-public haskell-8.10-quickcheck-instances
  (package
    (name "haskell-8.10-quickcheck-instances")
    (version "0.3.25.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/quickcheck-instances/quickcheck-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ihqbarl2ddrfgq3mq09lswwn8213qpw13g49qxs5mjkcm6gbk3h"))))
    (properties `((upstream-name . "quickcheck-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder")
       #:cabal-revision
       ("2" "1lsa3pbg4ljlk29fhm3mdklnx3hwffyga1nr5krbpcyc3ywq8fq8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-fix)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-integer-logarithms)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-splitmix)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-strict)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-time-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-uuid-types)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-quickcheck-instances

(define-public haskell-8.10-random-bytestring
  (package
    (name "haskell-8.10-random-bytestring")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-bytestring/random-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f4n41gqxxggadysvx3vg2iq89z7i7692ccrfmiajq73lbp6y34j"))))
    (properties `((upstream-name . "random-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-pcg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-pcg-random)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://www.github.com/larskuhtz/random-bytestring")
    (synopsis "Efficient generation of random bytestrings")
    (description
     "__This package is deprecated__. Please, use
'genByteString' from the [random
package (version >=1.2)](https://hackage.haskell.org/package/random) instead.

Efficient generation of random bytestrings. The implementation
populates uninitialized memory with uniformily distributed random
64 bit words (and 8 bit words for remaining bytes at the end of
the bytestring).

Random words are generated using the PRNG from
the [mwc-random](https://hackage.haskell.org/package/mwc-random) package
or the [pcg-random](https://hackage.haskell.org/package/pcg-random)
package. It is also possible to use a custom PRNG by providing
an instance for the 'RandomWords' type class and using the function
'generate' from the module \"Data.ByteString.Random.Internal\".

The generated byte strings are suitable for statistical
applications. They are /not/ suitable for cryptographic
applications.

![benchmarks](https://hackage.haskell.org/package/random-bytestring-0.1.3.2/src/benchmarks.png)

![detailed benchmarks](https://hackage.haskell.org/package/random-bytestring-0.1.3.2/src/benchmarks-details.png)")
    (license license:expat)))

haskell-8.10-random-bytestring

(define-public haskell-8.10-random-source
  (package
    (name "haskell-8.10-random-source")
    (version "0.3.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-source/random-source-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lwqbd0h495srgi2p8fsmsfk5hv5m3f6cxm12j61xx94fdyn98sv"))))
    (properties `((upstream-name . "random-source") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4" "-fmtl2")
       #:cabal-revision
       ("2" "1bxw5mrrzyhd74jclgn1b6x78rsh301ys86m2jrkcy4zsxhaqr99")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-flexible-defaults)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-mersenne-random-pure64)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-stateref)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-th-extras)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mokus0/random-fu")
    (synopsis "Generic basis for random number generators")
    (description "Random number generation based on entropy sources
able to produce a small but well-defined set of
primitive variates.  Also includes facilities for
\\\"completing\\\" partial implementations, making it
easy to define new entropy sources in a way that
is naturally forward-compatible.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.10-random-source

(define-public haskell-8.10-rank2classes
  (package
    (name "haskell-8.10-rank2classes")
    (version "1.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/rank2classes/rank2classes-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c220gxk7dzn2gb0g34bvjjwjw5ir5i8qa089mcpyqqaba8jzxaw"))))
    (properties `((upstream-name . "rank2classes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fuse-template-haskell")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)))
    (home-page "https://github.com/blamario/grampa/tree/master/rank2classes")
    (synopsis
     "standard type constructor class hierarchy, only with methods of rank 2 types")
    (description
     "A mirror image of the standard type constructor class hierarchy rooted in 'Functor', except with methods of rank 2
types and class instances of kind @@(k->*)->*@@. The classes enable generic handling of heterogenously typed data
structures and other neat tricks.")
    (license license:bsd-3)))

haskell-8.10-rank2classes

(define-public haskell-8.10-reform-blaze
  (package
    (name "haskell-8.10-reform-blaze")
    (version "0.2.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/reform-blaze/reform-blaze-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r5j827diiqybjm75j0gmfb81q7irdc11sj714589xbb6lkz3g0i"))))
    (properties `((upstream-name . "reform-blaze") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-blaze-html)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-blaze-markup)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-reform)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "Add support for using blaze-html with Reform")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with blaze-html.")
    (license license:bsd-3)))

haskell-8.10-reform-blaze

(define-public haskell-8.10-regex
  (package
    (name "haskell-8.10-regex")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/regex/regex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0gjascxc2x4mxq570wv1q5fn6qfkk9lc4x0xdkhqrd84aw4pc3qm"))))
    (properties `((upstream-name . "regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-regex-base)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
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

haskell-8.10-regex

(define-public haskell-8.10-regex-applicative
  (package
    (name "haskell-8.10-regex-applicative")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-applicative/regex-applicative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0di66pi2kq5rrsn0k6pwakzwa0bgi9jfb2csm72kp5gzqdws8s8p"))))
    (properties `((upstream-name . "regex-applicative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-filtrable)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)))
    (home-page "https://github.com/feuerbach/regex-applicative")
    (synopsis "Regex-based parsing with applicative interface")
    (description
     "regex-applicative is a Haskell library for parsing using regular expressions.
Parsers can be built using Applicative interface.")
    (license license:expat)))

haskell-8.10-regex-applicative

(define-public haskell-8.10-relude
  (package
    (name "haskell-8.10-relude")
    (version "0.7.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relude/relude-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gx1h3656wz80v72acqky88iv7a2shinfv6apzzyjxii8lc22jf7"))))
    (properties `((upstream-name . "relude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/kowainik/relude")
    (synopsis
     "Safe, performant, user-friendly and lightweight Haskell Standard Library")
    (description
     "@@__relude__@@ is an alternative prelude library. If you find the default
@@Prelude@@ unsatisfying, despite its advantages, consider using @@relude@@
instead.

== Relude goals and design principles
* __Productivity.__ You can be more productive with a \"non-standard\" standard
library, and @@relude@@ helps you with writing safer and more
efficient code faster.

* __Total programming__. Usage of [/partial functions/](https://www.reddit.com/r/haskell/comments/5n51u3/why_are_partial_functions_as_in_head_tail_bad/)
can lead to unexpected bugs and runtime exceptions in pure
code. The types of partial functions lie about their behaviour. And
even if it is not always possible to rely only on total functions,
@@relude@@ strives to encourage best-practices and reduce the
chances of introducing a bug.

+---------------------------------+--------------------------------------------+
| __Partial__                     | __Total__                                  |
+=================================+============================================+
| @@head :: [a] -> a@@              | @@head :: NonEmpty a -> a@@                  |
+---------------------------------+--------------------------------------------+
| @@tail :: [a] -> [a]@@            | @@tail :: NonEmpty a -> [a]@@                |
+---------------------------------+--------------------------------------------+
| @@read :: Read a => String -> a@@ | @@readMaybe :: Read a => String -> Maybe a@@ |
+---------------------------------+--------------------------------------------+
| @@fromJust :: Maybe a -> a@@      | @@fromMaybe :: a -> Maybe a -> a@@           |
+---------------------------------+--------------------------------------------+

* __Type-safety__. We use the /\"make invalid states unrepresentable\"/ motto as one
of our guiding principles. If it is possible, we express this concept through the
types.
/Example:/ @@ whenNotNull :: Applicative f => [a] -> (NonEmpty a -> f ()) -> f () @@

* __Performance.__ We prefer @@Text@@ over @@[String](https://www.reddit.com/r/haskell/comments/29jw0s/whats_wrong_with_string/)@@,
use space-leaks-free functions (e.g. our custom performant @@sum@@ and @@product@@),
introduce @@\\@{\\-\\# INLINE \\#\\-\\@}@@ and @@\\@{\\-\\# SPECIALIZE \\#\\-\\@}@@ pragmas where
appropriate, and make efficient container types
(e.g. @@Map@@, @@HashMap@@, @@Set@@) more accesible.

* __Minimalism__ (low number of dependencies). We don not force users of
@@relude@@ to stick to any specific lens or text formatting or logging
library. Where possible, @@relude@@ depends only on boot libraries.
The [Dependency graph](https://raw.githubusercontent.com/kowainik/relude/master/relude-dependency-graph.png)
of @@relude@@ can give you a clearer picture.

* __Convenience__. Despite minimalism, we want to bring commonly used
types and functions into scope, and make available functions easier
to use. Some examples of conveniences:

1. No need to import types like @@NonEmpty@@, @@Text@@, @@Set@@, @@Reader[T]@@, @@MVar@@, @@STM@@

2. Functions like @@liftIO@@, @@fromMaybe@@, @@sortWith@@ are avaiable by default as well

3. @@IO@@ actions are lifted to @@MonadIO@@

* __Excellent documentation.__

1. Tutorial

2. Migration guide from @@Prelude@@

3. Haddock for every function with examples tested by
[doctest](http://hackage.haskell.org/package/doctest).

4. Documentation regarding [internal module structure](http://hackage.haskell.org/package/relude/docs/Relude.html)

5. @@relude@@-specific [HLint](http://hackage.haskell.org/package/hlint) rules: @@[.hlint.yaml](https://github.com/kowainik/relude/blob/master/.hlint.yaml)@@

* __User-friendliness.__ Anyone should be able to quickly migrate to @@relude@@. Only
some basic familiarity with the common libraries like @@text@@ and @@containers@@
should be enough (but not necessary).

* __Exploration.__ We have space to experiment with new ideas and proposals
without introducing breaking changes. @@relude@@ uses the approach with
@@Extra.*@@ modules which are not exported by default. The chosen approach makes it quite
easy for us to provide new functionality without breaking anything and let
the users decide to use it or not.")
    (license license:expat)))

haskell-8.10-relude

(define-public haskell-8.10-rio
  (package
    (name "haskell-8.10-rio")
    (version "0.1.21.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rio/rio-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "013m4xgsmg8h1rba9krxppz49lc5wz26gksms5zibsjj0w59m58h"))))
    (properties `((upstream-name . "rio") (hidden? . #f)))
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
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-typed-process)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-unliftio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/commercialhaskell/rio#readme")
    (synopsis "A standard library for Haskell")
    (description
     "See README and Haddocks at <https://www.stackage.org/package/rio>")
    (license license:expat)))

haskell-8.10-rio

(define-public haskell-8.10-semigroupoids
  (package
    (name "haskell-8.10-semigroupoids")
    (version "5.3.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semigroupoids/semigroupoids-"
                    version ".tar.gz"))
              (sha256
               (base32
                "169pjrm7lxjxrqj5q1iyl288bx5nj8n0pf2ri1cclxccqnvcsibd"))))
    (properties `((upstream-name . "semigroupoids") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcontainers" "-fcontravariant" "-fdistributive" "-fcomonad" "-ftagged" "-funordered-containers")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-orphans)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-comonad)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-distributive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
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

We describe the relationships between the type classes defined in this package
and those from `base` (and some from `contravariant`) in the diagram below.
Thick-bordered nodes correspond to type classes defined in this package;
thin-bordered ones correspond to type classes from elsewhere. Solid edges
indicate a subclass relationship that actually exists; dashed edges indicate a
subclass relationship that /should/ exist, but currently doesn't.

<<https://raw.githubusercontent.com/ekmett/semigroupoids/master/img/classes.svg Relationships among type classes from this package and others>>

Apply, Bind, and Extend (not shown) give rise the Static, Kleisli and Cokleisli semigroupoids respectively.

This lets us remove many of the restrictions from various monad transformers
as in many cases the binding operation or @@\\<*\\>@@ operation does not require them.

Finally, to work with these weaker structures it is beneficial to have containers
that can provide stronger guarantees about their contents, so versions of 'Traversable'
and 'Foldable' that can be folded with just a 'Semigroup' are added.")
    (license license:bsd-2)))

haskell-8.10-semigroupoids

(define-public haskell-8.10-semirings
  (package
    (name "haskell-8.10-semirings")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/semirings/semirings-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16q535bvjl7395sqkx6zlw48y4fzr7irp44pcp7w9irpn4cncdcr"))))
    (properties `((upstream-name . "semirings") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcontainers" "-funordered-containers")
       #:cabal-revision
       ("1" "1c06yhfa053sv3rfz0d72a33l5qb0xmj1b3hy2z7pzxrcay6g1yc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-base-compat-batteries)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "http://github.com/chessai/semirings")
    (synopsis "two monoids as one, in holy haskimony")
    (description
     "Haskellers are usually familiar with monoids and semigroups. A monoid has an appending operation `<>` (or `mappend`),
and an identity element, `mempty`. A semigroup has an appending `<>` operation, but does not require a `mempty` element.

A Semiring has two appending operations, `plus` and `times`, and two respective identity elements, `zero` and `one`.

More formally, a Semiring R is a set equipped with two binary relations `+` and `*`, such that:

(R,+) is a commutative monoid with identity element 0,

(R,*) is a monoid with identity element 1,

(*) left and right distributes over addition, and

multiplication by '0' annihilates R.")
    (license license:bsd-3)))

haskell-8.10-semirings

(define-public haskell-8.10-serialise
  (package
    (name "haskell-8.10-serialise")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/serialise/serialise-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07i50rza58x8j7kw9w2mhbks41gjv6xgnlgfdb0hw2cwdmkrmjqd"))))
    (properties `((upstream-name . "serialise") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnewtime15")
       #:cabal-revision
       ("1" "0rgc0sr4csmiq38sf6x1xz6cqmp30nn8837xsfwpvcfb7kh4bqy0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-cborg)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-half)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-strict)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-these)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/well-typed/cborg")
    (synopsis "A binary serialisation library for Haskell values.")
    (description
     "This package (formerly @@binary-serialise-cbor@@) provides pure, efficient
serialization of Haskell values directly into @@ByteString@@s for storage or
transmission purposes. By providing a set of type class instances, you can
also serialise any custom data type you have as well.

The underlying binary format used is the 'Concise Binary Object
Representation', or CBOR, specified in RFC 7049. As a result,
serialised Haskell values have implicit structure outside of the
Haskell program itself, meaning they can be inspected or analyzed
without custom tools.

An implementation of the standard bijection between CBOR and JSON is provided
by the [cborg-json](/package/cborg-json) package. Also see
[cbor-tool](/package/cbor-tool) for a convenient command-line utility for
working with CBOR data.")
    (license license:bsd-3)))

haskell-8.10-serialise

(define-public haskell-8.10-shake
  (package
    (name "haskell-8.10-shake")
    (version "0.19.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/shake/shake-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0hnm3h1ni4jq73a7b7yxhbg9wm8mrjda5kmkpnmclynnpwvvi7bx"))))
    (properties `((upstream-name . "shake") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-cloud" "-f-embed-files")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-filepattern)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-heaps)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-js-dgtable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-js-flot)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-js-jquery)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://shakebuild.com")
    (synopsis
     "Build system library, like Make, but more accurate dependencies.")
    (description
     "Shake is a Haskell library for writing build systems - designed as a
replacement for @@make@@. See \"Development.Shake\" for an introduction,
including an example. The homepage contains links to a user
manual, an academic paper and further information:
<https://shakebuild.com>

To use Shake the user writes a Haskell program
that imports \"Development.Shake\", defines some build rules, and calls
the 'Development.Shake.shakeArgs' function. Thanks to do notation and infix
operators, a simple Shake build system
is not too dissimilar from a simple Makefile. However, as build systems
get more complex, Shake is able to take advantage of the excellent
abstraction facilities offered by Haskell and easily support much larger
projects. The Shake library provides all the standard features available in other
build systems, including automatic parallelism and minimal rebuilds.
Shake also provides more accurate dependency tracking, including seamless
support for generated files, and dependencies on system information
(e.g. compiler version).")
    (license license:bsd-3)))

haskell-8.10-shake

(define-public haskell-8.10-shellmet
  (package
    (name "haskell-8.10-shellmet")
    (version "0.0.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shellmet/shellmet-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nrva50knx3ca0m6f84f1yim4apj949fqqmmrxqmxhlixjzafl8v"))))
    (properties `((upstream-name . "shellmet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)))
    (home-page "https://github.com/kowainik/shellmet")
    (synopsis "Out of the shell solution for scripting in Haskell")
    (description
     "Shellmet provides easy and convenient way to call shell commands from Haskell programs")
    (license license:mpl2.0)))

haskell-8.10-shellmet

(define-public haskell-8.10-snap-core
  (package
    (name "haskell-8.10-snap-core")
    (version "1.0.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/snap-core/snap-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0hf671g7h4nikfvi05q3mmcxhfcsh874dkansssn0mc68k9fsak4"))))
    (properties `((upstream-name . "snap-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-portable" "-f-debug" "-fnetwork-uri")
       #:cabal-revision
       ("3" "02r6plphl4vqig3xap9amdib0qjd98nqpn5jhy6hsbiwh3p7cy9b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-bytestring-builder)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-io-streams)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-monad-control)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-network)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-network-uri)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-old-locale)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-readable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-posix)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unix-compat)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-snap-core

(define-public haskell-8.10-sparse-linear-algebra
  (package
    (name "haskell-8.10-sparse-linear-algebra")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sparse-linear-algebra/sparse-linear-algebra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jfwydr0pzph932h7jvnmp1d8qqrhxsq7rbb6cjbmga55s5pfqn7"))))
    (properties `((upstream-name . "sparse-linear-algebra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-matrix-market-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-mwc-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-vector-algorithms)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ocramz/sparse-linear-algebra")
    (synopsis "Numerical computing in native Haskell")
    (description
     "/Overview/

The @@sparse-linear-algebra@@ library provides iterative linear solvers, matrix decompositions, eigenvalue algorithms and related utilities. The user interface is provided by the top-level module \"Numeric.LinearAlgebra.Sparse\":

@@
import           Numeric.LinearAlgebra.Sparse
@@

Please refer to the README file for usage examples.
")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-sparse-linear-algebra

(define-public haskell-8.10-squeather
  (package
    (name "haskell-8.10-squeather")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-lifted-base)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-temporary)))
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

haskell-8.10-squeather

(define-public haskell-8.10-streaming-bytestring
  (package
    (name "haskell-8.10-streaming-bytestring")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/streaming-bytestring/streaming-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yri2g0wx2fila25ang04nsv4i12b4yhwqwcfkkpx1sz8fhzibxy"))))
    (properties `((upstream-name . "streaming-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-mmorph)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-resourcet)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-streaming)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-transformers-base)))
    (home-page "https://github.com/haskell-streaming/streaming-bytestring")
    (synopsis "Fast, effectful byte streams.")
    (description
     "This library enables fast and safe streaming of byte data, in either @@Word8@@ or
@@Char@@ form. It is a core addition to the <https://github.com/haskell-streaming streaming ecosystem>
and avoids the usual pitfalls of combinbing lazy @@ByteString@@s with lazy @@IO@@.

We follow the philosophy shared by @@streaming@@ that \"the best API is the one
you already know\". Thus this library mirrors the API of the @@bytestring@@
library as closely as possible.

See the module documentation and the README for more information.")
    (license license:bsd-3)))

haskell-8.10-streaming-bytestring

(define-public haskell-8.10-string-transform
  (package
    (name "haskell-8.10-string-transform")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-transform/string-transform-"
                    version ".tar.gz"))
              (sha256
               (base32
                "08ay7r8ln4jwn7iq6smbny5lby3xgzlrlqj02yp61n1cn0sgzbhw"))))
    (properties `((upstream-name . "string-transform") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
    (home-page "https://github.com/ncaq/string-transform#readme")
    (synopsis "simple and easy haskell string transform wrapper")
    (description "")
    (license license:expat)))

haskell-8.10-string-transform

(define-public haskell-8.10-symmetry-operations-symbols
  (package
    (name "haskell-8.10-symmetry-operations-symbols")
    (version "0.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/symmetry-operations-symbols/symmetry-operations-symbols-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y9m1z72kh8lhmig0lpp67p3s74s706y6lbzlr5hk47mpcw7fymh"))))
    (properties `((upstream-name . "symmetry-operations-symbols")
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
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-matrix)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-matrix-as-xyz)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/narumij/symmetry-operations-symbols#readme")
    (synopsis "Derivation of symbols and coordinate triplets Library")
    (description
     "Please see the README on GitHub at <https://github.com/narumij/symmetry-operations-symbols#readme>")
    (license license:bsd-3)))

haskell-8.10-symmetry-operations-symbols

(define-public haskell-8.10-tasty-hedgehog
  (package
    (name "haskell-8.10-tasty-hedgehog")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hedgehog/tasty-hedgehog-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cy49z8n124xh2ra2482vfy5if1n6d9lbdjma2zg1mxfj0k0zyfb"))))
    (properties `((upstream-name . "tasty-hedgehog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1i7i2yws3bdmsg2hl7dh65zvh9sna3gnlv0l4m1sqqdx5dji1a3w")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-hedgehog)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-expected-failure)))
    (home-page "https://github.com/qfpl/tasty-hedgehog")
    (synopsis "Integration for tasty and hedgehog.")
    (description
     "Integrates the <https://hackage.haskell.org/package/hedgehog hedgehog testing library> with the <https://hackage.haskell.org/package/tasty tasty testing framework>.")
    (license license:bsd-3)))

haskell-8.10-tasty-hedgehog

(define-public haskell-8.10-tasty-hspec
  (package
    (name "haskell-8.10-tasty-hspec")
    (version "1.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-hspec/tasty-hspec-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02s82ijs2ringqxsqbm7m3vcy5brmwxa617azxv0v2phi3rdkjvl"))))
    (properties `((upstream-name . "tasty-hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0za15rg0szacxq9yfxxjzddr77ai7ng5827a20pj9dr5anjlnajj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-core)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mitchellwrosen/tasty-hspec")
    (synopsis "Hspec support for the Tasty test framework.")
    (description "This package provides a Tasty provider for Hspec test
suites.")
    (license license:bsd-3)))

haskell-8.10-tasty-hspec

(define-public haskell-8.10-th-env
  (package
    (name "haskell-8.10-th-env")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-env/th-env-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ksw93npbgr74jy4jhfl4qvbzh4qxy5zvspmfhy1apkl793rs8c1"))))
    (properties `((upstream-name . "th-env") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-th-compat)))
    (home-page "https://github.com/dzhus/th-env#readme")
    (synopsis
     "Template Haskell splice that expands to an environment variable")
    (description
     "TH splice that expands to an environment variable value. Can be used to embed build-time parameters in your application.")
    (license license:bsd-3)))

haskell-8.10-th-env

(define-public haskell-8.10-th-nowq
  (package
    (name "haskell-8.10-th-nowq")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/th-nowq/th-nowq-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "090i4fmdvjjpr8zxiqh7qvdndls18312yi6z4lya2qyjgr0jgwci"))))
    (properties `((upstream-name . "th-nowq") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-markdown-unlit)))
    (home-page "https://github.com/dzhus/th-nowq#readme")
    (synopsis "Template Haskell splice that expands to current time")
    (description
     "TH splice that expands to current time as a string literal in ISO-8601 format. Can be used to embed the compilation timestamp in your application.")
    (license license:bsd-3)))

haskell-8.10-th-nowq

(define-public haskell-8.10-th-orphans
  (package
    (name "haskell-8.10-th-orphans")
    (version "0.13.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-orphans/th-orphans-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03n6qxnpxhbzyzbyrjq77d1y62dwgx39mmxfwmnc04l8pawgrxxz"))))
    (properties `((upstream-name . "th-orphans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "15660jac7m705jp6nm5lia51ifchbjrr6x3kj5sfij9dbj1f5dkj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage006)
                     haskell-8.10-hspec)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-hspec-discover)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-th-compat)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-th-expand-syns)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-th-lift)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-th-reify-many)))
    (home-page "https://hackage.haskell.org/package/th-orphans")
    (synopsis "Orphan instances for TH datatypes")
    (description "Orphan instances for TH datatypes.  In particular, instances
for Ord and Lift, as well as a few missing Show / Eq.  These
instances used to live in haskell-src-meta, and that's where
the version number started.")
    (license license:bsd-3)))

haskell-8.10-th-orphans

(define-public haskell-8.10-tmapchan
  (package
    (name "haskell-8.10-tmapchan")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tmapchan/tmapchan-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1q0ia2p8c5ac91n5l3wk6rfmvj93lb9027p9rfq77lydwv1b8vg8"))))
    (properties `((upstream-name . "tmapchan") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/athanclark/tmapchan#readme")
    (synopsis
     "An insert-ordered multimap (indexed FIFO) which consumes values as you lookup")
    (description "")
    (license license:bsd-3)))

haskell-8.10-tmapchan

(define-public haskell-8.10-triplesec
  (package
    (name "haskell-8.10-triplesec")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1axxq9q33jf79lv0ydwai24bgczvn4pdxw6a7sk3715js2di6xgn")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-cryptonite)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-doctest)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-memory)
                  (@ (gnu packages stackage ghc-8.10 stage008)
                     haskell-8.10-tasty)
                  (@ (gnu packages stackage ghc-8.10 stage009)
                     haskell-8.10-tasty-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/SamProtas/hs-triplesec")
    (synopsis
     "TripleSec is a simple, triple-paranoid, symmetric encryption library")
    (description
     "Additional details about this protocol can be found at the official website: <https://keybase.io/triplesec>

A tutorial for how to use this library can be found in @@ Crypto.TripleSec.Tutorial @@")
    (license license:bsd-3)))

haskell-8.10-triplesec

(define-public haskell-8.10-uniplate
  (package
    (name "haskell-8.10-uniplate")
    (version "1.6.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniplate/uniplate-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lis5qcb5j7yzd1cqjaqpb6bmkyjfb7l4nhk3ykmcma4513cjxz7"))))
    (properties `((upstream-name . "uniplate") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1rvvzmi43gbrww0f17dzchm3g61zvm97arrfa5raljqb1mbibdy8")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage010)
                     haskell-8.10-syb)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/ndmitchell/uniplate#readme")
    (synopsis "Help writing simple, concise and fast generic operations.")
    (description
     "Uniplate is library for writing simple and concise generic operations.
Uniplate has similar goals to the original Scrap Your Boilerplate work,
but is substantially simpler and faster.

To get started with Uniplate you should import one of the three following
modules:

* \"Data.Generics.Uniplate.Data\" - to quickly start writing generic functions.
Most users should start by importing this module.

* \"Data.Generics.Uniplate.Direct\" - a replacement for \"Data.Generics.Uniplate.Data\"
with substantially higher performance (around 5 times), but requires writing
instance declarations.

* \"Data.Generics.Uniplate.Operations\" - definitions of all the operations defined
by Uniplate. Both the above two modules re-export this module.

In addition, some users may want to make use of the following modules:

* \"Data.Generics.Uniplate.Zipper\" - a zipper built on top of Uniplate instances.

* \"Data.Generics.SYB\" - users transitioning from the Scrap Your Boilerplate library.

* \"Data.Generics.Compos\" - users transitioning from the Compos library.

* \"Data.Generics.Uniplate.DataOnly\" - users making use of both @@Data@@ and @@Direct@@
to avoid getting instance conflicts.")
    (license license:bsd-3)))

haskell-8.10-uniplate

(define-public haskell-8.10-uniq-deep
  (package
    (name "haskell-8.10-uniq-deep")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uniq-deep/uniq-deep-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0281yfiv6qmq1q5pvrvf6qg4nwzzav6rvb4mcdzqshsrbw9n12ig"))))
    (properties `((upstream-name . "uniq-deep") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/ncaq/uniq-deep#readme")
    (synopsis "uniq-deep")
    (description
     "alternative of unix uniq command. 'uniq-deep' detect repeated lines unless they are adjacent.")
    (license license:expat)))

haskell-8.10-uniq-deep

(define-public haskell-8.10-validity-unordered-containers
  (package
    (name "haskell-8.10-validity-unordered-containers")
    (version "0.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/validity-unordered-containers/validity-unordered-containers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11ra6d7a711bcl6fndj3xwk3g34nq3bpqdcb8zrpjlv9p4h6n3gj"))))
    (properties `((upstream-name . "validity-unordered-containers")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-validity)))
    (home-page "https://github.com/NorfairKing/validity#readme")
    (synopsis "Validity instances for unordered-containers")
    (description "")
    (license license:expat)))

haskell-8.10-validity-unordered-containers

(define-public haskell-8.10-vault
  (package
    (name "haskell-8.10-vault")
    (version "0.3.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vault/vault-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "181ksk1yixjg0jiggw5jvm8am8m8c7lim4xaixf8qnaqvxm6namc"))))
    (properties `((upstream-name . "vault") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #f
       #:configure-flags (list "-fuseghc")
       #:cabal-revision
       ("2" "1bjwv3nv8jfhrdxa5kn3gvgxmyalpq7592bvyl7bpvcc7bbkfkf3")))
    (outputs (list "out" "static"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://github.com/HeinrichApfelmus/vault")
    (synopsis "a persistent store for values of arbitrary types")
    (description
     "A /vault/ is a persistent store for values of arbitrary types.
It's like having first-class access to the storage space behind IORefs.

The data structure is analogous to a bank vault,
where you can access different bank boxes with different keys;
hence the name.

Also provided is a /locker/ type, representing a store for a single element.")
    (license license:bsd-3)))

haskell-8.10-vault

(define-public haskell-8.10-vty
  (package
    (name "haskell-8.10-vty")
    (version "5.33")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vty/vty-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0qsx4lwlkp6mwyr7rm1r9dg5ic1lc1awqgyag0nj1qgj2gnv6nc9"))))
    (properties `((upstream-name . "vty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1in66nd2xkb6mxxzazny900pz1xj83iqsql42c0rwk72chnnb8cd")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-blaze-builder)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-mtl)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-microlens-th)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage007)
                     haskell-8.10-quickcheck-assertions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage011)
                     haskell-8.10-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-string-qq)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-test-framework-smallcheck)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/jtdaugherty/vty")
    (synopsis "A simple terminal UI library")
    (description
     "vty is terminal GUI library in the niche of ncurses. It is intended to
be easy to use, have no confusing corner cases, and good support for
common terminal types.

See the @@vty-examples@@ package as well as the program
@@test/interactive_terminal_test.hs@@ included in the @@vty@@ package for
examples on how to use the library.

Import the \"Graphics.Vty\" convenience module to get access to the core
parts of the library.

&#169; 2006-2007 Stefan O'Rear; BSD3 license.

&#169; Corey O'Connor; BSD3 license.

&#169; Jonathan Daugherty; BSD3 license.")
    (license license:bsd-3)))

haskell-8.10-vty

(define-public haskell-8.10-ztail
  (package
    (name "haskell-8.10-ztail")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ztail/ztail-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05vpq3kiv1xrby2k1qn41s42cxxxblcgxpnw1sgyznx63pal2hx1"))))
    (properties `((upstream-name . "ztail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-finotify")
       #:cabal-revision
       ("2" "16w0hgjvj45azdgkzvykiznds5sa38mq9xf5022r7qfhpvps65y0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hinotify)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-regex-posix)
                  (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/ztail")
    (synopsis "Multi-file, colored, filtered log tailer.")
    (description
     "An even more improved version of xtail/tail -f, including inotify support, full regex-based filtering, substitution, and colorization.")
    (license license:bsd-3)))

haskell-8.10-ztail

(define-public haskell-8.10-zydiskell
  (package
    (name "haskell-8.10-zydiskell")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zydiskell/zydiskell-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0pbwhvl6mff5k0rvpjijqpncqbm5g53ij1bc3ckq66q2v5ikswk8"))))
    (properties `((upstream-name . "zydiskell") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage012)
                     haskell-8.10-fixed-vector)
                  (@ (gnu packages stackage ghc-8.10 stage005)
                     haskell-8.10-storable-record)))
    (home-page "https://github.com/nerded1337/zydiskell#readme")
    (synopsis
     "Haskell language binding for the Zydis library, a x86/x86-64 disassembler.")
    (description
     "Please see the README on GitHub at <https://github.com/nerded1337/zydiskell#readme>")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-zydiskell

