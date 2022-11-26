;;; generated file
(define-module (gnu packages stackage ghc-8.6 stage004)
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
(define-public haskell-8.6-HDBC-session
  (package
    (name "haskell-8.6-HDBC-session")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-HDBC)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Bracketed connection for HDBC")
    (description "This package contains a base bracketed function
to call close correctly against opend DB connection.")
    (license license:bsd-3)))

haskell-8.6-HDBC-session

(define-public haskell-8.6-apportionment
  (package
    (name "haskell-8.6-apportionment")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/apportionment")
    (synopsis "Round a set of numbers while maintaining its sum")
    (description
     "Round a set of numbers while maintaining its sum.
According procedures are used to assign seats to parties in a parliament.
You may also use it to round percentages that sum up to 100%.
<https://en.wikipedia.org/wiki/Apportionment_(politics)>")
    (license license:bsd-3)))

haskell-8.6-apportionment

(define-public haskell-8.6-boxes
  (package
    (name "haskell-8.6-boxes")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (home-page "https://hackage.haskell.org/package/boxes")
    (synopsis "2D text pretty-printing library")
    (description "A pretty-printing library for laying out text in
two dimensions, using a simple box model.")
    (license license:bsd-3)))

haskell-8.6-boxes

(define-public haskell-8.6-calendar-recycling
  (package
    (name "haskell-8.6-calendar-recycling")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-html)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/calendar-recycling")
    (synopsis "List years with the same calendars")
    (description "Generate a partial HTML document grouping years
by the pattern of the calender.
The program respects the starting weekday of a year
and the existence of a leap day,
but it ignores the date of the Easter festival.")
    (license license:bsd-3)))

haskell-8.6-calendar-recycling

(define-public haskell-8.6-checksum
  (package
    (name "haskell-8.6-checksum")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://hub.darcs.net/thielema/checksum")
    (synopsis "Compute and verify checksums of ISBN, IBAN, etc.")
    (description "Compute and verify checksums of various identifiers,
such as IBAN, ISBN, EAN, Germany's Citizen Card.")
    (license license:bsd-3)))

haskell-8.6-checksum

(define-public haskell-8.6-combinatorial
  (package
    (name "haskell-8.6-combinatorial")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-combinatorial

(define-public haskell-8.6-comfort-graph
  (package
    (name "haskell-8.6-comfort-graph")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-comfort-graph

(define-public haskell-8.6-crypto-cipher-types
  (package
    (name "haskell-8.6-crypto-cipher-types")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-byteable)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-securemem)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Generic cryptography cipher types")
    (description "Generic cryptography cipher types")
    (license license:bsd-3)))

haskell-8.6-crypto-cipher-types

(define-public haskell-8.6-crypto-enigma
  (package
    (name "haskell-8.6-crypto-enigma")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
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

haskell-8.6-crypto-enigma

(define-public haskell-8.6-crypto-random
  (package
    (name "haskell-8.6-crypto-random")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-securemem)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-random")
    (synopsis "Simple cryptographic random related types")
    (description "Simple cryptographic random related types")
    (license license:bsd-3)))

haskell-8.6-crypto-random

(define-public haskell-8.6-data-accessor-template
  (package
    (name "haskell-8.6-data-accessor-template")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-accessor)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://www.haskell.org/haskellwiki/Record_access")
    (synopsis "Utilities for accessing and manipulating fields of records")
    (description
     "Automate generation of @@Accessor@@'s of the @@data-accessor@@ package
by Template Haskell functions.")
    (license license:bsd-3)))

haskell-8.6-data-accessor-template

(define-public haskell-8.6-debian-build
  (package
    (name "haskell-8.6-debian-build")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (home-page "http://twitter.com/khibino/")
    (synopsis "Debian package build sequence tools")
    (description "This package provides build sequence functions
for debian package, and includes on-the-fly
build command 'odebuild'.")
    (license license:bsd-3)))

haskell-8.6-debian-build

(define-public haskell-8.6-dependent-sum-template
  (package
    (name "haskell-8.6-dependent-sum-template")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dependent-sum)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-extras)))
    (home-page "/dev/null")
    (synopsis
     "Template Haskell code to generate instances of classes in dependent-sum package")
    (description
     "Template Haskell code to generate instances of classes in dependent-sum package, such as 'GEq' and 'GCompare'.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-8.6-dependent-sum-template

(define-public haskell-8.6-equal-files
  (package
    (name "haskell-8.6-equal-files")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-filemanip)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-equal-files

(define-public haskell-8.6-file-embed-lzma
  (package
    (name "haskell-8.6-file-embed-lzma")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-base-compat)
                  (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-lzma)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)))
    (home-page "https://github.com/phadej/file-embed-lzma")
    (synopsis "Use Template Haskell to embed (LZMA compressed) data.")
    (description
     "The @@file-embed@@ package let's embed file and dir contents.

This package is similar, but also compresses the embedded contents with LZMA.
That makes resulting object files smaller, at the cost of start up decompression.

There's also an 'embedRecursiveDir' function.")
    (license license:bsd-3)))

haskell-8.6-file-embed-lzma

(define-public haskell-8.6-filepattern
  (package
    (name "haskell-8.6-filepattern")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/filepattern/filepattern-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0jwvbhjsn4k6kpkg0dvsm7p3a79vzp0ffr1w79wkmm7hzvf5pz7p"))))
    (properties `((upstream-name . "filepattern") (hidden? . #f)))
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
                     haskell-8.6-extra)))
    (home-page "https://github.com/ndmitchell/filepattern#readme")
    (synopsis "File path glob-like matching")
    (description
     "A library for matching files using patterns such as @@\\\"src\\/**\\/*.png\\\"@@ for all @@.png@@ files
recursively under the @@src@@ directory. Features:

* All matching is /O(n)/.

* See \"System.FilePattern\" and @@?==@@ simple matching and semantics.

* Use @@match@@ and @@substitute@@ to extract suitable
strings from the @@*@@ and @@**@@ matches, and substitute them back into other patterns.

* Use @@step@@ and @@matchMany@@ to perform bulk matching
of many patterns against many paths simultaneously.

* Use \"System.FilePattern.Directory\" to perform optimised directory traverals using patterns.

Originally taken from the <https://hackage.haskell.org/package/shake Shake library>.")
    (license license:bsd-3)))

haskell-8.6-filepattern

(define-public haskell-8.6-flexible-defaults
  (package
    (name "haskell-8.6-flexible-defaults")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/flexible-defaults/flexible-defaults-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02v35b3ahbw46q9xipyh4n46drlz1xrx1rixdmggjr0fwkygd1k5"))))
    (properties `((upstream-name . "flexible-defaults") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-extras)))
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

haskell-8.6-flexible-defaults

(define-public haskell-8.6-gpolyline
  (package
    (name "haskell-8.6-gpolyline")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (home-page "https://github.com/fegu/gpolyline")
    (synopsis "Pure module for encoding/decoding Google Polyline")
    (description "Pure module for encoding/decoding Google Polyline")
    (license license:bsd-3)))

haskell-8.6-gpolyline

(define-public haskell-8.6-hashids
  (package
    (name "haskell-8.6-hashids")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (home-page "http://hashids.org/")
    (synopsis
     "Hashids generates short, unique, non-sequential ids from numbers.")
    (description
     "This is a Haskell port of the Hashids library. It is typically used to encode numbers to a format suitable to appear in visible places like urls. It converts numbers like 347 into strings like yr8, or a list of numbers like [27, 986] into 3kTMd. You can also decode those ids back. This is useful in bundling several parameters into one. ")
    (license license:expat)))

haskell-8.6-hashids

(define-public haskell-8.6-hexml
  (package
    (name "haskell-8.6-hexml")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-extra)))
    (home-page "https://github.com/ndmitchell/hexml#readme")
    (synopsis "XML subset DOM parser")
    (description
     "An XML DOM-style parser, that only parses a subset of XML, but is designed to be fast.")
    (license license:bsd-3)))

haskell-8.6-hexml

(define-public haskell-8.6-hspec-core
  (package
    (name "haskell-8.6-hspec-core")
    (version "2.7.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-core/hspec-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08vk8588lap00hsln8zl64dazbb28lzk4b4h5vnm7xvhg7r21k1c"))))
    (properties `((upstream-name . "hspec-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "076bd7x55rzindnlgkzqm9810nh0g29cx43pwdhsyzpzjmpb4rq6")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-quickcheck-io)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-setenv)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-tf-random)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "This package exposes internal types and functions that can be used to extend Hspec's functionality.")
    (license license:expat)))

haskell-8.6-hspec-core

(define-public haskell-8.6-hspec-meta
  (package
    (name "haskell-8.6-hspec-meta")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-call-stack)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-clock)
                  (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-quickcheck-io)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-setenv)))
    (home-page "http://hspec.github.io/")
    (synopsis "A version of Hspec which is used to test Hspec itself")
    (description "A stable version of Hspec which is used to test the
in-development version of Hspec.")
    (license license:expat)))

haskell-8.6-hspec-meta

(define-public haskell-8.6-interpolation
  (package
    (name "haskell-8.6-interpolation")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-interpolation

(define-public haskell-8.6-latex
  (package
    (name "haskell-8.6-latex")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-latex

(define-public haskell-8.6-mbox
  (package
    (name "haskell-8.6-mbox")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-time-locale-compat)))
    (home-page "https://hackage.haskell.org/package/mbox")
    (synopsis "Read and write standard mailbox files.")
    (description "Read and write standard mailbox (mboxrd) files.")
    (license license:bsd-3)))

haskell-8.6-mbox

(define-public haskell-8.6-midair
  (package
    (name "haskell-8.6-midair")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)))
    (home-page "https://hackage.haskell.org/package/midair")
    (synopsis "Hot-swappable FRP")
    (description
     "FRP for livecoding. You can hot-swap pieces or the whole of an
FRP graph while it's running.

Small examples are in \"Midair.Examples\"

The API may change a lot in the future.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-midair

(define-public haskell-8.6-non-empty
  (package
    (name "haskell-8.6-non-empty")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-non-empty

(define-public haskell-8.6-non-negative
  (package
    (name "haskell-8.6-non-negative")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
    (home-page "http://code.haskell.org/~thielema/non-negative/")
    (synopsis "Non-negative numbers")
    (description
     "Provides a class for non-negative numbers,
a wrapper which can turn any ordered numeric type into a member of that class,
and a lazy number type for non-negative numbers
(a generalization of Peano numbers).
This library is used by the @@event-list@@ package.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.6-non-negative

(define-public haskell-8.6-optparse-simple
  (package
    (name "haskell-8.6-optparse-simple")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-simple/optparse-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1r00hkri42vyx552l8hcd1779fxiyl9w4k0pql915zsprirn8w82"))))
    (properties `((upstream-name . "optparse-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-build-example")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-githash)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)))
    (home-page "https://github.com/fpco/optparse-simple#readme")
    (synopsis "Simple interface to optparse-applicative")
    (description
     "Please see the README at <https://www.stackage.org/package/optparse-simple>")
    (license license:bsd-3)))

