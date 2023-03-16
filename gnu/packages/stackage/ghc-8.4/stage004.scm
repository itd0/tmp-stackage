;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage004)
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
(define-public haskell-8.4-HDBC-mysql
  (package
    (name "haskell-8.4-HDBC-mysql")
    (version "0.7.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/HDBC-mysql/HDBC-mysql-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1kx73pgh1mjg0526i2szk1kbm6d7bhbv64ml1y9nbja3lba8bjc1"))))
    (properties `((upstream-name . "HDBC-mysql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-debug")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-HDBC)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages databases) mariadb)
                             (@ (gnu packages tls) openssl-3.0)
                             (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://github.com/ryantm/hdbc-mysql")
    (synopsis "MySQL driver for HDBC")
    (description
     "This package provides a MySQL driver for HDBC, implemented via
bindings to the C @@mysqlclient@@ library.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-HDBC-mysql

(define-public haskell-8.4-HDBC-session
  (package
    (name "haskell-8.4-HDBC-session")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-HDBC)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Bracketed connection for HDBC")
    (description "This package contains a base bracketed function
to call close correctly against opend DB connection.")
    (license license:bsd-3)))

haskell-8.4-HDBC-session

(define-public haskell-8.4-ListLike
  (package
    (name "haskell-8.4-ListLike")
    (version "4.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ListLike/ListLike-" version
                    ".tar.gz"))
              (sha256
               (base32
                "16jsj979mzjrgmpa20pls9ganym3wsps49paks1sb1gmlmwyrkf1"))))
    (properties `((upstream-name . "ListLike") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "1nz2zrxi0ksjak7hjad6rgr8xf98459nzmny3nw1rv424anv2b1d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-fmlist)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/JohnLato/listlike")
    (synopsis "Generic support for list-like structures")
    (description
     "Generic support for list-like structures in Haskell.

The ListLike module provides a common interface to the various Haskell
types that are list-like.  Predefined interfaces include standard
Haskell lists, Arrays, ByteStrings, and lazy ByteStrings.  Custom
types can easily be made ListLike instances as well.

ListLike also provides for String-like types, such as String and
ByteString, for types that support input and output, and for types that can handle
infinite lists.")
    (license license:bsd-3)))

haskell-8.4-ListLike

