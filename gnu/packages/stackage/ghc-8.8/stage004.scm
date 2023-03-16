;;; generated file
(define-module (gnu packages stackage ghc-8.8 stage004)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-8.8))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-8.8-Glob
  (package
    (name "haskell-8.8-Glob")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Glob/Glob-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "05fknrb114qvfzv6324ngx0fz43cwgrhrc700l3h2is9jinlgr6a"))))
    (properties `((upstream-name . "Glob") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1mnhsl38mv9p46njns72xi4564nikx7v6plg2s6jilr3y3sfijqp")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "http://iki.fi/matti.niemenmaa/glob/")
    (synopsis "Globbing library")
    (description
     "A library for globbing: matching patterns against file paths.")
    (license license:bsd-3)))

haskell-8.8-Glob

(define-public haskell-8.8-HDBC-session
  (package
    (name "haskell-8.8-HDBC-session")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-HDBC)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Bracketed connection for HDBC")
    (description "This package contains a base bracketed function
to call close correctly against opend DB connection.")
    (license license:bsd-3)))

haskell-8.8-HDBC-session

(define-public haskell-8.8-ListLike
  (package
    (name "haskell-8.8-ListLike")
    (version "4.7.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ListLike/ListLike-" version
                    ".tar.gz"))
              (sha256
               (base32
                "170yrz008ya4haj0i8z1c7ydjg8hcw3i9cqs6abainh8zxvc1lqi"))))
    (properties `((upstream-name . "ListLike") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-fmlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-utf8-string)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/ddssff/listlike")
    (synopsis "Generalized support for list-like structures")
    (description
     "Generalized support for list-like structures in Haskell.

The ListLike module provides a common interface to the various Haskell
types that are list-like.  Predefined interfaces include standard
Haskell lists, Arrays, ByteStrings, and lazy ByteStrings.  Custom
types can easily be made ListLike instances as well.

ListLike also provides for String-like types, such as String and
ByteString, for types that support input and output, and for types that can handle
infinite lists.")
    (license license:bsd-3)))

haskell-8.8-ListLike

