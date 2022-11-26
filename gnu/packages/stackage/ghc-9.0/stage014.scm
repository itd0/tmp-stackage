;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage014)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.0))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.0-Earley
  (package
    (name "haskell-9.0-Earley")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-ListLike)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/Earley")
    (synopsis "Parsing all context-free grammars using Earley's algorithm.")
    (description "See <https://www.github.com/ollef/Earley> for more
information and
<https://github.com/ollef/Earley/tree/master/examples> for
examples.")
    (license license:bsd-3)))

haskell-9.0-Earley

(define-public haskell-9.0-JuicyPixels-blurhash
  (package
    (name "haskell-9.0-JuicyPixels-blurhash")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/JuicyPixels-blurhash/JuicyPixels-blurhash-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kgl2j7990p8q5yrkn0wgaszc9fzva1pc3277j11k1lbjsymz360"))))
    (properties `((upstream-name . "JuicyPixels-blurhash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "09mlq9874j1lc33mk9f7qx6nwyz58hywnb8r4l1nkmnnbnc56alj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/SamProtas/JuicyPixels-blurhash#readme")
    (synopsis
     "Blurhash is a very compact represenation of a placeholder for an image")
    (description
     "Please see the README on GitHub at <https://github.com/SamProtas/JuicyPixels-blurhash#readme>")
    (license license:bsd-3)))

haskell-9.0-JuicyPixels-blurhash

(define-public haskell-9.0-JuicyPixels-scale-dct
  (package
    (name "haskell-9.0-JuicyPixels-scale-dct")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-carray)
                  (@ (gnu packages stackage ghc-9.0 stage013) haskell-9.0-fft)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/phadej/JuicyPixels-scale-dct#readme")
    (synopsis "Scale JuicyPixels images with DCT")
    (description
     "Scale JuicyPixels Images with DCT

There is also a @@friday@@ version: <http://hackage.haskell.org/package/friday-scale-dct friday-scale-dct>")
    (license license:bsd-3)))

haskell-9.0-JuicyPixels-scale-dct

(define-public haskell-9.0-alerts
  (package
    (name "haskell-9.0-alerts")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/alx741/alerts#readme")
    (synopsis "Alert messages for web applications")
    (description "Alert messages for web applications:

* Bootstrap 3

* Bootstrap 4

* Foundation 5

* Bulma")
    (license license:bsd-3)))

haskell-9.0-alerts

(define-public haskell-9.0-asn1-encoding
  (package
    (name "haskell-9.0-asn1-encoding")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-asn1-types)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-hourglass)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-asn1")
    (synopsis "ASN1 data reader and writer in RAW, BER and DER forms")
    (description
     "ASN1 data reader and writer in raw form with supports for high level forms of ASN1 (BER, and DER).")
    (license license:bsd-3)))

haskell-9.0-asn1-encoding

(define-public haskell-9.0-barrier
  (package
    (name "haskell-9.0-barrier")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/barrier/barrier-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1n8yx66lvyn90ixyvpjafrmhpgnznnqj9il5rixlr651xq0xm5b3"))))
    (properties `((upstream-name . "barrier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-example" "-f-generator" "-f-test-results")
       #:cabal-revision
       ("1" "167akvi72l47gcqbq5609m24469pq0xmv0kjbmivnrxs796gh890")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-svg)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/philopon/barrier")
    (synopsis "Shields.io style badge generator")
    (description
     "see example: <https://github.com/philopon/barrier/blob/master/examples/example.hs>")
    (license license:expat)))

haskell-9.0-barrier

(define-public haskell-9.0-basic-prelude
  (package
    (name "haskell-9.0-basic-prelude")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snoyberg/basic-prelude#readme")
    (synopsis
     "An enhanced core prelude; a common foundation for alternate preludes.")
    (description
     "Please see the README on Github at <https://github.com/snoyberg/basic-prelude#readme>")
    (license license:expat)))

haskell-9.0-basic-prelude

(define-public haskell-9.0-battleship-combinatorics
  (package
    (name "haskell-9.0-battleship-combinatorics")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-combinatorial)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-pooled-io)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prelude-compat)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-set-cover)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-temporary)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hub.darcs.net/thielema/battleship-combinatorics/")
    (synopsis "Compute number of possible arrangements in the battleship game")
    (description
     "Compute number of possible arrangements in the battleship game
with different methods.

<https://en.wikipedia.org/wiki/Battleship_(game)>")
    (license license:bsd-3)))

haskell-9.0-battleship-combinatorics