(define-public haskell-8.4-apportionment
  (package
    (name "haskell-8.4-apportionment")
    (version "0.0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/apportionment/apportionment-"
                    version ".tar.gz"))
              (sha256
               (base32
                "062v4a1ip7zy20b03z1jajqy2ylx5fl74p7px54b1vajf6vx0wcg"))))
    (properties `((upstream-name . "apportionment") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/apportionment")
    (synopsis "Round a set of numbers while maintaining its sum")
    (description
     "Round a set of numbers while maintaining its sum.
According procedures are used to assign seats to parties in a parliament.
You may also use it to round percentages that sum up to 100%.
<https://en.wikipedia.org/wiki/Apportionment_(politics)>")
    (license license:bsd-3)))

haskell-8.4-apportionment

(define-public haskell-8.4-boxes
  (package
    (name "haskell-8.4-boxes")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/boxes/boxes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1hsnmw95i58d4bkpxby3ddsj1cawypw4mdyb18m393s5i8p7iq9q"))))
    (properties `((upstream-name . "boxes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (home-page "https://hackage.haskell.org/package/boxes")
    (synopsis "2D text pretty-printing library")
    (description "A pretty-printing library for laying out text in
two dimensions, using a simple box model.")
    (license license:bsd-3)))

haskell-8.4-boxes

(define-public haskell-8.4-c2hs-notests
  (package
    (name "haskell-8.4-c2hs-notests")
    (version "0.28.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/c2hs/c2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nplgxfin139x12sb656f5870rpdclrhzi8mq8pry035qld15pci"))))
    (properties `((upstream-name . "c2hs") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase3" "-f-regression")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-language-c)))
    (home-page "https://github.com/haskell/c2hs")
    (synopsis "C->Haskell FFI tool that gives some cross-language type safety")
    (description
     "C->Haskell assists in the development of Haskell bindings to C
libraries. It extracts interface information from C header
files and generates Haskell code with foreign imports and
marshaling. Unlike writing foreign imports by hand (or using
hsc2hs), this ensures that C functions are imported with the
correct Haskell types.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-c2hs-notests

(define-public haskell-8.4-cabal2spec
  (package
    (name "haskell-8.4-cabal2spec")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal2spec/cabal2spec-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1fm9vi7iyxcpvvivy973njlmsp7ia7cl4jijhf43h8wq60skh1md"))))
    (properties `((upstream-name . "cabal2spec") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0fip9d1hdjkb7pzz668qb9b9m90r9xifjhx7zbhax4wr3723lfxg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)))
    (home-page "https://github.com/peti/cabal2spec")
    (synopsis "Convert Cabal files into rpm spec files")
    (description
     "Convert Cabal files into a
<http://ftp.rpm.org/max-rpm/s1-rpm-build-creating-spec-file.html spec file>
suitable for building the package with the RPM package manager. This tool
primarily targets the <http://www.suse.com/ SUSE> and
<http://www.opensuse.org openSUSE> familiy of distributions. Support for
other RPM-based distributions is currently not available. Check out
<http://hackage.haskell.org/package/cabal-rpm cabal-rpm> if you need this.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-cabal2spec

(define-public haskell-8.4-calendar-recycling
  (package
    (name "haskell-8.4-calendar-recycling")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-html)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/calendar-recycling")
    (synopsis "List years with the same calendars")
    (description "Generate a partial HTML document grouping years
by the pattern of the calender.
The program respects the starting weekday of a year
and the existence of a leap day,
but it ignores the date of the Easter festival.")
    (license license:bsd-3)))

haskell-8.4-calendar-recycling

(define-public haskell-8.4-checksum
  (package
    (name "haskell-8.4-checksum")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-explicit-exception)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/checksum")
    (synopsis "Compute and verify checksums of ISBN, IBAN, etc.")
    (description "Compute and verify checksums of various identifiers,
such as IBAN, ISBN, EAN, Germany's Citizen Card.")
    (license license:bsd-3)))

haskell-8.4-checksum

(define-public haskell-8.4-combinatorial
  (package
    (name "haskell-8.4-combinatorial")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-combinatorial

(define-public haskell-8.4-comfort-graph
  (package
    (name "haskell-8.4-comfort-graph")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-comfort-graph

(define-public haskell-8.4-crypto-cipher-types
  (package
    (name "haskell-8.4-crypto-cipher-types")
    (version "0.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-cipher-types/crypto-cipher-types-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03qa1i1kj07pfrxsi7fiaqnnd0vi94jd4jfswbmnm4gp1nvzcwr0"))))
    (properties `((upstream-name . "crypto-cipher-types") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-byteable)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-securemem)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Generic cryptography cipher types")
    (description "Generic cryptography cipher types")
    (license license:bsd-3)))

haskell-8.4-crypto-cipher-types

(define-public haskell-8.4-crypto-enigma
  (package
    (name "haskell-8.4-crypto-enigma")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-enigma/crypto-enigma-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0iadzyp44ylzwq65jqvln1cmlnsvpwvy0cvpn8xfdqd1x0qil8i2"))))
    (properties `((upstream-name . "crypto-enigma") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (home-page "https://github.com/orome/crypto-enigma-hs")
    (synopsis "An Enigma machine simulator with display. ")
    (description
     "The crypto-enigma package is an Enigma machine simulator
with rich display and machine state details.

Currently support is only provided for the machine models in most widespread general use
during the war years: the I, M3, and M4.

For basic functionality, including some introspection of machine state
and the mappings performed, simply

> > import Crypto.Enigma

For richer display functionality additionally

> > import Crypto.Enigma.Display

(Note that this package assumes support for combining Unicode, without which some output may
appear garbled.)")
    (license license:bsd-3)))

haskell-8.4-crypto-enigma

(define-public haskell-8.4-crypto-random
  (package
    (name "haskell-8.4-crypto-random")
    (version "0.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-random/crypto-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0139kbbb2h7vshf68y3fvjda29lhj7jjwl4vq78w4y8k8hc7l2hp"))))
    (properties `((upstream-name . "crypto-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1ax1iafbbqkcrvjnnxlvqh2zgpx8xzcbxl6l870207bpzwrja2f1")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-securemem)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-random")
    (synopsis "Simple cryptographic random related types")
    (description "Simple cryptographic random related types")
    (license license:bsd-3)))

haskell-8.4-crypto-random

(define-public haskell-8.4-data-accessor-template
  (package
    (name "haskell-8.4-data-accessor-template")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-accessor)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Utilities for accessing and manipulating fields of records")
    (description
     "Automate generation of @@Accessor@@'s of the @@data-accessor@@ package
by Template Haskell functions.")
    (license license:bsd-3)))

haskell-8.4-data-accessor-template

(define-public haskell-8.4-data-default-instances-dlist
  (package
    (name "haskell-8.4-data-default-instances-dlist")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-default-instances-dlist/data-default-instances-dlist-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0narkdqiprhgayjiawrr4390h4rq4pl2pb6mvixbv2phrc8kfs3x"))))
    (properties `((upstream-name . "data-default-instances-dlist")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-dlist")
    (synopsis "Default instances for types in dlist")
    (description "")
    (license license:bsd-3)))

haskell-8.4-data-default-instances-dlist

(define-public haskell-8.4-debian-build
  (package
    (name "haskell-8.4-debian-build")
    (version "0.10.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/debian-build/debian-build-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h8nxk9pir6ic65vh5y29jnlz7jrnq8inqg22h7nvlphk7qbblqw"))))
    (properties `((upstream-name . "debian-build") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (home-page "http://twitter.com/khibino/")
    (synopsis "Debian package build sequence tools")
    (description "This package provides build sequence functions
for debian package, and includes on-the-fly
build command 'odebuild'.")
    (license license:bsd-3)))

haskell-8.4-debian-build

(define-public haskell-8.4-dependent-sum-template
  (package
    (name "haskell-8.4-dependent-sum-template")
    (version "0.0.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dependent-sum-template/dependent-sum-template-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bcipqkkgj1afi2ax726gbvp9haqghvm5016rawx3jj9364v8k4r"))))
    (properties `((upstream-name . "dependent-sum-template") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-dependent-sum)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-extras)))
    (home-page "/dev/null")
    (synopsis
     "Template Haskell code to generate instances of classes in dependent-sum package")
    (description
     "Template Haskell code to generate instances of classes in dependent-sum package, such as 'GEq' and 'GCompare'.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-dependent-sum-template

(define-public haskell-8.4-derulo
  (package
    (name "haskell-8.4-derulo")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/derulo/derulo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pyal6rhnyhqx8gwyh42vf66i18y9nplmqka546ikzps439rvmly"))))
    (properties `((upstream-name . "derulo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "https://github.com/tfausak/derulo#readme")
    (synopsis "Parse and render JSON simply.")
    (description "Derulo parses and renders JSON simply.")
    (license license:expat)))

haskell-8.4-derulo

(define-public haskell-8.4-dlist-instances
  (package
    (name "haskell-8.4-dlist-instances")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/dlist-instances/dlist-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0nsgrr25r4qxv2kpn7i20hra8jjkyllxfrhh5hml3ysjdz010jni"))))
    (properties `((upstream-name . "dlist-instances") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://github.com/gregwebs/dlist-instances")
    (synopsis "Difference lists instances")
    (description
     "See the dlist packages.
This package is the canonical source for some orphan instances.
Orphan instances are placed here to avoid dependencies elsewhere.")
    (license license:bsd-3)))

haskell-8.4-dlist-instances

(define-public haskell-8.4-doctest-driver-gen
  (package
    (name "haskell-8.4-doctest-driver-gen")
    (version "0.2.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-driver-gen/doctest-driver-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wbsql0pph74nghnnwwm2p8w4wnqs0iiwqfn3p3i26g6cg8yv1nr"))))
    (properties `((upstream-name . "doctest-driver-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "https://github.com/Hexirp/doctest-driver-gen#readme")
    (synopsis "Generate driver file for doctest's cabal integration")
    (description "doctest-driver-gen is a doctest's driver file generator.
It lets you automatically generate driver file for
doctest's cabal integration.")
    (license license:bsd-3)))

haskell-8.4-doctest-driver-gen

(define-public haskell-8.4-equal-files
  (package
    (name "haskell-8.4-equal-files")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-explicit-exception)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-filemanip)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-equal-files

(define-public haskell-8.4-file-embed-lzma
  (package
    (name "haskell-8.4-file-embed-lzma")
    (version "0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/file-embed-lzma/file-embed-lzma-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0xqcgx4ysyjqrygnfabs169y4w986kwzvsaqh64h7x3wfi7z8v78"))))
    (properties `((upstream-name . "file-embed-lzma") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("8" "19jh6iavjb9asm6j91d3d6fandm0fm16ariayx12xp6ach1alpxr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-lzma)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)))
    (home-page "https://github.com/phadej/file-embed-lzma")
    (synopsis "Use Template Haskell to embed (LZMA compressed) data.")
    (description
     "The @@file-embed@@ package let's embed file and dir contents.

This package is similar, but also compresses the embedded contents with LZMA.
That makes resulting object files smaller, at the cost of start up decompression.

There's also an 'embedRecursiveDir' function.")
    (license license:bsd-3)))

haskell-8.4-file-embed-lzma

(define-public haskell-8.4-fixed-vector
  (package
    (name "haskell-8.4-fixed-vector")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector/fixed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1iclmv1xkyr1wdszrahzdim6ilqvpxrhpsiammcxishg9gwvxl0y"))))
    (properties `((upstream-name . "fixed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-filemanip)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)))
    (home-page "https://hackage.haskell.org/package/fixed-vector")
    (synopsis "Generic vectors with statically known size.")
    (description
     "Generic library for vectors with statically known
size. Implementation is based on
<http://unlines.wordpress.com/2010/11/15/generics-for-small-fixed-size-vectors/>
Same functions could be used to work with both ADT based vector like

> data Vec3 a = a a a

Tuples are vectors too:

>>> sum (1,2,3)
6

Vectors which are represented internally by arrays are provided by
library. Both boxed and unboxed arrays are supported.

Library is structured as follows:

* Data.Vector.Fixed
Generic API. It's suitable for both ADT-based vector like Complex
and array-based ones.

* Data.Vector.Fixed.Cont
Continuation based vectors. Internally all functions use them.

* Data.Vector.Fixed.Mutable
Type classes for array-based implementation and API for working with
mutable state.

* Data.Vector.Fixed.Unboxed
Unboxed vectors.

* Data.Vector.Fixed.Boxed
Boxed vector which can hold elements of any type.

* Data.Vector.Fixed.Storable
Unboxed vectors of Storable  types.

* Data.Vector.Fixed.Primitive
Unboxed vectors based on pritimive package.")
    (license license:bsd-3)))

haskell-8.4-fixed-vector

(define-public haskell-8.4-flexible-defaults
  (package
    (name "haskell-8.4-flexible-defaults")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flexible-defaults/flexible-defaults-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0r4aq6n5h9xnal535hds111vq8whzsvyc3yibmcbp7fndldd9mgk"))))
    (properties `((upstream-name . "flexible-defaults") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1bmqmxv5nijb837xwxnb46w3bglmakfj1qs3xwkcnfh5ab0zazwr")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-extras)))
    (home-page "https://github.com/peti/flexible-defaults")
    (synopsis
     "Generate default function implementations for complex type classes.")
    (description "Template Haskell code to implement default implementations
for type-class functions based on which functions are
already implemented.  Currently extremely crude but
still fairly effective.

When defining a type class with many functions, each
of which can be implemented based on arbitrary subsets
of the others, the standard default-implementation
concept breaks down quite badly.  This library provides
a system by which more complex rules can be described
for choosing default implementations based on which
ones the user supplies.  These implementations can
additionally be given \\\"suitability scores\\\", so that
when multiple possible choices could be made, the
library can choose the \\\"best\\\" one.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.4-flexible-defaults

(define-public haskell-8.4-flow
  (package
    (name "haskell-8.4-flow")
    (version "1.0.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/flow/flow-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "06adx3drx4b283v0aawhzyigvjizbhig8lqxw9cgqfn1pvc1kv46"))))
    (properties `((upstream-name . "flow") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "https://github.com/tfausak/flow#readme")
    (synopsis "Write more understandable Haskell.")
    (description
     "Flow provides operators for writing more understandable Haskell.")
    (license license:expat)))

haskell-8.4-flow

(define-public haskell-8.4-gpolyline
  (package
    (name "haskell-8.4-gpolyline")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/gpolyline/gpolyline-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01bsl7s8r33jgvk9lyca02awj43acii8spa6sskz19ivhm2adcr8"))))
    (properties `((upstream-name . "gpolyline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (home-page "https://github.com/fegu/gpolyline")
    (synopsis "Pure module for encoding/decoding Google Polyline")
    (description "Pure module for encoding/decoding Google Polyline")
    (license license:bsd-3)))

haskell-8.4-gpolyline

(define-public haskell-8.4-hashids
  (package
    (name "haskell-8.4-hashids")
    (version "1.0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hashids/hashids-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1kzkyni9hfwpvyq9rdv62iziwiax5avzd05ghsh7dgnylv41z697"))))
    (properties `((upstream-name . "hashids") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (home-page "http://hashids.org/")
    (synopsis
     "Hashids generates short, unique, non-sequential ids from numbers.")
    (description
     "This is a Haskell port of the Hashids library. It is typically used to encode numbers to a format suitable to appear in visible places like urls. It converts numbers like 347 into strings like yr8, or a list of numbers like [27, 986] into 3kTMd. You can also decode those ids back. This is useful in bundling several parameters into one. ")
    (license license:expat)))

haskell-8.4-hashids

(define-public haskell-8.4-heaps
  (package
    (name "haskell-8.4-heaps")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/heaps/heaps-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1cnxgmxxvl053yv93vcz5fnla4iir5g9wr697n88ysdyybbkq70q"))))
    (properties `((upstream-name . "heaps") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0k6wsm1hwn3vaxdvw8p7cidxg7p8zply2ig4w4qrbpyjhl6dj9x9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "http://github.com/ekmett/heaps/")
    (synopsis "Asymptotically optimal Brodal/Okasaki heaps.")
    (description
     "Asymptotically optimal Brodal\\/Okasaki bootstrapped skew-binomial heaps from the paper <http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.48.973 \"Optimal Purely Functional Priority Queues\">, extended with a 'Foldable' interface.")
    (license license:bsd-3)))

haskell-8.4-heaps

(define-public haskell-8.4-hexml
  (package
    (name "haskell-8.4-hexml")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hexml/hexml-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0amy5gjk1sqj5dq8a8gp7d3z9wfhcflhxkssijnklnfn5s002x4k"))))
    (properties `((upstream-name . "hexml") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)))
    (home-page "https://github.com/ndmitchell/hexml#readme")
    (synopsis "XML subset DOM parser")
    (description
     "An XML DOM-style parser, that only parses a subset of XML, but is designed to be fast.")
    (license license:bsd-3)))

haskell-8.4-hexml

(define-public haskell-8.4-hspec-core
  (package
    (name "haskell-8.4-hspec-core")
    (version "2.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-core/hspec-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1vfrqlpn32s9wiykmkxbnrnd5p56yznw20pf8fwzw78ar4wpz55x"))))
    (properties `((upstream-name . "hspec-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0llxrnkw8xhdxxmi9brndl0kdpjj7ybny47bwxhi2a4fd6hvdmqs")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-call-stack)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-io)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-setenv)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tf-random)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "This package exposes internal types and functions that can be used to extend Hspec's functionality.")
    (license license:expat)))

haskell-8.4-hspec-core

(define-public haskell-8.4-hsyslog
  (package
    (name "haskell-8.4-hsyslog")
    (version "5.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hsyslog/hsyslog-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05k0ckgqzjpa3mqamlswi0kpvqxvq40awip0cvhpzjx64240vpl6"))))
    (properties `((upstream-name . "hsyslog") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-install-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-hsc2hs-notests)))
    (home-page "http://github.com/peti/hsyslog")
    (synopsis "FFI interface to syslog(3) from POSIX.1-2001")
    (description
     "A Haskell interface to @@syslog(3)@@ as specified in
<http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.
The entire public API lives in \"System.Posix.Syslog\". There is a set of exposed
modules available underneath that one, which contain various implementation details
that may be useful to other developers who want to implement syslog-related
functionality. /Users/ of @@syslog@@, however, do not need them.

An example program that demonstrates how to use this library is available in the
<https://github.com/peti/hsyslog/blob/master/example/Main.hs examples> directory of
this package.")
    (license license:bsd-3)))

haskell-8.4-hsyslog

(define-public haskell-8.4-interpolation
  (package
    (name "haskell-8.4-interpolation")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolation/interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0j9hdzi59lqq92773f8h17awrm9ghr45k876qc7krq87pgbr95z2"))))
    (properties `((upstream-name . "interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-fhmatrix")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/interpolation/")
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
using a linear least squares solver like @@<\\>@@ from @@hmatrix@@.
We use a distorted sinus as target.

The package needs only Haskell 98.
Most of the package dependencies are only needed for the examples
and are only installed if you enable to build them.")
    (license license:bsd-3)))

haskell-8.4-interpolation

(define-public haskell-8.4-latex
  (package
    (name "haskell-8.4-latex")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-latex

(define-public haskell-8.4-lca
  (package
    (name "haskell-8.4-lca")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/lca/lca-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0kj3zsmzckczp51w70x1aqayk2fay4vcqwz8j6sdv0hdw1d093ca"))))
    (properties `((upstream-name . "lca") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "http://github.com/ekmett/lca/")
    (synopsis
     "O(log n) persistent online lowest common ancestor search without preprocessing")
    (description
     "This package provides a reference implementation of my skew binary random access algorithm for performing an /online/ lowest common ancestor search (and online level ancestor search) in logarithmic time without preprocessing. This improves the previous known asymptotic bound for both of these problems from /O(h)/ to /O(log h)/, where /h/ is the height of the tree. Mostly importantly this bound is completely independent of the width or overall size of the tree, enabling you to calculate lowest common ancestors in a distributed fashion with good locality.

While /offline/ algorithms exist for both of these algorithms that that provide /O(1)/ query time, they all require at least /O(n)/ preprocessing, where /n/ is the size of the entire tree, and so are less suitable for LCA search in areas such as revision control where the tree is constantly updated, or distributed computing where the tree may be too large to fit in any one computer's memory.

Slides are available from

<http://www.slideshare.net/ekmett/skewbinary-online-lowest-common-ancestor-search>")
    (license license:bsd-3)))

haskell-8.4-lca

(define-public haskell-8.4-mbox
  (package
    (name "haskell-8.4-mbox")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/mbox/mbox-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1pkiagxb013an71d3si3kldgn7rl9l5zi2s3s6hjhfg0pcwbbr6w"))))
    (properties `((upstream-name . "mbox") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "11jikczq21fnhsvr6n33qbb5q6ixbhab4s0js8n39zwgmglighz5")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)))
    (home-page "https://hackage.haskell.org/package/mbox")
    (synopsis "Read and write standard mailbox files.")
    (description "Read and write standard mailbox (mboxrd) files.")
    (license license:bsd-3)))

haskell-8.4-mbox

(define-public haskell-8.4-med-module
  (package
    (name "haskell-8.4-med-module")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/med-module/med-module-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1qzffgcg29gjc6j0dl9ablgzad3lry28n9kv55kp5lgqm3xp92gp"))))
    (properties `((upstream-name . "med-module") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-buildexamples")
       #:cabal-revision
       ("1" "05fbglb1f260p2h5x16i3ybkh1r0bks0054jzasam9gv33yv1amw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-storable-endian)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-med-module

(define-public haskell-8.4-network-byte-order
  (package
    (name "haskell-8.4-network-byte-order")
    (version "0.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-byte-order/network-byte-order-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0wfy57ip87ksppggpz26grk4w144yld95mf2y0c6mhcs1l8z3div"))))
    (properties `((upstream-name . "network-byte-order") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1lp8kli1nxwzf8f01s3aq4z1hg0f2hvp86cml3zhbnv950pp0cdv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "https://hackage.haskell.org/package/network-byte-order")
    (synopsis "Network byte order utilities")
    (description "Peek and poke functions for network byte order.")
    (license license:bsd-3)))

haskell-8.4-network-byte-order

(define-public haskell-8.4-non-empty
  (package
    (name "haskell-8.4-non-empty")
    (version "0.3.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/non-empty/non-empty-" version
                    ".tar.gz"))
              (sha256
               (base32
                "00zbnpcnmchbbdgyw19m1bl3bdhmw89pp9k0mq3z75nz0i40gg9z"))))
    (properties `((upstream-name . "non-empty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1628z42q77xjvwpyx3rifqf6mh4y6ivdl0lkhngxwz8c21bnf7d3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/non-empty/")
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

haskell-8.4-non-empty

(define-public haskell-8.4-non-negative
  (package
    (name "haskell-8.4-non-negative")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/non-negative/")
    (synopsis "Non-negative numbers")
    (description
     "Provides a class for non-negative numbers,
a wrapper which can turn any ordered numeric type into a member of that class,
and a lazy number type for non-negative numbers
(a generalization of Peano numbers).
This library is used by the @@event-list@@ package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-non-negative

(define-public haskell-8.4-optparse-generic
  (package
    (name "haskell-8.4-optparse-generic")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-generic/optparse-generic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13rr3hq26dpmbami8vb6d1ig9ywk6jia22sp5dkp6jkfc1c9k4l0"))))
    (properties `((upstream-name . "optparse-generic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0vszcjmxywblx5z9yvrz8c6yc104jgr1nv0sbv58ansd3rkjlzfn")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Only)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-system-filepath)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-void)))
    (home-page "https://hackage.haskell.org/package/optparse-generic")
    (synopsis "Auto-generate a command-line parser for your datatype")
    (description
     "This library auto-generates an @@optparse-applicative@@-compatible
@@Parser@@ from any data type that derives the @@Generic@@ interface.

See the documentation in \"Options.Generic\" for an example of how to use
this library")
    (license license:bsd-3)))

haskell-8.4-optparse-generic

(define-public haskell-8.4-optparse-simple
  (package
    (name "haskell-8.4-optparse-simple")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-simple/optparse-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "192mw3dn43vcckjbhmmrbs3r6vaaa74xqsp6c5bvmv2wafm1plq3"))))
    (properties `((upstream-name . "optparse-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-githash)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)))
    (home-page "https://github.com/fpco/optparse-simple#readme")
    (synopsis "Simple interface to optparse-applicative")
    (description
     "Please see the README at <https://www.stackage.org/package/optparse-simple>")
    (license license:bsd-3)))

haskell-8.4-optparse-simple

(define-public haskell-8.4-packdeps
  (package
    (name "haskell-8.4-packdeps")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/packdeps/packdeps-" version
                    ".tar.gz"))
              (sha256
               (base32
                "07nsnxxs5y77w0v5dxw9mqgq98s3riws5846qshlnhq4l5q73php"))))
    (properties `((upstream-name . "packdeps") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-tar)))
    (home-page "http://packdeps.haskellers.com/")
    (synopsis "Check your cabal packages for lagging dependencies.")
    (description
     "This provides a library and command line tool for checking if the upper bounds in your package's dependency list excludes the newest package available. The code was originally available only as a web interface at <http://packdeps.haskellers.com/>, but is now available for standalone use as well.

The command line tool has an incredibly simple interface: simply pass it a list of cabal files, and it will tell you what dependencies- if any- are restricted.")
    (license license:bsd-3)))

haskell-8.4-packdeps

(define-public haskell-8.4-pathtype
  (package
    (name "haskell-8.4-pathtype")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pathtype/pathtype-" version
                    ".tar.gz"))
              (sha256
               (base32
                "03rlj8klzxqimjv44h07xbij0acr63pddxppq9yfjlyggmaxrrnm"))))
    (properties `((upstream-name . "pathtype") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-old-time" "-f-buildtools")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-pathtype

(define-public haskell-8.4-persistable-record
  (package
    (name "haskell-8.4-persistable-record")
    (version "0.6.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistable-record/persistable-record-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ygqllybclw9mm0n05vh635wbz6qlsl2yhas3fxr3xhwsrrvwfkd"))))
    (properties `((upstream-name . "persistable-record") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-names-th)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-data-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Binding between SQL database values and haskell records.")
    (description
     "This package contiains types to represent table constraints and
interfaces to bind between SQL database values and Haskell records.")
    (license license:bsd-3)))