haskell-8.6-optparse-simple

(define-public haskell-8.6-pathtype
  (package
    (name "haskell-8.6-pathtype")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-tagged)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-pathtype

(define-public haskell-8.6-pooled-io
  (package
    (name "haskell-8.6-pooled-io")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-concurrent-split)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-unsafe)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-pooled-io

(define-public haskell-8.6-probability
  (package
    (name "haskell-8.6-probability")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/probability/probability-"
                    version ".tar.gz"))
              (sha256
               (base32
                "12qzgn9jb9hvbpbkb75ad55yhmhai945rvdbamx6zspbrjlsb9sz"))))
    (properties `((upstream-name . "probability") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fsplitbase")
       #:cabal-revision
       ("1" "02syay6fwydspqkv3r17lmgmqzzg98l3rwgbf4r9saw3cnwipqxp")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-probability

(define-public haskell-8.6-repa-algorithms
  (package
    (name "haskell-8.6-repa-algorithms")
    (version "3.4.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/repa-algorithms/repa-algorithms-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1bhg1vr85j9mqm9lg1577dvlgzdbkh9f48h0ll6h03jfw7knyn6y"))))
    (properties `((upstream-name . "repa-algorithms") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "08v0jrwfrpvvs89kir79pzbl74wsan991kpxbxpj7c62nkgfgwgi")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-repa)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://repa.ouroborus.net")
    (synopsis "Algorithms using the Repa array library.")
    (description "Reusable algorithms using the Repa array library.")
    (license license:bsd-3)))

