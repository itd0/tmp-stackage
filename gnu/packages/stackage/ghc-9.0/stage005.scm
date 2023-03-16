;;; generated file
(define-module (gnu packages stackage ghc-9.0 stage005)
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
(define-public haskell-9.0-Decimal
  (package
    (name "haskell-9.0-Decimal")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Decimal/Decimal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19w7i9f0lbiyzwa0v3bm95233vi7f1688f0xms6cnjsf88h04ym3"))))
    (properties `((upstream-name . "Decimal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/PaulJohnson/Haskell-Decimal")
    (synopsis "Decimal numbers with variable precision")
    (description "A decimal number has an integer mantissa and a negative
exponent.  The exponent can be interpreted as the number
of decimal places in the value.")
    (license license:bsd-3)))

haskell-9.0-Decimal

(define-public haskell-9.0-Diff
  (package
    (name "haskell-9.0-Diff")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Diff/Diff-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0w166w5jksiqad7xf2ldjl2ykap0xf08byrl92qwp6r1qym4lppx"))))
    (properties `((upstream-name . "Diff") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/Diff")
    (synopsis "O(ND) diff algorithm in haskell.")
    (description
     "Implementation of the standard diff algorithm, and utilities for pretty printing.")
    (license license:bsd-3)))

haskell-9.0-Diff

(define-public haskell-9.0-Glob
  (package
    (name "haskell-9.0-Glob")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Glob/Glob-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1h3kh46qds4nqvixm4myy1kb5slg53f44hfn8aymrlr7hjn75xka"))))
    (properties `((upstream-name . "Glob") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1080rd5073g87rfm5whimb72b75105lqanybrbsfi14gmvndnbfx")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "http://iki.fi/matti.niemenmaa/glob/")
    (synopsis "Globbing library")
    (description
     "A library for globbing: matching patterns against file paths.")
    (license license:bsd-3)))

haskell-9.0-Glob

(define-public haskell-9.0-HDBC-session
  (package
    (name "haskell-9.0-HDBC-session")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HDBC-session/HDBC-session-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qwnqb62zgmm4dy5qlcj04aczja6yn16c92jc63zkln9pcc7y1da"))))
    (properties `((upstream-name . "HDBC-session") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-HDBC)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Bracketed connection for HDBC")
    (description "This package contains a base bracketed function
to call close correctly against opend DB connection.")
    (license license:bsd-3)))

haskell-9.0-HDBC-session

(define-public haskell-9.0-SHA
  (package
    (name "haskell-9.0-SHA")
    (version "1.6.4.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/SHA/SHA-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0i4b2wjisivdy72synal711ywhx05mfqfba5n65rk8qidggm1nbb"))))
    (properties `((upstream-name . "SHA") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-exe")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/SHA")
    (synopsis "Implementations of the SHA suite of message digest functions")
    (description
     "This library implements the SHA suite of message digest functions,
according to NIST FIPS 180-2 (with the SHA-224 addendum), as well
as the SHA-based HMAC routines. The functions have been tested
against most of the NIST and RFC test vectors for the various
functions. While some attention has been paid to performance,
these do not presently reach the speed of well-tuned libraries,
like OpenSSL.")
    (license license:bsd-3)))

haskell-9.0-SHA

(define-public haskell-9.0-abstract-deque-tests
  (package
    (name "haskell-9.0-abstract-deque-tests")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/abstract-deque-tests/abstract-deque-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19gb5x5z3nvazdra3skm24c2g2byj0i4cjbzfwfghnb5q96gn5sz"))))
    (properties `((upstream-name . "abstract-deque-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-abstract-deque)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis
     "A test-suite for any queue or double-ended queue satisfying an interface ")
    (description
     "This package provides tests that can be used with any queue implementation
that satisfies the `abstract-deque` interface.")
    (license license:bsd-3)))

haskell-9.0-abstract-deque-tests

(define-public haskell-9.0-al
  (package
    (name "haskell-9.0-al")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/al/al-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1lpcdh2dak1r9lwd6irjs8p56p1fjphq58ixwjwbg9syl2rz7w4b"))))
    (properties `((upstream-name . "al") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-stdcall")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages audio) openal)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://github.com/phaazon/al")
    (synopsis "OpenAL 1.1 raw API.")
    (description "OpenAL is a minimalistic sound API that aims to provide
bare features for /spacialized audio/. The API looks like
the OpenGL one, thus the libs are pretty great together.
Up to now, no OpenAL extension is supported. You're highly
invited to contribute ;).
EAX is not supported yet either. It'll be embedded in
future releases, soon.
In order to build and install \"al\", you'll need to have
pkg-config installed.
For Ubuntu users, there might be a bug with pkg-config.
If the install fails, consider using @@cabal install al
your OpenAL setup is located to – you can help find that
with @@find / -name al.h@@.")
    (license license:bsd-3)))

haskell-9.0-al

(define-public haskell-9.0-alsa-mixer
  (package
    (name "haskell-9.0-alsa-mixer")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/alsa-mixer/alsa-mixer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00ny2p3276jilidjs44npc8zmbhynz3f2lpmlwwl6swwx5yijsnb"))))
    (properties `((upstream-name . "alsa-mixer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-alsa-core)
                  (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages linux) alsa-lib)))
    (home-page "https://github.com/ttuegel/alsa-mixer")
    (synopsis "Bindings to the ALSA simple mixer API.")
    (description
     "This package provides bindings to the ALSA simple mixer API.")
    (license license:bsd-3)))

haskell-9.0-alsa-mixer

(define-public haskell-9.0-apportionment
  (package
    (name "haskell-9.0-apportionment")
    (version "0.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apportionment/apportionment-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12b4jlh3k3da1w5lw8z83qgvn0ys85xwvdqylm5kwfi2i1i72256"))))
    (properties `((upstream-name . "apportionment") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/apportionment")
    (synopsis "Round a set of numbers while maintaining its sum")
    (description
     "Round a set of numbers while maintaining its sum.
According procedures are used to assign seats to parties in a parliament.
You may also use it to round percentages that sum up to 100%.
<https://en.wikipedia.org/wiki/Apportionment_(politics)>")
    (license license:bsd-3)))

haskell-9.0-apportionment

(define-public haskell-9.0-base16-bytestring
  (package
    (name "haskell-9.0-base16-bytestring")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base16-bytestring/base16-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1167f9jaivnabn6kg2gc421ac9njb67fr4v0adbj3qph7qa92nhx"))))
    (properties `((upstream-name . "base16-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://github.com/haskell/base16-bytestring")
    (synopsis "RFC 4648-compliant Base16 encodings for ByteStrings")
    (description
     "This package provides support for encoding and decoding binary data according
to @@base16@@ (see also <https://tools.ietf.org/html/rfc4648 RFC 4648>) for
strict (see \"Data.ByteString.Base16\") and lazy @@ByteString@@s (see \"Data.ByteString.Base16.Lazy\").

See the <https://hackage.haskell.org/package/base16 base16> package which provides superior encoding and decoding performance as well as support for lazy, short, and strict variants of 'Text' and 'ByteString' values. Additionally, see the <https://hackage.haskell.org/package/base-encoding base-encoding> package which
provides an uniform API providing conversion paths between more binary and textual types.")
    (license license:bsd-3)))

haskell-9.0-base16-bytestring

(define-public haskell-9.0-base64-bytestring
  (package
    (name "haskell-9.0-base64-bytestring")
    (version "1.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-bytestring/base64-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ja9vkgnpkzaw8gz6sm5jmgha6wg3m1j281m0nv1w9yyxlqfvy7v"))))
    (properties `((upstream-name . "base64-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/haskell/base64-bytestring")
    (synopsis "Fast base64 encoding and decoding for ByteStrings")
    (description
     "This package provides support for encoding and decoding binary data according to @@base64@@ (see also <https://tools.ietf.org/html/rfc4648 RFC 4648>) for strict and lazy ByteStrings

For a fuller-featured and better-performing Base64 library, see the <https://hackage.haskell.org/package/base64 base64> package.")
    (license license:bsd-3)))

haskell-9.0-base64-bytestring

(define-public haskell-9.0-blaze-builder
  (package
    (name "haskell-9.0-blaze-builder")
    (version "0.4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-builder/blaze-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rxg6vjr0ji6g1nngrqpl4k1q9w66fwkhld9cqm5yfhx0a69kp1c"))))
    (properties `((upstream-name . "blaze-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "026vxh94h2hwncy1mn51xzfpnhj8ijp5xc8fpq7dwc63fkrps0gh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-utf8-string)))
    (home-page "https://github.com/blaze-builder/blaze-builder")
    (synopsis "Efficient buffered output.")
    (description
     "This library allows to efficiently serialize Haskell values to lazy bytestrings
with a large average chunk size. The large average chunk size allows to make
good use of cache prefetching in later processing steps (e.g. compression) and
reduces the system call overhead when writing the resulting lazy bytestring to a
file or sending it over the network.

This library was inspired by the module Data.Binary.Builder provided by the
binary package. It was originally developed with the specific needs of the
blaze-html package in mind. Since then it has been restructured to serve as a
drop-in replacement for Data.Binary.Builder, which it improves upon both in
speed as well as expressivity.")
    (license license:bsd-3)))

haskell-9.0-blaze-builder

(define-public haskell-9.0-calendar-recycling
  (package
    (name "haskell-9.0-calendar-recycling")
    (version "0.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/calendar-recycling/calendar-recycling-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0afmnii65axpqk3x50wj1d17942m1kyhwka3bn78ylxy9z7rrlwc"))))
    (properties `((upstream-name . "calendar-recycling") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-html)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-old-time)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/calendar-recycling")
    (synopsis "List years with the same calendars")
    (description "Generate a partial HTML document grouping years
by the pattern of the calender.
The program respects the starting weekday of a year
and the existence of a leap day,
but it ignores the date of the Easter festival.")
    (license license:bsd-3)))

haskell-9.0-calendar-recycling

(define-public haskell-9.0-cereal
  (package
    (name "haskell-9.0-cereal")
    (version "0.5.8.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cereal/cereal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0shg3q933cvf18j1gmxill48d4sl4mvxj2qkj6yya9hvcqh5544r"))))
    (properties `((upstream-name . "cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/GaloisInc/cereal")
    (synopsis "A binary serialization library")
    (description
     "A binary serialization library, similar to binary, that introduces an isolate
primitive for parser isolation, and labeled blocks for better error messages.")
    (license license:bsd-3)))

haskell-9.0-cereal

(define-public haskell-9.0-checksum
  (package
    (name "haskell-9.0-checksum")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/checksum/checksum-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0327lihvibnhs2c0gnmm13g6iaw53ka3w2j1rng4d1vnrxphyyik"))))
    (properties `((upstream-name . "checksum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/checksum")
    (synopsis "Compute and verify checksums of ISBN, IBAN, etc.")
    (description "Compute and verify checksums of various identifiers,
such as IBAN, ISBN, EAN, Germany's Citizen Card.")
    (license license:bsd-3)))

haskell-9.0-checksum

(define-public haskell-9.0-colonnade
  (package
    (name "haskell-9.0-colonnade")
    (version "1.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/colonnade/colonnade-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1asjx71gp26a15v7g3p8bfddb5nnzky6672c35xx35hq73mhykr4"))))
    (properties `((upstream-name . "colonnade") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1f4m7lqksb7lvzs3j5v8c04l2mmq7pq1d8w7p8y9chy595rrb1kn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/andrewthad/colonnade#readme")
    (synopsis "Generic types and functions for columnar encoding and decoding")
    (description
     "The `colonnade` package provides a way to talk about
columnar encodings and decodings of data. This package provides
very general types and does not provide a way for the end-user
to actually apply the columnar encodings they build to data.
Most users will also want to one a companion packages
that provides (1) a content type and (2) functions for feeding
data into a columnar encoding:

* <https://hackage.haskell.org/package/lucid-colonnade lucid-colonnade> for `lucid` html tables

* <https://hackage.haskell.org/package/blaze-colonnade blaze-colonnade> for `blaze` html tables

* <https://hackage.haskell.org/package/reflex-dom-colonnade reflex-dom-colonnade> for reactive `reflex-dom` tables

* <https://hackage.haskell.org/package/yesod-colonnade yesod-colonnade> for `yesod` widgets

* <http://hackage.haskell.org/package/siphon siphon> for encoding and decoding CSVs")
    (license license:bsd-3)))

haskell-9.0-colonnade

(define-public haskell-9.0-combinatorial
  (package
    (name "haskell-9.0-combinatorial")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/combinatorial/combinatorial-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0w6vjs2pg2dffbq1dbs1dygnxk8nppzhkq3bgrg3ydfdzra7imn4"))))
    (properties `((upstream-name . "combinatorial") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/combinatorial/")
    (synopsis "Count, enumerate, rank and unrank combinatorial objects")
    (description
     "Counting, enumerating, ranking and unranking of combinatorial objects.
Well-known and less well-known basic combinatoric problems and examples.

The functions are not implemented in obviously stupid ways,
but they are also not optimized to the maximum extent.
The package is plain Haskell 98.

See also:

* @@exact-combinatorics@@:
Efficient computations of large combinatoric numbers.

* @@combinat@@:
Library for a similar purpose
with a different structure and selection of problems.")
    (license license:bsd-3)))

haskell-9.0-combinatorial

(define-public haskell-9.0-comfort-graph
  (package
    (name "haskell-9.0-comfort-graph")
    (version "0.0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-graph/comfort-graph-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13g6dcqcnysh1l0hsm3j3q9il9r987brxc3557m69k0ag0wk5m4b"))))
    (properties `((upstream-name . "comfort-graph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0f0zgf8nk5bihs1z3kz37c4ansg7pk9d3pbvnazabqqwv4c11kl5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/comfort-graph")
    (synopsis "Graph structure with type parameters for nodes and edges")
    (description
     "This graph structure is based on \"Data.Map\"
and allows any 'Ord' type for nodes
and allows directed, undirected and more edge types.
There is no need to map nodes to integer numbers.
This makes handling in applications much more comfortable,
thus the package name.

Currently the package does not contain any advanced algorithm,
just the data structure and some manipulation functions.

The edge type can be freely chosen.
This allows great flexibility
but it is a bit more cumbersome to do in Haskell 98.
Examples of edge types:

* @@DirEdge@@: Edges in a directed graph

* @@UndirEdge@@: Edges in an undirected graph

* @@EitherEdge@@: For graphs containing both directed and undirected edges

* You may define an edge type with an additional identifier
in order to support multiple edges between the same pair of nodes.

* Using type functions on the node type
you may even define an edge type for nodes from a Cartesian product,
where only \\\"horizontal\\\" and \\\"vertical\\\" edges are allowed.

For examples see the @@linear-circuit@@ package and its tests.
The @@ResistorCube@@ test demonstrates non-integer node types
and the @@Tree@@ test demonstrates multigraphs.

The package is plain Haskell 98.

Related packages:

* @@fgl@@:
standard package for graph processing with many graph algorithms
but cumbersome data structure with Int numbered nodes")
    (license license:bsd-3)))

haskell-9.0-comfort-graph

(define-public haskell-9.0-crypto-cipher-tests
  (package
    (name "haskell-9.0-crypto-cipher-tests")
    (version "0.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-cipher-tests/crypto-cipher-tests-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19wqignlq90qwpam01hnmmrxaxh5lkax9l1l6rlbi4a07nvp1dnz"))))
    (properties `((upstream-name . "crypto-cipher-tests") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-securemem)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Generic cryptography cipher tests")
    (description "Generic cryptography cipher tests")
    (license license:bsd-3)))

haskell-9.0-crypto-cipher-tests

(define-public haskell-9.0-data-default
  (package
    (name "haskell-9.0-data-default")
    (version "0.7.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default/data-default-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04d5n8ybmcxba9qb6h389w9zfq1lvj81b82jh6maqp6pkhkmvydh"))))
    (properties `((upstream-name . "data-default") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-default-class)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-default-instances-containers)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-data-default-instances-dlist)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-data-default-instances-old-locale)))
    (home-page "https://hackage.haskell.org/package/data-default")
    (synopsis "A class for types with a default value")
    (description "")
    (license license:bsd-3)))

haskell-9.0-data-default

(define-public haskell-9.0-data-hash
  (package
    (name "haskell-9.0-data-hash")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-hash/data-hash-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ghbqvc48gf9p8wiy71hdpaj7by3b9cw6wgwi3qqz8iw054xs5wi"))))
    (properties `((upstream-name . "data-hash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/data-hash")
    (synopsis "Combinators for building fast hashing functions.")
    (description "Combinators for building fast hashing functions. Includes
hashing functions for all basic Haskell98 types.")
    (license license:bsd-3)))

haskell-9.0-data-hash

(define-public haskell-9.0-debug-trace-var
  (package
    (name "haskell-9.0-debug-trace-var")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/debug-trace-var/debug-trace-var-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12dlnvzvnjk6z37pnajmghd5wcrzkf4pkpc0r2nrjp4h3p9pjkqp"))))
    (properties `((upstream-name . "debug-trace-var") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-unicode-show)))
    (home-page "https://github.com/ncaq/debug-trace-var#readme")
    (synopsis "You do not have to write variable names twice in Debug.Trace")
    (description
     "Please see the README on GitHub at <https://github.com/ncaq/debug-trace-var#readme>")
    (license license:expat)))

haskell-9.0-debug-trace-var

(define-public haskell-9.0-deepseq-generics
  (package
    (name "haskell-9.0-deepseq-generics")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deepseq-generics/deepseq-generics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17bwghc15mc9pchfd1w46jh2p3wzc86aj6a537wqwxn08rayzcxh"))))
    (properties `((upstream-name . "deepseq-generics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "0dcv4kf2g4xyacjpci9kql1gm706lkzhcyz9ks9jkbdvyvs8lf90")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (home-page "https://github.com/haskell-hvr/deepseq-generics")
    (synopsis "GHC.Generics-based Control.DeepSeq.rnf implementation")
    (description
     "This package provides a \"GHC.Generics\"-based
'Control.DeepSeq.Generics.genericRnf' function which can be used
for providing a 'rnf' implementation. See the documentation for
the 'genericRnf' function in the \"Control.DeepSeq.Generics\" module
to get started.

The original idea was pioneered in the @@generic-deepseq@@ package
(see <http://www.haskell.org/pipermail/haskell-cafe/2012-February/099551.html>
for more information).

This package differs from the @@generic-deepseq@@ package by working
in combination with the existing @@deepseq@@ package as opposed to
defining a conflicting drop-in replacement for @@deepseq@@'s
@@Control.DeepSeq@@ module.

__Note__: The ability to auto-derive via \"GHC.Generics\" has been
merged into @@deepseq-1.4.0.0@@. This package is now still useful
for writing code that's also compatible with older @@deepseq@@
versions not yet providing \"GHC.Generics\"-support.")
    (license license:bsd-3)))

haskell-9.0-deepseq-generics

(define-public haskell-9.0-dejafu
  (package
    (name "haskell-9.0-dejafu")
    (version "2.4.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dejafu/dejafu-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0nf89l7ps8wrm97skkn8nmi7wmmnr3dxmvjmhs69abnlahj7zjqh"))))
    (properties `((upstream-name . "dejafu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-concurrency)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-leancheck)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "https://github.com/barrucadu/dejafu")
    (synopsis "A library for unit-testing concurrent programs.")
    (description
     "/[Déjà Fu is] A martial art in which the user's limbs move in time as well as space, […] It is best described as \"the feeling that you have been kicked in the head this way before\"/ -- Terry Pratchett, Thief of Time

This package builds on the
<https://hackage.haskell.org/package/concurrency concurrency>
package by enabling you to deterministically test your concurrent
programs.

See the <https://dejafu.readthedocs.io website> or README for more.")
    (license license:expat)))

haskell-9.0-dejafu

(define-public haskell-9.0-double-conversion
  (package
    (name "haskell-9.0-double-conversion")
    (version "2.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/double-conversion/double-conversion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1hrpqh8lbw0kkryqsya95mfnnnj0pj7zswxrn6kvfy4rf7z8v2d4"))))
    (properties `((upstream-name . "double-conversion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("2" "0qya075j3kz4jq1kx4951qvi9blh6hcqfd7vpcx8l8ql143ajvqs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/Haskell-mouse/double-conversion")
    (synopsis
     "Fast conversion between single and double precision floating point and text")
    (description
     "A library that performs fast, accurate conversion between
floating point and text.

This library is implemented as bindings to the C++
@@double-conversion@@ library written by Florian Loitsch at Google:
<https://github.com/floitsch/double-conversion>.

Now it can convert single precision numbers, and also it can create
Builder, instead of bytestring or text.

The 'Text' versions of these functions are about 30 times faster
than the default 'show' implementation for the 'Double' type.

The 'ByteString' versions are /slower/ than the 'Text' versions;
roughly half the speed.  (This seems to be due to the cost of
allocating 'ByteString' values via @@malloc@@.)

Builder versions are slower on single value, but they are much faster on large number of values
(up to 50x faster on list with 20000 doubles).

As a final note, be aware that the @@bytestring-show@@ package is
about 50% slower than simply using 'show'.")
    (license license:bsd-3)))

haskell-9.0-double-conversion

(define-public haskell-9.0-enummapset
  (package
    (name "haskell-9.0-enummapset")
    (version "0.6.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enummapset/enummapset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sxbg053z9v68l9mw906npnm0864jn17rp28bnv4h6ifxyjckb2y"))))
    (properties `((upstream-name . "enummapset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/Mikolaj/enummapset")
    (synopsis "IntMap and IntSet with Enum keys/elements.")
    (description
     "This package contains simple wrappers around 'Data.IntMap' and
'Data.IntSet' with 'Enum' keys and elements respectively.
Especially useful for 'Int's wrapped with `newtype`.")
    (license license:bsd-3)))

haskell-9.0-enummapset

(define-public haskell-9.0-equal-files
  (package
    (name "haskell-9.0-equal-files")
    (version "0.0.5.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/equal-files/equal-files-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1akj045b5554bmlbg94vaji1ly10n89xj1vip9ywamy5hv18bdz5"))))
    (properties `((upstream-name . "equal-files") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-filemanip)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/equal-files/")
    (synopsis "Shell command for finding equal files")
    (description
     "Shell command that finds files with equal content in a given set of files.
This is useful for finding duplicates in a set of documents
where the same document might have been stored by accident with different names.
Use it like

> equal-files `find my_dir -type f`

or

> find my_dir -type f | xargs equal-files

If the file names contain spaces, better use

> find my_dir -type f -printf \"'%p'\\n\" | xargs equal-files

or

> equal_files -r my_dir

The program reads all input files simultaneously,
driven by sorting and grouping of their content.
However be prepared that due to the simultaneous access
you may exceed the admissible number of opened files.
Thus you may prefer to run it like

> equal_files -r -p 512 my_dir

The program can be used as a nice example of a declarative
yet efficient implementation of a non-trivial algorithm,
that is enabled by lazy evaluation.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-equal-files

(define-public haskell-9.0-errors-ext
  (package
    (name "haskell-9.0-errors-ext")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-errors)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)))
    (home-page "https://github.com/A1-Triard/errors-ext#readme")
    (synopsis "`bracket`-like functions for `ExceptT` over `IO` monad.")
    (description
     "Please see the README on GitHub at <https://github.com/A1-Triard/errors-ext#readme>")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-9.0-errors-ext

(define-public haskell-9.0-exception-transformers
  (package
    (name "haskell-9.0-exception-transformers")
    (version "0.4.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-transformers/exception-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zmd2s40m86c9mhv32l5bvvf5r52cgpxvb4v5phyc3pjwlr7m8g5"))))
    (properties `((upstream-name . "exception-transformers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-fail)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/exception-transformers")
    (synopsis "Type classes and monads for unchecked extensible exceptions.")
    (description "This package provides type classes, a monad and a monad
transformer that support unchecked extensible exceptions as
well as asynchronous exceptions. It is compatible with
the transformers package.")
    (license license:bsd-3)))

haskell-9.0-exception-transformers

(define-public haskell-9.0-exomizer
  (package
    (name "haskell-9.0-exomizer")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exomizer/exomizer-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1lngwbwgmh6dvskambn35ncrni7cxlychwbircb6srhjdm1lvhll"))))
    (properties `((upstream-name . "exomizer") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)))
    (home-page "https://github.com/alexkazik/exomizer#readme")
    (synopsis "Compression and decompression in the exomizer format")
    (description
     "This package provides a pure interface for compressing and decompressing data represented as strict @@ByteStrings@@.

Only the @@raw@@, @@mem@@ and @@level@@ compressions are supported.

This library uses the @@exomizer 2.0.10@@.

@@exomizer@@ is created by Magnus Lind (magli143@@gmail.com) https://bitbucket.org/magli143/exomizer/wiki/Home")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-exomizer

(define-public haskell-9.0-fingertree
  (package
    (name "haskell-9.0-fingertree")
    (version "0.1.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fingertree/fingertree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0wdzpli8bpgk8lrsp105zb0y5gn1r2029laclvhz264bza93q9pk"))))
    (properties `((upstream-name . "fingertree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/fingertree")
    (synopsis "Generic finger-tree structure, with example instances")
    (description
     "A general sequence representation with arbitrary
annotations, for use as a base for implementations of
various collection types, with examples, as described
in section 4 of

* Ralf Hinze and Ross Paterson,
\\\"Finger trees: a simple general-purpose data structure\\\",
/Journal of Functional Programming/ 16:2 (2006) pp 197-217.
<http://staff.city.ac.uk/~ross/papers/FingerTree.html>

For a tuned sequence type, see @@Data.Sequence@@ in the
@@containers@@ package, which is a specialization of
this structure.")
    (license license:bsd-3)))

haskell-9.0-fingertree

(define-public haskell-9.0-generic-lens
  (package
    (name "haskell-9.0-generic-lens")
    (version "2.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-lens/generic-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17an4669igzs6pwzqxnpkx9gmxwz64p32d1zcinhh5agd56y70pa"))))
    (properties `((upstream-name . "generic-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1wzxvfi9kzhbglih1syqhx42kcsvlinnfc338fl731k6hc95hmlm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-generic-lens-core)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)))
    (home-page "https://github.com/kcsongor/generic-lens")
    (synopsis "Generically derive traversals, lenses and prisms.")
    (description
     "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.

The library exposes a van Laarhoven interface. For an alternative interface, supporting an opaque optic type, see
@@<https://hackage.haskell.org/package/generic-optics generic-optics>@@.")
    (license license:bsd-3)))

haskell-9.0-generic-lens

(define-public haskell-9.0-half
  (package
    (name "haskell-9.0-half")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/half/half-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1l8m2spqg0ac50qys2jk5b32v6wxklbbk5ypjp3ga6z14hkw7bz2"))))
    (properties `((upstream-name . "half") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://github.com/ekmett/half")
    (synopsis "Half-precision floating-point")
    (description "Half-precision floating-point.")
    (license license:bsd-3)))

haskell-9.0-half

(define-public haskell-9.0-hashable
  (package
    (name "haskell-9.0-hashable")
    (version "1.3.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashable/hashable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11lqw6xbjzc1gpn4qlrqzq9kjgaw5pr7dgmx2rq1j6r7shndiams"))))
    (properties `((upstream-name . "hashable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-finteger-gmp" "-f-random-initial-seed")
       #:cabal-revision
       ("1" "1mwilvbc5f4myxz4vj95kx6cqqn7nfjy99v8cmqdxy90napywars")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://github.com/haskell-unordered-containers/hashable")
    (synopsis "A class for types that can be converted to a hash value")
    (description "This package defines a class, 'Hashable', for types that
can be converted to a hash value.  This class
exists for the benefit of hashing-based data
structures.  The package provides instances for
basic types and a way to combine hash values.")
    (license license:bsd-3)))

haskell-9.0-hashable

(define-public haskell-9.0-hid
  (package
    (name "haskell-9.0-hid")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hid/hid-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1lkkhw85cprflh1r807y2bf3m0l8nz9x0ihqs7x6qqkip1icbm8d"))))
    (properties `((upstream-name . "hid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-stdcall")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages libusb) hidapi)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/phaazon/hid")
    (synopsis "Interface to hidapi library")
    (description "Requires the hidapi-libusb C API and pkg-config.

For information
<https://github.com/signal11/hidapi/tree/master/libusb here>")
    (license license:bsd-3)))

haskell-9.0-hid

(define-public haskell-9.0-hmatrix-morpheus
  (package
    (name "haskell-9.0-hmatrix-morpheus")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-morpheus/hmatrix-morpheus-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19q52n5j1n5db7b2pv0iabh1xygpybgiszswginab5khc01fxwzj"))))
    (properties `((upstream-name . "hmatrix-morpheus") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-openblas")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-MonadRandom)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page
     "https://github.com/aligusnet/morpheus/tree/master/hmatrix-morpheus")
    (synopsis "Low-level machine learning auxiliary functions.")
    (description
     "Purely functional interface to morpheus based on hmatrix.
Morpheus library contains a bunch of cache line aware numerical algorithms
suitable for using as a low-level primitives to build machine learning applications.

Examples are in \"Numeric.Morpheus\" module.")
    (license license:bsd-3)))

haskell-9.0-hmatrix-morpheus

(define-public haskell-9.0-hsc2hs
  (package
    (name "haskell-9.0-hsc2hs")
    (version "0.68.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsc2hs/hsc2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0lksyyfrvn3km8bmfjad0mr50mg20f9fwfqly83lma0pr7xiwd3q"))))
    (properties `((upstream-name . "hsc2hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-in-ghc-tree")
       #:cabal-revision
       ("1" "0s9s46zmm4g4hlwspi4jimggka87xki68lfg555g94sjnbwjk34q")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (home-page "https://hackage.haskell.org/package/hsc2hs")
    (synopsis
     "A preprocessor that helps with writing Haskell bindings to C code")
    (description
     "The hsc2hs program can be used to automate some parts of the
process of writing Haskell bindings to C code.  It reads an
almost-Haskell source file with embedded special constructs, and
outputs a real Haskell file with these constructs processed, based
on information taken from some C headers.  The extra constructs
provide Haskell counterparts of C types, values of C constants,
including sizes of C types, and access to fields of C structs.

For more details, see the
<http://downloads.haskell.org/~ghc/master/users-guide/utils.html#writing-haskell-interfaces-to-c-code-hsc2hs hsc2hs section>
in the GHC User's Guide.")
    (license license:bsd-3)))

haskell-9.0-hsc2hs

(define-public haskell-9.0-hsignal
  (package
    (name "haskell-9.0-hsignal")
    (version "0.2.7.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsignal/hsignal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1b0rf4f1r94qjary06ysfn0cdmm6947c8g3424w1qhvcalhghq8g"))))
    (properties `((upstream-name . "hsignal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-openblas" "-f-onlygsl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages maths) gsl)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-hmatrix)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-hmatrix-gsl)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-hmatrix-gsl-stats)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-hstatistics)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-complex)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "http://code.haskell.org/hsignal")
    (synopsis "Signal processing and EEG data analysis")
    (description
     "Purely functional interface to signal processing based on hmatrix

Provides data types for manipulating EEG data, including reading from BDF data format files

The vector type is Data.Vector.Storable from the 'vector' package.

Feature requests, suggestions, and bug fixes welcome.")
    (license license:bsd-3)))

haskell-9.0-hsignal

(define-public haskell-9.0-hsndfile
  (package
    (name "haskell-9.0-hsndfile")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsndfile/hsndfile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ywfarzqzxa36irzk4sb15j5ywq1a0ypv9yr02abl3bbqbs7wzp9"))))
    (properties `((upstream-name . "hsndfile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages pulseaudio) libsndfile)))
    (home-page "http://haskell.org/haskellwiki/Hsndfile")
    (synopsis "Haskell bindings for libsndfile")
    (description
     "Haskell bindings for /libsndfile/, a comprehensive C library for reading and writing a large number of soundfile formats by Erik de Castro Lopo (<http://www.mega-nerd.com/libsndfile/>).

For more information on /hsndfile/ visit its homepage at <http://haskell.org/haskellwiki/Hsndfile>.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-hsndfile

(define-public haskell-9.0-hsshellscript
  (package
    (name "haskell-9.0-hsshellscript")
    (version "3.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hsshellscript/hsshellscript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1gdj6b3b0b71jcmxd5wc42gs9v5s37jqd1jwryif84qbiq8rskgr"))))
    (properties `((upstream-name . "hsshellscript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)))
    (home-page "http://www.volker-wysk.de/hsshellscript/")
    (synopsis "Haskell for Unix shell scripting tasks")
    (description "A Haskell-library for tasks which are usually done in
shell scripts. This includes parsing command line
arguments; dealing with paths; some commands for dealing
with files; calling external programs and subroutines as
separate processes; pipes and redirection of input and
output; and error handling.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-9.0-hsshellscript

(define-public haskell-9.0-hw-kafka-client
  (package
    (name "haskell-9.0-hw-kafka-client")
    (version "4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hw-kafka-client/hw-kafka-client-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s3wj5ih9mc7vp0w9rymw22w1yxp8z3qi7qmza9qw00aail8c5dg"))))
    (properties `((upstream-name . "hw-kafka-client") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-examples" "-f-it")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage004) haskell-9.0-c2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages networking) librdkafka)))
    (home-page "https://github.com/haskell-works/hw-kafka-client")
    (synopsis "Kafka bindings for Haskell")
    (description "Apache Kafka bindings backed by the librdkafka C library.

Features include:

* Consumer groups: auto-rebalancing consumers

* Keyed and keyless messages producing/consuming

* Batch producing messages")
    (license license:expat)))

haskell-9.0-hw-kafka-client

(define-public haskell-9.0-int-cast
  (package
    (name "haskell-9.0-int-cast")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/int-cast/int-cast-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0s8rqm5d9f4y2sskajsw8ff7q8xp52vwqa18m6bajldp11m9a1p0"))))
    (properties `((upstream-name . "int-cast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1l5n3hsa8gr0wzc3cb32ha2j8kcf976i84z04580q41macf0r0h6")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/hvr/int-cast")
    (synopsis "Checked conversions between integral types")
    (description
     "Provides statically or dynamically checked conversions between integral types. See documentation in \"Data.IntCast\" for more details.")
    (license license:bsd-3)))

haskell-9.0-int-cast

(define-public haskell-9.0-interpolation
  (package
    (name "haskell-9.0-interpolation")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolation/interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0y61hwm4xfa1wna4xk61c5p3b3z8i589lz6cxkk2pbaifydccxy0"))))
    (properties `((upstream-name . "interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-flapack")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-doctest-lib)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/interpolation/")
    (synopsis "piecewise linear and cubic Hermite interpolation")
    (description
     "Represent real functions by linear or cubic polynomial segments.
The package provides both data structures
for efficient lookup of interpolation intervals,
and computation of basis functions.

There are two examples that can be built with

> cabal install -fbuildExamples

* @@example/Plot.hs@@:
Interpolate a sinus curve using piecewise linear interpolation
and piecewise Hermite cubic interpolation.
For the latter one we provide the derivatives of the sinus function
at the interpolation nodes.

* @@example/Fit.hs@@:
Demonstrates how to use the basis functions
for fitting an interpolation function to a given function
using a linear least squares solver like @@<\\>@@ from @@lapack@@.
We use a distorted sinus as target.

The package needs only Haskell 98.
Most of the package dependencies are only needed for the examples
and are only installed if you enable to build them.")
    (license license:bsd-3)))

haskell-9.0-interpolation

(define-public haskell-9.0-invertible-grammar
  (package
    (name "haskell-9.0-invertible-grammar")
    (version "0.1.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/invertible-grammar/invertible-grammar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12jqd4n4wg2cl5zsmavxy8ci08q3lqzz8iljpl10a17qyr5araal"))))
    (properties `((upstream-name . "invertible-grammar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyprinter)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)))
    (home-page "https://github.com/esmolanka/invertible-grammar")
    (synopsis "Invertible parsing combinators framework")
    (description
     "Grammar combinator framework to build invertible parsing libraries
for concrete syntax.")
    (license license:bsd-3)))

haskell-9.0-invertible-grammar

(define-public haskell-9.0-language-glsl
  (package
    (name "haskell-9.0-language-glsl")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-glsl/language-glsl-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hdg67ainlqpjjghg3qin6fg4p783m0zmjqh4rd5gyizwiplxkp1"))))
    (properties `((upstream-name . "language-glsl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "10ac9pk4jy75k03j1ns4b5136l4kw8krr2d2nw2fdmpm5jzyghc5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-prettyclass)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (home-page "https://hackage.haskell.org/package/language-glsl")
    (synopsis "GLSL abstract syntax tree, parser, and pretty-printer")
    (description "The package language-glsl is a Haskell library for the
representation, the parsing, and the pretty-printing of
GLSL 1.50 code.")
    (license license:bsd-3)))

haskell-9.0-language-glsl

(define-public haskell-9.0-largeword
  (package
    (name "haskell-9.0-largeword")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/largeword/largeword-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0ikxklg4w30hyfcnrq8hr348p8s9hg42b9sj9x0byjb6hinv1cq0"))))
    (properties `((upstream-name . "largeword") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/idontgetoutmuch/largeword")
    (synopsis
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (description
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (license license:bsd-3)))

haskell-9.0-largeword

(define-public haskell-9.0-latex
  (package
    (name "haskell-9.0-latex")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/latex/latex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "10m0l0wlrkkl474sdmi7cl6w6kqyqzcp05h7jdacxhzbxyf8nahw"))))
    (properties `((upstream-name . "latex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/LaTeX")
    (synopsis "Parse, format and process LaTeX files")
    (description
     "Currently the package only provides
conversion between LaTeX escape sequences and Unicode characters.
It is used in the @@bibtex@@ package.

In the future we might add support
for formatting Haskell values in LaTeX markup
for automated report generation.

See the packages @@HaTeX@@ for LaTeX document generation
and @@pandoc@@ for document analysis and generation in multiple markup languages.")
    (license license:bsd-3)))

haskell-9.0-latex

(define-public haskell-9.0-lifted-base
  (package
    (name "haskell-9.0-lifted-base")
    (version "0.2.3.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/lifted-base/lifted-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1i8p8d3rkdh21bhgjjh32vd7qqjr7jq7p59qds0aw2kmargsjd61"))))
    (properties `((upstream-name . "lifted-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-monad-control)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-transformers-base)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-transformers-compat)))
    (home-page "https://github.com/basvandijk/lifted-base")
    (synopsis "lifted IO operations from the base library")
    (description
     "@@lifted-base@@ exports IO operations from the base library lifted to
any instance of 'MonadBase' or 'MonadBaseControl'.

Note that not all modules from @@base@@ are converted yet. If
you need a lifted version of a function from @@base@@, just
ask me to add it or send me a patch.

The package includes a copy of the @@monad-peel@@ testsuite written
by Anders Kaseorg The tests can be performed using @@cabal test@@.")
    (license license:bsd-3)))

haskell-9.0-lifted-base

(define-public haskell-9.0-mcmc-types
  (package
    (name "haskell-9.0-mcmc-types")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mcmc-types/mcmc-types-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0vpwrszhpl0ygs1qjk9v8gakl4rjia0cl4y3vna7cmh51c1jajrw"))))
    (properties `((upstream-name . "mcmc-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-mwc-probability)))
    (home-page "http://github.com/jtobin/mcmc-types")
    (synopsis "Common types for sampling.")
    (description
     "Common types for implementing Markov Chain Monte Carlo (MCMC) algorithms.

An instance of an MCMC problem can be characterized by the following:

* A /target distribution/ over some parameter space

* A /parameter space/ for a Markov chain to wander over

* A /transition operator/ to drive the Markov chain

/mcmc-types/ provides the suitably-general 'Target', 'Chain', and
'Transition' types for representing these things respectively.")
    (license license:expat)))

haskell-9.0-mcmc-types

(define-public haskell-9.0-med-module
  (package
    (name "haskell-9.0-med-module")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/med-module/med-module-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0qvwz49xz4bbhkkh9c7zjqzvbdhmgnraxpj8a4fc5lf0yb1k79ba"))))
    (properties `((upstream-name . "med-module") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-storable-endian)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hackage.haskell.org/package/med-module")
    (synopsis "Parse song module files from Amiga MED and OctaMED")
    (description
     "MED (Music EDitor) and its successor OctaMED
were popular music trackers on the Amiga:
<https://en.wikipedia.org/wiki/OctaMED>.
This is a library for parsing the binary module data.

With the Cabal flag @@-fbuildExamples@@ you can build two example programs:

* @@unmed2@@:
Loads song module files and show their content on standard output.

* @@animed@@:
Create a PostScript document showing how a song is played.
Also creates an FFmpeg cue file for the @@concat@@ input type.
This way you can create videos with MED music
plus precisely timed animations of the played tracks.
See the included @@Makefile@@ for the command calls
for creation of complete music videos from MMD files.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-med-module

(define-public haskell-9.0-minimorph
  (package
    (name "haskell-9.0-minimorph")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/minimorph/minimorph-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05z2y36q2m7lvrqnv5q40r8nr09q7bfbjvi5nca62xlnzxw1gy0g"))))
    (properties `((upstream-name . "minimorph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (home-page "https://github.com/Mikolaj/minimorph")
    (synopsis "English spelling functions with an emphasis on simplicity.")
    (description "A set of simplistic functions capturing the more regular
parts of English spelling (for generation, not parsing).
You will need to complement this with some account for
irregular nouns/verbs. This package is not meant to provide
anything resembling a full account of English morphology
(something like Functional Morphology or sequor could be
better suited). The main goal is to provide something cheap
and cheerful with no learning curve, that you can use until
your application calls for more robustness.
See <https://github.com/Mikolaj/miniutter> for a simple
use case.")
    (license license:bsd-3)))

haskell-9.0-minimorph

(define-public haskell-9.0-monad-memo
  (package
    (name "haskell-9.0-monad-memo")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-memo/monad-memo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0lw5pdkk39zxckwha4wjfjg5hxlvxa5gjmw385zmanjx34wkzg2c"))))
    (properties `((upstream-name . "monad-memo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-primitive)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/EduardSergeev/monad-memo")
    (synopsis "Memoization monad transformer")
    (description
     "Memoization monad transformer supporting most of the standard monad transformers and a range of memoization cache types: from default pure maps to extremely fast mutable vectors

To add memoization behaviour to a monadic function:

1) Add 'Control.Monad.Memo.memo' combinator at the point when memoization is required (i.e. recursive call)

>import Control.Monad.Memo
>
>fibm 0 = return 0
>fibm 1 = return 1
>fibm n = do
>  n1 <- memo fibm (n-1)
>  n2 <- memo fibm (n-2)
>  return (n1+n2)

2) Use appropriate /*eval*/ or /*run*/ function to evaluate resulting `MonadMemo` monad:

>startEvalMemo (fibm 100)

See detailed description and examples: \"Control.Monad.Memo\"")
    (license license:bsd-3)))

haskell-9.0-monad-memo

(define-public haskell-9.0-monad-peel
  (package
    (name "haskell-9.0-monad-peel")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-peel/monad-peel-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x1kr5pk8ksw8xcm19c50jx8m0crf3m3qp73k31dnl9r1w4ykm9d"))))
    (properties `((upstream-name . "monad-peel") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (home-page "http://andersk.mit.edu/haskell/monad-peel/")
    (synopsis
     "Lift control operations like exception catching through monad transformers")
    (description
     "This package defines @@MonadPeelIO@@, a subset of @@MonadIO@@ into which
generic control operations such as @@catch@@ can be lifted from @@IO@@.
Instances are based on monad transformers in @@MonadTransPeel@@, which
includes all standard monad transformers in the @@transformers@@
library except @@ContT@@.  For convenience, it provides a wrapped
version of Control.Exception with types generalized from @@IO@@ to all
monads in @@MonadPeelIO@@.")
    (license license:bsd-3)))

haskell-9.0-monad-peel

(define-public haskell-9.0-nettle
  (package
    (name "haskell-9.0-nettle")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nettle/nettle-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0pbxpxr9xdw3ha5lm9vnsbsvq0kzzsqv6gfk041ijllf1sc0hgyg"))))
    (properties `((upstream-name . "nettle") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fusepkgconfig")
       #:cabal-revision
       ("2" "0szkcrp9ws984ah282jwwfsmzn85khvpmkphv2b1jgxfwzqg426z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-byteable)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-securemem)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages nettle) nettle)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/stbuehler/haskell-nettle")
    (synopsis "safe nettle binding")
    (description
     "safe binding for the nettle (<http://www.lysator.liu.se/~nisse/nettle/nettle.html>) library.
Tested with 3.4, might work with 3.2 (but not earlier).")
    (license license:expat)))

haskell-9.0-nettle

(define-public haskell-9.0-netwire
  (package
    (name "haskell-9.0-netwire")
    (version "5.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/netwire/netwire-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0bi2xyipz11vsai4wghdrh5yywzl0bkinfpmh0qdp77y7qlygpgi"))))
    (properties `((upstream-name . "netwire") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-parallel)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)))
    (home-page "https://github.com/esoeylemez/netwire")
    (synopsis "Functional reactive programming library")
    (description
     "This library provides interfaces for and implements wire arrows
useful both for functional reactive programming (FRP) and locally
stateful programming (LSP).")
    (license license:bsd-3)))

haskell-9.0-netwire

(define-public haskell-9.0-non-empty
  (package
    (name "haskell-9.0-non-empty")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/non-empty/non-empty-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01vhkj9xgggml51zmrj3hngxxnzrcd4zs0a7yjg69i6z518mh0pg"))))
    (properties `((upstream-name . "non-empty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/non-empty/")
    (synopsis
     "List-like structures with static restrictions on the number of elements")
    (description
     "We provide the data type @@NonEmpty@@ that allows to store a list-like structure
with at least or exactly @@n@@ elements,
where @@n@@ is fixed in the type in a kind of Peano encoding
and is usually small.
The datatype is intended to increase safety
by making functions total that are partial on plain lists.
E.g. on a non-empty list, 'head' and 'tail' are always defined.

There are more such data types like @@Optional@@ and @@Empty@@.
Together with @@NonEmpty@@ you can define a list type
for every finite set of admissible list lengths.

The datatype can be combined with Lists, Sequences and Sets
(from the @@containers@@ package).

The package needs only Haskell 98.

Similar packages:

* @@semigroups@@, @@semigroupoids@@:
restricted to lists, minimum number of elements: 1,
provides more type classes tailored to the use of non-empty lists.

* @@NonEmptyList@@:
restricted to lists, minimum number of elements: 1

* @@NonEmpty@@:
restricted to lists, minimum number of elements: 1,
designed for unqualified use of identifiers

* @@Cardinality@@:@@NeverEmptyList@@

* @@mono-traversable@@:@@Data.MinLen@@:
allows to specify a minimum number of elements using type families
and works also for monomorphic data structures like 'ByteString'

* <http://www.haskell.org/haskellwiki/Non-empty_list>

Related packages:

* @@Stream@@:
Lists that contain always infinitely many elements.

* @@fixed-length@@:
Uses the data structure of this package
and defines a closed-world class for fixed-length lists
and an according index type.

* @@fixed-list@@:
Uses the same data structure as this package
but is intended for fixing the number of elements in a list.
Requires multi-parameter type classes with functional dependencies.")
    (license license:bsd-3)))

haskell-9.0-non-empty

(define-public haskell-9.0-non-negative
  (package
    (name "haskell-9.0-non-negative")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/non-negative/non-negative-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f01q916dzkl1i0v15qrw9cviycki5g3fgi6x8gs45iwbzssq52n"))))
    (properties `((upstream-name . "non-negative") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/non-negative/")
    (synopsis "Non-negative numbers")
    (description
     "Provides a class for non-negative numbers,
a wrapper which can turn any ordered numeric type into a member of that class,
and a lazy number type for non-negative numbers
(a generalization of Peano numbers).
This library is used by the @@event-list@@ package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-non-negative

(define-public haskell-9.0-numbers
  (package
    (name "haskell-9.0-numbers")
    (version "3000.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/numbers/numbers-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xssrf7lbyplkgnbfw1jqkib3w9wgn1d6n85pk86nx63j05y9kph"))))
    (properties `((upstream-name . "numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/jwiegley/numbers#readme")
    (synopsis "Various number types")
    (description "Instances of the numerical classes for a variety of
different numbers: (computable) real numbers,
arbitrary precision fixed numbers,
arbitrary precision floating point numbers,
differentiable numbers, symbolic numbers,
natural numbers, interval arithmetic.")
    (license license:bsd-3)))

haskell-9.0-numbers

(define-public haskell-9.0-optics-vl
  (package
    (name "haskell-9.0-optics-vl")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optics-vl/optics-vl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1xrkak0cn2imgqr641wzysgynykyj438m3ywgdm9h14k17inv55v"))))
    (properties `((upstream-name . "optics-vl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0ba6fk4djs3gm305km8c870h76mg8q1dyy899cll0scc6l9jgbyc")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-indexed-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-optics-core)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)))
    (home-page "https://hackage.haskell.org/package/optics-vl")
    (synopsis "Utilities for compatibility with van Laarhoven optics")
    (description
     "This package is part of the @@<https://hackage.haskell.org/package/optics optics>@@
package family.  It provides utilities for converting between the 'Optic' type
defined by @@<https://hackage.haskell.org/package/optics optics>@@ and the van
Laarhoven representations of optics that require definitions outside of @@base@@
(in particular isomorphisms and prisms).")
    (license license:bsd-3)))

haskell-9.0-optics-vl

(define-public haskell-9.0-partial-order
  (package
    (name "haskell-9.0-partial-order")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/partial-order/partial-order-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j65vhgas602fzmrjzxg7fvkmqclzxdni8yn0699l7ni6miv8pxj"))))
    (properties `((upstream-name . "partial-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fextra-instances")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/mtesseract/haskell-partial-order")
    (synopsis
     "Provides typeclass suitable for types admitting a partial order")
    (description "This packages provides the PartialOrd typeclass suitable for
types admitting a partial order.
The only module exposed by this package is
Data.PartialOrd. Along with the PartialOrd
typeclass and some utility functions for working
with partially ordered types, it exports
instances for certain numeric types along with
instances for lists and sets.")
    (license license:bsd-3)))

haskell-9.0-partial-order

(define-public haskell-9.0-pathtype
  (package
    (name "haskell-9.0-pathtype")
    (version "0.8.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pathtype/pathtype-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0322q8wd4mbp7q0cgym6mf2dxg2srp76r38kprxl9ik53s3y3p67"))))
    (properties `((upstream-name . "pathtype") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-time" "-f-buildtools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/pathtype/")
    (synopsis "Type-safe replacement for System.FilePath etc")
    (description
     "This package provides type-safe access to filepath manipulations.

\"System.Path\" is designed to be used instead of \"System.FilePath\".
(It is intended to provide versions of functions from that
module which have equivalent functionality but are more typesafe).
\"System.Path.Directory\" is a companion module
providing a type-safe alternative to \"System.Directory\".

The heart of this package is the @@'Path' ar fd@@ abstract type
which represents file and directory paths.
The idea is that there are two type parameters -
the first should be 'Abs' or 'Rel', and the second 'File' or 'Dir'.
A number of type synonyms are provided for common types:

> type Path.AbsFile = Path Abs File
> type Path.RelFile = Path Rel File
> type Path.AbsDir  = Path Abs Dir
> type Path.RelDir  = Path Rel Dir
>
> type Path.Abs  fd = Path Abs fd
> type Path.Rel  fd = Path Rel fd
> type Path.File ar = Path ar File
> type Path.Dir  ar = Path ar Dir

The type of the 'combine' (aka '</>') function gives the idea:

> (</>) :: Path.Dir ar -> Path.Rel fd -> Path ar fd

Together this enables us to give more meaningful types
to a lot of the functions,
and (hopefully) catch a bunch more errors at compile time.

For more details see the README.md file.

Related packages:

* @@filepath@@: The API of Neil Mitchell's \"System.FilePath\" module
(and properties satisfied) heavily influenced our package.

* @@path@@: Provides a wrapper type around 'FilePath'
and maps to functions from @@filepath@@ package.
This warrants consistency with @@filepath@@ functions.
Requires Template Haskell.

* @@data-filepath@@:
Requires 'Typeable' and Template Haskell.")
    (license license:bsd-3)))

haskell-9.0-pathtype

(define-public haskell-9.0-pem
  (package
    (name "haskell-9.0-pem")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pem/pem-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1m7qjsxrd8m88cvkqmr8kscril500j2a9y0iynvksjyjkhdlq33p"))))
    (properties `((upstream-name . "pem") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-basement)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-memory)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-pem")
    (synopsis "Privacy Enhanced Mail (PEM) format reader and writer.")
    (description
     "Privacy Enhanced Mail (PEM) format reader and writer. long description")
    (license license:bsd-3)))

haskell-9.0-pem

(define-public haskell-9.0-persist
  (package
    (name "haskell-9.0-persist")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/persist/persist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "19s0jpbcas6c64lzl9plhp1b3qk89g3jrqhj2ljxvkzk81dbr2r3"))))
    (properties `((upstream-name . "persist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-force-unaligned" "-f-force-aligned")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/minad/persist")
    (synopsis "Minimal serialization library with focus on performance")
    (description
     "A binary serialization library with focus on performance similar to store and cereal")
    (license license:bsd-3)))

haskell-9.0-persist

(define-public haskell-9.0-pipes
  (package
    (name "haskell-9.0-pipes")
    (version "4.3.16")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pipes/pipes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "163lx5sf68zx5kik5h1fjsyckwr9shdsn5k2dsjq3mhg077nxqgl"))))
    (properties `((upstream-name . "pipes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("6" "16s8a1ijakhsk73ny2vrw6a8r2dszgncd0wk735ii6csg3l2c9pm")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-mmorph)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-void)))
    (home-page "https://hackage.haskell.org/package/pipes")
    (synopsis "Compositional pipelines")
    (description
     "`pipes` is a clean and powerful stream processing library that lets you build
and connect reusable streaming components

Advantages over traditional streaming libraries:

* /Concise API/: Use simple commands like 'for', ('>->'), 'await', and 'yield'

* /Blazing fast/: Implementation tuned for speed, including shortcut fusion

* /Lightweight Dependency/: @@pipes@@ is small and compiles very rapidly,
including dependencies

* /Elegant semantics/: Use practical category theory

* /ListT/: Correct implementation of 'ListT' that interconverts with pipes

* /Bidirectionality/: Implement duplex channels

* /Extensive Documentation/: Second to none!

Import \"Pipes\" to use the library.

Read \"Pipes.Tutorial\" for an extensive tutorial.")
    (license license:bsd-3)))

haskell-9.0-pipes

(define-public haskell-9.0-pooled-io
  (package
    (name "haskell-9.0-pooled-io")
    (version "0.0.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pooled-io/pooled-io-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1g8zppj2s1wfzg5rpdgz15m44ihxhmrx16jx12n4821cdhsm2nrs"))))
    (properties `((upstream-name . "pooled-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-concurrent-split)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-unsafe)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/pooled-io/")
    (synopsis
     "Run jobs on a limited number of threads and support data dependencies")
    (description
     "The motivation for this package was to run computations on multiple cores
that need to write intermediate results to disk.
The functions restrict the number of simultaneously running jobs
to a user given number or to the number of capabilities
the Haskell program was started with,
i.e. the number after the RTS option @@-N@@.

There are some flavors of this functionality:

* \"Control.Concurrent.PooledIO.Independent\":
run independent actions without results in parallel

* \"Control.Concurrent.PooledIO.Final\":
run independent actions with a final result in parallel

* \"Control.Concurrent.PooledIO.InOrder\":
run jobs in parallel with data dependencies like @@make -j n@@

Additionally there is the module
\"Control.Concurrent.PooledIO.Sequence\"
that helps to serialize I/O actions from multiple threads.
It is certainly most useful in connection with
\"Control.Concurrent.PooledIO.Independent\".

Related packages:

* @@lazyio@@: interleave IO actions in a single thread

* @@async@@: start threads and wait for their results, forward exceptions,
but do not throttle concurrency with respect to number of available cores

* @@parallel-tasks@@:

* @@parallel-io@@:

* @@threadPool@@:

* @@threads-pool@@:

* @@cio@@:

* @@Control-Engine@@:

* @@taskpool@@, @@async-pool@@:")
    (license license:bsd-3)))

haskell-9.0-pooled-io

(define-public haskell-9.0-prefix-units
  (package
    (name "haskell-9.0-prefix-units")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prefix-units/prefix-units-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1173fj11rb42l239xj8j0q12dclvspxrbc984r503gd54zwbs2h5"))))
    (properties `((upstream-name . "prefix-units") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/iustin/prefix-units")
    (synopsis "A basic library for SI/binary prefix units")
    (description
     "This library deals with parsing values containing \\\"prefix units\\\"
(both binary and SI). For example, it can parse 10M and 1G, and it
can also format values for displaying with the \\\"optimal\\\" unit.
For more details, see the man page units(7),
<http://physics.nist.gov/cuu/Units/prefixes.html> and
<http://physics.nist.gov/cuu/Units/binary.html>.")
    (license license:bsd-3)))

haskell-9.0-prefix-units

(define-public haskell-9.0-probability
  (package
    (name "haskell-9.0-probability")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/probability/probability-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1m494ya9yv25jdi9wm90zz8c16vq1kv73sgc6w3950020hsbfqj9"))))
    (properties `((upstream-name . "probability") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-random)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page
     "http://www.haskell.org/haskellwiki/Probabilistic_Functional_Programming")
    (synopsis "Probabilistic Functional Programming")
    (description
     "The Library allows exact computation with discrete random variables
in terms of their distributions by using a monad.
The monad is similar to the List monad for non-deterministic computations,
but extends the List monad by a measure of probability.
Small interface to R plotting.")
    (license license:bsd-3)))

haskell-9.0-probability

(define-public haskell-9.0-product-profunctors
  (package
    (name "haskell-9.0-product-profunctors")
    (version "0.11.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/product-profunctors/product-profunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11q9vxj7pnby51gwgm0d17gd6ps2bxwrvajpqaqcg6bsdgdzvjws"))))
    (properties `((upstream-name . "product-profunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-bifunctors)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-contravariant)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-profunctors)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-tagged)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-th-abstraction)))
    (home-page "https://github.com/tomjaguarpaw/product-profunctors")
    (synopsis "product-profunctors")
    (description "Product profunctors and tools for working with them")
    (license license:bsd-3)))

haskell-9.0-product-profunctors

(define-public haskell-9.0-quicklz
  (package
    (name "haskell-9.0-quicklz")
    (version "1.5.0.11")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/quicklz/quicklz-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "17v9bfdp4ib9258r7001naqwss7l6v83by40va3gm3l418vj62qd"))))
    (properties `((upstream-name . "quicklz") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-memory-safe")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://github.com/thoughtpolice/hs-quicklz")
    (synopsis "QuickLZ compression for ByteStrings")
    (description
     "This package provides a high level binding to the QuickLZ
compression library for @@ByteStrings@@, under the GPLv2
license. QuickLZ is fast and compresses very well. Check out the
home page: <http://quicklz.com>

This package includes the QuickLZ 1.5.0 source code, at
compression level 1 and streaming mode disabled.

The versioning scheme for this package is unusual. QuickLZ tries to
be as fast as possible, and will break backwards compatibility to
achieve it in newer versions. This versioning scheme reflects the
QuickLZ versioning scheme: the first three digits of version w.x.y.z
are the quicklz version, with the 'z' component (and any further
needed ones) being updates to this package, not quicklz itself.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.0-quicklz

(define-public haskell-9.0-siphash
  (package
    (name "haskell-9.0-siphash")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/siphash/siphash-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wq5dan30ggjgmravy92ylqjvjv1q7mxrmddr7zc8h6aqr0wx0fg"))))
    (properties `((upstream-name . "siphash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "14l9ndv8l2vysb3fp00gfh2g6j5bwhkh67kwbx9ish74ncmqkznv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000) haskell-9.0-cpu)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-siphash")
    (synopsis "siphash: a fast short input PRF")
    (description
     "Haskell implementation of siphash. [http://131002.net/siphash/siphash.pdf]")
    (license license:bsd-3)))

haskell-9.0-siphash

(define-public haskell-9.0-spreadsheet
  (package
    (name "haskell-9.0-spreadsheet")
    (version "0.1.3.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/spreadsheet/spreadsheet-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rd7qi6wy17fcz1a6pfqjxl3z816r8p6gyvz4zq85kgkjpkicrv4"))))
    (properties `((upstream-name . "spreadsheet") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Spreadsheet")
    (synopsis
     "Read and write spreadsheets from and to CSV files in a lazy way")
    (description
     "Read and write spreadsheets from and to files
containing comma separated values (CSV) in a lazy way.
Reading from other source than plain 'String's could be easily added.

If you install this package by

> cabal install -fbuildExamples

then the example programs @@csvreplace@@ and @@csvextract@@
are compiled and installed, too.
The program @@csvreplace@@ fills a template text using data from a CSV file.
For similar (non-Haskell) programs see @@cut@@, @@csvfix@@, @@csvtool@@.
The program @@csvextract@@ is the inverse of @@csvreplace@@.

Related packages:

* @@csv@@: strict parser

* <http://www.xoltar.org/languages/haskell.html>,
<http://www.xoltar.org/languages/haskell/CSV.hs>: strict parser

* @@lazy-csv@@: lazy @@String@@ and @@ByteString@@ parser

* @@cassava@@: high-level CSV parser that treats rows as records,
parses ByteStrings and is biased towards UTF-8 encoding.")
    (license license:bsd-3)))

haskell-9.0-spreadsheet

(define-public haskell-9.0-storable-record
  (package
    (name "haskell-9.0-storable-record")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storable-record/storable-record-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1d4c1ccbrpq8rnacsjib9nmxhgxk9yb1zxx1nvfavhqhv8nwq2fd"))))
    (properties `((upstream-name . "storable-record") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildtests")
       #:cabal-revision
       ("1" "0gmyc50r9nzfwr5iyiixascgkv2lvk7xccvimqv2ix4zyi2fwdad")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/storable-record/")
    (synopsis "Elegant definition of Storable instances for records")
    (description
     "With this package
you can build a Storable instance of a record type
from Storable instances of its elements in an elegant way.
It does not do any magic,
just a bit arithmetic to compute the right offsets,
that would be otherwise done manually
or by a preprocessor like C2HS.
I cannot promise that the generated memory layout
is compatible with that of a corresponding C struct.
However, the module generates the smallest layout
that is possible with respect to the alignment of the record elements.
If you encounter, that a record does not have a compatible layout,
we should fix that.
But also without C compatibility this package is useful
e.g. in connection with StorableVector.

We provide Storable instance support for several cases:

* If you wrap a type in a @@newtype@@,
then you can lift its 'Storable' instance to that @@newtype@@
with the module \"Foreign.Storable.Newtype\".
This way you do not need the @@GeneralizedNewtypeDeriving@@ feature of GHC.

* If you have a type that is an instance of 'Traversable',
you can use that feature for implementation of 'Storable' methods.
The module \"Foreign.Storable.Traversable\"
allows manipulation of the portion of your type,
that is accessible by 'Traversable' methods.
For instance with the type
@@data T a = Cons Int [a]@@
and an according 'Traversable' implementation,
you can load and store the elements of the contained list.
This may be part of a 'Storable' implementation of the whole type.

* If you have a record containing elements of various types,
then you need module \"Foreign.Storable.Record\".

Note however that the Storable instances
defined with this package are quite slow in (up to) GHC-6.12.1.
I'm afraid this is due to incomplete inlining,
but we have still to investigate the problem.

For examples see packages @@storable-tuple@@ and @@sample-frame@@.")
    (license license:bsd-3)))

haskell-9.0-storable-record

(define-public haskell-9.0-tfp
  (package
    (name "haskell-9.0-tfp")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tfp/tfp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "02rm06cscj470ab6pla3050l1iygak69yfhsy0wc6cvavz181plf"))))
    (properties `((upstream-name . "tfp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Type_arithmetic")
    (synopsis "Type-level integers, booleans, lists using type families")
    (description
     "TFP is an abbreviation for Type Family Programming.
It provides implementations of type-level integers and booleans,
and (eventually) simple type-level data structures.
It uses type families as functions to produce new types,
which provides an intuitive way to parameterize data types
and functions on numerical values at compile time.")
    (license license:bsd-3)))

haskell-9.0-tfp

(define-public haskell-9.0-type-map
  (package
    (name "haskell-9.0-type-map")
    (version "0.1.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-map/type-map-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0612y1n2ydnb5sw411a1xnjmp03qhjl3iv9pnwdj59l17bcmqq21"))))
    (properties `((upstream-name . "type-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-vector)))
    (home-page "https://github.com/Lysxia/type-map")
    (synopsis "Type-indexed maps")
    (description
     "Maps where keys are types and values can have types depending on their keys.")
    (license license:expat)))

haskell-9.0-type-map

(define-public haskell-9.0-unexceptionalio
  (package
    (name "haskell-9.0-unexceptionalio")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unexceptionalio/unexceptionalio-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07py2nffdgxpz8sryvqcghzb2kiiagpdf5ja1dia4z0rpwi79smh"))))
    (properties `((upstream-name . "unexceptionalio") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-HUnit)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-hunit)))
    (home-page "https://github.com/singpolyma/unexceptionalio")
    (synopsis "IO without any non-error, synchronous exceptions")
    (description
     "When you've caught all the exceptions that can be handled safely,
this is what you're left with.

It is intended that you use qualified imports with this library.

> import UnexceptionalIO (UIO)
> import qualified UnexceptionalIO as UIO

You may also wish to investigate unexceptionalio-trans if you like
monad transformers.

Blog post: http://sngpl.ma/p4uT0")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-9.0-unexceptionalio

(define-public haskell-9.0-unicode
  (package
    (name "haskell-9.0-unicode")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/unicode/unicode-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hgqnplpgaw0pwz0lfr59vmljcf4l5b4ynrhdcic94g18lpsmnvg"))))
    (properties `((upstream-name . "unicode") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/unicode/")
    (synopsis "Construct and transform unicode characters")
    (description
     "The package contains functions for construction
of various characters like:

* block graphic elements

* frame elements

* fractions

* subscript and superscript characters

Related packages:

* @@unicode-properties@@: classifications such as lower case, graphical etc.

* @@rfc5051@@: sorting of characters")
    (license license:bsd-3)))

haskell-9.0-unicode

(define-public haskell-9.0-xml-basic
  (package
    (name "haskell-9.0-xml-basic")
    (version "0.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-basic/xml-basic-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qm3g00zavdal1f1yj2jrg7lb6b845fbf63b4pym5p49wkw3yx4d"))))
    (properties `((upstream-name . "xml-basic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-data-accessor)
                  (@ (gnu packages stackage ghc-9.0 stage001)
                     haskell-9.0-explicit-exception)
                  (@ (gnu packages stackage ghc-9.0 stage000)
                     haskell-9.0-semigroups)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hackage.haskell.org/package/xml-basic")
    (synopsis "Basics for XML/HTML representation and processing")
    (description
     "We provide basic data types for XML representation,
like names, attributes, entities.
Yes we try hard to get type safe XML handling out of Haskell 98.
We also provide information about exceptional HTML tags,
like self-closing tags.
This package provides common functionality
that is both needed in list (tagchup) and tree (wraxml) representations of XML.")
    (license license:bsd-3)))

haskell-9.0-xml-basic

(define-public haskell-9.0-youtube
  (package
    (name "haskell-9.0-youtube")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/youtube/youtube-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "098fhkyw70sxb58bj9hbshg12j57s23qrv9r1r7m13rxbxw6lf9f"))))
    (properties `((upstream-name . "youtube") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0kxdxz4802fbbmj2p8wkf2wpqf2yazqz20yqnqn26pm248nvnavb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-utility-ht)))
    (home-page "https://hackage.haskell.org/package/youtube")
    (synopsis "Upload video to YouTube via YouTube API")
    (description
     "Upload a video to YouTube via YouTube API.
The aim of this program is to simplify uploads of related videos.

First you must have the @@curl@@ executable installed.

In order to use the @@youtube-upload@@ command
you need a YouTube account and an additional developer account.
From the developer account you get a keyfile.
If you want to upload videos you first have to login to YouTube.
You can do this with

> youtube-auth your_youtube_login

or

> export YOUTUBEUSER=your_youtube_login
> youtube-auth

As a result of this call you get an authentication token.
Write this authentication token into the @@YOUTUBEAUTH@@ environment variable.
It is queried by @@youtube-upload@@.
For every upload you have to pass the developer keyfile,
an XML file containing meta data for the video and the video file.

The XML file must be encoded with UTF-8.
I found it very useful to generate the XML files
from an XML template file and a CSV table
using the @@cvsreplace@@ command from the @@spreadsheet@@ package.
I have included the example file @@upload-template.xml@@
that you can use with a CSV file
with the columns @@TITLE@@, @@DESCRIPTION@@, @@CATEGORY@@, @@TAGS@@.

The package is now deprecated.
It only supports authentication via @@ClientLogin@@
which was disabled by Google somewhen in 2017.
Authentication via @@OAuth2.0@@ is pretty complicated.
Better use a program that calls one of the official Google APIs like:

* <https://github.com/tokland/youtube-upload>")
    (license license:bsd-3)))

haskell-9.0-youtube

(define-public haskell-9.0-zstd
  (package
    (name "haskell-9.0-zstd")
    (version "0.1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zstd/zstd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0vghl48cxcqy72sqk2gpi7rvy5ya36j13vndaxi6kck6bqivbhm0"))))
    (properties `((upstream-name . "zstd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fstandalone")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.0 stage002)
                     haskell-9.0-QuickCheck)
                  (@ (gnu packages stackage ghc-9.0 stage003)
                     haskell-9.0-test-framework)
                  (@ (gnu packages stackage ghc-9.0 stage004)
                     haskell-9.0-test-framework-quickcheck2)))
    (home-page "https://github.com/luispedro/hs-zstd")
    (synopsis "Haskell bindings to the Zstandard compression algorithm")
    (description
     "A fast lossless compression algorithm, targeting real-time
compression scenarios at zlib-level and better compression ratios.")
    (license license:bsd-3)))

haskell-9.0-zstd