haskell-8.4-persistable-record

(define-public haskell-8.4-pooled-io
  (package
    (name "haskell-8.4-pooled-io")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-concurrent-split)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unsafe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-pooled-io

(define-public haskell-8.4-probability
  (package
    (name "haskell-8.4-probability")
    (version "0.2.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/probability/probability-"
                    version ".tar.gz"))
              (sha256
               (base32
                "059l9by2zxb92dd2vshxx9f3sm1kazc2i2ll168hfsya9rrqqaqg"))))
    (properties `((upstream-name . "probability") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-probability

(define-public haskell-8.4-protocol-buffers-descriptor
  (package
    (name "haskell-8.4-protocol-buffers-descriptor")
    (version "2.4.11")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/protocol-buffers-descriptor/protocol-buffers-descriptor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06k8sz0i021mizdgh01rx7v08wc767njwppimgmm2hyg6k4bv450"))))
    (properties `((upstream-name . "protocol-buffers-descriptor")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-protocol-buffers)))
    (home-page "https://github.com/k-bx/protocol-buffers")
    (synopsis
     "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification")
    (description "Uses protocol-buffers package")
    (license license:bsd-3)))

haskell-8.4-protocol-buffers-descriptor

(define-public haskell-8.4-record-dot-preprocessor
  (package
    (name "haskell-8.4-record-dot-preprocessor")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/record-dot-preprocessor/record-dot-preprocessor-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mj39kdnf3978cc51hh1fnnr0ax3gnqw4fan0f099b7li5y2xlwx"))))
    (properties `((upstream-name . "record-dot-preprocessor") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-extra)))
    (home-page "https://github.com/ndmitchell/record-dot-preprocessor#readme")
    (synopsis "Preprocessor to allow record.field syntax")
    (description
     "In almost every programming language @@a.b@@ will get the @@b@@ field from the @@a@@ data type, and many different data types can have a @@b@@ field.
The reason this feature is ubiquitous is because it's /useful/.
The @@record-dot-preprocessor@@ brings this feature to Haskell - see the README for full details.")
    (license license:bsd-3)))

haskell-8.4-record-dot-preprocessor

(define-public haskell-8.4-salve
  (package
    (name "haskell-8.4-salve")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/salve/salve-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1vgpj0yg27n6hw1gb763hgxv99hpq7511n2ihys0qdi0ri8bpj1j"))))
    (properties `((upstream-name . "salve") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "https://github.com/tfausak/salve#readme")
    (synopsis "Semantic version numbers and constraints.")
    (description
     "Salve provides semantic version (SemVer) numbers and constraints (ranges).")
    (license license:expat)))

haskell-8.4-salve

(define-public haskell-8.4-sandman
  (package
    (name "haskell-8.4-sandman")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/sandman/sandman-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0r6f6xw1vzhbhlqi7knv9p0rlfdzhfb5db2vc5ls78n43wz2hza0"))))
    (properties `((upstream-name . "sandman") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)))
    (home-page "https://github.com/abhinav/sandman#readme")
    (synopsis "Manages Cabal sandboxes to avoid rebuilding packages.")
    (description
     "sandman aims to reduce the amount of time spent rebuilding commonly used
Hackage packages by managing a global set of Cabal sandboxes that can be
mixed into any project's Cabal sandbox.

For more information, check the
<https://github.com/abhinav/sandman/blob/master/README.md README>.")
    (license license:expat)))

haskell-8.4-sandman

(define-public haskell-8.4-spreadsheet
  (package
    (name "haskell-8.4-spreadsheet")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-explicit-exception)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-spreadsheet

(define-public haskell-8.4-sql-words
  (package
    (name "haskell-8.4-sql-words")
    (version "0.1.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sql-words/sql-words-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0f7bvmz2ppq6pwgi3klxzpilnj899ssrsf52r99g9apqz065lsiz"))))
    (properties `((upstream-name . "sql-words") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-simple)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "SQL keywords data constructors into OverloadedString")
    (description
     "This package contiains SQL keywords constructors defined as
OverloadedString literals and helper functions to concate these.")
    (license license:bsd-3)))

haskell-8.4-sql-words

(define-public haskell-8.4-storable-record
  (package
    (name "haskell-8.4-storable-record")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storable-record/storable-record-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hjs1km0fc9ch0i1rbycxia5w3939hk4p4md73ikgg4aipqb5zyf"))))
    (properties `((upstream-name . "storable-record") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildtests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-storable-record

(define-public haskell-8.4-test-framework-hunit
  (package
    (name "haskell-8.4-test-framework-hunit")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-hunit/test-framework-hunit-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1y0b6vg8nfm43v90lxxcydhi6qlxhfy4vpxbzm5ic2w55bh8xjwm"))))
    (properties `((upstream-name . "test-framework-hunit") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fbase4" "-f-base3")
       #:cabal-revision
       ("3" "0i9mlalv7cl1iq43ld5myrnpszq5rxmd79hk495dcb08rglhgl3z")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)))
    (home-page "https://batterseapower.github.io/test-framework/")
    (synopsis "HUnit support for the test-framework package.")
    (description "HUnit support for the test-framework package.")
    (license license:bsd-3)))

haskell-8.4-test-framework-hunit

(define-public haskell-8.4-test-framework-quickcheck2
  (package
    (name "haskell-8.4-test-framework-quickcheck2")
    (version "0.3.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-quickcheck2/test-framework-quickcheck2-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ngf9vvby4nrdf1i7dxf5m9jn0g2pkq32w48xdr92n9hxka7ixn9"))))
    (properties `((upstream-name . "test-framework-quickcheck2")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0mglqfimla4vvv80mg08aj76zf4993wmngqlirh05h8i9nmgv6lh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)))
    (home-page "http://haskell.github.io/test-framework/")
    (synopsis "QuickCheck-2 support for the test-framework package.")
    (description
     "Allows @@QuickCheck-2@@ properties to be used with the </package/test-framework test-framework package>.")
    (license license:bsd-3)))

haskell-8.4-test-framework-quickcheck2

(define-public haskell-8.4-test-framework-smallcheck
  (package
    (name "haskell-8.4-test-framework-smallcheck")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-smallcheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)))
    (home-page "https://github.com/feuerbach/smallcheck")
    (synopsis "Support for SmallCheck tests in test-framework")
    (description "Support for SmallCheck tests in test-framework")
    (license license:bsd-3)))

haskell-8.4-test-framework-smallcheck

(define-public haskell-8.4-text-postgresql
  (package
    (name "haskell-8.4-text-postgresql")
    (version "0.0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-postgresql/text-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1s42a1mq7hz63zfpcv7bl4141vnyrsyd0ir723iph6vmsa46iqn6"))))
    (properties `((upstream-name . "text-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-transformers-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Parser and Printer of PostgreSQL extended types")
    (description "This package involves parser and printer for
text expressions of PostgreSQL extended types.
- inet type, cidr type")
    (license license:bsd-3)))

haskell-8.4-text-postgresql

(define-public haskell-8.4-tfp
  (package
    (name "haskell-8.4-tfp")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tfp/tfp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1njccng7gj8za3ywjydphw054nx6grmgnfzwmwj89xwirf8710cs"))))
    (properties `((upstream-name . "tfp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "062rvn5ba3x5fjhnqs8lid6mra3vqz5ikaixck1mlmafkqmxhvw9")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-tfp

(define-public haskell-8.4-th-reify-many
  (package
    (name "haskell-8.4-th-reify-many")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-reify-many/th-reify-many-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hzy6hvhvcd6i60vx5cp2b7ggmnnjh9rx4h8bm8xw4grglcaxjnf"))))
    (properties `((upstream-name . "th-reify-many") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0zdqay7m4m1qdz730bhhc2qlplw6378p74h3gcdy4h5l4l358xaa")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-safe)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-expand-syns)))
    (home-page "http://github.com/mgsloan/th-reify-many")
    (synopsis "Recurseively reify template haskell datatype info")
    (description
     "@@th-reify-many@@ provides functions for recursively reifying top
level declarations.  The main intended use case is for enumerating
the names of datatypes reachable from an initial datatype, and
passing these names to some function which generates instances.")
    (license license:bsd-3)))

haskell-8.4-th-reify-many

(define-public haskell-8.4-tsv2csv
  (package
    (name "haskell-8.4-tsv2csv")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tsv2csv/tsv2csv-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "15rkvmisnk521ym9r48f1lp8w1wg1cyljj1165zd99ckmj5jy21c"))))
    (properties `((upstream-name . "tsv2csv") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)))
    (home-page "https://hackage.haskell.org/package/tsv2csv")
    (synopsis "Convert tsv to csv")
    (description "Convert tab-delimited text to Excel-style comma-delimited.")
    (license license:bsd-3)))

haskell-8.4-tsv2csv

(define-public haskell-8.4-unicode
  (package
    (name "haskell-8.4-unicode")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-unicode

(define-public haskell-8.4-xml-basic
  (package
    (name "haskell-8.4-xml-basic")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-accessor)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-explicit-exception)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-xml-basic

(define-public haskell-8.4-xml-to-json-fast
  (package
    (name "haskell-8.4-xml-to-json-fast")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/xml-to-json-fast/xml-to-json-fast-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0gsn8wdiwmvr7nvxbfj9vpzlxwdh8m9lprx2hxnkrnslmbhjz1fx"))))
    (properties `((upstream-name . "xml-to-json-fast") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-tagsoup)))
    (home-page "https://github.com/sinelaw/xml-to-json-fast")
    (synopsis
     "Fast, light converter of xml to json capable of handling huge xml files")
    (description
     "Assumes input xml is valid, which allows constant memory usage (<4 MB) and faster parsing. For a fully-featured, but memory-bound converter see the xml-to-json package.

If not input file is given, reads from stdin (so it can be used in a unix pipe chain).")
    (license license:expat)))

haskell-8.4-xml-to-json-fast

(define-public haskell-8.4-yeshql-hdbc
  (package
    (name "haskell-8.4-yeshql-hdbc")
    (version "4.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/yeshql-hdbc/yeshql-hdbc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p2j0fys7kdgb9882hiifnc1r4768c8jp7qy69ns1nbhd4f55b7l"))))
    (properties `((upstream-name . "yeshql-hdbc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-HDBC)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-convertible)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-yeshql-core)))
    (home-page "https://github.com/tdammers/yeshql")
    (synopsis "YesQL-style SQL database abstraction (HDBC backend)")
    (description
     "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while
adding type annotations to turn SQL into well-typed Haskell
functions.")
    (license license:expat)))

haskell-8.4-yeshql-hdbc

(define-public haskell-8.4-youtube
  (package
    (name "haskell-8.4-youtube")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-utility-ht)))
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

haskell-8.4-youtube