haskell-8.6-repa-algorithms

(define-public haskell-8.6-repa-io
  (package
    (name "haskell-8.6-repa-io")
    (version "3.4.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/repa-io/repa-io-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1nm9kfin6fv016r02l74c9hf8pr1rz7s33i833cqpyw8m6bcmnxm"))))
    (properties `((upstream-name . "repa-io") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("5" "1v9bza21a3h0pkaxs628jjfli157d44i757da250fxwwamk8sg88")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-bmp)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-old-time)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-repa)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-vector)))
    (home-page "http://repa.ouroborus.net")
    (synopsis "Read and write Repa arrays in various formats.")
    (description "Read and write Repa arrays in various formats.")
    (license license:bsd-3)))

haskell-8.6-repa-io

(define-public haskell-8.6-simple-cmd-args
  (package
    (name "haskell-8.6-simple-cmd-args")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-cmd-args/simple-cmd-args-"
                    version ".tar.gz"))
              (sha256
               (base32
                "097b8qv0755p0iq6bcw6ndvvvv017x9hgf6l2zvb3sgqdg9wlj88"))))
    (properties `((upstream-name . "simple-cmd-args") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-optparse-applicative)))
    (home-page "https://github.com/juhp/simple-cmd-args")
    (synopsis "Simple command args parsing and execution")
    (description
     "This is a small wrapper over optparse-applicative which
allows combining args parsers directly with IO commands.
For subcommands this can avoid type boilerplate.
It also provides some compact aliases for options with their Mod's.")
    (license license:bsd-3)))