(define-public haskell-9.0-blas-carray
  (package
    (name "haskell-9.0-blas-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-blas-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-carray)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-netlib-carray)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)))
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

haskell-9.0-blas-carray

(define-public haskell-9.0-blaze-bootstrap
  (package
    (name "haskell-9.0-blaze-bootstrap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/agrafix/blaze-bootstrap")
    (synopsis "Blaze helper functions for bootstrap pages")
    (description "Simplify building blaze and bootstrap powered pages")
    (license license:expat)))

haskell-9.0-blaze-bootstrap

(define-public haskell-9.0-blaze-colonnade
  (package
    (name "haskell-9.0-blaze-colonnade")
    (version "1.2.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-colonnade/blaze-colonnade-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wh0q72qv2s6a42i13lqb94i0b5bgmqwqw7d5xy89dc76j0ncd2d"))))
    (properties `((upstream-name . "blaze-colonnade") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0ps0w3w5h8yzws5biip7yqn097zr2jc4gcih5w7v54cvi3vgpdjc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-colonnade)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/andrewthad/colonnade#readme")
    (synopsis "blaze-html backend for colonnade")
    (description
     "This library provides a backend for using blaze-html with colonnade.
It generates standard HTML tables with `<table>`, `<tbody>`, `<thead>`,
`<tr>`, `<th>`, and `<td>`.")
    (license license:bsd-3)))

haskell-9.0-blaze-colonnade

(define-public haskell-9.0-bytes
  (package
    (name "haskell-9.0-bytes")
    (version "0.17.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bytes/bytes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06kqqk19qjhrwdqi6pyd1lwqfnj2sw3b3s49lc5vr2fmv8gg8mdw"))))
    (properties `((upstream-name . "bytes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0frs6ag93kmg2fw3vd686czx8g7h9qmdn1ip6wdk96d94ap0fz9i")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-binary-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ekmett/bytes")
    (synopsis "Sharing code for serialization between binary and cereal")
    (description "Sharing code for serialization between binary and cereal.")
    (license license:bsd-3)))

haskell-9.0-bytes

(define-public haskell-9.0-bytestring-lexing
  (package
    (name "haskell-9.0-bytestring-lexing")
    (version "0.5.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-lexing/bytestring-lexing-"
                    version ".tar.gz"))
              (sha256
               (base32
                "14nx7sfs75g57mlfiwgzm5sc3wm4va58zryjp27m5lmfdp30873c"))))
    (properties `((upstream-name . "bytestring-lexing") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
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

haskell-9.0-bytestring-lexing

(define-public haskell-9.0-bytestring-trie
  (package
    (name "haskell-9.0-bytestring-trie")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/bytestring-trie/bytestring-trie-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fyrgnyxvdyj69w4m460a2iyqga9v2c46i3pmnif72r5rl6fc70d"))))
    (properties `((upstream-name . "bytestring-trie") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://wrengr.org/software/hackage.html")
    (synopsis "An efficient finite map from bytestrings to values.")
    (description
     "An efficient finite map from bytestrings to values.

The implementation is based on big-endian patricia trees, like
\"Data.IntMap\".  We first trie on the elements of \"Data.ByteString\"
and then trie on the big-endian bit representation of those
elements.  Patricia trees have efficient algorithms for union
and other merging operations, but they're also quick for lookups
and insertions.

If you are only interested in being able to associate strings
to values, then you may prefer the @@hashmap@@ package which is
faster for those only needing a map-like structure.  This package
is intended for those who need the extra capabilities that a
trie-like structure can offer (e.g., structure sharing to reduce
memory costs for highly redundant keys, taking the submap of
all keys with a given prefix, contextual mapping, extracting
the minimum and maximum keys, etc.)")
    (license license:bsd-3)))

haskell-9.0-bytestring-trie

(define-public haskell-9.0-cassava
  (package
    (name "haskell-9.0-cassava")
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
       (list "-f-bytestring--lt-0_10_4")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-Only)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-cassava

(define-public haskell-9.0-cdar-mBound
  (package
    (name "haskell-9.0-cdar-mBound")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/cdar-mBound")
    (synopsis "Exact real arithmetic using Centred Dyadic Approximations")
    (description
     "Please see https://github.com/michalkonecny/cdar/tree/mBound#readme")
    (license license:bsd-3)))

haskell-9.0-cdar-mBound

(define-public haskell-9.0-charset
  (package
    (name "haskell-9.0-charset")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/charset")
    (synopsis
     "Fast unicode character sets based on complemented PATRICIA tries")
    (description
     "Fast unicode character sets based on complemented PATRICIA tries.")
    (license license:bsd-3)))

haskell-9.0-charset

(define-public haskell-9.0-comfort-array-shape
  (package
    (name "haskell-9.0-comfort-array-shape")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ChasingBottoms)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-fixed-length)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-tfp)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
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

haskell-9.0-comfort-array-shape

(define-public haskell-9.0-comfort-fftw
  (package
    (name "haskell-9.0-comfort-fftw")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-fftw-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-empty)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)))
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

haskell-9.0-comfort-fftw

(define-public haskell-9.0-config-ini
  (package
    (name "haskell-9.0-config-ini")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-enable-doctests")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
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

haskell-9.0-config-ini

(define-public haskell-9.0-configurator
  (package
    (name "haskell-9.0-configurator")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unix-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-configurator

(define-public haskell-9.0-cryptohash
  (package
    (name "haskell-9.0-cryptohash")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)))
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

haskell-9.0-cryptohash

(define-public haskell-9.0-cryptohash-cryptoapi
  (package
    (name "haskell-9.0-cryptohash-cryptoapi")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-crypto-api)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/vincenthz/hs-cryptohash-cryptoapi")
    (synopsis "Crypto-api interfaces for cryptohash")
    (description "Crypto-api interfaces for cryptohash")
    (license license:bsd-3)))

haskell-9.0-cryptohash-cryptoapi

(define-public haskell-9.0-cryptonite-openssl
  (package
    (name "haskell-9.0-cryptonite-openssl")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-basement)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-tasty-kat)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages tls) openssl)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskell-crypto/cryptonite-openssl")
    (synopsis "Crypto stuff using OpenSSL cryptographic library")
    (description
     "Crypto stuff using the OpenSSL cryptographic library as bindings")
    (license license:bsd-3)))

