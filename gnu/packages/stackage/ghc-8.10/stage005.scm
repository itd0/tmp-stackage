;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage005)
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
(define-public haskell-8.10-al
  (package
    (name "haskell-8.10-al")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)
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

haskell-8.10-al

(define-public haskell-8.10-alsa-mixer
  (package
    (name "haskell-8.10-alsa-mixer")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-alsa-core)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages linux) alsa-lib)))
    (home-page "https://github.com/ttuegel/alsa-mixer")
    (synopsis "Bindings to the ALSA simple mixer API.")
    (description
     "This package provides bindings to the ALSA simple mixer API.")
    (license license:bsd-3)))

haskell-8.10-alsa-mixer

(define-public haskell-8.10-apportionment
  (package
    (name "haskell-8.10-apportionment")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-doctest-lib)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (home-page "https://hub.darcs.net/thielema/apportionment")
    (synopsis "Round a set of numbers while maintaining its sum")
    (description
     "Round a set of numbers while maintaining its sum.
According procedures are used to assign seats to parties in a parliament.
You may also use it to round percentages that sum up to 100%.
<https://en.wikipedia.org/wiki/Apportionment_(politics)>")
    (license license:bsd-3)))

haskell-8.10-apportionment

(define-public haskell-8.10-base16-bytestring
  (package
    (name "haskell-8.10-base16-bytestring")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
    (home-page "http://github.com/haskell/base16-bytestring")
    (synopsis "RFC 4648-compliant Base16 encodings for ByteStrings")
    (description
     "This package provides support for encoding and decoding binary data according
to @@base16@@ (see also <https://tools.ietf.org/html/rfc4648 RFC 4648>) for
strict (see \"Data.ByteString.Base16\") and lazy @@ByteString@@s (see \"Data.ByteString.Base16.Lazy\").

See the <https://hackage.haskell.org/package/base16 base16> package which provides superior encoding and decoding performance as well as support for lazy, short, and strict variants of 'Text' and 'ByteString' values. Additionally, see the <https://hackage.haskell.org/package/base-encoding base-encoding> package which
provides an uniform API providing conversion paths between more binary and textual types.")
    (license license:bsd-3)))

haskell-8.10-base16-bytestring

(define-public haskell-8.10-calendar-recycling
  (package
    (name "haskell-8.10-calendar-recycling")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-html)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/calendar-recycling")
    (synopsis "List years with the same calendars")
    (description "Generate a partial HTML document grouping years
by the pattern of the calender.
The program respects the starting weekday of a year
and the existence of a leap day,
but it ignores the date of the Easter festival.")
    (license license:bsd-3)))

haskell-8.10-calendar-recycling

(define-public haskell-8.10-checksum
  (package
    (name "haskell-8.10-checksum")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/checksum")
    (synopsis "Compute and verify checksums of ISBN, IBAN, etc.")
    (description "Compute and verify checksums of various identifiers,
such as IBAN, ISBN, EAN, Germany's Citizen Card.")
    (license license:bsd-3)))

haskell-8.10-checksum

(define-public haskell-8.10-cipher-aes
  (package
    (name "haskell-8.10-cipher-aes")
    (version "0.2.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-aes/cipher-aes-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05ahz6kjq0fl1w66gpiqy0vndli5yx1pbsbw9ni3viwqas4p3cfk"))))
    (properties `((upstream-name . "cipher-aes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsupport_aesni")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-securemem)))
    (home-page "https://github.com/vincenthz/hs-cipher-aes")
    (synopsis
     "Fast AES cipher implementation with advanced mode of operations")
    (description
     "Fast AES cipher implementation with advanced mode of operations.

The modes of operations available are ECB (Electronic code book),
CBC (Cipher block chaining), CTR (Counter), XTS (XEX with ciphertext stealing),
GCM (Galois Counter Mode).

The AES implementation uses AES-NI when available (on x86 and x86-64 architecture),
but fallback gracefully to a software C implementation.

The software implementation uses S-Boxes, which might suffer for cache timing issues.
However do notes that most other known software implementations, including very popular
one (openssl, gnutls) also uses similar implementation. If it matters for your
case, you should make sure you have AES-NI available, or you'll need to use a different
implementation.
")
    (license license:bsd-3)))

haskell-8.10-cipher-aes

(define-public haskell-8.10-cipher-camellia
  (package
    (name "haskell-8.10-cipher-camellia")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-camellia/cipher-camellia-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19z2mi1rvp8fsqjdbmrm1hdlxmx61yr55fyknmmn945qrlvx234d"))))
    (properties `((upstream-name . "cipher-camellia") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-securemem)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Camellia block cipher primitives")
    (description "Camellia block cipher primitives")
    (license license:bsd-3)))

haskell-8.10-cipher-camellia

(define-public haskell-8.10-cipher-des
  (package
    (name "haskell-8.10-cipher-des")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-des/cipher-des-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1isazxa2nr1y13y0danfk7wghy34rfpn3f43rw714nk2xk6vrwc5"))))
    (properties `((upstream-name . "cipher-des") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-securemem)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "DES and 3DES primitives")
    (description "DES and 3DES primitives")
    (license license:bsd-3)))

haskell-8.10-cipher-des

(define-public haskell-8.10-cipher-rc4
  (package
    (name "haskell-8.10-cipher-rc4")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cipher-rc4/cipher-rc4-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0k9qf0cn5yxc4qlqikcm5yyrnkkvr6g3v7306cp8iwz7r4dp6zn6"))))
    (properties `((upstream-name . "cipher-rc4") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-crypto-cipher-types)))
    (home-page "http://github.com/vincenthz/hs-cipher-rc4")
    (synopsis "Fast RC4 cipher implementation")
    (description "Fast RC4 cipher implementation")
    (license license:bsd-3)))

haskell-8.10-cipher-rc4

(define-public haskell-8.10-combinatorial
  (package
    (name "haskell-8.10-combinatorial")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-combinatorial

(define-public haskell-8.10-comfort-graph
  (package
    (name "haskell-8.10-comfort-graph")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/comfort-graph/comfort-graph-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0qmmz3z9dgjb41rj6g81ppxaj4jswqnnb8bqn2s1dd6hf6cih9n9"))))
    (properties `((upstream-name . "comfort-graph") (hidden? . #f)))
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
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/comfort-graph")
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

haskell-8.10-comfort-graph

(define-public haskell-8.10-configurator-pg
  (package
    (name "haskell-8.10-configurator-pg")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator-pg/configurator-pg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wmdg9zxfz8vhhsq5rraynhrhqc8fjrdhfrky2mfajzbp8dpaqsm"))))
    (properties `((upstream-name . "configurator-pg") (hidden? . #f)))
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
                     haskell-8.10-megaparsec)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-protolude)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)))
    (home-page "https://github.com/robx/configurator-pg")
    (synopsis "Reduced parser for configurator-ng config files")
    (description
     "This module provides a simplified and updated interface to the
configuration file format of
<https://hackage.haskell.org/package/configurator configurator> and
<https://hackage.haskell.org/package/configurator-ng configurator-ng>.
Its aim is primarily to allow updating programs that depend on
configurator-ng to new versions of GHC without changing the
configuration file format.")
    (license license:bsd-3)))

haskell-8.10-configurator-pg

(define-public haskell-8.10-crypto-numbers
  (package
    (name "haskell-8.10-crypto-numbers")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-crypto-random)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/vincenthz/hs-crypto-numbers")
    (synopsis "Cryptographic numbers: functions and algorithms")
    (description "Cryptographic numbers: functions and algorithms")
    (license license:bsd-3)))

haskell-8.10-crypto-numbers

(define-public haskell-8.10-data-accessor-template
  (package
    (name "haskell-8.10-data-accessor-template")
    (version "0.2.1.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-accessor-template/data-accessor-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "15gd6xlrq5ica514m5rdcz2dl8bibdmbsmnc98ddhx491c9g5rwk"))))
    (properties `((upstream-name . "data-accessor-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-template_2_4" "-f-template_2_11")
       #:cabal-revision
       ("1" "0zz2v420zvinphs6jnngc40x7h8jn5rqj3nj8alpgfyqx59w41my")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-accessor)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Utilities for accessing and manipulating fields of records")
    (description
     "Automate generation of @@Accessor@@'s of the @@data-accessor@@ package
by Template Haskell functions.")
    (license license:bsd-3)))

haskell-8.10-data-accessor-template

(define-public haskell-8.10-data-default
  (package
    (name "haskell-8.10-data-default")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-default-instances-containers)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-data-default-instances-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-data-default-instances-old-locale)))
    (home-page "https://hackage.haskell.org/package/data-default")
    (synopsis "A class for types with a default value")
    (description "")
    (license license:bsd-3)))

haskell-8.10-data-default

(define-public haskell-8.10-data-hash
  (package
    (name "haskell-8.10-data-hash")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/data-hash")
    (synopsis "Combinators for building fast hashing functions.")
    (description "Combinators for building fast hashing functions. Includes
hashing functions for all basic Haskell98 types.")
    (license license:bsd-3)))

haskell-8.10-data-hash

(define-public haskell-8.10-equal-files
  (package
    (name "haskell-8.10-equal-files")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-filemanip)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-equal-files

(define-public haskell-8.10-exceptions
  (package
    (name "haskell-8.10-exceptions")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
    (home-page "http://github.com/ekmett/exceptions/")
    (synopsis "Extensible optionally-pure exceptions")
    (description "Extensible optionally-pure exceptions.")
    (license license:bsd-3)))

haskell-8.10-exceptions

(define-public haskell-8.10-exomizer
  (package
    (name "haskell-8.10-exomizer")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)))
    (home-page "https://github.com/alexkazik/exomizer#readme")
    (synopsis "Compression and decompression in the exomizer format")
    (description
     "This package provides a pure interface for compressing and decompressing data represented as strict @@ByteStrings@@.

Only the @@raw@@, @@mem@@ and @@level@@ compressions are supported.

This library uses the @@exomizer 2.0.10@@.

@@exomizer@@ is created by Magnus Lind (magli143@@gmail.com) https://bitbucket.org/magli143/exomizer/wiki/Home")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.10-exomizer

(define-public haskell-8.10-generic-lens
  (package
    (name "haskell-8.10-generic-lens")
    (version "2.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-lens/generic-lens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1qxabrbzgd32i2fv40qw4f44akvfs1impjvcs5pqn409q9zz6kfd"))))
    (properties `((upstream-name . "generic-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-generic-lens-core)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)))
    (home-page "https://github.com/kcsongor/generic-lens")
    (synopsis "Generically derive traversals, lenses and prisms.")
    (description
     "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.

The library exposes a van Laarhoven interface. For an alternative interface, supporting an opaque optic type, see
@@<https://hackage.haskell.org/package/generic-optics generic-optics>@@.")
    (license license:bsd-3)))

haskell-8.10-generic-lens

(define-public haskell-8.10-half
  (package
    (name "haskell-8.10-half")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
    (home-page "http://github.com/ekmett/half")
    (synopsis "Half-precision floating-point")
    (description "Half-precision floating-point.")
    (license license:bsd-3)))

haskell-8.10-half

(define-public haskell-8.10-hsc2hs
  (package
    (name "haskell-8.10-hsc2hs")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)))
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

haskell-8.10-hsc2hs

(define-public haskell-8.10-hspec-discover
  (package
    (name "haskell-8.10-hspec-discover")
    (version "2.7.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-discover/hspec-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13yzvd3b679skvs1insk4s0wc4zvmz6hs38kc8q0j6vzqq06smqa"))))
    (properties `((upstream-name . "hspec-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-hspec-meta)))
    (home-page "http://hspec.github.io/")
    (synopsis "Automatically discover and run Hspec tests")
    (description "Automatically discover and run Hspec tests

<http://hspec.github.io/hspec-discover.html>")
    (license license:expat)))

haskell-8.10-hspec-discover

(define-public haskell-8.10-hsshellscript
  (package
    (name "haskell-8.10-hsshellscript")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "http://www.volker-wysk.de/hsshellscript/")
    (synopsis "Haskell for Unix shell scripting tasks")
    (description "A Haskell-library for tasks which are usually done in
shell scripts. This includes parsing command line
arguments; dealing with paths; some commands for dealing
with files; calling external programs and subroutines as
separate processes; pipes and redirection of input and
output; and error handling.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.10-hsshellscript

(define-public haskell-8.10-hw-kafka-client
  (package
    (name "haskell-8.10-hw-kafka-client")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-c2hs)
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

haskell-8.10-hw-kafka-client

(define-public haskell-8.10-interpolation
  (package
    (name "haskell-8.10-interpolation")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-doctest-lib)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-interpolation

(define-public haskell-8.10-latex
  (package
    (name "haskell-8.10-latex")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-latex

(define-public haskell-8.10-med-module
  (package
    (name "haskell-8.10-med-module")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-storable-endian)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-med-module

(define-public haskell-8.10-nettle
  (package
    (name "haskell-8.10-nettle")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-crypto-cipher-types)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-securemem)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages nettle) nettle)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://github.com/stbuehler/haskell-nettle")
    (synopsis "safe nettle binding")
    (description
     "safe binding for the nettle (<http://www.lysator.liu.se/~nisse/nettle/nettle.html>) library.
Tested with 3.4, might work with 3.2 (but not earlier).")
    (license license:expat)))

haskell-8.10-nettle

(define-public haskell-8.10-netwire
  (package
    (name "haskell-8.10-netwire")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-parallel)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "https://github.com/esoeylemez/netwire")
    (synopsis "Functional reactive programming library")
    (description
     "This library provides interfaces for and implements wire arrows
useful both for functional reactive programming (FRP) and locally
stateful programming (LSP).")
    (license license:bsd-3)))

haskell-8.10-netwire

(define-public haskell-8.10-non-empty
  (package
    (name "haskell-8.10-non-empty")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-non-empty

(define-public haskell-8.10-non-negative
  (package
    (name "haskell-8.10-non-negative")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/non-negative/")
    (synopsis "Non-negative numbers")
    (description
     "Provides a class for non-negative numbers,
a wrapper which can turn any ordered numeric type into a member of that class,
and a lazy number type for non-negative numbers
(a generalization of Peano numbers).
This library is used by the @@event-list@@ package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-non-negative

(define-public haskell-8.10-one-liner
  (package
    (name "haskell-8.10-one-liner")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/one-liner/one-liner-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1diigbl8l0m8q1sl0kxjjqbhl3vkpf0rrzxlbqaamp3ahpmgpx67"))))
    (properties `((upstream-name . "one-liner") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0qzjwwsa2bwwplrizzdhwqkxv0l7dfwvhl12rijvyaki2kxc0inw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://github.com/sjoerdvisscher/one-liner")
    (synopsis "Constraint-based generics")
    (description "Write short and concise generic instances of type classes.
one-liner is particularly useful for writing default
implementations of type class methods.")
    (license license:bsd-3)))

haskell-8.10-one-liner

(define-public haskell-8.10-optics-vl
  (package
    (name "haskell-8.10-optics-vl")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-indexed-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-optics-core)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)))
    (home-page "https://hackage.haskell.org/package/optics-vl")
    (synopsis "Utilities for compatibility with van Laarhoven optics")
    (description
     "This package is part of the @@<https://hackage.haskell.org/package/optics optics>@@
package family.  It provides utilities for converting between the 'Optic' type
defined by @@<https://hackage.haskell.org/package/optics optics>@@ and the van
Laarhoven representations of optics that require definitions outside of @@base@@
(in particular isomorphisms and prisms).")
    (license license:bsd-3)))

haskell-8.10-optics-vl

(define-public haskell-8.10-pathtype
  (package
    (name "haskell-8.10-pathtype")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-pathtype

(define-public haskell-8.10-persist
  (package
    (name "haskell-8.10-persist")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-quickcheck2)))
    (home-page "https://github.com/minad/persist")
    (synopsis "Minimal serialization library with focus on performance")
    (description
     "A binary serialization library with focus on performance similar to store and cereal")
    (license license:bsd-3)))

haskell-8.10-persist

(define-public haskell-8.10-pooled-io
  (package
    (name "haskell-8.10-pooled-io")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-concurrent-split)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unsafe)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-pooled-io

(define-public haskell-8.10-probability
  (package
    (name "haskell-8.10-probability")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-probability

(define-public haskell-8.10-product-profunctors
  (package
    (name "haskell-8.10-product-profunctors")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-contravariant)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-abstraction)))
    (home-page "https://github.com/tomjaguarpaw/product-profunctors")
    (synopsis "product-profunctors")
    (description "Product profunctors and tools for working with them")
    (license license:bsd-3)))