haskell-8.6-simple-cmd-args

(define-public haskell-8.6-spreadsheet
  (package
    (name "haskell-8.6-spreadsheet")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-spreadsheet

(define-public haskell-8.6-sql-words
  (package
    (name "haskell-8.6-sql-words")
    (version "0.1.6.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/sql-words/sql-words-" version
                    ".tar.gz"))
              (sha256
               (base32
                "11z6g85dzrvkhnz0g6rhv5s2ssqcyyzbi2pp5rwzp30xp0ivsx95"))))
    (properties `((upstream-name . "sql-words") (hidden? . #f)))
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
                     haskell-8.6-quickcheck-simple)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "SQL keywords data constructors into OverloadedString")
    (description
     "This package contiains SQL keywords constructors defined as
OverloadedString literals and helper functions to concate these.")
    (license license:bsd-3)))

haskell-8.6-sql-words

(define-public haskell-8.6-storable-record
  (package
    (name "haskell-8.6-storable-record")
    (version "0.0.4.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/storable-record/storable-record-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1waj81810ywbrzizifsrjd0n3803scl8sr248z9nlrc94fz8vg58"))))
    (properties `((upstream-name . "storable-record") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildtests")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-storable-record

(define-public haskell-8.6-test-framework-hunit
  (package
    (name "haskell-8.6-test-framework-hunit")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)))
    (home-page "https://batterseapower.github.io/test-framework/")
    (synopsis "HUnit support for the test-framework package.")
    (description "HUnit support for the test-framework package.")
    (license license:bsd-3)))

haskell-8.6-test-framework-hunit

(define-public haskell-8.6-test-framework-leancheck
  (package
    (name "haskell-8.6-test-framework-leancheck")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-leancheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)))
    (home-page "https://github.com/rudymatela/test-framework-leancheck#readme")
    (synopsis "LeanCheck support for test-framework.")
    (description
     "LeanCheck support for test-framework.

This package can be used to incorporate LeanCheck tests
into test-framework test suites by means of the
@@Test.Framework.Providers.LeanCheck.testProperty@@ function.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-8.6-test-framework-leancheck

(define-public haskell-8.6-test-framework-quickcheck2
  (package
    (name "haskell-8.6-test-framework-quickcheck2")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-random)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-test-framework)))
    (home-page "http://haskell.github.io/test-framework/")
    (synopsis "QuickCheck-2 support for the test-framework package.")
    (description
     "Allows @@QuickCheck-2@@ properties to be used with the </package/test-framework test-framework package>.")
    (license license:bsd-3)))

haskell-8.6-test-framework-quickcheck2

(define-public haskell-8.6-tfp
  (package
    (name "haskell-8.6-tfp")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage002)
                     haskell-8.6-QuickCheck)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-tfp

(define-public haskell-8.6-th-reify-many
  (package
    (name "haskell-8.6-th-reify-many")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000) haskell-8.6-mtl)
                  (@ (gnu packages stackage ghc-8.6 stage003) haskell-8.6-safe)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-th-expand-syns)))
    (home-page "http://github.com/mgsloan/th-reify-many")
    (synopsis "Recurseively reify template haskell datatype info")
    (description
     "@@th-reify-many@@ provides functions for recursively reifying top
level declarations.  The main intended use case is for enumerating
the names of datatypes reachable from an initial datatype, and
passing these names to some function which generates instances.")
    (license license:bsd-3)))

haskell-8.6-th-reify-many

(define-public haskell-8.6-tsv2csv
  (package
    (name "haskell-8.6-tsv2csv")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-HUnit)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-split)))
    (home-page "https://hackage.haskell.org/package/tsv2csv")
    (synopsis "Convert tsv to csv")
    (description "Convert tab-delimited text to Excel-style comma-delimited.")
    (license license:bsd-3)))

haskell-8.6-tsv2csv