haskell-9.0-cryptonite-openssl

(define-public haskell-9.0-data-default-instances-unordered-containers
  (package
    (name "haskell-9.0-data-default-instances-unordered-containers")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-data-default-instances-unordered-containers

(define-public haskell-9.0-dawg-ord
  (package
    (name "haskell-9.0-dawg-ord")
    (version "0.5.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dawg-ord/dawg-ord-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1wsxlzljxydcvilkdf8xj21sac0y2ph18vmbznd7psvbwk2q45kf"))))
    (properties `((upstream-name . "dawg-ord") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/kawu/dawg-ord")
    (synopsis "Directed acyclic word graphs")
    (description
     "The library implements /directed acyclic word graphs/ (DAWGs) internally
represented as /minimal acyclic deterministic finite-state automata/.
The implemented version of DAWG can be seen as a map from
sequences of alphabet symbols (keys) to values.

The library allows to build DAWGs over any symbols and values
provided that they both have `Ord` instances (see the
\"Data.DAWG.Ord\" module).
It also provides a fast insert operation which can be used to
construct DAWGs on-the-fly.")
    (license license:bsd-3)))

haskell-9.0-dawg-ord

(define-public haskell-9.0-drifter-sqlite
  (package
    (name "haskell-9.0-drifter-sqlite")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-drifter)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-sqlite-simple)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/MichaelXavier/drifter-sqlite#readme")
    (synopsis "SQLite support for the drifter schema migraiton tool")
    (description
     "Please see the README on GitHub at <https://github.com/MichaelXavier/drifter-sqlite#readme>")
    (license license:bsd-3)))

haskell-9.0-drifter-sqlite

(define-public haskell-9.0-dynamic-state
  (package
    (name "haskell-9.0-dynamic-state")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/dynamic-state")
    (synopsis "Optionally serializable dynamic state keyed by type")
    (description "Optionally serializable dynamic state keyed by type")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-dynamic-state

(define-public haskell-9.0-eap
  (package
    (name "haskell-9.0-eap")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-pretty-hex)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/codemonkeylabs/eap#readme")
    (synopsis "Extensible Authentication Protocol (EAP)")
    (description
     "This module provides types and on the wire de/coding of EAP packets as per RFC 3748")
    (license license:bsd-3)))

haskell-9.0-eap

(define-public haskell-9.0-either-both
  (package
    (name "haskell-9.0-either-both")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
    (home-page "https://hackage.haskell.org/package/either-both")
    (synopsis "Either or both")
    (description "")
    (license license:bsd-3)))

haskell-9.0-either-both

(define-public haskell-9.0-ekg-core
  (package
    (name "haskell-9.0-ekg-core")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/tibbe/ekg-core")
    (synopsis "Tracking of system metrics")
    (description "This library lets you defined and track system metrics.")
    (license license:bsd-3)))

haskell-9.0-ekg-core

(define-public haskell-9.0-expiring-cache-map
  (package
    (name "haskell-9.0-expiring-cache-map")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://codeberg.org/elblake/expiring-cache-map")
    (synopsis "General purpose simple caching.")
    (description
     "A simple general purpose shared state cache map with automatic expiration
of values, for caching the results of accessing a resource such as reading
a file. With variations for Ord and Hashable keys using \"Data.Map.Strict\"
and \"Data.HashMap.Strict\", respectively.")
    (license license:bsd-3)))

haskell-9.0-expiring-cache-map

(define-public haskell-9.0-fixed-vector-hetero
  (package
    (name "haskell-9.0-fixed-vector-hetero")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-fixed-vector)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)))
    (home-page "http://github.org/Shimuuar/fixed-vector-hetero")
    (synopsis "Library for working with product types generically")
    (description
     "Library allow to work with arbitrary product types in generic
manner. They could be constructed, destucted, converted provided
they are product of identical types.")
    (license license:bsd-3)))

haskell-9.0-fixed-vector-hetero

(define-public haskell-9.0-hashing
  (package
    (name "haskell-9.0-hashing")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)))
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

haskell-9.0-hashing

(define-public haskell-9.0-highlighting-kate
  (package
    (name "haskell-9.0-highlighting-kate")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005) haskell-9.0-Diff)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
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

haskell-9.0-highlighting-kate

(define-public haskell-9.0-hpp
  (package
    (name "haskell-9.0-hpp")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hpp/hpp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0xmnnmw2h4rf0bffncbhy8ja005wfr54cgsnqnc5vsqnl3dmvdlp"))))
    (properties `((upstream-name . "hpp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/acowley/hpp")
    (synopsis "A Haskell pre-processor")
    (description "See the README for usage examples")
    (license license:bsd-3)))

haskell-9.0-hpp

(define-public haskell-9.0-hspec
  (package
    (name "haskell-9.0-hspec")
    (version "2.8.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hspec/hspec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s6nc0nvf3qr2qdam12m6b8qixwzms0m2r9xwjx71dkjwg7nnga1"))))
    (properties `((upstream-name . "hspec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-hspec-core)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-hspec-discover)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hspec-expectations)))
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

haskell-9.0-hspec

(define-public haskell-9.0-html-entities
  (package
    (name "haskell-9.0-html-entities")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nikita-volkov/html-entities")
    (synopsis "A codec library for HTML-escaped text and HTML-entities")
    (description
     "This library provides the following APIs for coding and decoding of
HTML-escaped text:

* \\\"attoparsec\\\" parser

* Text decoder

* Encoding text builder")
    (license license:expat)))

haskell-9.0-html-entities

(define-public haskell-9.0-html-entity-map
  (package
    (name "haskell-9.0-html-entity-map")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/mrkkrp/html-entity-map")
    (synopsis "Map from HTML5 entity names to the corresponding Unicode text")
    (description
     "Map from HTML5 entity names to the corresponding Unicode text.")
    (license license:bsd-3)))

haskell-9.0-html-entity-map

(define-public haskell-9.0-http-common
  (package
    (name "haskell-9.0-http-common")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-network)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/aesiniath/http-common")
    (synopsis "Common types for HTTP clients and servers")
    (description
     "/Overview/

Base types used by a variety of HTTP clients and servers. See http-streams
\"Network.Http.Client\" or pipes-http \"Pipes.Http.Client\" for full
documentation. You can import @@Network.Http.Types@@ if you like, but both
http-streams and pipes-http re-export this package's types and functions.")
    (license license:bsd-3)))

haskell-9.0-http-common

(define-public haskell-9.0-hyper
  (package
    (name "haskell-9.0-hyper")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/HeinrichApfelmus/hyper-haskell")
    (synopsis
     "Display class for the HyperHaskell graphical Haskell interpreter")
    (description
     "This package is part of the /HyperHaskell/ project and provides
the @@Display@@ class for visualizing and pretty printing Haskell values.
")
    (license license:bsd-3)))

haskell-9.0-hyper

(define-public haskell-9.0-hyphenation
  (package
    (name "haskell-9.0-hyphenation")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-file-embed)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage012) haskell-9.0-zlib)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
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

haskell-9.0-hyphenation

(define-public haskell-9.0-indexed-traversable-instances
  (package
    (name "haskell-9.0-indexed-traversable-instances")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/indexed-traversable-instances/indexed-traversable-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c60vhf47y8ln33scyvwiffg24dvhm4aavya624vbqjr7l3fapl9"))))
    (properties `((upstream-name . "indexed-traversable-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-OneTuple)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-traversable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page
     "https://hackage.haskell.org/package/indexed-traversable-instances")
    (synopsis
     "More instances of FunctorWithIndex, FoldableWithIndex, TraversableWithIndex")
    (description
     "This package provides extra instances for type-classes in the [indexed-traversable](https://hackage.haskell.org/package/indexed-traversable) package.

The intention is to keep this package minimal;
it provides instances that formely existed in @@lens@@ or @@optics-extra@@.
We recommend putting other instances directly into their defining packages.
The @@indexed-traversable@@ package is light, having only GHC boot libraries
as its dependencies.")
    (license license:bsd-2)))

haskell-9.0-indexed-traversable-instances

(define-public haskell-9.0-inflections
  (package
    (name "haskell-9.0-inflections")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-megaparsec)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/stackbuilders/inflections-hs")
    (synopsis "Inflections library for Haskell")
    (description
     "Inflections provides methods for singularization, pluralization,
dasherizing, etc. The library is based on Rails' inflections library.")
    (license license:expat)))

haskell-9.0-inflections

(define-public haskell-9.0-integer-roots
  (package
    (name "haskell-9.0-integer-roots")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/integer-roots/integer-roots-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15sn3jgm8axm8f9z02aj3xdf318qwwc5qfc8b4r0n7hfr1jgrqs5"))))
    (properties `((upstream-name . "integer-roots") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-doctest)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/Bodigrim/integer-roots")
    (synopsis "Integer roots and perfect powers")
    (description
     "Calculating integer roots and testing perfect powers of arbitrary precision. Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.")
    (license license:expat)))

haskell-9.0-integer-roots

(define-public haskell-9.0-intern
  (package
    (name "haskell-9.0-intern")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/ekmett/intern/")
    (synopsis "Efficient hash-consing for arbitrary data types")
    (description "Efficient hash-consing for arbitrary data types.")
    (license license:bsd-3)))

haskell-9.0-intern

(define-public haskell-9.0-intset-imperative
  (package
    (name "haskell-9.0-intset-imperative")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/hverr/haskell-intset-imperative#readme")
    (synopsis "An imperative integer set written in Haskell.")
    (description
     "An imperative integer set written in Haskell.

Read <https://deliquus.com/posts/2018-07-30-imperative-programming-in-haskell.html> for more information.")
    (license license:bsd-3)))

haskell-9.0-intset-imperative

(define-public haskell-9.0-islink
  (package
    (name "haskell-9.0-islink")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-islink

(define-public haskell-9.0-lapack-carray
  (package
    (name "haskell-9.0-lapack-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-carray)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-lapack-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-netlib-carray)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)))
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

haskell-9.0-lapack-carray

(define-public haskell-9.0-llvm-hs-pure
  (package
    (name "haskell-9.0-llvm-hs-pure")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-attoparsec)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/llvm-hs/llvm-hs/")
    (synopsis "Pure Haskell LLVM functionality (no FFI).")
    (description
     "llvm-hs-pure is a set of pure Haskell types and functions for interacting with LLVM <http://llvm.org/>.
It includes an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>). The llvm-hs package
builds on this one with FFI bindings to LLVM, but llvm-hs-pure does not require LLVM to be available.")
    (license license:bsd-3)))

haskell-9.0-llvm-hs-pure

(define-public haskell-9.0-mbtiles
  (package
    (name "haskell-9.0-mbtiles")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-resource-pool)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-sqlite-simple)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/caneroj1/mbtiles#readme")
    (synopsis "Haskell MBTiles client.")
    (description "Read and manipulate MBTiles files and associated metadata.")
    (license license:bsd-3)))

haskell-9.0-mbtiles

(define-public haskell-9.0-mercury-api
  (package
    (name "haskell-9.0-mercury-api")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-clock)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hsc2hs)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-mercury-api

(define-public haskell-9.0-mfsolve
  (package
    (name "haskell-9.0-mfsolve")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-mtl-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/mfsolve")
    (synopsis "Equation solver and calculator à la metafont")
    (description
     "An equation solver and calculator in the spirit of Metafont.

Like metafont, it can solve linear equations, and evaluate nonlinear expressions.  In addition to metafont, it also solves for angles, and makes the solution independend of the order of the equations.")
    (license license:bsd-3)))

haskell-9.0-mfsolve

(define-public haskell-9.0-microlens-platform
  (package
    (name "haskell-9.0-microlens-platform")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-microlens)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-ghc)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-mtl)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-microlens-th)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/monadfix/microlens")
    (synopsis "microlens + all batteries included (best for apps)")
    (description
     "This package exports a module which is the recommended starting point for using <http://hackage.haskell.org/package/microlens microlens> if you aren't trying to keep your dependencies minimal. By importing @@Lens.Micro.Platform@@ you get all functions and instances from <http://hackage.haskell.org/package/microlens microlens>, <http://hackage.haskell.org/package/microlens-th microlens-th>, <http://hackage.haskell.org/package/microlens-mtl microlens-mtl>, <http://hackage.haskell.org/package/microlens-ghc microlens-ghc>, as well as instances for @@Vector@@, @@Text@@, and @@HashMap@@.

The minor and major versions of microlens-platform are incremented whenever the minor and major versions of any other microlens package are incremented, so you can depend on the exact version of microlens-platform without specifying the version of microlens (microlens-mtl, etc) you need.

This package is a part of the <http://hackage.haskell.org/package/microlens microlens> family; see the readme <https://github.com/monadfix/microlens#readme on Github>.")
    (license license:bsd-3)))

haskell-9.0-microlens-platform

(define-public haskell-9.0-murmur3
  (package
    (name "haskell-9.0-murmur3")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-base16)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/haskoin/murmur3#readme")
    (synopsis "Pure Haskell implementation of the MurmurHash3 x86 algorithm")
    (description
     "MurmurHash3 is a non-cryptographic hash function suitable for general hash-based lookup. We provide the x86 version which closely follows  the following implementation: <https://code.google.com/p/smhasher/source/browse/trunk/MurmurHash3.cpp>")
    (license license:expat)))

haskell-9.0-murmur3

(define-public haskell-9.0-netlib-comfort-array
  (package
    (name "haskell-9.0-netlib-comfort-array")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-comfort-array)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-netlib-ffi)))
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

haskell-9.0-netlib-comfort-array

(define-public haskell-9.0-pasta-curves
  (package
    (name "haskell-9.0-pasta-curves")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pasta-curves/pasta-curves-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0918mg7g4gf35s2srcyjk0s6wk5an1qqw74r3z42livda0srfqb2"))))
    (properties `((upstream-name . "pasta-curves") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/nccgroup/pasta-curves")
    (synopsis
     "Provides the Pasta curves: Pallas, Vesta and their field elements Fp and Fq.")
    (description
     "Provides the Pasta curves: Pallas, Vesta and their field elements Fp and Fq.
See the PastaCurves module below and/or the GitHub repository README.md for more details.")
    (license license:expat)))

haskell-9.0-pasta-curves

(define-public haskell-9.0-perfect-hash-generator
  (package
    (name "haskell-9.0-perfect-hash-generator")
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
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-ordlist)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-perfect-hash-generator

(define-public haskell-9.0-proto-lens-protoc
  (package
    (name "haskell-9.0-proto-lens-protoc")
    (version "0.7.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/proto-lens-protoc/proto-lens-protoc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wl081xckv0pg2h25gb4fyafw03fq5hrm6shc658k8z8pi3jnh8c"))))
    (properties `((upstream-name . "proto-lens-protoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-ghc-paths)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-ghc-source-gen)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-lens-family)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-proto-lens)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-proto-lens-runtime)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/google/proto-lens#readme")
    (synopsis "Protocol buffer compiler for the proto-lens library.")
    (description
     "Turn protocol buffer files (.proto) into Haskell files (.hs) which can be used with the proto-lens package.
The library component of this package contains compiler code (namely Data.ProtoLens.Compiler.*) is not guaranteed to have stable APIs.'")
    (license license:bsd-3)))

haskell-9.0-proto-lens-protoc

(define-public haskell-9.0-protobuf
  (package
    (name "haskell-9.0-protobuf")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-protobuf

(define-public haskell-9.0-protocol-radius
  (package
    (name "haskell-9.0-protocol-radius")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-cereal)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/protocol-radius")
    (synopsis "parser and printer for radius protocol packet")
    (description "This package provides
parser and printer for radius protocol packet.")
    (license license:bsd-3)))

haskell-9.0-protocol-radius

(define-public haskell-9.0-qrcode-juicypixels
  (package
    (name "haskell-9.0-qrcode-juicypixels")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qrcode-juicypixels/qrcode-juicypixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1fwjdz08r85j54x3khnby1h5mwxs1568yhd3v8dcilrwj6an9991"))))
    (properties `((upstream-name . "qrcode-juicypixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-JuicyPixels)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-base64-bytestring)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-qrcode-core)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)
                             (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "Converts a qrcode-core image to JuicyPixels")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-juicypixels#readme>")
    (license license:expat)))

haskell-9.0-qrcode-juicypixels

(define-public haskell-9.0-quickcheck-instances
  (package
    (name "haskell-9.0-quickcheck-instances")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-OneTuple)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-case-insensitive)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-data-fix)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-integer-logarithms)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-old-time)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-scientific)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-splitmix)
                  (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-strict)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-text-short)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-these)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-time-compat)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-uuid-types)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
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

