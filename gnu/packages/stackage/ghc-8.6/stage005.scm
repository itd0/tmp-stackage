;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage005)
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
(define-public haskell-8.6-Decimal
  (package
    (name "haskell-8.6-Decimal")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Decimal/Decimal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0k7kh05mr2f54w1lpgq1nln0h8k6s6h99dyp5jzsb9cfbb3aap2p"))))
    (properties `((upstream-name . "Decimal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1x9a9jwx9h06hnqpflpbhdz22p7wkz3j4ydc22mkrgbxnfa3arvk")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/PaulJohnson/Haskell-Decimal")
    (synopsis "Decimal numbers with variable precision")
    (description "A decimal number has an integer mantissa and a negative
exponent.  The exponent can be interpreted as the number
of decimal places in the value.")
    (license license:bsd-3)))

haskell-8.6-Decimal

(define-public haskell-8.6-SHA
  (package
    (name "haskell-8.6-SHA")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
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

haskell-8.6-SHA

(define-public haskell-8.6-abstract-deque-tests
  (package
    (name "haskell-8.6-abstract-deque-tests")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-abstract-deque)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis
     "A test-suite for any queue or double-ended queue satisfying an interface ")
    (description
     "This package provides tests that can be used with any queue implementation
that satisfies the `abstract-deque` interface.")
    (license license:bsd-3)))

haskell-8.6-abstract-deque-tests

(define-public haskell-8.6-base64-bytestring
  (package
    (name "haskell-8.6-base64-bytestring")
    (version "1.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-bytestring/base64-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iwg03z1w9n3n3q68siwk0dmwkb3sygmravbwbrs7h0lxih9s5gg"))))
    (properties `((upstream-name . "base64-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0nc2m0by303x7zd0cshpvlhyapkabfhgbcaflg7jgaryssk7w0nm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/haskell/base64-bytestring")
    (synopsis "Fast base64 encoding and decoding for ByteStrings")
    (description
     "This package provides support for encoding and decoding binary data according to @@base64@@ (see also <https://tools.ietf.org/html/rfc4648 RFC 4648>) for strict and lazy ByteStrings.")
    (license license:bsd-3)))

haskell-8.6-base64-bytestring

(define-public haskell-8.6-binary-bits
  (package
    (name "haskell-8.6-binary-bits")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/binary-bits/binary-bits-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1577bd5q4lhw024v4hfil10iyx7v4cf72ldhxb8xhm27i80lllqn"))))
    (properties `((upstream-name . "binary-bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "08x9vx9akj46aw1l9k9xhhvqpxwffbz7fcr2dk5vr001a2ya4ngm")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/binary-bits")
    (synopsis "Bit parsing/writing on top of binary.")
    (description "Bit parsing/writing on top of binary. Provides functions to
read and write bits to and from 8\\/16\\/32\\/64 words.")
    (license license:bsd-3)))

haskell-8.6-binary-bits

(define-public haskell-8.6-blaze-builder
  (package
    (name "haskell-8.6-blaze-builder")
    (version "0.4.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/blaze-builder/blaze-builder-"
                    version ".tar.gz"))
              (sha256
               (base32
                "05681dih2d8s96an945wkbwl05w8ddbcfx8n3r3ck79ydyb8pz4i"))))
    (properties `((upstream-name . "blaze-builder") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1p66mh9z3aqgind755xzf39pvl2hwjnwrlwiwyj653yzb1gn6c9j")))
    (outputs (list "out" "static" "doc"))
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
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-utf8-string)))
    (home-page "http://github.com/lpsmith/blaze-builder")
    (synopsis "Efficient buffered output.")
    (description "This library provides an implementation of the older
blaze-builder interface in terms of the new builder that
shipped with bytestring-0.10.4.0

This implementation is mostly intended as a bridge to the
new builder,  so that code that uses the old interface
can interoperate with code that uses the new
implementation.   Note that no attempt has been made
to preserve the old internal modules,  so code that
has these dependencies cannot use this interface.

New code should,  for the most part,  use the new
interface.   However, this module does implement
a chunked HTTP encoding,  which is not otherwise
implemented (yet?) with the new builder.")
    (license license:bsd-3)))

haskell-8.6-blaze-builder

(define-public haskell-8.6-bson
  (package
    (name "haskell-8.6-bson")
    (version "0.3.2.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bson/bson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1xqxjs0vhlrvnclkxn8y5dr4liaja4flqizphk1000km2kvvw748"))))
    (properties `((upstream-name . "bson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f_old-network")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-cryptohash-md5)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-binary-ieee754)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-network)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
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

haskell-8.6-bson

(define-public haskell-8.6-cereal
  (package
    (name "haskell-8.6-cereal")
    (version "0.5.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cereal/cereal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1mqvd1iwzr50az4y24332x3g3wsrzw8j1iwph02vr7jbjfn8i7id"))))
    (properties `((upstream-name . "cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder")
       #:cabal-revision
       ("1" "02v1nivac478nzzykjbq3rawnqskxjc4sb54m6s5jcgbigfnb2x0")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/GaloisInc/cereal")
    (synopsis "A binary serialization library")
    (description
     "A binary serialization library, similar to binary, that introduces an isolate
primitive for parser isolation, and labeled blocks for better error messages.")
    (license license:bsd-3)))

haskell-8.6-cereal

(define-public haskell-8.6-comfort-array
  (package
    (name "haskell-8.6-comfort-array")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-array/comfort-array-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jvksvvslvg5wiqin5pd0q0q8a7snhfjh26a98mdakk8dziw1p1m"))))
    (properties `((upstream-name . "comfort-array") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsetindex")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-guarded-allocation)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-empty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-prelude-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-storable-record)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/comfort-array/")
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

* @@Zero, ()@@:
Arrays with fixed size 0 or 1, respectively.

* @@Enumeration@@:
Arrays with indices like 'LT', 'EQ', 'GT' and a shape of fixed size.

* @@(:+:)@@:
The Append type constructor allows to respresent block arrays,
e.g. block matrices.
It also allows to represent non-empty arrays via @@():+:sh@@.

* @@Set@@: Use an arbitrary ordered set as index set.

* @@Triangular@@:
A 2D array with the shape of a lower or upper triangular matrix.

* @@Tagged@@: Statically distinguish shapes and indices that are isomorphic.

The @@lapack@@ package defines even more fancy shapes
like tall rectangular matrices, triangular matrices and banded matrices.")
    (license license:bsd-3)))

haskell-8.6-comfort-array

(define-public haskell-8.6-crypto-cipher-tests
  (package
    (name "haskell-8.6-crypto-cipher-tests")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-securemem)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Generic cryptography cipher tests")
    (description "Generic cryptography cipher tests")
    (license license:bsd-3)))

haskell-8.6-crypto-cipher-tests

(define-public haskell-8.6-crypto-numbers
  (package
    (name "haskell-8.6-crypto-numbers")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-numbers/crypto-numbers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19l9y5jzvqrqfam13xin9m9ca0s5ql86yv0cjn6dzkydx4byn2j2"))))
    (properties `((upstream-name . "crypto-numbers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-finteger-gmp")
       #:cabal-revision
       ("1" "1jjkhid8kwrz5894nad537rqxzzyx6b687bmgyk70nv0ny336j9b")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-crypto-random)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/vincenthz/hs-crypto-numbers")
    (synopsis "Cryptographic numbers: functions and algorithms")
    (description "Cryptographic numbers: functions and algorithms")
    (license license:bsd-3)))

haskell-8.6-crypto-numbers

(define-public haskell-8.6-cutter
  (package
    (name "haskell-8.6-cutter")
    (version "0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cutter/cutter-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hka1k012d2nwnkbhbiga6307v1p5s88s2nxkrnymvr0db1ijwqi"))))
    (properties `((upstream-name . "cutter") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-spreadsheet)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "https://hackage.haskell.org/package/cutter")
    (synopsis "Cut files according to a position list")
    (description
     "Cut a file into chunks according to a position list
and concatenate the chunks.
The chunks must not overlap and must be in increasing order.

Use it this way:

> cutter positions.csv <datain >dataout

The file @@positions.csv@@ must be a comma separated spreadsheet file (CSV),
where the first column contains the chunk beginnings
and the second column contains the pause beginnings.
A pause begins one byte after a chunk ends.
The other columns are ignored and may contain annotations of the chunks.

The positions file may also contain line numbers.
In this case you run the command this way:

> cutter -l positions.csv <datain >dataout

Example: remove selected attachments from e-mails in mbox file
using the @@lsmbox@@ command from <http://hackage.haskell.org/package/mbox-utility>.")
    (license license:bsd-3)))

haskell-8.6-cutter

(define-public haskell-8.6-deepseq-generics
  (package
    (name "haskell-8.6-deepseq-generics")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
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

haskell-8.6-deepseq-generics

(define-public haskell-8.6-double-conversion
  (package
    (name "haskell-8.6-double-conversion")
    (version "2.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/double-conversion/double-conversion-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0sx2kc1gw72mjvd8vph8bbjw5whfxfv92rsdhjg1c0al75rf3ka4"))))
    (properties `((upstream-name . "double-conversion") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")
       #:cabal-revision
       ("1" "01f1jwhdk639dmh8c8sw8gcxbkv24vhwic6yngls8xj2hhgpsdcf")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
    (home-page "https://github.com/bos/double-conversion")
    (synopsis
     "Fast conversion between double precision floating point and text")
    (description
     "A library that performs fast, accurate conversion between double
precision floating point and text.

This library is implemented as bindings to the C++
@@double-conversion@@ library written by Florian Loitsch at Google:
<https://github.com/floitsch/double-conversion>.

The 'Text' versions of these functions are about 30 times faster
than the default 'show' implementation for the 'Double' type.

The 'ByteString' versions are /slower/ than the 'Text' versions;
roughly half the speed.  (This seems to be due to the cost of
allocating 'ByteString' values via @@malloc@@.)

As a final note, be aware that the @@bytestring-show@@ package is
about 50% slower than simply using 'show'.")
    (license license:bsd-3)))

haskell-8.6-double-conversion

(define-public haskell-8.6-enummapset
  (package
    (name "haskell-8.6-enummapset")
    (version "0.6.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/enummapset/enummapset-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0476rzarcfpp4qm4qsz6wdnhr11nlfhqgrnbni591kbmngqlld1v"))))
    (properties `((upstream-name . "enummapset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/Mikolaj/enummapset")
    (synopsis "IntMap and IntSet with Enum keys/elements.")
    (description
     "This package contains simple wrappers around 'Data.IntMap' and
'Data.IntSet' with 'Enum' keys and elements respectively.
Especially useful for 'Int's wrapped with `newtype`.")
    (license license:bsd-3)))

haskell-8.6-enummapset

(define-public haskell-8.6-enumset
  (package
    (name "haskell-8.6-enumset")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/enumset/enumset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0d9lnl7mmcwydfhb4iazh6gcdbxvdh7b3gar3c9l1k5xmc4r8qii"))))
    (properties `((upstream-name . "enumset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-accessor)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-storable-record)))
    (home-page "https://hackage.haskell.org/package/enumset")
    (synopsis "Sets of enumeration values represented by machine words")
    (description
     "With this package you can create a type safe interface to flag sets.
It is intended for interfacing to C libraries via FFI,
where Word8, Word16, or Word32 types are commonly used to store bit vectors.
E.g. the type @@EnumSet Word16 Ordering@@
represents a flag set stored in a Word16
that supports the flags @@LT@@, @@EQ@@, @@GT@@.

This package is similar to the @@bitset@@ package and
the @@Data.Edison.Coll.EnumSet@@ module in the @@edison@@ package,
however our implementation allows you to choose the embedding type
and thus the maximum size of the set.

See also @@data-flags@@ and @@Data.EnumSet@@ in @@enummapset@@.")
    (license license:bsd-3)))

haskell-8.6-enumset

(define-public haskell-8.6-event-list
  (package
    (name "haskell-8.6-event-list")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/event-list/event-list-" version
                    ".tar.gz"))
              (sha256
               (base32
                "177q99iswmanh34wlgklw1djvv5v1c0b5ysyi7mdmb70fsw30kk2"))))
    (properties `((upstream-name . "event-list") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-negative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/event-list/")
    (synopsis "Event lists with relative or absolute time stamps")
    (description
     "These lists manage events that are associated with times.
Times may be given as difference between successive events
or as absolute time values.
Pauses before the first and after the last event are supported.
The underlying data structures are lists of elements of alternating types,
that is [b,a,b,...,a,b] or [a,b,a,...,a,b].
The data structures can be used to represent
MIDI files, OpenSoundControl message streams, music performances etc.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-event-list

(define-public haskell-8.6-exception-transformers
  (package
    (name "haskell-8.6-exception-transformers")
    (version "0.4.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-transformers/exception-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "079vwd0lkv7y5cijpjxsxn6wyba1y22fw9mfirzgjpiswx46isrr"))))
    (properties `((upstream-name . "exception-transformers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/exception-transformers")
    (synopsis "Type classes and monads for unchecked extensible exceptions.")
    (description "This package provides type classes, a monad and a monad
transformer that support unchecked extensible exceptions as
well as asynchronous exceptions. It is compatible with
the transformers package.")
    (license license:bsd-3)))

haskell-8.6-exception-transformers

(define-public haskell-8.6-exceptions
  (package
    (name "haskell-8.6-exceptions")
    (version "0.10.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exceptions/exceptions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kw4pmx7j7zwbdwm0dyn9rcs6kp4byfxy48861yxdz6gam1zn2sd"))))
    (properties `((upstream-name . "exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftransformers-0-4")
       #:cabal-revision
       ("3" "0b9bml5j46zz62ik2827ndsd5293dh8630086x1mngb80gnrml3y")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/ekmett/exceptions/")
    (synopsis "Extensible optionally-pure exceptions")
    (description "Extensible optionally-pure exceptions.")
    (license license:bsd-3)))

haskell-8.6-exceptions

(define-public haskell-8.6-fingertree
  (package
    (name "haskell-8.6-fingertree")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fingertree/fingertree-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zvandj8fysck7ygpn0dw5bhrhmj1s63i326nalxbfkh2ls4iacm"))))
    (properties `((upstream-name . "fingertree") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
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

haskell-8.6-fingertree

(define-public haskell-8.6-fixed-length
  (package
    (name "haskell-8.6-fixed-length")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-length/fixed-length-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jabfv9ga94maw35a7xdw5lwi55d7z92nn2zs2c8z3jk0a4bcld1"))))
    (properties `((upstream-name . "fixed-length") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-empty)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-storable-record)
                  (@ (gnu packages stackage ghc-8.6 stage004) haskell-8.6-tfp)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/fixed-length/")
    (synopsis "Lists with statically known length based on non-empty package.")
    (description
     "This packages defines a list data type with statically known length
by nesting the NonEmpty and Empty data structure from the non-empty package.
We provide a closed world class for this class of structures
<http://www.haskell.org/haskellwiki/Closed_world_instances>
and a wrapper that makes all these lists @@Traversable@@
and @@Applicative@@ with ZipList semantics.

Similar packages:

* @@fixed-list@@:
Defines an open world class.")
    (license license:bsd-3)))

haskell-8.6-fixed-length

(define-public haskell-8.6-hashable
  (package
    (name "haskell-8.6-hashable")
    (version "1.2.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hashable/hashable-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1gra8gq3kb7b2sd845h55yxlrfqx3ii004c6vjhga8v0b30fzdgc"))))
    (properties `((upstream-name . "hashable") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-finteger-gmp" "-fsse2" "-f-sse41" "-f-examples")
       #:cabal-revision
       ("2" "1rzrjsb4nhmbp8917cy34am40a5zlwhl5ibdh556xff4x9r1maq1")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/tibbe/hashable")
    (synopsis "A class for types that can be converted to a hash value")
    (description "This package defines a class, 'Hashable', for types that
can be converted to a hash value.  This class
exists for the benefit of hashing-based data
structures.  The package provides instances for
basic types and a way to combine hash values.")
    (license license:bsd-3)))

haskell-8.6-hashable

(define-public haskell-8.6-hspec-discover
  (package
    (name "haskell-8.6-hspec-discover")
    (version "2.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-discover/hspec-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r47fm94wa6qrhp8cc1zzkjrxc32rnagfn9m9ga4dm6p6ydw4c8b"))))
    (properties `((upstream-name . "hspec-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-hspec-meta)))
    (home-page "http://hspec.github.io/")
    (synopsis "Automatically discover and run Hspec tests")
    (description "Automatically discover and run Hspec tests

<http://hspec.github.io/hspec-discover.html>")
    (license license:expat)))

haskell-8.6-hspec-discover

(define-public haskell-8.6-largeword
  (package
    (name "haskell-8.6-largeword")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/idontgetoutmuch/largeword")
    (synopsis
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (description
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (license license:bsd-3)))

haskell-8.6-largeword

(define-public haskell-8.6-minimorph
  (package
    (name "haskell-8.6-minimorph")
    (version "0.2.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/minimorph/minimorph-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1phpsd0j8c987sw99p4hyywr4ydcxf5aq4h6xqdl3acwi0dv4zhj"))))
    (properties `((upstream-name . "minimorph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
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

haskell-8.6-minimorph

(define-public haskell-8.6-monad-memo
  (package
    (name "haskell-8.6-monad-memo")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-memo/monad-memo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1zsvp0g2kzjf5zkv1js65jfc1p3yrkr95csp2ljpqx857qy4lnn6"))))
    (properties `((upstream-name . "monad-memo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-primitive)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
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

2) Use approprite /*eval*/ or /*run*/ function to evaluate resulting `MonadMemo` monad:

>startEvalMemo (fibm 100)

See detailed description and examples: \"Control.Monad.Memo\"")
    (license license:bsd-3)))

haskell-8.6-monad-memo

(define-public haskell-8.6-monad-peel
  (package
    (name "haskell-8.6-monad-peel")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
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

haskell-8.6-monad-peel

(define-public haskell-8.6-numbers
  (package
    (name "haskell-8.6-numbers")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/jwiegley/numbers#readme")
    (synopsis "Various number types")
    (description "Instances of the numerical classes for a variety of
different numbers: (computable) real numbers,
arbitrary precision fixed numbers,
arbitrary precision floating point numbers,
differentiable numbers, symbolic numbers,
natural numbers, interval arithmetic.")
    (license license:bsd-3)))

haskell-8.6-numbers

(define-public haskell-8.6-parsec
  (package
    (name "haskell-8.6-parsec")
    (version "3.1.14.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/parsec/parsec-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "132waj2cpn892midbhpkfmb74qq83v0zv29v885frlp1gvh94b67"))))
    (properties `((upstream-name . "parsec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0p65q054iaz2117a5qk1428dic4sb41acclys9k00zna24ks7iq3")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://github.com/haskell/parsec")
    (synopsis "Monadic parser combinators")
    (description
     "Parsec is designed from scratch as an industrial-strength parser
library.  It is simple, safe, well documented (on the package
homepage), has extensive libraries, good error messages,
and is fast.  It is defined as a monad transformer that can be
stacked on arbitrary monads, and it is also parametric in the
input stream type.

The main entry point is the \"Text.Parsec\" module which provides
defaults for parsing 'Char'acter data.

The \"Text.ParserCombinators.Parsec\" module hierarchy contains
the legacy @@parsec-2@@ API and may be removed at some point in
the future.")
    (license license:bsd-3)))

haskell-8.6-parsec

(define-public haskell-8.6-pem
  (package
    (name "haskell-8.6-pem")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-basement)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-memory)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-pem")
    (synopsis "Privacy Enhanced Mail (PEM) format reader and writer.")
    (description
     "Privacy Enhanced Mail (PEM) format reader and writer. long description")
    (license license:bsd-3)))

haskell-8.6-pem

(define-public haskell-8.6-persist
  (package
    (name "haskell-8.6-persist")
    (version "0.1.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/persist/persist-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0g15l5fqzw30hsrc58hmgz5vbw8bfbgin7gi2dwahc98k8i0gxd4"))))
    (properties `((upstream-name . "persist") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-force-unaligned" "-f-force-aligned")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/minad/persist")
    (synopsis "Minimal serialization library with focus on performance")
    (description
     "A binary serialization library with focus on performance similar to store and cereal")
    (license license:bsd-3)))

haskell-8.6-persist

(define-public haskell-8.6-sample-frame
  (package
    (name "haskell-8.6-sample-frame")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sample-frame/sample-frame-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ivj0bcnqqc805np62bdpvh8v4ykmw86ph5rp7k54bbv9wd31bsv"))))
    (properties `((upstream-name . "sample-frame") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildbenchmarks" "-fsplitbase")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-storable-record)))
    (home-page "http://www.haskell.org/haskellwiki/Synthesizer")
    (synopsis "Handling of samples in an (audio) signal")
    (description
     "This package provides a type class
to handle signed and unsigned samples
of various size and number of channels in a uniform way.

We expect that you use the types 'Int8', 'Word8' and so on
for monophonic samples and thus provide instances of the class for them.
Further we define Stereo record and mu-law sample type.
Quadrophony can be achieved by nested Stereo value,
but I'm uncertain, whether this is a good way to go.
Maybe we add 5+1 channels or so in future.

This is used by packages @@sox@@, @@alsa@@, @@synthesizer@@.")
    (license license:bsd-3)))

haskell-8.6-sample-frame

(define-public haskell-8.6-siphash
  (package
    (name "haskell-8.6-siphash")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-cpu)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-siphash")
    (synopsis "siphash: a fast short input PRF")
    (description
     "Haskell implementation of siphash. [http://131002.net/siphash/siphash.pdf]")
    (license license:bsd-3)))

haskell-8.6-siphash

(define-public haskell-8.6-storablevector
  (package
    (name "haskell-8.6-storablevector")
    (version "0.2.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storablevector/storablevector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1zmr738vwnhnyxbikayqnaz31ilv2qlmscp6iqgl7adcfbal4dzq"))))
    (properties `((upstream-name . "storablevector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fseparatesyb")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-negative)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage002) haskell-8.6-syb)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unsafe)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Storable_Vector")
    (synopsis
     "Fast, packed, strict storable arrays with a list interface like ByteString")
    (description
     "Fast, packed, strict storable arrays
with a list interface,
a chunky lazy list interface with variable chunk size
and an interface for write access via the @@ST@@ monad.
This is much like @@bytestring@@ and @@binary@@
but can be used for every 'Foreign.Storable.Storable' type.
See also package
<http://hackage.haskell.org/package/vector>
with a similar intention.

We do not provide advanced fusion optimization,
since especially for lazy vectors
this would either be incorrect or not applicable.
However we provide fusion with lazy lists in the package
<http://hackage.haskell.org/package/storablevector-streamfusion>.")
    (license license:bsd-3)))

haskell-8.6-storablevector

(define-public haskell-8.6-tagchup
  (package
    (name "haskell-8.6-tagchup")
    (version "0.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tagchup/tagchup-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "127ffhggdcbapizddhzwy538h3znppvr28mh9y2lv9ihbwcfxd75"))))
    (properties `((upstream-name . "tagchup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-accessor)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-empty)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-xml-basic)))
    (home-page "http://code.haskell.org/~thielema/tagchup/")
    (synopsis "alternative package for processing of tag soups")
    (description
     "Tagchup is a package for processing XML, HTML, XHTML documents
that can also be malformed.
It allows parsing, formatting and retrieval of such document.
All functions should be as lazy as possible.

I use a custom data structure based on types from xml-basic
for easy interchange with the wraxml package.

Its lazy monadic parser should be more comprehensible and easier to extend
than the one of tagsoup-0.6.
It also handles XML processing instructions and CDATA sections correctly.

The name Tagchup resembles Ketchup.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-tagchup

(define-public haskell-8.6-terminal-progress-bar
  (package
    (name "haskell-8.6-terminal-progress-bar")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/terminal-progress-bar/terminal-progress-bar-"
                    version ".tar.gz"))
              (sha256
               (base32
                "092yx9hal3xxcvpjwyqbfqww277l4gf83272pcnp3k6aj86a2756"))))
    (properties `((upstream-name . "terminal-progress-bar") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-terminal-size)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)))
    (home-page "https://github.com/roelvandijk/terminal-progress-bar")
    (synopsis "A progress bar in the terminal")
    (description
     "A progress bar conveys the progress of a task. This package
implements a progress bar that is displayed in a terminal.

See the module 'System.ProgressBar' to get started or look at the
terminal-progress-bar-example package.

The animated progress bar depends entirely on the interpretation of
the carriage return character (\\'\\\\r\\'). If your terminal interprets
it as something else than \\\"move cursor to beginning of line\\\", the
animation won't work.")
    (license license:bsd-3)))

haskell-8.6-terminal-progress-bar

(define-public haskell-8.6-type-map
  (package
    (name "haskell-8.6-type-map")
    (version "0.1.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/type-map/type-map-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0zakl5bdzwng1r0x384w066zhwgwcf24s6jsm6d4zsx7xmngzmr5"))))
    (properties `((upstream-name . "type-map") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "184jzydzkm8qa3wbfzx173yjhydss9fnki0g81dp4yij90lr1qf9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "https://github.com/Lysxia/type-map")
    (synopsis "Type-indexed maps")
    (description
     "Maps where keys are types and values can have types depending on their keys.")
    (license license:expat)))

haskell-8.6-type-map

(define-public haskell-8.6-unique-logic
  (package
    (name "haskell-8.6-unique-logic")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unique-logic/unique-logic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lza0g7mvij6fj07nfyrgl7vy6hpqmmmzbnxylq71jb4a90sn28j"))))
    (properties `((upstream-name . "unique-logic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-empty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/unique-logic/")
    (synopsis "Solve simple simultaneous equations")
    (description
     "Solve a number of equations simultaneously.
This is not Computer Algebra,
better think of a kind of type inference algorithm
or logic programming with only one allowed solution.

Only one solution is computed.
Simultaneous equations with multiple solutions are not allowed.
However, variables may remain undefined.
The solver may optionally check for consistency.
It does not do so by default
since with floating point numbers or symbolic expressions
even simple rules may not be consistent.

The modules ordered with respect to abstraction level are:

* \"UniqueLogic.ST.System\":
Construct and solve sets of functional dependencies.
Example: @@assignment3 (+) a b c@@ meaning dependency @@a+b -> c@@.

* \"UniqueLogic.ST.Rule\":
Combine functional dependencies to rules
that can apply in multiple directions.
Example: @@add a b c@@ means relation @@a+b = c@@
which resolves to dependencies @@a+b -> c, c-a -> b, c-b -> a@@.
For an executable example see \"UniqueLogic.ST.Example.Rule\".

* \"UniqueLogic.ST.Expression\":
Allows to write rules using arithmetic operators.
It creates temporary variables automatically.
Example: @@(a+b)*c =:= d@@ resolves to @@a+b = x, x*c = d@@.
For an executable example see \"UniqueLogic.ST.Example.Expression\".

* \"UniqueLogic.ST.System.Simple\":
Provides specialised functions from \"UniqueLogic.ST.System\"
for the case of a system without labels and consistency checks.

* \"UniqueLogic.ST.System.Label\":
Provides a custom constructor for variables.
When creating a variable you decide whether and how
an assignment to this variable shall be logged.
There is an example that shows how to solve a logic system
using symbolic expressions.
The naming and logging allows us to observe shared intermediate results.
For an executable example see \"UniqueLogic.ST.Example.Label\".

* By using more sophisticated monad transformers,
we can check the equations for consistency,
report inconsistencies and how they arised.
We demonstrate that in \"UniqueLogic.ST.Example.Verify\".

The package is purely Haskell 98.")
    (license license:bsd-3)))

haskell-8.6-unique-logic

(define-public haskell-8.6-unique-logic-tf
  (package
    (name "haskell-8.6-unique-logic-tf")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unique-logic-tf/unique-logic-tf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0a2hjkm7kwfnqyscxxdw2r2cq3gsydv5ny91vpxxd3paknqqr0cb"))))
    (properties `((upstream-name . "unique-logic-tf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-data-ref)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-non-empty)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/unique-logic-tf/")
    (synopsis "Solve simple simultaneous equations")
    (description
     "Solve a number of equations simultaneously.
This is not Computer Algebra,
better think of a kind of type inference algorithm
or logic programming with only one allowed solution.

Only one solution is computed.
Simultaneous equations with multiple solutions are not allowed.
However, variables may remain undefined.
The solver may optionally check for consistency.
It does not do so by default
since with floating point numbers or symbolic expressions
even simple rules may not be consistent.

The modules ordered with respect to abstraction level are:

* \"UniqueLogic.ST.TF.System\":
Construct and solve sets of functional dependencies.
Example: @@assignment3 (+) a b c@@ means dependency @@a+b -> c@@.

* \"UniqueLogic.ST.TF.Rule\":
Combine functional dependencies to rules
that can apply in multiple directions.
Example: @@add a b c@@ means relation @@a+b = c@@
which resolves to dependencies @@a+b -> c, c-a -> b, c-b -> a@@.
For an executable example see \"UniqueLogic.ST.TF.Example.Rule\".

* \"UniqueLogic.ST.TF.Expression\":
Allows to write rules using arithmetic operators.
It creates temporary variables automatically.
Example: @@(a+b)*c =:= d@@ resolves to @@a+b = x, x*c = d@@.
For an executable example see \"UniqueLogic.ST.TF.Example.Expression\".

* \"UniqueLogic.ST.TF.System.Simple\":
Provides specialised functions from \"UniqueLogic.ST.TF.System\"
for the case of a system without labels and consistency checks.

* \"UniqueLogic.ST.TF.System.Label\":
Provides a custom constructor for variables.
When creating a variable you decide whether and how
an assignment to this variable shall be logged.
There is an example that shows how to solve a logic system
using symbolic expressions.
The naming and logging allows us to observe shared intermediate results.
For an executable example see \"UniqueLogic.ST.TF.Example.Label\".

* By using more sophisticated monad transformers,
we can check the equations for consistency,
report inconsistencies and how they arised.
We demonstrate that in \"UniqueLogic.ST.TF.Example.Verify\".

This variant of the package requires type families.")
    (license license:bsd-3)))

haskell-8.6-unique-logic-tf

(define-public haskell-8.6-word24
  (package
    (name "haskell-8.6-word24")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/word24/word24-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11m0qffpjngylmci73v7y3ap7v8244cylzgj3qai9wwdr1ya2jy3"))))
    (properties `((upstream-name . "word24") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mhjln83z2sz0pq9phlzjbdl7lny8fn3pb0smphm2rz09j6nmb0m")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/winterland1989/word24")
    (synopsis "24-bit word and int types for GHC")
    (description "24-bit Word and Int data types.")
    (license license:bsd-3)))

haskell-8.6-word24

(define-public haskell-8.6-zstd
  (package
    (name "haskell-8.6-zstd")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zstd/zstd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "147s496zvw13akxqzg65mgfvk3bvhrcilxgf8n786prxg5cm4jz2"))))
    (properties `((upstream-name . "zstd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fstandalone")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)
                  (@ (gnu packages stackage ghc-8.6 stage004)
                     haskell-8.6-test-framework-quickcheck2)))
    (home-page "https://github.com/luispedro/hs-zstd")
    (synopsis "Haskell bindings to the Zstandard compression algorithm")
    (description
     "A fast lossless compression algorithm, targeting real-time
compression scenarios at zlib-level and better compression ratios.")
    (license license:bsd-3)))

haskell-8.6-zstd