(define-public haskell-8.6-unicode
  (package
    (name "haskell-8.6-unicode")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-unicode

(define-public haskell-8.6-universe-dependent-sum
  (package
    (name "haskell-8.6-universe-dependent-sum")
    (version "1.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-dependent-sum/universe-dependent-sum-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mfvfh7rnk8lnd5lgxbhi40y31sar11dmgh5s7g2kgsprzmg1qpi"))))
    (properties `((upstream-name . "universe-dependent-sum") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1vh93f1nq72fwnrhl9r8qwwiwr26l9pgcmdic56j2b2iz3imnfhc")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-dependent-sum)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-th-abstraction)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from dependent-sum")
    (description
     "A class for finite and recursively enumerable types and some helper functions for enumerating them
defined in @@universe-base@@ package:

@@
class Universe a where universe :: [a]
class Universe a => Finite a where universeF :: [a]; universeF = universe
@@

This package adds

@@
class UniverseSome f where universeSome :: [Some f]
class UniverseSome f => FiniteSome f where universeFSome :: [Some f]; universeFSome = universe
@@

classes.")
    (license license:bsd-3)))

haskell-8.6-universe-dependent-sum

(define-public haskell-8.6-universe-instances-base
  (package
    (name "haskell-8.6-universe-instances-base")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-base/universe-instances-base-"
                    version ".tar.gz"))
              (sha256
               (base32
                "17g4xf7zcxd9a2am0p401b0l87ynxwpm3c2lqc4vmw4sz071kccb"))))
    (properties `((upstream-name . "universe-instances-base") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "03g5vpmmymfjx4p1l2v275vn2dknb7m91wmh01aw8f26224f7sjw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis "Universe instances for types from the base package")
    (description
     "__DEPRECATED:__ instances are moved to @@universe-base@@ package
@@universe-base@@ package provides instances for types from GHC-boot libraries.")
    (license license:bsd-3)))

haskell-8.6-universe-instances-base

(define-public haskell-8.6-universe-instances-trans
  (package
    (name "haskell-8.6-universe-instances-trans")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-instances-trans/universe-instances-trans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0dp37rb61g5mqj4kfkgi6zxcjhrm9npz197sksqwg1skgjdgbbn6"))))
    (properties `((upstream-name . "universe-instances-trans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "0fyhcfkriq4zcvqrr33x5ywxxmpyjjy0bz78pq2x38vpgqagiz4p")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis
     "Universe instances for types from the transformers and mtl packages")
    (description
     "__DEPRECATED:__ instances are moved to @@universe-base@@ package

@@universe-base@@ package provides instances for types from GHC-boot libraries.")
    (license license:bsd-3)))

haskell-8.6-universe-instances-trans

(define-public haskell-8.6-universe-reverse-instances
  (package
    (name "haskell-8.6-universe-reverse-instances")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/universe-reverse-instances/universe-reverse-instances-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pdmv146ap0dh38mxhjf11jx3fbr9im7mc0zxb3bsnwpfrv1kfqd"))))
    (properties `((upstream-name . "universe-reverse-instances")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1zkpcipbzhxricr94pkhn4cqmjcnsxx301kxarx798qr9il37qzw")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-universe-base)))
    (home-page "https://github.com/dmwit/universe")
    (synopsis
     "Instances of standard classes that are made possible by enumerations")
    (description
     "For example this package provides a @@Eq (a -> b)@@ instance:

@@
instance (Finite a, Eq b) => Eq (a -> b) where
f == g = and [f x == g x | x <- universeF]
@@")
    (license license:bsd-3)))

haskell-8.6-universe-reverse-instances

(define-public haskell-8.6-xml-basic
  (package
    (name "haskell-8.6-xml-basic")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-data-accessor)
                  (@ (gnu packages stackage ghc-8.6 stage001)
                     haskell-8.6-explicit-exception)
                  (@ (gnu packages stackage ghc-8.6 stage000)
                     haskell-8.6-semigroups)
                  (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-xml-basic

(define-public haskell-8.6-xml-to-json-fast
  (package
    (name "haskell-8.6-xml-to-json-fast")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-tagsoup)))
    (home-page "https://github.com/sinelaw/xml-to-json-fast")
    (synopsis
     "Fast, light converter of xml to json capable of handling huge xml files")
    (description
     "Assumes input xml is valid, which allows constant memory usage (<4 MB) and faster parsing. For a fully-featured, but memory-bound converter see the xml-to-json package.

If not input file is given, reads from stdin (so it can be used in a unix pipe chain).")
    (license license:expat)))

haskell-8.6-xml-to-json-fast

(define-public haskell-8.6-youtube
  (package
    (name "haskell-8.6-youtube")
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
    (inputs (list (@ (gnu packages stackage ghc-8.6 stage003)
                     haskell-8.6-utility-ht)))
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

haskell-8.6-youtube