haskell-9.0-quickcheck-instances

(define-public haskell-9.0-random-source
  (package
    (name "haskell-9.0-random-source")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-flexible-defaults)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-mersenne-random-pure64)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-mwc-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-stateref)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-th-extras)))
    (home-page "https://github.com/mokus0/random-fu")
    (synopsis "Generic basis for random number generators")
    (description "Random number generation based on entropy sources
able to produce a small but well-defined set of
primitive variates.  Also includes facilities for
\\\"completing\\\" partial implementations, making it
easy to define new entropy sources in a way that
is naturally forward-compatible.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.0-random-source

(define-public haskell-9.0-reform-blaze
  (package
    (name "haskell-9.0-reform-blaze")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-reform)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://www.happstack.com/")
    (synopsis "Add support for using blaze-html with Reform")
    (description
     "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with blaze-html.")
    (license license:bsd-3)))

haskell-9.0-reform-blaze

(define-public haskell-9.0-regex
  (package
    (name "haskell-9.0-regex")
    (version "1.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/regex/regex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nzyfkqmclmawmphvksvm9l64awqgnypic4xplc2s9sjcj4h814a"))))
    (properties `((upstream-name . "regex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-compat)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-regex-base)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-tdfa)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-time-locale-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-regex

(define-public haskell-9.0-regex-applicative
  (package
    (name "haskell-9.0-regex-applicative")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-filtrable)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
    (home-page "https://github.com/feuerbach/regex-applicative")
    (synopsis "Regex-based parsing with applicative interface")
    (description
     "regex-applicative is a Haskell library for parsing using regular expressions.
Parsers can be built using Applicative interface.")
    (license license:expat)))

haskell-9.0-regex-applicative

(define-public haskell-9.0-relude
  (package
    (name "haskell-9.0-relude")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/relude/relude-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0cw9a1gfvias4hr36ywdizhysnzbzxy20fb3jwmqmgjy40lzxp2g"))))
    (properties `((upstream-name . "relude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

* __Minimalism__ (low number of dependencies). We do not force users of
  @@relude@@ to stick to any specific lens or text formatting or logging
  library. Where possible, @@relude@@ depends only on boot libraries.
  The [Dependency graph](https://raw.githubusercontent.com/kowainik/relude/main/relude-dependency-graph.png)
  of @@relude@@ can give you a clearer picture.

* __Convenience__. Despite minimalism, we want to bring commonly used
   types and functions into scope, and make available functions easier
   to use. Some examples of conveniences:

    1. No need to add @@containers@@, @@unordered-containers@@, @@text@@
       and @@bytestring@@ to dependencies in your @@.cabal@@ file to
       use the main API of these libraries
    2. No need to import types like @@NonEmpty@@, @@Text@@, @@Set@@, @@Reader[T]@@, @@MVar@@, @@STM@@
    3. Functions like @@liftIO@@, @@fromMaybe@@, @@sortWith@@ are avaiable by default as well
    4. @@IO@@ actions are lifted to @@MonadIO@@

* __Excellent documentation.__

    1. Tutorial
    2. Migration guide from @@Prelude@@
    3. Haddock for every function with examples tested by
       [doctest](http://hackage.haskell.org/package/doctest).
    4. Documentation regarding [internal module structure](http://hackage.haskell.org/package/relude/docs/Relude.html)
    5. @@relude@@-specific [HLint](http://hackage.haskell.org/package/hlint) rules: @@[.hlint.yaml](https://github.com/kowainik/relude/blob/main/.hlint.yaml)@@

* __User-friendliness.__ Anyone should be able to quickly migrate to @@relude@@. Only
  some basic familiarity with the common libraries like @@text@@ and @@containers@@
  should be enough (but not necessary).

* __Exploration.__ We have space to experiment with new ideas and proposals
  without introducing breaking changes. @@relude@@ uses the approach with
  @@Extra.*@@ modules which are not exported by default. The chosen approach makes it quite
  easy for us to provide new functionality without breaking anything and let
  the users decide to use it or not.")
    (license license:expat)))

haskell-9.0-relude

(define-public haskell-9.0-riak-protobuf
  (package
    (name "haskell-9.0-riak-protobuf")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-proto-lens)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-proto-lens-runtime)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "http://github.com/riak-haskell-client/riak-haskell-client")
    (synopsis "Haskell types for the Riak protocol buffer API")
    (description
     "A set of Haskell types for interacting with the protocol buffer
API of the Riak decentralized data store.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-riak-protobuf

(define-public haskell-9.0-semigroupoids
  (package
    (name "haskell-9.0-semigroupoids")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-base-orphans)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-comonad)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-distributive)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-semigroupoids

(define-public haskell-9.0-split-record
  (package
    (name "haskell-9.0-split-record")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/split-record/split-record-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0yjmyanwzxvz43ry5ypg9d65yp1yplpwczzwhxmy221nrm2wfch4"))))
    (properties `((upstream-name . "split-record") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-shell-utility)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-soxlib)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-synthesizer-core)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/split-record/")
    (synopsis "Split a big audio file into pieces at positions of silence")
    (description
     "Split a big audio file into pieces at positions of silence.
You can use this to split a recording of multiple songs into single songs.

> $ split-record recording.wav \"part%03d.wav\"

You can also calculate split positions only. They are computed lazily.
They can be loaded into Audacity for further fine tuning
and to perform the actual split.
For generating only labels, run:

> $ split-record recording.wav > labels.txt")
    (license license:bsd-3)))

haskell-9.0-split-record

(define-public haskell-9.0-string-transform
  (package
    (name "haskell-9.0-string-transform")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (home-page "https://github.com/ncaq/string-transform#readme")
    (synopsis "simple and easy haskell string transform wrapper")
    (description "")
    (license license:expat)))

haskell-9.0-string-transform

(define-public haskell-9.0-svg-builder
  (package
    (name "haskell-9.0-svg-builder")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/svg-builder/svg-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1k420f497lzkymmxin88ql6ib8dziic43avykv31yq65rgrf7l2g"))))
    (properties `((upstream-name . "svg-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "1cprm8ya1rdid4pz1dk6692mv0kqkaxrsqaxg83bca5z4dkgqi2z")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/diagrams/svg-builder.git")
    (synopsis "DSL for building SVG.")
    (description "Fast, easy to write SVG.")
    (license license:bsd-3)))

haskell-9.0-svg-builder

(define-public haskell-9.0-synthesizer-dimensional
  (package
    (name "haskell-9.0-synthesizer-dimensional")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/synthesizer-dimensional/synthesizer-dimensional-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a8frn0k4dc0kh71arcqpc1z4dilr8c7yqpp6j80llh12lrcp6f4"))))
    (properties `((upstream-name . "synthesizer-dimensional") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-optimizeadvanced" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-event-list)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-non-negative)
                  (@ (gnu packages stackage ghc-9.0 stage006)
                     haskell-9.0-numeric-prelude)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage007) haskell-9.0-sox)
                  (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-storable-record)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-storablevector)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-synthesizer-core)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Synthesizer")
    (synopsis "Audio signal processing with static physical dimensions")
    (description "High-level functions that use physical units and
abstract from the sample rate in a statically type safe way.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-synthesizer-dimensional

(define-public haskell-9.0-tmapchan
  (package
    (name "haskell-9.0-tmapchan")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/athanclark/tmapchan#readme")
    (synopsis
     "An insert-ordered multimap (indexed FIFO) which consumes values as you lookup")
    (description "")
    (license license:bsd-3)))

haskell-9.0-tmapchan

(define-public haskell-9.0-triplesec
  (package
    (name "haskell-9.0-triplesec")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-cryptonite)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)))
    (propagated-inputs (list (@ (gnu packages xorg) libpthread-stubs)
                             (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/SamProtas/hs-triplesec")
    (synopsis
     "TripleSec is a simple, triple-paranoid, symmetric encryption library")
    (description
     "Additional details about this protocol can be found at the official website: <https://keybase.io/triplesec>

A tutorial for how to use this library can be found in @@ Crypto.TripleSec.Tutorial @@")
    (license license:bsd-3)))

haskell-9.0-triplesec

(define-public haskell-9.0-uniplate
  (package
    (name "haskell-9.0-uniplate")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage011) haskell-9.0-syb)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-uniplate

(define-public haskell-9.0-uniq-deep
  (package
    (name "haskell-9.0-uniq-deep")
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
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/ncaq/uniq-deep#readme")
    (synopsis "uniq-deep")
    (description
     "alternative of unix uniq command. 'uniq-deep' detect repeated lines unless they are adjacent.")
    (license license:expat)))

haskell-9.0-uniq-deep

(define-public haskell-9.0-valida
  (package
    (name "haskell-9.0-valida")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/valida/valida-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i9di1gmcd6s2xmf8s5mwg7fra48zg54r89f1qf1gfj34asab62m"))))
    (properties `((upstream-name . "valida") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/TotallyNotChase/valida#readme")
    (synopsis
     "Simple applicative validation for product types, batteries included!")
    (description
     "This package provides an applicative validator with support for contravariance. This makes building validators for product types idiomatic and simple. Many common utilities for building validators are also included.")
    (license license:expat)))

haskell-9.0-valida

(define-public haskell-9.0-valida-base
  (package
    (name "haskell-9.0-valida-base")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/valida-base/valida-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wyj7nm1dqy5lq86mgqzr40s065jkwccmb4bky4hg1h7nz2lpqbj"))))
    (properties `((upstream-name . "valida-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-smallcheck)
                  (@ (gnu packages stackage ghc-9.0 stage009)
                     haskell-9.0-tasty)
                  (@ (gnu packages stackage ghc-9.0 stage010)
                     haskell-9.0-tasty-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage011)
                     haskell-9.0-tasty-quickcheck)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-tasty-smallcheck)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/TotallyNotChase/valida-base#readme")
    (synopsis
     "Simple applicative validation for product types, batteries included!")
    (description
     "This is a zero dependency version of the valida package. It is equivalent to valida == 0.1.0. Check out the README at github <https://github.com/TotallyNotChase/valida-base#readme>!")
    (license license:expat)))

haskell-9.0-valida-base

(define-public haskell-9.0-vault
  (package
    (name "haskell-9.0-vault")
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
       #:haddock? #t
       #:configure-flags (list "-fuseghc")
       #:cabal-revision
       ("2" "1bjwv3nv8jfhrdxa5kn3gvgxmyalpq7592bvyl7bpvcc7bbkfkf3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-hashable)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
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

haskell-9.0-vault

(define-public haskell-9.0-xmlbf
  (package
    (name "haskell-9.0-xmlbf")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmlbf/xmlbf-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xhpg10bqmv9cd4sw0vf2vvvyyas3xd36lwarbh5l78hylmibnlf"))))
    (properties `((upstream-name . "xmlbf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-selective)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://gitlab.com/k0001/xmlbf")
    (synopsis
     "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.")
    (description
     "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-xmlbf

(define-public haskell-9.0-xmlhtml
  (package
    (name "haskell-9.0-xmlhtml")
    (version "0.2.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/xmlhtml/xmlhtml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1p2v1cj9jjwbqyb0fyv2201zd7ljz5d46qg5kwy7rz2bchbqd0b4"))))
    (properties `((upstream-name . "xmlhtml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1q4f9pvyrkrw793kvd1lxzpzf49h2rs8zdmmhsli487sllflghnq")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage005)
                     haskell-9.0-blaze-builder)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-blaze-html)
                  (@ (gnu packages stackage ghc-9.0 stage012)
                     haskell-9.0-blaze-markup)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-bytestring-builder)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://github.com/snapframework/xmlhtml")
    (synopsis "XML parser and renderer with HTML 5 quirks mode")
    (description "Contains renderers and parsers for both XML and HTML 5
document fragments, which share data structures so that
it's easy to work with both.  Document fragments are bits
of documents, which are not constrained by some of the
high-level structure rules (in particular, they may
contain more than one root element).

Note that this is not a compliant HTML 5 parser.  Rather,
it is a parser for HTML 5 compliant documents.  It does not
implement the HTML 5 parsing algorithm, and should
generally be expected to perform correctly only on
documents that you trust to conform to HTML 5.  This is
not a suitable library for implementing web crawlers or
other software that will be exposed to documents from
outside sources.  The result is also not the HTML 5
node structure, but rather something closer to the physical
structure.  For example, omitted start tags are not
inserted (and so, their corresponding end tags must also be
omitted).")
    (license license:bsd-3)))

haskell-9.0-xmlhtml

(define-public haskell-9.0-ztail
  (package
    (name "haskell-9.0-ztail")
    (version "1.2.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ztail/ztail-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0chxsaivxfxphcwzkwyzc7px6lrf5vkr4d7rbd909j4n96293hha"))))
    (properties `((upstream-name . "ztail") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-finotify")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage007)
                     haskell-9.0-hinotify)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-regex-posix)
                  (@ (gnu packages stackage ghc-9.0 stage013)
                     haskell-9.0-unordered-containers)))
    (propagated-inputs (list (@ (gnu packages pcre) pcre)))
    (home-page "https://hackage.haskell.org/package/ztail")
    (synopsis "Multi-file, colored, filtered log tailer.")
    (description
     "An even more improved version of xtail/tail -f, including inotify support, full regex-based filtering, substitution, and colorization.")
    (license license:bsd-3)))

haskell-9.0-ztail

