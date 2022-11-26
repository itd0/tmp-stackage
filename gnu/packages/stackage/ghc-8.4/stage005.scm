;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage005)
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
(define-public haskell-8.4-Decimal
  (package
    (name "haskell-8.4-Decimal")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/PaulJohnson/Haskell-Decimal")
    (synopsis "Decimal numbers with variable precision")
    (description "A decimal number has an integer mantissa and a negative
exponent.  The exponent can be interpreted as the number
of decimal places in the value.")
    (license license:bsd-3)))

haskell-8.4-Decimal

(define-public haskell-8.4-Glob
  (package
    (name "haskell-8.4-Glob")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Glob/Glob-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1s69lk3ic6zlkikhvb78ly9wl3g70a1h1m6ndhsca01pp8z8axrs"))))
    (properties `((upstream-name . "Glob") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://iki.fi/matti.niemenmaa/glob/")
    (synopsis "Globbing library")
    (description
     "A library for globbing: matching patterns against file paths.")
    (license license:bsd-3)))

haskell-8.4-Glob

(define-public haskell-8.4-SHA
  (package
    (name "haskell-8.4-SHA")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
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

haskell-8.4-SHA

(define-public haskell-8.4-abstract-deque-tests
  (package
    (name "haskell-8.4-abstract-deque-tests")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-abstract-deque)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (home-page "https://github.com/rrnewton/haskell-lockfree/wiki")
    (synopsis
     "A test-suite for any queue or double-ended queue satisfying an interface ")
    (description
     "This package provides tests that can be used with any queue implementation
that satisfies the `abstract-deque` interface.")
    (license license:bsd-3)))

haskell-8.4-abstract-deque-tests

(define-public haskell-8.4-al
  (package
    (name "haskell-8.4-al")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-c2hs-notests)
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

haskell-8.4-al

(define-public haskell-8.4-base64-bytestring
  (package
    (name "haskell-8.4-base64-bytestring")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/base64-bytestring/base64-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13305brzlac24pifiqd5a2z10c6k6amhpdy9cc0z5ryrkgnm8dhr"))))
    (properties `((upstream-name . "base64-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1sgx3lqn5j6rbbvkgfybsm1318j184vhxjxiw0ipbsw68ix3fdhc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/haskell/base64-bytestring")
    (synopsis "Fast base64 encoding and decoding for ByteStrings")
    (description
     "This package provides support for encoding and decoding binary data according to @@base64@@ (see also <https://tools.ietf.org/html/rfc4648 RFC 4648>) for strict and lazy ByteStrings.")
    (license license:bsd-3)))

haskell-8.4-base64-bytestring

(define-public haskell-8.4-bibtex
  (package
    (name "haskell-8.4-bibtex")
    (version "0.1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bibtex/bibtex-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "012zxvrlkl5vdjl1nmabhyi160xak0c8s3gn5ffxz2rqi6akn2h9"))))
    (properties `((upstream-name . "bibtex") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase2" "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-latex)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/BibTeX")
    (synopsis "Parse, format and processing BibTeX files")
    (description
     "This package allows parsing, formatting and processing of BibTeX files.
BibTeX files are databases for literature for the natbib package
of the LaTeX typesetting system.

The package contains two examples:

* The first example demonstrates the BibTeX parser
by generating a publication overview from a @@.bib@@ file.

* The second example demonstrates the BibTeX generation
by producing a large @@.bib@@ file from the tar archive
that cabal-install downloads to your local cabal directory.

Both examples will be build as stand-alone executable
when running

> cabal install -fbuildExamples bibtex

For the first example see the @@publications@@ directory of this package.
You can start the program and build an example document by running

> make pubs

Technically the program generates a list of custom @@\\\\nocite@@ commands
for the LaTeX package @@multibib@@.
You can add the custom bibtex field @@subtype@@ to BibTeX entries
for more detailed categorization of an entry.
See \"publications/publications.bib\" for examples.

The second example can be executed using

> make hackbib

The file @@hackage.bib@@ is written to the @@hackage@@ subdirectory.
The @@hackage-bibtex@@ program
reads an uncompressed tar archive from standard input
and writes the result bibliography file to standard output.

Note that @@hackage.bib@@ exceeds some limits of standard BibTeX and LaTeX:
There are currently much more than 5000 versions of packages,
the maximum my BibTeX can handle at once.
That is, you can use the bibliography file,
but you cannot cite all entries with @@\\\\nocite*@@.
If there are more than 26 uploads by the same author in a year,
the BibTeX style @@alpha@@ generates identifiers including curly braces
which interacts badly with LaTeX's handling of them.
If you reduce the Bibliography file to 5000 entries
and try to generate an overview of all entries with @@\\\\nocite@@,
then @@pdflatex@@ hits its limits:

> TeX capacity exceeded, sorry [save size=5000]")
    (license license:bsd-3)))

haskell-8.4-bibtex

(define-public haskell-8.4-binary-bits
  (package
    (name "haskell-8.4-binary-bits")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/binary-bits")
    (synopsis "Bit parsing/writing on top of binary.")
    (description "Bit parsing/writing on top of binary. Provides functions to
read and write bits to and from 8\\/16\\/32\\/64 words.")
    (license license:bsd-3)))

haskell-8.4-binary-bits

(define-public haskell-8.4-blaze-builder
  (package
    (name "haskell-8.4-blaze-builder")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
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

haskell-8.4-blaze-builder

(define-public haskell-8.4-cereal
  (package
    (name "haskell-8.4-cereal")
    (version "0.5.7.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cereal/cereal-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1j7imh2mzqcljld7sx0av69699955rpy3hzivi5723i6a9nszgbs"))))
    (properties `((upstream-name . "cereal") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring-builder")
       #:cabal-revision
       ("1" "0m6iml0rm3nv40rj4dylpha1al573ifx0y7rvpj165l7z6sh3l22")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/GaloisInc/cereal")
    (synopsis "A binary serialization library")
    (description
     "A binary serialization library, similar to binary, that introduces an isolate
primitive for parser isolation, and labeled blocks for better error messages.")
    (license license:bsd-3)))

haskell-8.4-cereal

(define-public haskell-8.4-crypto-cipher-tests
  (package
    (name "haskell-8.4-crypto-cipher-tests")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-securemem)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Generic cryptography cipher tests")
    (description "Generic cryptography cipher tests")
    (license license:bsd-3)))

haskell-8.4-crypto-cipher-tests

(define-public haskell-8.4-crypto-numbers
  (package
    (name "haskell-8.4-crypto-numbers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-crypto-random)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/vincenthz/hs-crypto-numbers")
    (synopsis "Cryptographic numbers: functions and algorithms")
    (description "Cryptographic numbers: functions and algorithms")
    (license license:bsd-3)))

haskell-8.4-crypto-numbers

(define-public haskell-8.4-cutter
  (package
    (name "haskell-8.4-cutter")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-explicit-exception)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-spreadsheet)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-cutter

(define-public haskell-8.4-data-default
  (package
    (name "haskell-8.4-data-default")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-data-default-instances-containers)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-data-default-instances-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-data-default-instances-old-locale)))
    (home-page "https://hackage.haskell.org/package/data-default")
    (synopsis "A class for types with a default value")
    (description "")
    (license license:bsd-3)))

haskell-8.4-data-default

(define-public haskell-8.4-data-hash
  (package
    (name "haskell-8.4-data-hash")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/data-hash")
    (synopsis "Combinators for building fast hashing functions.")
    (description "Combinators for building fast hashing functions. Includes
hashing functions for all basic Haskell98 types.")
    (license license:bsd-3)))

haskell-8.4-data-hash

(define-public haskell-8.4-deepseq-generics
  (package
    (name "haskell-8.4-deepseq-generics")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
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

haskell-8.4-deepseq-generics

(define-public haskell-8.4-double-conversion
  (package
    (name "haskell-8.4-double-conversion")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
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

haskell-8.4-double-conversion

(define-public haskell-8.4-enumset
  (package
    (name "haskell-8.4-enumset")
    (version "0.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/enumset/enumset-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0m6ha4m9hvmzkgnwani3z3vgcllzgv6n578g56x4sb9bgxgi37az"))))
    (properties `((upstream-name . "enumset") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-accessor)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-storable-record)))
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

haskell-8.4-enumset

(define-public haskell-8.4-equivalence
  (package
    (name "haskell-8.4-equivalence")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/equivalence/equivalence-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02jhn8z1aqyxp3krylhfnwr7zzjcd17q9qriyd9653i92b7di3gf"))))
    (properties `((upstream-name . "equivalence") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "17i0fvn31r4nln8zym20ji7q47rb2gwjmvkpsmylpgsm53w139p2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-STMonadTrans)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
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

haskell-8.4-equivalence

(define-public haskell-8.4-event-list
  (package
    (name "haskell-8.4-event-list")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-non-negative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-event-list

(define-public haskell-8.4-exception-transformers
  (package
    (name "haskell-8.4-exception-transformers")
    (version "0.4.0.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exception-transformers/exception-transformers-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1vzjy6mz6y9jacpwq2bax86nwzq9mk4b9y3r3r98l50r7pmn2nwj"))))
    (properties `((upstream-name . "exception-transformers") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0sahi93f75acvmqagkjc1lcwx31crja6z9hyww9abj85x45pqa6f")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/exception-transformers")
    (synopsis "Type classes and monads for unchecked extensible exceptions.")
    (description "This package provides type classes, a monad and a monad
transformer that support unchecked extensible exceptions as
well as asynchronous exceptions. It is compatible with
the transformers package.")
    (license license:bsd-3)))

haskell-8.4-exception-transformers

(define-public haskell-8.4-exceptions
  (package
    (name "haskell-8.4-exceptions")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/exceptions/exceptions-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1ms9zansv0pwzwdjncvx4kf18lnkjy2p61hvjhvxmjx5bqp93p8y"))))
    (properties `((upstream-name . "exceptions") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0aiihbjfrlmxzw9q8idvr6mihhs7kbx9s3w1vj8x3pz27p0ncq7g")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://github.com/ekmett/exceptions/")
    (synopsis "Extensible optionally-pure exceptions")
    (description "Extensible optionally-pure exceptions.")
    (license license:bsd-3)))

haskell-8.4-exceptions

(define-public haskell-8.4-exomizer
  (package
    (name "haskell-8.4-exomizer")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-c2hs-notests)))
    (home-page "https://github.com/alexkazik/exomizer#readme")
    (synopsis "Compression and decompression in the exomizer format")
    (description
     "This package provides a pure interface for compressing and decompressing data represented as strict @@ByteStrings@@.

Only the @@raw@@, @@mem@@ and @@level@@ compressions are supported.

This library uses the @@exomizer 2.0.10@@.

@@exomizer@@ is created by Magnus Lind (magli143@@gmail.com) https://bitbucket.org/magli143/exomizer/wiki/Home")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-exomizer

(define-public haskell-8.4-fingertree
  (package
    (name "haskell-8.4-fingertree")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
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

haskell-8.4-fingertree

(define-public haskell-8.4-fixed-length
  (package
    (name "haskell-8.4-fixed-length")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-length/fixed-length-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16rqls3zhrm757brz7zkw7m58nvxbj03af9vff98w6hp8gag4w9i"))))
    (properties `((upstream-name . "fixed-length") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-non-empty)
                  (@ (gnu packages stackage ghc-8.4 stage004) haskell-8.4-tfp)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-fixed-length

(define-public haskell-8.4-fixed-vector-hetero
  (package
    (name "haskell-8.4-fixed-vector-hetero")
    (version "0.5.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector-hetero/fixed-vector-hetero-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1446xsj030xr7zry2pqq0yxv4f0j46jmpisfmp357jb0n9l5kwm3"))))
    (properties `((upstream-name . "fixed-vector-hetero") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "003p9np323pbyd800c2s1mhka471vypcyhkfifsqwhv5pmd61pnj")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-fixed-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "http://github.org/Shimuuar/fixed-vector-hetero")
    (synopsis "Generic heterogeneous vectors")
    (description "Generic heterogeneous vectors")
    (license license:bsd-3)))

haskell-8.4-fixed-vector-hetero

(define-public haskell-8.4-friday
  (package
    (name "haskell-8.4-friday")
    (version "0.2.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/friday/friday-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "04wn36249b7mddhp6r8zycdxixm0ryj3jrc6qjjvl5k138n4j9q8"))))
    (properties `((upstream-name . "friday") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1iy2ywz42mwwr2iy7fzfdif8f0vbyl3w9hgy4rkynsmmqc8mmxba")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-convertible)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ratio-int)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/RaphaelJ/friday")
    (synopsis "A functional image processing library for Haskell.")
    (description
     "Friday provides functions to manipulate images in a
functional way.
The library is designed to be fast, generic and
type-safe.

Images can be represented in two representations:

* the 'Manifest' representation stores images in Haskell
'Vector's ;

* the 'Delayed' representation uses functions to produce
images pixels. These images can be combined to produce
complex transformations. By some inlining, Haskell
compilers are able to produce fast algorithms by
removing intermediate structures.

The library currently support four color spaces: RGB,
RGBA, HSV and gray-scale images.

Please read our
<https://github.com/RaphaelJ/friday/blob/master/README.md README>
to get a detailed usage and some examples.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-friday

(define-public haskell-8.4-hashable
  (package
    (name "haskell-8.4-hashable")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "http://github.com/tibbe/hashable")
    (synopsis "A class for types that can be converted to a hash value")
    (description "This package defines a class, 'Hashable', for types that
can be converted to a hash value.  This class
exists for the benefit of hashing-based data
structures.  The package provides instances for
basic types and a way to combine hash values.")
    (license license:bsd-3)))

haskell-8.4-hashable

(define-public haskell-8.4-hdaemonize
  (package
    (name "haskell-8.4-hdaemonize")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hdaemonize/hdaemonize-" version
                    ".tar.gz"))
              (sha256
               (base32
                "17q2zr9bv6xwnldgbsh1idwfgybp8q4xzq79p2lmmi3f0q6cnl6j"))))
    (properties `((upstream-name . "hdaemonize") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-hsyslog)))
    (home-page "http://github.com/greydot/hdaemonize")
    (synopsis "Library to handle the details of writing daemons for UNIX")
    (description
     "Provides two functions that help writing better UNIX daemons,
daemonize and serviced: daemonize does what a daemon should do
(forking and closing descriptors), while serviced does that and
more (syslog interface, PID file writing, start-stop-restart
command line handling, dropping privileges).")
    (license license:bsd-3)))

haskell-8.4-hdaemonize

(define-public haskell-8.4-hebrew-time
  (package
    (name "haskell-8.4-hebrew-time")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hebrew-time/hebrew-time-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ckridxf4rvhhp0k1mckbbbpzfs32l4mwg7n9mrmsggldpl7x6f7"))))
    (properties `((upstream-name . "hebrew-time") (hidden? . #f)))
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
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/snoyberg/hebrew-time")
    (synopsis "Hebrew dates and prayer times.")
    (description "Conversion to and from Hebrew dates.")
    (license license:expat)))

haskell-8.4-hebrew-time

(define-public haskell-8.4-hoopl
  (package
    (name "haskell-8.4-hoopl")
    (version "3.10.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hoopl/hoopl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15rbb9a8mza3zv8h3p237zhmy29bxc4k48ik27kzzj7islb16yq9"))))
    (properties `((upstream-name . "hoopl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0j6pz4jzhvviyrhhn1j22ikmjvzrg60nzvq26lbpkcb6y4q6rlyx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (home-page "https://github.com/haskell/hoopl")
    (synopsis "A library to support dataflow analysis and optimization")
    (description
     "Higher-order optimization library

See /Norman Ramsey, Joao Dias, and Simon Peyton Jones./
<http://research.microsoft.com/en-us/um/people/simonpj/Papers/c--/hoopl-haskell10.pdf \"Hoopl: A Modular, Reusable Library for Dataflow Analysis and Transformation\"> /(2010)/ for more details.")
    (license license:bsd-3)))

haskell-8.4-hoopl

(define-public haskell-8.4-largeword
  (package
    (name "haskell-8.4-largeword")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/idontgetoutmuch/largeword")
    (synopsis
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (description
     "Provides Word128, Word192 and Word256 and a way of producing other large words if required.")
    (license license:bsd-3)))

haskell-8.4-largeword

(define-public haskell-8.4-minimorph
  (package
    (name "haskell-8.4-minimorph")
    (version "0.1.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/minimorph/minimorph-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0i5qigcj5qpzyg2br8xppd36b5q86y3n457g0hdpv9469d2pnrwl"))))
    (properties `((upstream-name . "minimorph") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
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

haskell-8.4-minimorph

(define-public haskell-8.4-monad-memo
  (package
    (name "haskell-8.4-monad-memo")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-memo/monad-memo-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07gid18rsja7gvk2ccsbwvpz223x59mdk9x9w36bz18cy2pw802c"))))
    (properties `((upstream-name . "monad-memo") (hidden? . #f)))
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
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
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

haskell-8.4-monad-memo

(define-public haskell-8.4-monad-peel
  (package
    (name "haskell-8.4-monad-peel")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
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

haskell-8.4-monad-peel

(define-public haskell-8.4-network-uri
  (package
    (name "haskell-8.4-network-uri")
    (version "2.6.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-uri/network-uri-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1w27zkvn39kjr9lmw9421y8w43h572ycsfafsb7kyvr3a4ihlgj2"))))
    (properties `((upstream-name . "network-uri") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "141nj7q0p9wkn5gr41ayc63cgaanr9m59yym47wpxqr3c334bk32")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
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

haskell-8.4-network-uri

(define-public haskell-8.4-numbers
  (package
    (name "haskell-8.4-numbers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/jwiegley/numbers#readme")
    (synopsis "Various number types")
    (description "Instances of the numerical classes for a variety of
different numbers: (computable) real numbers,
arbitrary precision fixed numbers,
arbitrary precision floating point numbers,
differentiable numbers, symbolic numbers,
natural numbers, interval arithmetic.")
    (license license:bsd-3)))

haskell-8.4-numbers

(define-public haskell-8.4-numeric-prelude
  (package
    (name "haskell-8.4-numeric-prelude")
    (version "0.4.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numeric-prelude/numeric-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0531yjw1rzbv3snv1lc955350frgf8526slsxbx3ias71krbdr69"))))
    (properties `((upstream-name . "numeric-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-non-negative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-storable-record)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Numeric_Prelude")
    (synopsis "An experimental alternative hierarchy of numeric type classes")
    (description
     "The package provides an experimental alternative hierarchy
of numeric type classes.
The type classes are more oriented at mathematical structures
and their methods come with laws that the instances must fulfill.")
    (license license:bsd-3)))

haskell-8.4-numeric-prelude

(define-public haskell-8.4-pem
  (package
    (name "haskell-8.4-pem")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-basement)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-pem")
    (synopsis "Privacy Enhanced Mail (PEM) format reader and writer.")
    (description
     "Privacy Enhanced Mail (PEM) format reader and writer. long description")
    (license license:bsd-3)))

haskell-8.4-pem

(define-public haskell-8.4-prefix-units
  (package
    (name "haskell-8.4-prefix-units")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
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

haskell-8.4-prefix-units

(define-public haskell-8.4-quicklz
  (package
    (name "haskell-8.4-quicklz")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
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

haskell-8.4-quicklz

(define-public haskell-8.4-relational-query
  (package
    (name "haskell-8.4-relational-query")
    (version "0.12.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-query/relational-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mdd3lh4kpqaa7l0aqnsnwgi95hbwh9p8dx61js8011wl50j9l9k"))))
    (properties `((upstream-name . "relational-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-names-th)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-persistable-record)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-sql-words)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-reify-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Typeful, Modular, Relational, algebraic query engine")
    (description "This package contiains typeful relation structure and
relational-algebraic query building DSL which can
translate into SQL query.
Supported query features are below:
- Type safe query building
- Restriction, Join, Aggregation
- Modularized relations
- Typed placeholders")
    (license license:bsd-3)))

haskell-8.4-relational-query

(define-public haskell-8.4-riak-protobuf
  (package
    (name "haskell-8.4-riak-protobuf")
    (version "0.23.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/riak-protobuf/riak-protobuf-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0cyarnp2yqlj98zdbd51krpz3ls75vcl8am6h4wf98b6vdmx1jsx"))))
    (properties `((upstream-name . "riak-protobuf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-protocol-buffers)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-protocol-buffers-descriptor)))
    (home-page "http://github.com/riak-haskell-client/riak-haskell-client")
    (synopsis "Haskell types for the Riak protocol buffer API")
    (description
     "A set of Haskell types for interacting with the protocol buffer
API of the Riak decentralized data store.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-riak-protobuf

(define-public haskell-8.4-sample-frame
  (package
    (name "haskell-8.4-sample-frame")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-storable-record)))
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

haskell-8.4-sample-frame

(define-public haskell-8.4-shelltestrunner
  (package
    (name "haskell-8.4-shelltestrunner")
    (version "1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shelltestrunner/shelltestrunner-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1a5kzqbwg6990249ypw0cx6cqj6663as1kbj8nzblcky8j6kbi6b"))))
    (properties `((upstream-name . "shelltestrunner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Diff)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cmdargs)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-filemanip)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-pretty-show)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "https://github.com/simonmichael/shelltestrunner")
    (synopsis "Easy, repeatable testing of CLI programs/commands")
    (description
     "shelltestrunner (executable: shelltest) is a portable
command-line tool for testing command-line programs, or general shell
commands, released under GPLv3+.  It reads simple test specifications
defining a command to run, some input, and the expected output,
stderr, and exit status.  It can run tests in parallel, selectively,
with a timeout, in color, etc.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-shelltestrunner

(define-public haskell-8.4-siphash
  (package
    (name "haskell-8.4-siphash")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-cpu)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "http://github.com/vincenthz/hs-siphash")
    (synopsis "siphash: a fast short input PRF")
    (description
     "Haskell implementation of siphash. [http://131002.net/siphash/siphash.pdf]")
    (license license:bsd-3)))

haskell-8.4-siphash

(define-public haskell-8.4-snappy
  (package
    (name "haskell-8.4-snappy")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/snappy/snappy-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14fdx0fikkd9krpzqrvas6mjqmmhmh0qwqzvz1kymil7d8rdyr85"))))
    (properties `((upstream-name . "snappy") (hidden? . #f)))
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
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)
                             (@ (gnu packages compression) snappy)))
    (home-page "http://github.com/bos/snappy")
    (synopsis
     "Bindings to the Google Snappy library for fast compression/decompression")
    (description
     "This library provides fast, pure Haskell bindings to Google's Snappy
compression and decompression library: <http://code.google.com/p/snappy/>")
    (license license:bsd-3)))

haskell-8.4-snappy

(define-public haskell-8.4-storablevector
  (package
    (name "haskell-8.4-storablevector")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-non-negative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage002) haskell-8.4-syb)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unsafe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-storablevector

(define-public haskell-8.4-tagchup
  (package
    (name "haskell-8.4-tagchup")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-accessor)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-explicit-exception)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-non-empty)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-xml-basic)))
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

haskell-8.4-tagchup

(define-public haskell-8.4-word24
  (package
    (name "haskell-8.4-word24")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/winterland1989/word24")
    (synopsis "24-bit word and int types for GHC")
    (description "24-bit Word and Int data types.")
    (license license:bsd-3)))

haskell-8.4-word24

(define-public haskell-8.4-yeshql
  (package
    (name "haskell-8.4-yeshql")
    (version "4.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/yeshql/yeshql-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dlxq8vp18fagfymlzqa4j0ns174s31d7p1vi54wz0b55ml91if4"))))
    (properties `((upstream-name . "yeshql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-yeshql-core)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-yeshql-hdbc)))
    (home-page "https://github.com/tdammers/yeshql")
    (synopsis
     "YesQL-style SQL database abstraction (legacy compatibility wrapper)")
    (description
     "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while
adding type annotations to turn SQL into well-typed Haskell
functions.")
    (license license:expat)))

haskell-8.4-yeshql

(define-public haskell-8.4-zstd
  (package
    (name "haskell-8.4-zstd")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/zstd/zstd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1zsb8wgmd23gdzk26wf0i0q4n23qd5lagq6min7wz1yrk43q8x88"))))
    (properties `((upstream-name . "zstd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fstandalone")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://github.com/facebookexperimental/hs-zstd")
    (synopsis "Haskell bindings to the Zstandard compression algorithm")
    (description
     "A fast lossless compression algorithm, targeting real-time
compression scenarios at zlib-level and better compression ratios.")
    (license license:bsd-3)))

haskell-8.4-zstd