haskell-8.10-product-profunctors

(define-public haskell-8.10-qrcode-juicypixels
  (package
    (name "haskell-8.10-qrcode-juicypixels")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qrcode-juicypixels/qrcode-juicypixels-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kiyi084hmd2l50fd8miwgw0y94sd1lkf34jw7z3sb33bbp70f3g"))))
    (properties `((upstream-name . "qrcode-juicypixels") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-JuicyPixels)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base64-bytestring)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-qrcode-core)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "Converts a qrcode-core image to JuicyPixels")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-juicypixels#readme>")
    (license license:expat)))

haskell-8.10-qrcode-juicypixels

(define-public haskell-8.10-relational-query
  (package
    (name "haskell-8.10-relational-query")
    (version "0.12.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/relational-query/relational-query-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1acbz0zy4bb8r7q2nw96jgpi45y8gy4j1qik4fn8ndqw8l3fpzvl"))))
    (properties `((upstream-name . "relational-query") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-names-th)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-persistable-record)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-sql-words)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-constraint-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-reify-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)))
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

haskell-8.10-relational-query

(define-public haskell-8.10-saltine
  (package
    (name "haskell-8.10-saltine")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/saltine/saltine-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bgr6vrmw18qr8akabxz6w3hwhlqi6zsnr23n70hkvwvcap1lnx7"))))
    (properties `((upstream-name . "saltine") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages crypto) libsodium)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/saltine")
    (synopsis "Cryptography that's easy to digest (NaCl/libsodium bindings).")
    (description
     "/NaCl/ (pronounced \\\"salt\\\") is a new easy-to-use high-speed software
library for network communication, encryption, decryption,
signatures, etc. NaCl's goal is to provide all of the core
operations needed to build higher-level cryptographic tools.

<http://nacl.cr.yp.to/>

/Sodium/ is a portable, cross-compilable, installable, packageable
crypto library based on NaCl, with a compatible API.

<https://github.com/jedisct1/libsodium>

/Saltine/ is a Haskell binding to the NaCl primitives going through
Sodium for build convenience and, eventually, portability.")
    (license license:expat)))

haskell-8.10-saltine

(define-public haskell-8.10-shelltestrunner
  (package
    (name "haskell-8.10-shelltestrunner")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Diff)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-cmdargs)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-filemanip)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-pretty-show)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)))
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

haskell-8.10-shelltestrunner

(define-public haskell-8.10-smash-microlens
  (package
    (name "haskell-8.10-smash-microlens")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/smash-microlens/smash-microlens-"
                    version ".tar.gz"))
              (sha256
               (base32
                "164vmvrgfsq777408skndzybhg4cp0d97vrijk6b66nnv9k4ril0"))))
    (properties `((upstream-name . "smash-microlens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "020r04bxhml84lgl1bvf2s6gjahswdxpzcrla43rqhx0paz0n0cs")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-microlens)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-smash)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Optics for the `smash` library")
    (description "Optics for the `smash` library using `microlens`")
    (license license:bsd-3)))

haskell-8.10-smash-microlens

(define-public haskell-8.10-spreadsheet
  (package
    (name "haskell-8.10-spreadsheet")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-spreadsheet

(define-public haskell-8.10-storable-record
  (package
    (name "haskell-8.10-storable-record")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storable-record/storable-record-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17nf0bx3g169cpslf8prr5h5lvxl389m23rbsyb3kdai45fibpwf"))))
    (properties `((upstream-name . "storable-record") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildtests")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-storable-record

(define-public haskell-8.10-tasty-discover
  (package
    (name "haskell-8.10-tasty-discover")
    (version "4.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/tasty-discover/tasty-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1j95njl3ml7cfxnwv0i17ijca84fgyrjs2cfw4g5yh1m4x2zvg34"))))
    (properties `((upstream-name . "tasty-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-Glob)))
    (home-page "https://github.com/haskell-works/tasty-discover")
    (synopsis "Test discovery for the tasty framework.")
    (description
     "Automatic test discovery and runner for the tasty framework.
Prefix your test case names and tasty-discover will discover, collect and run them.
All popular test libraries are covered. Configure once and then just write your tests.
Avoid forgetting to add test modules to your Cabal/Hpack files.
Tasty ingredients are included along with various configuration options for different
use cases.
Please see the `README.md` below for how to get started.")
    (license license:expat)))

haskell-8.10-tasty-discover

(define-public haskell-8.10-tfp
  (package
    (name "haskell-8.10-tfp")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-tfp

(define-public haskell-8.10-these
  (package
    (name "haskell-8.10-these")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/these/these-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "027m1gd7i6jf2ppfkld9qrv3xnxg276587pmx10z9phpdvswk66p"))))
    (properties `((upstream-name . "these") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fassoc")
       #:cabal-revision
       ("6" "12ll5l8m482qkb8zn79vx51bqlwc89fgixf8jv33a32b4qzc3499")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-assoc)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/haskellari/these")
    (synopsis "An either-or-both data type.")
    (description
     "This package provides a data type @@These a b@@ which can hold a value of either
type or values of each type. This is usually thought of as an \"inclusive or\"
type (contrasting @@Either a b@@ as \"exclusive or\") or as an \"outer join\" type
(contrasting @@(a, b)@@ as \"inner join\").

@@
data These a b = This a | That b | These a b
@@

Since version 1, this package was split into parts:

* <https://hackage.haskell.org/package/semialign semialign> For @@Align@@ and @@Zip@@ type-classes.

* <https://hackage.haskell.org/package/semialign-indexed semialign-indexed> For @@SemialignWithIndex@@ class, providing @@ialignWith@@ and @@izipWith@@.

* <https://hackage.haskell.org/package/these-lens these-lens> For lens combinators.

* <http://hackage.haskell.org/package/monad-chronicle monad-chronicle> For transformers variant of @@These@@.")
    (license license:bsd-3)))

haskell-8.10-these

(define-public haskell-8.10-unexceptionalio
  (package
    (name "haskell-8.10-unexceptionalio")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-test-framework-hunit)))
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

haskell-8.10-unexceptionalio

(define-public haskell-8.10-unicode
  (package
    (name "haskell-8.10-unicode")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-unicode

(define-public haskell-8.10-xml-basic
  (package
    (name "haskell-8.10-xml-basic")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-accessor)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-explicit-exception)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-xml-basic

(define-public haskell-8.10-youtube
  (package
    (name "haskell-8.10-youtube")
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
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-utility-ht)))
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

haskell-8.10-youtube

(define-public haskell-8.10-zlib-lens
  (package
    (name "haskell-8.10-zlib-lens")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/zlib-lens/zlib-lens-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sv6yx7p06zk653d3rmcj0lh2rzwzfi25v9sz9n8kq4r712n79g5"))))
    (properties `((upstream-name . "zlib-lens") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage004)
                     haskell-8.10-profunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib)))
    (home-page "http://lens.github.io/")
    (synopsis "Lenses for zlib")
    (description "Lenses for zlib")
    (license license:bsd-3)))

haskell-8.10-zlib-lens