(define-public haskell-8.8-MissingH
  (package
    (name "haskell-8.8-MissingH")
    (version "1.4.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/MissingH/MissingH-" version
                    ".tar.gz"))
              (sha256
               (base32
                "196cniya5wzcv2d777nr0f7hinclpals4ia1mkzzv35870pqr6lw"))))
    (properties `((upstream-name . "MissingH") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnetwork--ge-3_0_0")
       #:cabal-revision
       ("2" "0p5md995w0nh2m89v3jsb1bvhfkrnp2s14smjbnh3g0pbq3fgfzg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-hslogger)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-network-bsd)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-old-locale)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-old-time)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-regex-compat)))
    (home-page "https://hackage.haskell.org/package/MissingH")
    (synopsis "Large utility library")
    (description
     "@@MissingH@@ is a library of all sorts of utility functions for Haskell
programmers.  It is written in pure Haskell and thus should be
extremely portable and easy to use.")
    (license license:bsd-3)))

haskell-8.8-MissingH

(define-public haskell-8.8-apportionment
  (package
    (name "haskell-8.8-apportionment")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/apportionment")
    (synopsis "Round a set of numbers while maintaining its sum")
    (description
     "Round a set of numbers while maintaining its sum.
According procedures are used to assign seats to parties in a parliament.
You may also use it to round percentages that sum up to 100%.
<https://en.wikipedia.org/wiki/Apportionment_(politics)>")
    (license license:bsd-3)))

haskell-8.8-apportionment

(define-public haskell-8.8-ascii
  (package
    (name "haskell-8.8-ascii")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ascii/ascii-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "13v1zpll4x72ib5pwrs01kkhw5yc5xq8aazwm9zfni9452sw3r3w"))))
    (properties `((upstream-name . "ascii") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ascii-case)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ascii-char)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ascii-group)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ascii-predicates)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-ascii-superset)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-ascii-th)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-data-ascii)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "The ASCII character set and encoding")
    (description
     "This package provides a variety of ways to work with ASCII text.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-ascii

(define-public haskell-8.8-async-extra
  (package
    (name "haskell-8.8-async-extra")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/async-extra/async-extra-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hyc27mphjpc7m9khs47ch0q6j6hy2hmibk82vzrfmc3rfjxa1hd"))))
    (properties `((upstream-name . "async-extra") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://github.com/agrafix/async-extra#readme")
    (synopsis "Useful concurrent combinators")
    (description "Various concurrent combinators")
    (license license:expat)))

haskell-8.8-async-extra

(define-public haskell-8.8-bin
  (package
    (name "haskell-8.8-bin")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bin/bin-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "008i0yxvg9v05gby6ysq3f7ygh125p9xa5vwrcrbq5xw79igyzq5"))))
    (properties `((upstream-name . "bin") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1zmzi566syvrm9bk0mxj3dycd3i4b33018c644qxdqdb00mlvayh")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-dec)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-fin)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)))
    (home-page "https://github.com/phadej/vec")
    (synopsis "Bin: binary natural numbers.")
    (description
     "This package provides /binary natural numbers/ (\"Data.Bin\");
also utilities to work on the type level with @@DataKinds@@ (\"Data.Type.Bin\").

@@
data Bin
\\    = BZ       -- ^ zero
\\    | BP BinP  -- ^ non-zero

data BinP
\\    = BE       -- ^ one
\\    | B0 BinP  -- ^ double
\\    | B1 BinP  -- ^ double plus 1
@@

There are /ordinals/ in \"Data.Bin.Pos\" module, as well as
fixed width integers in \"Data.Wrd\".

Another implementation is at <https://hackage.haskell.org/package/nat>,
this differs in naming, and provides promoted variant.")
    (license license:gpl2+)))

haskell-8.8-bin

(define-public haskell-8.8-boxes
  (package
    (name "haskell-8.8-boxes")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://hackage.haskell.org/package/boxes")
    (synopsis "2D text pretty-printing library")
    (description "A pretty-printing library for laying out text in
two dimensions, using a simple box model.")
    (license license:bsd-3)))

haskell-8.8-boxes

(define-public haskell-8.8-bytes
  (package
    (name "haskell-8.8-bytes")
    (version "0.17")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bytes/bytes-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "11gacfxcn9f3v5a1phlgi7mwwrnyh51sfsym573g6i4v2zqfrwi3"))))
    (properties `((upstream-name . "bytes") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("5" "0a089bz9sjnmv3f5w9jsm1b7g60qx8qxqj76lwjj0mslzi9iajk2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-binary-orphans)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cereal)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-scientific)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://github.com/ekmett/bytes")
    (synopsis "Sharing code for serialization between binary and cereal")
    (description "Sharing code for serialization between binary and cereal.")
    (license license:bsd-3)))

haskell-8.8-bytes

(define-public haskell-8.8-c2hs
  (package
    (name "haskell-8.8-c2hs")
    (version "0.28.7")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/c2hs/c2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0ib7ayfn37krsnm710x4gxd2i88xv3djnqa737gbw93b0206l571"))))
    (properties `((upstream-name . "c2hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase3" "-f-regression")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-language-c)))
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

haskell-8.8-c2hs

(define-public haskell-8.8-calendar-recycling
  (package
    (name "haskell-8.8-calendar-recycling")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-html)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-old-time)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/calendar-recycling")
    (synopsis "List years with the same calendars")
    (description "Generate a partial HTML document grouping years
by the pattern of the calender.
The program respects the starting weekday of a year
and the existence of a leap day,
but it ignores the date of the Easter festival.")
    (license license:bsd-3)))

haskell-8.8-calendar-recycling

(define-public haskell-8.8-checksum
  (package
    (name "haskell-8.8-checksum")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/checksum")
    (synopsis "Compute and verify checksums of ISBN, IBAN, etc.")
    (description "Compute and verify checksums of various identifiers,
such as IBAN, ISBN, EAN, Germany's Citizen Card.")
    (license license:bsd-3)))

haskell-8.8-checksum

(define-public haskell-8.8-combinatorial
  (package
    (name "haskell-8.8-combinatorial")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-combinatorial

(define-public haskell-8.8-comfort-graph
  (package
    (name "haskell-8.8-comfort-graph")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-comfort-graph

(define-public haskell-8.8-configurator-export
  (package
    (name "haskell-8.8-configurator-export")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/configurator-export/configurator-export-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0k42kdzrmci19w2wb6lswkf2g9fzmrwkn6yvvz694xy957pn5gcx"))))
    (properties `((upstream-name . "configurator-export") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-configurator)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
    (home-page "http://github.com/mstksg/configurator-export")
    (synopsis "Pretty printer and exporter for configurations from
the \"configurator\" library.")
    (description
     "Pretty printers and exporters for 'Config's from the
<http://hackage.haskell.org/package/configurator-0.3.0.0 configurator>
library, in \"Data.Configurator\".

All results are intended to be valid parsing files in the
configuration file syntax of the library.

For a full round trip:

> main = do
>   cfg <- load [Required \"config.cfg\"]
>   writeConf \"config.cfg\" cfg

This should load the config file, parse it, and then
re-export it, rewriting the original config file.  The
result should be an identical configuration file (with
keys potentially re-arranged and re-sorted, comments
removed, etc.)

See the \"Data.Configurator.Export\" module for more
details and ways to modify the output style.")
    (license license:bsd-3)))

haskell-8.8-configurator-export

(define-public haskell-8.8-connection-pool
  (package
    (name "haskell-8.8-connection-pool")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-between)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-monad-control)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-streaming-commons)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-transformers-base)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.8-connection-pool

(define-public haskell-8.8-crypto-cipher-types
  (package
    (name "haskell-8.8-crypto-cipher-types")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-byteable)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-securemem)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Generic cryptography cipher types")
    (description "Generic cryptography cipher types")
    (license license:bsd-3)))

haskell-8.8-crypto-cipher-types

(define-public haskell-8.8-crypto-enigma
  (package
    (name "haskell-8.8-crypto-enigma")
    (version "0.1.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/crypto-enigma/crypto-enigma-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07qxrpwg9r2w2l0d2nrvn703vzsfhchznly93bnr2pfpbwj4iv2z"))))
    (properties `((upstream-name . "crypto-enigma") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("7" "1i5vlza8rl6a4wz4v3l61m6x7phbv1ly0di0cf3v3amz38x828qz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
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

haskell-8.8-crypto-enigma

(define-public haskell-8.8-crypto-random
  (package
    (name "haskell-8.8-crypto-random")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-securemem)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-random")
    (synopsis "Simple cryptographic random related types")
    (description "Simple cryptographic random related types")
    (license license:bsd-3)))

haskell-8.8-crypto-random

(define-public haskell-8.8-d10
  (package
    (name "haskell-8.8-d10")
    (version "0.2.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/d10/d10-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0a720zfpxwx5aymy3kmigfcwdbqz4vbfxjn1irfjl34ngndi358y"))))
    (properties `((upstream-name . "d10") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://github.com/typeclasses/d10")
    (synopsis "Digits 0-9")
    (description
     "Data types representing the digits zero through nine.

== Modules

Each of the following modules defines a different type named
@@D10@@, all of which are different representations of the same
concept:

* \"Data.D10.Char\" - Defines a @@D10@@ type as a newtype for @@Char@@,
where the values are restricted to characters between @@'0'@@ and
@@'9'@@.
* \"Data.D10.Num\" - Defines a @@D10@@ type as a newtype for any
type with an instance of the @@Num@@ class, where the values
are restricted to numbers between @@fromInteger 0@@ and
@@fromInteger 9@@.
* \"Data.D10.Safe\" - Defines a @@D10@@ type as
@@D0 | D1 | D2 | ... | D9@@.

Other modules:

* \"Data.D10.Predicate\" - Functions to test whether values of
various types represent digits in the range /0/ to /9/.

== Quasi-quoters

Each module that defines a @@D10@@ type also defines quasi-quoters
for it. With the @@QuasiQuotes@@ GHC extension enabled, a single
digit like /7/ can be written as @@[d10|7|]@@, and a list of digits
like /[4,5,6]/ can be written as @@[d10|456|]@@. For \"Data.D10.Char\"
and \"Data.D10.Num\", the quasi-quoters are an important feature,
because the @@D10@@ types defined in these modules have unsafe
constructors, and the quasi-quoters provide compile-time assurance
that we never construct a @@D10@@ that represents a value outside
the range /0/ to /9/. For \"Data.D10.Safe\", the quasi-quoter is
offered merely as a possible convenience, allowing you to write
@@[d10|456789|]@@ in place of the somewhat longer expression
@@[D4,D5,D6,D7,D8,D9]@@.")
    (license license:expat)))

haskell-8.8-d10

(define-public haskell-8.8-data-default-instances-dlist
  (package
    (name "haskell-8.8-data-default-instances-dlist")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-dlist")
    (synopsis "Default instances for types in dlist")
    (description "")
    (license license:bsd-3)))

haskell-8.8-data-default-instances-dlist

(define-public haskell-8.8-data-forest
  (package
    (name "haskell-8.8-data-forest")
    (version "0.1.0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/data-forest/data-forest-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0b9b7h526580rsyqv8cfcc3109qjz4rv3prb7p98ddygcpbhm6rl"))))
    (properties `((upstream-name . "data-forest") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://github.com/chris-martin/data-forest")
    (synopsis "A simple multi-way tree data structure.")
    (description "In some contexts, forests (collections of zero
or more trees) are more important than trees.
The /data-forest/ library provides a @@Tree@@
type much like the one from the popular
/containers/ library, but it also provides a
@@Forest@@ type with its own @@Functor@@ and
@@Foldable@@ instances.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.8-data-forest

(define-public haskell-8.8-debian-build
  (package
    (name "haskell-8.8-debian-build")
    (version "0.10.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/debian-build/debian-build-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1yqswr5cvv2yzl15nylvnf2x7cshz482fgfi1nnm22vq71zszn2x"))))
    (properties `((upstream-name . "debian-build") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "http://twitter.com/khibino/")
    (synopsis "Debian package build sequence tools")
    (description "This package provides build sequence functions
for debian package, and includes on-the-fly
build command 'odebuild'.")
    (license license:bsd-3)))

haskell-8.8-debian-build

(define-public haskell-8.8-dlist-instances
  (package
    (name "haskell-8.8-dlist-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://github.com/gregwebs/dlist-instances")
    (synopsis "Difference lists instances")
    (description
     "See the dlist packages.
This package is the canonical source for some orphan instances.
Orphan instances are placed here to avoid dependencies elsewhere.")
    (license license:bsd-3)))

haskell-8.8-dlist-instances

(define-public haskell-8.8-doctest-driver-gen
  (package
    (name "haskell-8.8-doctest-driver-gen")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/doctest-driver-gen/doctest-driver-gen-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1xkq9fpdm8ayjwf2lypkfnh1w08zimvhf27ffn71hfckd5nw4h2q"))))
    (properties `((upstream-name . "doctest-driver-gen") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://github.com/Hexirp/doctest-driver-gen#readme")
    (synopsis "Generate driver file for doctest's cabal integration")
    (description "doctest-driver-gen is a doctest's driver file generator.
It lets you automatically generate driver file for
doctest's cabal integration.")
    (license license:bsd-3)))

haskell-8.8-doctest-driver-gen

(define-public haskell-8.8-equal-files
  (package
    (name "haskell-8.8-equal-files")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-filemanip)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-equal-files

(define-public haskell-8.8-fft
  (package
    (name "haskell-8.8-fft")
    (version "0.1.8.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/fft/fft-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0hjv3r09imb2ypgbz3qj9hf4f36v977z38gdcad3qa0334qdin1f"))))
    (properties `((upstream-name . "fft") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-fbase4")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages algebra) fftw)
                  (@ (gnu packages algebra) fftwf)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-carray)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-ix-shapable)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-storable-complex)
                  (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-syb)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "https://hackage.haskell.org/package/fft")
    (synopsis "Bindings to the FFTW library.")
    (description "Bindings to the FFTW library.

Provides high performance discrete fourier transforms in
arbitrary dimensions.  Include transforms of complex data,
real data, and real to real transforms.
")
    (license license:bsd-3)))

haskell-8.8-fft

(define-public haskell-8.8-file-embed-lzma
  (package
    (name "haskell-8.8-file-embed-lzma")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-base-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-lzma)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)))
    (home-page "https://github.com/phadej/file-embed-lzma")
    (synopsis "Use Template Haskell to embed (LZMA compressed) data.")
    (description
     "The @@file-embed@@ package let's embed file and dir contents.

This package is similar, but also compresses the embedded contents with LZMA.
That makes resulting object files smaller, at the cost of start up decompression.

There's also an 'embedRecursiveDir' function.")
    (license license:bsd-3)))

haskell-8.8-file-embed-lzma

(define-public haskell-8.8-fixed-vector
  (package
    (name "haskell-8.8-fixed-vector")
    (version "1.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/fixed-vector/fixed-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19846sgjlsv7qy9nm9l4p2wdms5kvx6y9wm5ffz1hw7h77qy8ryw"))))
    (properties `((upstream-name . "fixed-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-filemanip)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
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

haskell-8.8-fixed-vector

(define-public haskell-8.8-generic-optics
  (package
    (name "haskell-8.8-generic-optics")
    (version "2.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/generic-optics/generic-optics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17m72q0cjvagq1khiq8m495jhkpn2rqd6y1h9bxngp6l0k355nmw"))))
    (properties `((upstream-name . "generic-optics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-generic-lens-core)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-inspection-testing)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-optics-core)))
    (home-page "https://github.com/kcsongor/generic-lens")
    (synopsis "Generically derive traversals, lenses and prisms.")
    (description
     "This library uses GHC.Generics to derive efficient optics (traversals, lenses and prisms) for algebraic data types in a type-directed way, with a focus on good type inference and error messages when possible.

The library exposes an @@<https://hackage.haskell.org/package/optics optics>@@ interface. For a van Laarhoven interface, see
@@<https://hackage.haskell.org/package/generic-lens generic-lens>@@.")
    (license license:bsd-3)))

haskell-8.8-generic-optics

(define-public haskell-8.8-ghci-hexcalc
  (package
    (name "haskell-8.8-ghci-hexcalc")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghci-hexcalc/ghci-hexcalc-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kjkx8w1rq1fkzl0ffvp71xjb2q5pmlgnm19g0avim7isrjy87kh"))))
    (properties `((upstream-name . "ghci-hexcalc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://github.com/takenobu-hs/ghci-hexcalc")
    (synopsis "GHCi as a Hex Calculator interactive")
    (description
     "This package defines operations for an interactive hex-caluclator using GHCi.
This is a simple and casual interactive tool like Perl and Excel
for daily work.")
    (license license:bsd-3)))

haskell-8.8-ghci-hexcalc

(define-public haskell-8.8-gpolyline
  (package
    (name "haskell-8.8-gpolyline")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://github.com/fegu/gpolyline")
    (synopsis "Pure module for encoding/decoding Google Polyline")
    (description "Pure module for encoding/decoding Google Polyline")
    (license license:bsd-3)))

haskell-8.8-gpolyline

(define-public haskell-8.8-graph-core
  (package
    (name "haskell-8.8-graph-core")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/factisresearch/graph-core")
    (synopsis "Fast, memory efficient and persistent graph implementation")
    (description
     "A small package providing a powerful and easy to use Haskell graph implementation.")
    (license license:expat)))

haskell-8.8-graph-core

(define-public haskell-8.8-hashids
  (package
    (name "haskell-8.8-hashids")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "http://hashids.org/")
    (synopsis
     "Hashids generates short, unique, non-sequential ids from numbers.")
    (description
     "This is a Haskell port of the Hashids library. It is typically used to encode numbers to a format suitable to appear in visible places like urls. It converts numbers like 347 into strings like yr8, or a list of numbers like [27, 986] into 3kTMd. You can also decode those ids back. This is useful in bundling several parameters into one. ")
    (license license:expat)))

haskell-8.8-hashids

(define-public haskell-8.8-hmatrix
  (package
    (name "haskell-8.8-hmatrix")
    (version "0.20.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hmatrix/hmatrix-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0v690zml7yqj6ndjszwqpfsad2vma3m6rdkjs6bnb9k2v35l905i"))))
    (properties `((upstream-name . "hmatrix") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-openblas" "-f-disable-default-paths" "-f-no-random_r")
       #:cabal-revision
       ("2" "1mln86i2k88b7kp5zg85kwyvvg02pg7g1h80b8g74g5hxp2w52ag")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-storable-complex)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/albertoruiz/hmatrix")
    (synopsis "Numeric Linear Algebra")
    (description
     "Linear systems, matrix decompositions, and other numerical computations based on BLAS and LAPACK.

Standard interface: \"Numeric.LinearAlgebra\".

Safer interface with statically checked dimensions: \"Numeric.LinearAlgebra.Static\".

Code examples: <http://dis.um.es/~alberto/hmatrix/hmatrix.html>")
    (license license:bsd-3)))

haskell-8.8-hmatrix

(define-public haskell-8.8-hp2pretty
  (package
    (name "haskell-8.8-hp2pretty")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hp2pretty/hp2pretty-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0libwl8kl6yhingvbrmw1b8l5yiq6wn07asvkwbnh9l6mnh8pz2n"))))
    (properties `((upstream-name . "hp2pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-floatshow)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)))
    (home-page "https://mathr.co.uk/blog/hp2pretty.html")
    (synopsis "generate pretty graphs from heap profiles")
    (description
     "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with
the aims of being maintainable, with more flexible output, and
more beautiful output.  Currently hp2pretty outputs Scalable
Vector Graphics (SVG) only, though PostScript (PS) is planned.
Not all of hp2ps' options are implemented yet in hp2pretty.

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

haskell-8.8-hp2pretty

(define-public haskell-8.8-hspec-core
  (package
    (name "haskell-8.8-hspec-core")
    (version "2.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-core/hspec-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j9kpvjf1yz3bl32cklxz8dnykc48ya67lin4r2hvbzcd3kg63rf"))))
    (properties `((upstream-name . "hspec-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1lspx37ds8bqlmna0arv0j8v7fdy82q74qffz04bgb6bs6wm3z7x")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-quickcheck-io)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-setenv)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-tf-random)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "This package exposes internal types and functions that can be used to extend Hspec's functionality.")
    (license license:expat)))

haskell-8.8-hspec-core

(define-public haskell-8.8-hspec-meta
  (package
    (name "haskell-8.8-hspec-meta")
    (version "2.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-meta/hspec-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1n1a4633wfivylglji8920f67mx7qz8j4q58n8p7dxk6yg4h3mz6"))))
    (properties `((upstream-name . "hspec-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1qh3j6mhlz2bvdk8qc5fa4nqh93q4vqnvxmqqisg4agacnvyp4b2")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-call-stack)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-quickcheck-io)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-setenv)))
    (home-page "http://hspec.github.io/")
    (synopsis "A version of Hspec which is used to test Hspec itself")
    (description "A stable version of Hspec which is used to test the
in-development version of Hspec.")
    (license license:expat)))

haskell-8.8-hspec-meta

(define-public haskell-8.8-hxt-css
  (package
    (name "haskell-8.8-hxt-css")
    (version "0.1.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/hxt-css/hxt-css-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dv5xy0rhcs08zyfnmf752h026r2kfg9905d482xy8srblagqi02"))))
    (properties `((upstream-name . "hxt-css") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-examples")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-hxt)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://github.com/redneb/hxt-css")
    (synopsis "CSS selectors for HXT")
    (description
     "This package makes it possible to easily traverse (X)HTML/XML documents
using CSS selectors. It supports all CSS level 3 selectors except the
ones that do not make sense outside a web browser (e.g. such as @@:hover@@
or @@::first-letter@@). Also, there is no support for namespaced selectors.")
    (license license:bsd-3)))

haskell-8.8-hxt-css

(define-public haskell-8.8-hxt-curl
  (package
    (name "haskell-8.8-hxt-curl")
    (version "9.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-curl/hxt-curl-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1sn5ngzz5qszdb3anbpqbjdijz29gmrwjrg9vsmrqsdqz65wrhfd"))))
    (properties `((upstream-name . "hxt-curl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-curl)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-hxt)))
    (propagated-inputs (list (@ (gnu packages curl) curl)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "LibCurl interface for HXT")
    (description "LibCurl interface for HXT")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-hxt-curl

(define-public haskell-8.8-hxt-expat
  (package
    (name "haskell-8.8-hxt-expat")
    (version "9.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-expat/hxt-expat-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1mi2f2i31nqjqzwl82iypm1qngrpxp7lz506pjgqfbn840yc9n8h"))))
    (properties `((upstream-name . "hxt-expat") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-hexpat)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-hxt)))
    (propagated-inputs (list (@ (gnu packages xml) expat)))
    (home-page "http://www.fh-wedel.de/~si/HXmlToolbox/index.html")
    (synopsis "Expat parser for HXT")
    (description "The Expat interface for the HXT.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-hxt-expat

(define-public haskell-8.8-hxt-http
  (package
    (name "haskell-8.8-hxt-http")
    (version "9.1.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-http/hxt-http-" version
                    ".tar.gz"))
              (sha256
               (base32
                "02yxvzczv89j518b94wh8m4dsmnymzxgv9158m7w6lqxk41rv8bg"))))
    (properties `((upstream-name . "hxt-http") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002) haskell-8.8-HTTP)
                  (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-hxt)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-network)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-network-uri)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "Interface to native Haskell HTTP package HTTP")
    (description
     "Interface to native Haskell HTTP package HTTP.
This package can be used as alternative for the hxt-curl package
for accessing documents via HTTP.

Changes from 9.1.3: Works with ghc-7.10

Changes to 9.1.3: New warnings from ghc-7.4 removed")
    (license license:expat)))

haskell-8.8-hxt-http

(define-public haskell-8.8-hxt-tagsoup
  (package
    (name "haskell-8.8-hxt-tagsoup")
    (version "9.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hxt-tagsoup/hxt-tagsoup-"
                    version ".tar.gz"))
              (sha256
               (base32
                "10xj8jqxazfxzazc1ln9w2blp67rafbwdi87ba7arw5ccc6jjyyp"))))
    (properties `((upstream-name . "hxt-tagsoup") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-hxt)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hxt-charproperties)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-hxt-unicode)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)))
    (home-page "https://github.com/UweSchmidt/hxt")
    (synopsis "TagSoup parser for HXT")
    (description "The Tagsoup interface for the HXT lazy HTML parser.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.8-hxt-tagsoup

(define-public haskell-8.8-hyphenation
  (package
    (name "haskell-8.8-hyphenation")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hyphenation/hyphenation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "09c9xpygjnq7kqcaybls91s7g1cv40rg54dn9w1svk973h0lgyii"))))
    (properties `((upstream-name . "hyphenation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-embed")
       #:cabal-revision
       ("3" "0krjvrk5hzcs101b5h95ai51wwq1fj04q1ryn63j1qmj22jpn4ki")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
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

haskell-8.8-hyphenation

(define-public haskell-8.8-interpolation
  (package
    (name "haskell-8.8-interpolation")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/interpolation/interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "081xlf59xp0j1svigkqfcz5an3yl3p8f5402i6492hz9rpv5qwy5"))))
    (properties `((upstream-name . "interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-buildexamples" "-flapack")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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
using a linear least squares solver like @@<\\>@@ from @@lapack@@.
We use a distorted sinus as target.

The package needs only Haskell 98.
Most of the package dependencies are only needed for the examples
and are only installed if you enable to build them.")
    (license license:bsd-3)))

haskell-8.8-interpolation

(define-public haskell-8.8-language-docker
  (package
    (name "haskell-8.8-language-docker")
    (version "9.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-docker/language-docker-"
                    version ".tar.gz"))
              (sha256
               (base32
                "014rb5jf650fhsmc02v4xc60w7v1261ri1w9ig6dw0xjdgxalvbs"))))
    (properties `((upstream-name . "language-docker") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-default-class)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-megaparsec)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://github.com/hadolint/language-docker#readme")
    (synopsis "Dockerfile parser, pretty-printer and embedded DSL")
    (description
     "All functions for parsing and pretty-printing Dockerfiles are exported through @@Language.Docker@@. For more fine-grained operations look for specific modules that implement a certain functionality.
See the <https://github.com/hadolint/language-docker GitHub project> for the source-code and examples.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-language-docker

(define-public haskell-8.8-latex
  (package
    (name "haskell-8.8-latex")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-latex

(define-public haskell-8.8-lca
  (package
    (name "haskell-8.8-lca")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "http://github.com/ekmett/lca/")
    (synopsis
     "O(log n) persistent online lowest common ancestor search without preprocessing")
    (description
     "This package provides a reference implementation of my skew binary random access algorithm for performing an /online/ lowest common ancestor search (and online level ancestor search) in logarithmic time without preprocessing. This improves the previous known asymptotic bound for both of these problems from /O(h)/ to /O(log h)/, where /h/ is the height of the tree. Mostly importantly this bound is completely independent of the width or overall size of the tree, enabling you to calculate lowest common ancestors in a distributed fashion with good locality.

While /offline/ algorithms exist for both of these algorithms that that provide /O(1)/ query time, they all require at least /O(n)/ preprocessing, where /n/ is the size of the entire tree, and so are less suitable for LCA search in areas such as revision control where the tree is constantly updated, or distributed computing where the tree may be too large to fit in any one computer's memory.

Slides are available from

<http://www.slideshare.net/ekmett/skewbinary-online-lowest-common-ancestor-search>")
    (license license:bsd-3)))

haskell-8.8-lca

(define-public haskell-8.8-mbox
  (package
    (name "haskell-8.8-mbox")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-time-locale-compat)))
    (home-page "https://hackage.haskell.org/package/mbox")
    (synopsis "Read and write standard mailbox files.")
    (description "Read and write standard mailbox (mboxrd) files.")
    (license license:bsd-3)))

haskell-8.8-mbox

(define-public haskell-8.8-mercury-api
  (package
    (name "haskell-8.8-mercury-api")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hsc2hs-notests)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)))
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

haskell-8.8-mercury-api

(define-public haskell-8.8-microlens-process
  (package
    (name "haskell-8.8-microlens-process")
    (version "0.2.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/microlens-process/microlens-process-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dvhvrk1v0kjb45xnpjbr8b97vc6dx4cq34jfzkazqdp5jk5nlxp"))))
    (properties `((upstream-name . "microlens-process") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "04j2yap3ha45wq0slvxkd3gm7gkx2dks9abxfd6mg3asmdp743gk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-microlens)))
    (home-page "https://github.com/emilypi/lens-process/tree/master/microlens")
    (synopsis "Micro-optics for the process library")
    (description
     "'microlens-process' is a set of multi-purpose optics and convenience
combinators for working with the `process` library, including
a more well-typed api for the parts that can be typed.")
    (license license:bsd-3)))

haskell-8.8-microlens-process

(define-public haskell-8.8-midair
  (package
    (name "haskell-8.8-midair")
    (version "0.2.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/midair/midair-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1dkja5arps41wanhv1jnkf99xrc8f5aiimp27myd595lqqdr87s2"))))
    (properties `((upstream-name . "midair") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)))
    (home-page "https://hackage.haskell.org/package/midair")
    (synopsis "Hot-swappable FRP")
    (description
     "FRP for livecoding. You can hot-swap pieces or the whole of an
FRP graph while it's running.

Small examples are in \"Midair.Examples\"

The API may change a lot in the future.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-midair

(define-public haskell-8.8-mwc-probability
  (package
    (name "haskell-8.8-mwc-probability")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
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

haskell-8.8-mwc-probability

(define-public haskell-8.8-netlib-carray
  (package
    (name "haskell-8.8-netlib-carray")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-carray)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-netlib-ffi)))
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

haskell-8.8-netlib-carray

(define-public haskell-8.8-network-byte-order
  (package
    (name "haskell-8.8-network-byte-order")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://hackage.haskell.org/package/network-byte-order")
    (synopsis "Network byte order utilities")
    (description "Peek and poke functions for network byte order.")
    (license license:bsd-3)))

haskell-8.8-network-byte-order

(define-public haskell-8.8-non-empty
  (package
    (name "haskell-8.8-non-empty")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/non-empty/non-empty-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0j47d1xaxi2ynsa3wckapjbcvzr66cwca74xpzi554ba70agq40v"))))
    (properties `((upstream-name . "non-empty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-non-empty

(define-public haskell-8.8-non-negative
  (package
    (name "haskell-8.8-non-negative")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/non-negative/")
    (synopsis "Non-negative numbers")
    (description
     "Provides a class for non-negative numbers,
a wrapper which can turn any ordered numeric type into a member of that class,
and a lazy number type for non-negative numbers
(a generalization of Peano numbers).
This library is used by the @@event-list@@ package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.8-non-negative

(define-public haskell-8.8-nonempty-vector
  (package
    (name "haskell-8.8-nonempty-vector")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/emilypi/nonempty-vector")
    (synopsis "Non-empty vectors")
    (description "Performant, non-empty mutable and immutable vectors")
    (license license:bsd-3)))

haskell-8.8-nonempty-vector

(define-public haskell-8.8-nsis
  (package
    (name "haskell-8.8-nsis")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-uniplate)))
    (home-page "https://github.com/ndmitchell/nsis#readme")
    (synopsis "DSL for producing Windows Installer using NSIS.")
    (description
     "NSIS (Nullsoft Scriptable Install System, <http://nsis.sourceforge.net/>) is a tool that allows programmers
to create installers for Windows.
This library provides an alternative syntax for NSIS scripts, as an embedded Haskell language, removing much
of the hard work in developing an install script. Simple NSIS installers should look mostly the same, complex ones should
be significantly more maintainable.")
    (license license:bsd-3)))

haskell-8.8-nsis

(define-public haskell-8.8-optparse-generic
  (package
    (name "haskell-8.8-optparse-generic")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-generic/optparse-generic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0c2fhy54mn8h7z5qj3mq1qcdb1ab6bxbpiaaqwrmh7iys41zg6q0"))))
    (properties `((upstream-name . "optparse-generic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-Only)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-system-filepath)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-void)))
    (home-page "https://hackage.haskell.org/package/optparse-generic")
    (synopsis "Auto-generate a command-line parser for your datatype")
    (description
     "This library auto-generates an @@optparse-applicative@@-compatible
@@Parser@@ from any data type that derives the @@Generic@@ interface.

See the documentation in \"Options.Generic\" for an example of how to use
this library")
    (license license:bsd-3)))

haskell-8.8-optparse-generic

(define-public haskell-8.8-optparse-simple
  (package
    (name "haskell-8.8-optparse-simple")
    (version "0.1.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-simple/optparse-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wymqhac2sngkka8w880gq6y1kk3xs0flbv4mrhfgzrplhax8r9k"))))
    (properties `((upstream-name . "optparse-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-githash)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)))
    (home-page "https://github.com/fpco/optparse-simple#readme")
    (synopsis "Simple interface to optparse-applicative")
    (description
     "Please see the README at <https://www.stackage.org/package/optparse-simple>")
    (license license:bsd-3)))

haskell-8.8-optparse-simple

(define-public haskell-8.8-pathtype
  (package
    (name "haskell-8.8-pathtype")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-pathtype

(define-public haskell-8.8-perfect-hash-generator
  (package
    (name "haskell-8.8-perfect-hash-generator")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-ordlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-hashable)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-unordered-containers)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
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

haskell-8.8-perfect-hash-generator

(define-public haskell-8.8-persistable-record
  (package
    (name "haskell-8.8-persistable-record")
    (version "0.6.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistable-record/persistable-record-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1jm8270c7805alxa8q8pa5ql9f1ah3ns3p910j86h4bjnvgbvyqa"))))
    (properties `((upstream-name . "persistable-record") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-names-th)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-bang-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-constraint-compat)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-th-data-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Binding between SQL database values and haskell records.")
    (description
     "This package contiains types to represent table constraints and
interfaces to bind between SQL database values and Haskell records.")
    (license license:bsd-3)))

haskell-8.8-persistable-record

(define-public haskell-8.8-pooled-io
  (package
    (name "haskell-8.8-pooled-io")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-concurrent-split)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unsafe)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-pooled-io

(define-public haskell-8.8-posix-paths
  (package
    (name "haskell-8.8-posix-paths")
    (version "0.2.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/posix-paths/posix-paths-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ibycc7z3gm6jr83cgsqwa7hkky2ldfqqd30ickgq6vn2rkp8fbj"))))
    (properties `((upstream-name . "posix-paths") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)))
    (home-page "https://hackage.haskell.org/package/posix-paths")
    (synopsis "POSIX filepath/directory functionality")
    (description
     "This package gives access to certain POSIX-based Filepath/Directory
services.

The package is not supported under Windows (except under Cygwin).")
    (license license:bsd-3)))

haskell-8.8-posix-paths

(define-public haskell-8.8-prettyprinter-ansi-terminal
  (package
    (name "haskell-8.8-prettyprinter-ansi-terminal")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/prettyprinter-ansi-terminal/prettyprinter-ansi-terminal-"
                    version ".tar.gz"))
              (sha256
               (base32
                "168p5b7fzqs0g8ld26d3k78afgdx4r21dv0hw8ka2c08p4w76sz2"))))
    (properties `((upstream-name . "prettyprinter-ansi-terminal")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-prettyprinter)))
    (home-page "http://github.com/quchen/prettyprinter")
    (synopsis "ANSI terminal backend for the »prettyprinter« package.")
    (description "See README.md")
    (license license:bsd-2)))

haskell-8.8-prettyprinter-ansi-terminal

(define-public haskell-8.8-qrcode-core
  (package
    (name "haskell-8.8-qrcode-core")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/qrcode-core/qrcode-core-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1drjx73qslga81bhby0h000icrvnhhlv36n6i37j8524x9ir2gn0"))))
    (properties `((upstream-name . "qrcode-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-case-insensitive)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-vector)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "QR code library in pure Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-core#readme>")
    (license license:expat)))

haskell-8.8-qrcode-core

(define-public haskell-8.8-random-bytestring
  (package
    (name "haskell-8.8-random-bytestring")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-bytestring/random-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "16mjdb1sy7ppfbj5hshjpyrly6mklzvxip8vrqcvsfm869pkzayw"))))
    (properties `((upstream-name . "random-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-pcg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-mwc-random)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-pcg-random)))
    (home-page "https://www.github.com/larskuhtz/random-bytestring")
    (synopsis "Efficient generation of random bytestrings")
    (description
     "Efficient generation of random bytestrings. The implementation
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

haskell-8.8-random-bytestring

(define-public haskell-8.8-rcu
  (package
    (name "haskell-8.8-rcu")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rcu/rcu-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1zl6gl6b9x2ppxzrvb356216f7gi1kpwxsqb0w220f86wyzf9gbr"))))
    (properties `((upstream-name . "rcu") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-ftest-doctests" "-f-unstable" "-f-measure-synchronize")
       #:cabal-revision
       ("2" "1lblpsgprk26nplfzxkclvj6gsaim1b97njvrq564crryn6hn2wz")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-atomic-primops)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-doctest)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fail)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-parallel)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-primitive-notests)))
    (home-page "http://github.com/ekmett/rcu/")
    (synopsis "Read-Copy-Update for Haskell")
    (description "Read-Copy-Update for Haskell.")
    (license license:bsd-3)))

haskell-8.8-rcu

(define-public haskell-8.8-rdf
  (package
    (name "haskell-8.8-rdf")
    (version "0.1.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rdf/rdf-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1ncvh2rkxmy3k3scrpf7zyambvr94s5hq6n2yb4h7f5yx6xzr0wk"))))
    (properties `((upstream-name . "rdf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage000) haskell-8.8-fgl)))
    (home-page "https://github.com/traviswhitaker/rdf")
    (synopsis "Representation and Incremental Processing of RDF Data")
    (description
     "Data structures, parsers, and encoders for RDF data sets based on the
RDF 1.1 abstract syntax and RFC 3987. The interface is intended to support
incremental graph processing in constant space.")
    (license license:expat)))

haskell-8.8-rdf

(define-public haskell-8.8-simple-cmd-args
  (package
    (name "haskell-8.8-simple-cmd-args")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-cmd-args/simple-cmd-args-"
                    version ".tar.gz"))
              (sha256
               (base32
                "18dikz7hy61wgrbpgnxmgfp1i485hkhgrdnqbkzl2mrmmjn8p1zd"))))
    (properties `((upstream-name . "simple-cmd-args") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)))
    (home-page "https://github.com/juhp/simple-cmd-args")
    (synopsis "Simple command args parsing and execution")
    (description
     "This is a small wrapper over optparse-applicative which
allows combining args parsers directly with IO commands.
For subcommands this can avoid type boilerplate.
It also provides some compact aliases for options with their Mod's.")
    (license license:bsd-3)))

haskell-8.8-simple-cmd-args

(define-public haskell-8.8-spreadsheet
  (package
    (name "haskell-8.8-spreadsheet")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-spreadsheet

(define-public haskell-8.8-sql-words
  (package
    (name "haskell-8.8-sql-words")
    (version "0.1.6.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sql-words/sql-words-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1rd2rkhq56zwv3s1jzxq0vjshjnf5818f70w6ayxbmmg87kiwwy0"))))
    (properties `((upstream-name . "sql-words") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-quickcheck-simple)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "SQL keywords data constructors into OverloadedString")
    (description
     "This package contiains SQL keywords constructors defined as
OverloadedString literals and helper functions to concate these.")
    (license license:bsd-3)))

haskell-8.8-sql-words

(define-public haskell-8.8-storable-record
  (package
    (name "haskell-8.8-storable-record")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-storable-record

(define-public haskell-8.8-tasty
  (package
    (name "haskell-8.8-tasty")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tasty/tasty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qpn0avpw4w1qq5r2gwh2piipj0llqq6ylagr3xnqiraq6mhg8cc"))))
    (properties `((upstream-name . "tasty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclock")
       #:cabal-revision
       ("1" "1425x99bz9wcjzdgb37qnfscyjlsnm6ppvvjsfiqpvvnqhd9fr7m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unbounded-delays)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-wcwidth)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "Modern and extensible testing framework")
    (description "Tasty is a modern testing framework for Haskell.
It lets you combine your unit tests, golden
tests, QuickCheck/SmallCheck properties, and any
other types of tests into a single test suite.")
    (license license:expat)))

haskell-8.8-tasty

(define-public haskell-8.8-tasty-notests
  (package
    (name "haskell-8.8-tasty-notests")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tasty/tasty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0qpn0avpw4w1qq5r2gwh2piipj0llqq6ylagr3xnqiraq6mhg8cc"))))
    (properties `((upstream-name . "tasty") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclock")
       #:cabal-revision
       ("1" "1425x99bz9wcjzdgb37qnfscyjlsnm6ppvvjsfiqpvvnqhd9fr7m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-async)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-clock)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-tagged)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unbounded-delays)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-wcwidth)))
    (home-page "https://github.com/feuerbach/tasty")
    (synopsis "Modern and extensible testing framework")
    (description "Tasty is a modern testing framework for Haskell.
It lets you combine your unit tests, golden
tests, QuickCheck/SmallCheck properties, and any
other types of tests into a single test suite.")
    (license license:expat)))

haskell-8.8-tasty-notests

(define-public haskell-8.8-test-framework-hunit
  (package
    (name "haskell-8.8-test-framework-hunit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)))
    (home-page "https://batterseapower.github.io/test-framework/")
    (synopsis "HUnit support for the test-framework package.")
    (description "HUnit support for the test-framework package.")
    (license license:bsd-3)))

haskell-8.8-test-framework-hunit

(define-public haskell-8.8-test-framework-leancheck
  (package
    (name "haskell-8.8-test-framework-leancheck")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-leancheck/test-framework-leancheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bwzc0vq28cmy5r966jxhacijd2hkna4magd9aw5wz34dcp4qv13"))))
    (properties `((upstream-name . "test-framework-leancheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-leancheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)))
    (home-page "https://github.com/rudymatela/test-framework-leancheck#readme")
    (synopsis "LeanCheck support for test-framework.")
    (description
     "LeanCheck support for test-framework.

This package can be used to incorporate LeanCheck tests
into test-framework test suites by means of the
@@Test.Framework.Providers.LeanCheck.testProperty@@ function.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-8.8-test-framework-leancheck

(define-public haskell-8.8-test-framework-quickcheck2
  (package
    (name "haskell-8.8-test-framework-quickcheck2")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-random)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)))
    (home-page "http://haskell.github.io/test-framework/")
    (synopsis "QuickCheck-2 support for the test-framework package.")
    (description
     "Allows @@QuickCheck-2@@ properties to be used with the </package/test-framework test-framework package>.")
    (license license:bsd-3)))

haskell-8.8-test-framework-quickcheck2

(define-public haskell-8.8-test-framework-th
  (package
    (name "haskell-8.8-test-framework-th")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-haskell-src-exts)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-language-haskell-extract)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-regex-posix)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-test-framework)))
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

haskell-8.8-test-framework-th

(define-public haskell-8.8-text-ldap
  (package
    (name "haskell-8.8-text-ldap")
    (version "0.1.1.13")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-ldap/text-ldap-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0d1a7932999yx98hjvnrap1lpm9jcfg34m2m0hdy4j1m6cq4q5zc"))))
    (properties `((upstream-name . "text-ldap") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-attoparsec)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-memory)))
    (home-page "https://hackage.haskell.org/package/text-ldap")
    (synopsis "Parser and Printer for LDAP text data stream")
    (description "This package contains Parser and Printer for
LDAP text data stream like OpenLDAP backup LDIF.")
    (license license:bsd-3)))

haskell-8.8-text-ldap

(define-public haskell-8.8-text-postgresql
  (package
    (name "haskell-8.8-text-postgresql")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-dlist)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-transformers-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Parser and Printer of PostgreSQL extended types")
    (description "This package involves parser and printer for
text expressions of PostgreSQL extended types.
- inet type, cidr type")
    (license license:bsd-3)))

haskell-8.8-text-postgresql

(define-public haskell-8.8-tfp
  (package
    (name "haskell-8.8-tfp")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tfp/tfp-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1qkcm4l09qpxy9996lnfn79c1wn1ca45s3i2iz2x3kvp0f999d3i"))))
    (properties `((upstream-name . "tfp") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage002)
                     haskell-8.8-QuickCheck)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-tfp

(define-public haskell-8.8-th-reify-many
  (package
    (name "haskell-8.8-th-reify-many")
    (version "0.1.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/th-reify-many/th-reify-many-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hxf56filzqnyrc8q7766vai80y6cgrrbrczx6n93caskl1dv2gq"))))
    (properties `((upstream-name . "th-reify-many") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0y0gyh866i40a71732mbkzb1clxh4cq26kma4xnrq86kdd7s2rr8")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003) haskell-8.8-safe)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-th-expand-syns)))
    (home-page "http://github.com/mgsloan/th-reify-many")
    (synopsis "Recurseively reify template haskell datatype info")
    (description
     "@@th-reify-many@@ provides functions for recursively reifying top
level declarations.  The main intended use case is for enumerating
the names of datatypes reachable from an initial datatype, and
passing these names to some function which generates instances.")
    (license license:bsd-3)))

haskell-8.8-th-reify-many

(define-public haskell-8.8-tsv2csv
  (package
    (name "haskell-8.8-tsv2csv")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-HUnit)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-split)))
    (home-page "https://hackage.haskell.org/package/tsv2csv")
    (synopsis "Convert tsv to csv")
    (description "Convert tab-delimited text to Excel-style comma-delimited.")
    (license license:bsd-3)))

haskell-8.8-tsv2csv

(define-public haskell-8.8-unicode
  (package
    (name "haskell-8.8-unicode")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-unicode

(define-public haskell-8.8-unliftio-pool
  (package
    (name "haskell-8.8-unliftio-pool")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unliftio-pool/unliftio-pool-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hxxngldp4zr55qv67gf62a87yxr1f0xfyh4gfzr45q62mscs8xv"))))
    (properties `((upstream-name . "unliftio-pool") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-resource-pool)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-unliftio-core)))
    (home-page "https://hackage.haskell.org/package/unliftio-pool")
    (synopsis "Data.Pool generalized to MonadUnliftIO.")
    (description "This is a generalization of Data.Pool to MonadUnliftIO.")
    (license license:bsd-3)))

haskell-8.8-unliftio-pool

(define-public haskell-8.8-xml-basic
  (package
    (name "haskell-8.8-xml-basic")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-data-accessor)
                  (@ (gnu packages stackage ghc-8.8 stage001)
                     haskell-8.8-explicit-exception)
                  (@ (gnu packages stackage ghc-8.8 stage000)
                     haskell-8.8-semigroups)
                  (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-xml-basic

(define-public haskell-8.8-xml-to-json-fast
  (package
    (name "haskell-8.8-xml-to-json-fast")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-tagsoup)))
    (home-page "https://github.com/sinelaw/xml-to-json-fast")
    (synopsis
     "Fast, light converter of xml to json capable of handling huge xml files")
    (description
     "Assumes input xml is valid, which allows constant memory usage (<4 MB) and faster parsing. For a fully-featured, but memory-bound converter see the xml-to-json package.

If not input file is given, reads from stdin (so it can be used in a unix pipe chain).")
    (license license:expat)))

haskell-8.8-xml-to-json-fast

(define-public haskell-8.8-youtube
  (package
    (name "haskell-8.8-youtube")
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
    (inputs (list (@ (gnu packages stackage ghc-8.8 stage003)
                     haskell-8.8-utility-ht)))
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

haskell-8.8-youtube

