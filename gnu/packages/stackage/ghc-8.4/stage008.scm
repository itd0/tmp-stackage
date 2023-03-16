;;; generated file
(define-module (gnu packages stackage ghc-8.4 stage008)
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
(define-public haskell-8.4-Agda
  (package
    (name "haskell-8.4-Agda")
    (version "2.5.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Agda/Agda-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "07wvawpfjhx3gw2w53v27ncv1bl0kkx08wkm6wzxldbslkcasign"))))
    (properties `((upstream-name . "Agda") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-cpphs" "-f-debug" "-f-enable-cluster-counting")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-EdisonCore)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-alex)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-boxes)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-data-hash)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-edit-distance)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-equivalence)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-filemanip)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-geniplate-mirror)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-gitrev)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-happy)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hashtables)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-ieee754)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-murmur-hash)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uri-encode)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-zlib)))
    (propagated-inputs (list (@ (gnu packages compression) zlib-1.2.12)))
    (home-page "http://wiki.portal.chalmers.se/agda/")
    (synopsis
     "A dependently typed functional programming language and proof assistant")
    (description
     "Agda is a dependently typed functional programming language: It has
inductive families, which are similar to Haskell's GADTs, but they
can be indexed by values and not just types. It also has
parameterised modules, mixfix operators, Unicode characters, and an
interactive Emacs interface (the type checker can assist in the
development of your code).

Agda is also a proof assistant: It is an interactive system for
writing and checking proofs. Agda is based on intuitionistic type
theory, a foundational system for constructive mathematics developed
by the Swedish logician Per Martin-L&#xf6;f. It has many
similarities with other proof assistants based on dependent types,
such as Coq, Epigram and NuPRL.

This package includes both a command-line program (agda) and an
Emacs mode. If you want to use the Emacs mode you can set it up by
running @@agda-mode setup@@ (see the README).

Note that the Agda package does not follow the package versioning
policy, because it is not intended to be used by third-party
packages.")
    (license (license "FSDG-compatible" "OtherLicense" ""))))

haskell-8.4-Agda

(define-public haskell-8.4-Hoed
  (package
    (name "haskell-8.4-Hoed")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/Hoed/Hoed-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1rzlqd1sha6p1cw5w0gpf1w7qsmc6088sjnq1kq44mp12ybxrxm8"))))
    (properties `((upstream-name . "Hoed") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cereal-text)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-cereal-vector)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-libgraph)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-open-browser)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-regex-tdfa-text)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-strict)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-terminal-size)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-vector-th-unbox)))
    (home-page "https://github.com/MaartenFaddegon/Hoed")
    (synopsis "Lightweight algorithmic debugging.")
    (description
     "Hoed is a tracer and debugger for the programming language Haskell.

To locate a defect with Hoed you annotate suspected functions and compile as usual. Then you run your program, information about the annotated functions is collected. Finally you connect to a debugging session.
")
    (license license:bsd-3)))

haskell-8.4-Hoed

(define-public haskell-8.4-TCache
  (package
    (name "haskell-8.4-TCache")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/TCache/TCache-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1gdp78v359jf9hzwdkips7z99s9lvi21vw0l88dgl9yirmgv8d7i"))))
    (properties `((upstream-name . "TCache") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-RefSerialize)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-hashtables)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-old-time)))
    (home-page "https://hackage.haskell.org/package/TCache")
    (synopsis "A Transactional cache with user-defined persistence")
    (description
     "TCache is a transactional cache with configurable persitence. It allows conventional
STM transactions for objects that syncronize  with their user-defined storages.
State in memory and into permanent storage is transactionally coherent.

It has interface defined for Amazon WS and Yesod Persistent backends defined in tcache-<backend>
packages.
Persistent is a multi-backend interface for SQL and non SQL databases such in Mongo-db

The package implements serializable STM references, access by key and by record field value, triggers,
full text and field indexation, default serialization and a query language based on record fields

Since the STM references can be included in data structures and serialized, this is right
for graph databases and other NoSQL databases.

0.12.0 space in index data in indexQuery.hs and IndexText.hs triggered errors in the AWS backend.
The space has been changed by '-'. So rename the \"index *\" files in the TCache folder
in order to be recognized.

0.11.0.0 added setIndexParsist to define persistence for indexes by type. started the addition of readDBRefs, readResources and so on for simultaneous read, writes and deletes of
objects of the same type.

0.10.2.0 Added setDefaultPersist and modified the signature of setPersist in Data.TCache.DefaultPersistence.
Fixed issues with ghc 7.6.3

0.10  version add memoization and a persistent and transactional collection/queue.

0.10.0.8 subversion add cachedByKeySTM

0.10.0.9 fixed an error in clearSyncChacheProc and SynWrite Asyncronous that checked the cache continuously

See \"Data.TCache\" for details

In this release:

Dropped Data.Hashtable (deprecated). Now it uses the package hashtables")
    (license license:bsd-3)))

haskell-8.4-TCache

(define-public haskell-8.4-aeson
  (package
    (name "haskell-8.4-aeson")
    (version "1.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/aeson/aeson-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1i1ig840fvsb1lnklcv32zsc0zscirc301lw1mpfxhc6h4pk0gw4"))))
    (properties `((upstream-name . "aeson") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-f-fast" "-f-bytestring-builder" "-f-cffi")
       #:cabal-revision
       ("2" "1g2r14ij58yb7qzqsjpwjz1w6v88082bprwl35fa0a5w1fzgiivb")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-th-abstraction)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-time-locale-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-uuid-types)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/bos/aeson")
    (synopsis "Fast JSON parsing and encoding")
    (description
     "A JSON parsing and encoding library optimized for ease of use
and high performance.

To get started, see the documentation for the @@Data.Aeson@@ module
below.

(A note on naming: in Greek mythology, Aeson was the father of Jason.)")
    (license license:bsd-3)))

haskell-8.4-aeson

(define-public haskell-8.4-alerts
  (package
    (name "haskell-8.4-alerts")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/alerts/alerts-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0s6af3267qfg18zsy0fb43hfwf3dym2zpr864n05xwgzmg9qwhaj"))))
    (properties `((upstream-name . "alerts") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)))
    (home-page "https://github.com/alx741/alerts#readme")
    (synopsis "Alert messages for web applications")
    (description "Alert messages for web applications:

* Bootstrap 3

* Bootstrap 4

* Foundation 5")
    (license license:bsd-3)))

haskell-8.4-alerts

(define-public haskell-8.4-attoparsec-binary
  (package
    (name "haskell-8.4-attoparsec-binary")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)))
    (home-page "https://hackage.haskell.org/package/attoparsec-binary")
    (synopsis "Binary processing extensions to Attoparsec.")
    (description
     "This package adds a collection of helper functions to make
the task dealing with binary data of varying endianness from within an
Attoparsec parser easier.")
    (license license:bsd-3)))

haskell-8.4-attoparsec-binary

(define-public haskell-8.4-attoparsec-expr
  (package
    (name "haskell-8.4-attoparsec-expr")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)))
    (home-page "https://hackage.haskell.org/package/attoparsec-expr")
    (synopsis "Port of parsec's expression parser to attoparsec.")
    (description "Port of parsec's expression parser to attoparsec.")
    (license license:bsd-3)))

haskell-8.4-attoparsec-expr

(define-public haskell-8.4-attoparsec-iso8601
  (package
    (name "haskell-8.4-attoparsec-iso8601")
    (version "1.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/attoparsec-iso8601/attoparsec-iso8601-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0hj10w15qp2z5bz2v4xahhmbgzclpyfi5l2sv97wqycysg9gp7s9"))))
    (properties `((upstream-name . "attoparsec-iso8601") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-developer" "-f-fast")
       #:cabal-revision
       ("3" "0f3g49dnyyhlwgdiiwpi337v9x4n96ih9vl4jia0xa1lciwrb4vk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)))
    (home-page "https://github.com/bos/aeson")
    (synopsis "Parsing of ISO 8601 dates, originally from aeson.")
    (description "Parsing of ISO 8601 dates, originally from aeson.")
    (license license:bsd-3)))

haskell-8.4-attoparsec-iso8601

(define-public haskell-8.4-barrier
  (package
    (name "haskell-8.4-barrier")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-svg)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/philopon/barrier")
    (synopsis "Shields.io style badge generator")
    (description
     "see example: <https://github.com/philopon/barrier/blob/master/examples/example.hs>")
    (license license:expat)))

haskell-8.4-barrier

(define-public haskell-8.4-bits
  (package
    (name "haskell-8.4-bits")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bits/bits-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "14ww8zcyis6kfli28bb9i5dmmj7k1j1dlzpwnfrkzd8kp5xmazk5"))))
    (properties `((upstream-name . "bits") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-ftest-doctests")
       #:cabal-revision
       ("5" "012qycmsfz5l6y82d3zgjmp1k3pgvhlpjdk6rwlpc1wlfbpdqiaw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-bytes)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-cabal-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)))
    (home-page "http://github.com/ekmett/bits")
    (synopsis "Various bit twiddling and bitwise serialization primitives")
    (description "Various bit twiddling and bitwise serialization primitives")
    (license license:bsd-3)))

haskell-8.4-bits

(define-public haskell-8.4-blaze-bootstrap
  (package
    (name "haskell-8.4-blaze-bootstrap")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)))
    (home-page "http://github.com/agrafix/blaze-bootstrap")
    (synopsis "Blaze helper functions for bootstrap pages")
    (description "Simplify building blaze and bootstrap powered pages")
    (license license:expat)))

haskell-8.4-blaze-bootstrap

(define-public haskell-8.4-boolean-like
  (package
    (name "haskell-8.4-boolean-like")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/boolean-like/boolean-like-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1f2qjqjz13w6gq80qymq57917k5aknhxbx4lzpnn30frlqhpp93c"))))
    (properties `((upstream-name . "boolean-like") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "http://github.com/Shou/boolean-like")
    (synopsis "Logical combinatory operations dealing with datatypes
representing booleans by their constructors.")
    (description
     "Boolean-like logical combinatory operations under typeclasses
Andlike, Orlike, and Xorlike and a typeclass Falsifier for datatypes with
unary false-like values (e.g. Nothing, []).")
    (license license:bsd-3)))

haskell-8.4-boolean-like

(define-public haskell-8.4-cairo
  (package
    (name "haskell-8.4-cairo")
    (version "0.13.5.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cairo/cairo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1wxylv4d8120ri0vgar168ikqa9m6533ipdwi38qlmxmw20ws2j2"))))
    (properties `((upstream-name . "cairo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fcairo_pdf" "-fcairo_ps" "-fcairo_svg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages gtk) cairo)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-gtk2hs-buildtools)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the Cairo library.")
    (description
     "Cairo is a library to render high quality vector graphics. There
exist various backends that allows rendering to Gtk windows, PDF,
PS, PNG and SVG documents, amongst others.")
    (license license:bsd-3)))

haskell-8.4-cairo

(define-public haskell-8.4-cases
  (package
    (name "haskell-8.4-cases")
    (version "0.1.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cases/cases-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1ad8b4rvz6lnnhdk63xm5rpk2dwj97whfd69gvnw5ajifwpn7kwy"))))
    (properties `((upstream-name . "cases") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-loch-th)))
    (home-page "https://github.com/nikita-volkov/cases ")
    (synopsis "A converter for spinal, snake and camel cases")
    (description
     "A parser-based converter library for spinal, snake and camel cases.")
    (license license:expat)))

haskell-8.4-cases

(define-public haskell-8.4-cassava
  (package
    (name "haskell-8.4-cassava")
    (version "0.5.1.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cassava/cassava-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0xs2c5lpy0g5lsmp2cx0dm5lnxij7cgry6xd5gsn3bfdlap8lb3n"))))
    (properties `((upstream-name . "cassava") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-bytestring--lt-0_10_4")
       #:cabal-revision
       ("3" "0q9hwcn5jr5vs52n246qw8iw9jmc1d3dla071hhc0hdpck4igq6m")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Only)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-text-short)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/hvr/cassava")
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

haskell-8.4-cassava

(define-public haskell-8.4-config-ini
  (package
    (name "haskell-8.4-config-ini")
    (version "0.2.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/config-ini/config-ini-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1820w4y8k0qrlilrizkqckwiyli0x4qcdjmagvcngy5bfsw6fk9n"))))
    (properties `((upstream-name . "config-ini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-enable-doctests")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
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

haskell-8.4-config-ini

(define-public haskell-8.4-configurator
  (package
    (name "haskell-8.4-configurator")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-unix-compat)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
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

haskell-8.4-configurator

(define-public haskell-8.4-courier
  (package
    (name "haskell-8.4-courier")
    (version "0.1.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/courier/courier-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1lrlqdxd19yj05hhvla1nc4a81rqkf2r4a6sffqlgqrxyd7ng7mc"))))
    (properties `((upstream-name . "courier") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-async)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-hslogger)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage007) haskell-8.4-uuid)))
    (home-page "http://github.com/hargettp/courier")
    (synopsis "A message-passing library for simplifying network applications")
    (description
     "Inspired by Erlang's simple message-passing facilities, courier provides roughly similar
capabilities. Applications simply create one or more endpoints,
bind each to a transport using a given name, then can freely
send / receive messages to other endpoints just by referencing the name each endpoint
bound to its transport.

A primary driver of this package's design is separation of concerns: many algorithms
(especially for distributed applications) depend upon a message-passing foundation,
but the algorithms are sufficiently complex that the details of how those messages
are transmitted among nodes are best hidden away and solved separately from
the distributed algorithm itself.  With this in mind, this package aims
to provide a variety of transports as well as support for common communication
idioms (e.g., in order message delivery, selective out of order message delivery,
synchronous RPC, etc.).

Applications may process messages in the order received at an endpoint, or use
selective message reception to process the first message arriving at an endpoint
that also matches a provided selection function. Through selective message reception,
applications may approximate the style of an Erlang application, and enjoy better
composability of message reception with multiple independent dispatch routines or
message pumps.")
    (license license:expat)))

haskell-8.4-courier

(define-public haskell-8.4-cpuinfo
  (package
    (name "haskell-8.4-cpuinfo")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cpuinfo/cpuinfo-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0mans1i26w3rl1vvf9isn8y6lvmn9dlf2c0znbgjxj605jcy7cyi"))))
    (properties `((upstream-name . "cpuinfo") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)))
    (home-page "https://github.com/TravisWhitaker/cpuinfo")
    (synopsis "Haskell Library for Checking CPU Information")
    (description "Haskell Library for Checking CPU Information")
    (license license:expat)))

haskell-8.4-cpuinfo

(define-public haskell-8.4-cron
  (package
    (name "haskell-8.4-cron")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/cron/cron-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0l9jigxr271gyf8a69igag5rckvcngv6h93jkf02d43jvqxza6lc"))))
    (properties `((upstream-name . "cron") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mtl-compat)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "http://github.com/michaelxavier/cron")
    (synopsis "Cron datatypes and Attoparsec parser")
    (description
     "Cron data structure and Attoparsec parser. The idea is to embed it in larger
systems which want to roll their own scheduled tasks in a format that people
are used to.
'System.Cron' is where all the interesting datatypes live. You will also find
'scheduleMatches', which you can use to compare a time against a
'CronSchedule' to see if an action needs to be performed.  System.Cron.Parser
is where you will find the parsers `cronSchedule`, `crontabEntry` and
`cronTab`. To parse individual schedules up to full crontab files.")
    (license license:expat)))

haskell-8.4-cron

(define-public haskell-8.4-css-text
  (package
    (name "haskell-8.4-css-text")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)))
    (home-page "https://github.com/yesodweb/css-text.git#readme")
    (synopsis "CSS parser and renderer.")
    (description
     "Please see the README and generated docs at <https://www.stackage.org/package/css-text>")
    (license license:expat)))

haskell-8.4-css-text

(define-public haskell-8.4-dataurl
  (package
    (name "haskell-8.4-dataurl")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/dataurl/dataurl-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1chgcq2vc5kya8zmi0ir4589fph2rdssw1ivnkq209g7vd42prxi"))))
    (properties `((upstream-name . "dataurl") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-base64-bytestring)))
    (home-page "http://github.com/agrafix/dataurl#readme")
    (synopsis "Handle data-urls")
    (description "Please see README.md")
    (license license:expat)))

haskell-8.4-dataurl

(define-public haskell-8.4-edit-distance-vector
  (package
    (name "haskell-8.4-edit-distance-vector")
    (version "1.0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/edit-distance-vector/edit-distance-vector-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07qgc8dyi9kkzkd3xcd78wdlljy0xwhz65b4r2qg2piidpcdvpxp"))))
    (properties `((upstream-name . "edit-distance-vector") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-quickcheck-instances)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/thsutton/edit-distance-vector")
    (synopsis "Calculate edit distances and edit scripts between vectors.")
    (description
     "An implementation of the Wagner–Fischer dynamic programming algorithm to
find the optimal edit script and cost between two sequences.

The implementation in this package is specialised to sequences represented
with \"Data.Vector\" but is otherwise agnostic to:

* The type of values in the vectors;

* The type representing edit operations; and

* The type representing the cost of operations.
")
    (license license:bsd-3)))

haskell-8.4-edit-distance-vector

(define-public haskell-8.4-ekg-statsd
  (package
    (name "haskell-8.4-ekg-statsd")
    (version "0.2.4.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ekg-statsd/ekg-statsd-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1nvsiblha1fzykvfaq1s0fyvfmhm32wvxdsfkn9pqd6dl5ivyx2y"))))
    (properties `((upstream-name . "ekg-statsd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0mrar804w2m57zg9bd0qkp4vbkzmgi46478v6z7qcz7qpd8vml9d")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-ekg-core)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/tibbe/ekg-statsd")
    (synopsis "Push metrics to statsd")
    (description
     "This library lets you push system metrics to a statsd server.")
    (license license:bsd-3)))

haskell-8.4-ekg-statsd

(define-public haskell-8.4-ghc-prof
  (package
    (name "haskell-8.4-ghc-prof")
    (version "1.4.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ghc-prof/ghc-prof-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0cpyzfyfkq6c17xpccgibjpq8j0l4w33mbpivim3kha7k76ilbg4"))))
    (properties `((upstream-name . "ghc-prof") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dump")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-scientific)))
    (home-page "https://github.com/maoe/ghc-prof")
    (synopsis "Library for parsing GHC time and allocation profiling reports")
    (description
     "ghc-prof is a library for parsing GHC time and allocation profiling reports.")
    (license license:bsd-3)))

haskell-8.4-ghc-prof

(define-public haskell-8.4-glib
  (package
    (name "haskell-8.4-glib")
    (version "0.13.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/glib/glib-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1sz8mvac39sxj7skw8zasbp6srm4k92223l29lll1125d8n0cwaf"))))
    (properties `((upstream-name . "glib") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fclosure_signals")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages glib) glib-with-documentation)
                  (@ (gnu packages glib) gobject-introspection-next)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-gtk2hs-buildtools)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages pkg-config) %pkg-config)))
    (home-page "http://projects.haskell.org/gtk2hs/")
    (synopsis "Binding to the GLIB library for Gtk2Hs.")
    (description
     "GLib is a collection of C data structures and utility functions
for the GObject system, main loop implementation, for strings and
common data structures dealing with Unicode. This package only binds
as much functionality as required to support the packages that
wrap libraries that are themselves based on GLib.")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-glib

(define-public haskell-8.4-hbeanstalk
  (package
    (name "haskell-8.4-hbeanstalk")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hbeanstalk/hbeanstalk-" version
                    ".tar.gz"))
              (sha256
               (base32
                "13xcia1nnayhr22zi1wzgn8qs403ib4n2zikpxd3xnzy33yrgbzy"))))
    (properties `((upstream-name . "hbeanstalk") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)))
    (home-page "http://github.com/scsibug/hbeanstalk/")
    (synopsis "Client for the beanstalkd workqueue service.")
    (description "This is the hbeanstalk library.  It provides a client
interface to a beanstalkd server, allowing Haskell to be
a producer and/or a consumer of work items.  Let Haskell
do your heavy lifting!")
    (license license:bsd-3)))

haskell-8.4-hbeanstalk

(define-public haskell-8.4-highlighting-kate
  (package
    (name "haskell-8.4-highlighting-kate")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Diff)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-blaze-html)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
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

haskell-8.4-highlighting-kate

(define-public haskell-8.4-hostname-validate
  (package
    (name "haskell-8.4-hostname-validate")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)))
    (home-page "https://hackage.haskell.org/package/hostname-validate")
    (synopsis "Validate hostnames e.g. localhost or foo.co.uk.")
    (description
     "Validate hostnames e.g. localhost or foo.co.uk. See also RFC 1123, RFC 952, and RFC 1035.")
    (license license:bsd-3)))

haskell-8.4-hostname-validate

(define-public haskell-8.4-hp2pretty
  (package
    (name "haskell-8.4-hp2pretty")
    (version "0.8.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hp2pretty/hp2pretty-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1j3rn4xjpyqnl8vcsc9pyj03mwpilq20g0z8brh3prsvhjb9gl9g"))))
    (properties `((upstream-name . "hp2pretty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-floatshow)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)))
    (home-page "https://code.mathr.co.uk/hp2pretty")
    (synopsis "generate pretty graphs from heap profiles")
    (description
     "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with
the aims of being maintainable, with more flexible output, and
more beautiful output.  Currently hp2pretty outputs Scalable
Vector Graphics (SVG) only, though PostScript (PS) is planned.
Not all of hp2ps' options are implemented yet in hp2pretty.

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

haskell-8.4-hp2pretty

(define-public haskell-8.4-hspec-discover
  (package
    (name "haskell-8.4-hspec-discover")
    (version "2.5.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-discover/hspec-discover-"
                    version ".tar.gz"))
              (sha256
               (base32
                "04aidzi91ccr9bygmfkjzshz34z9vh8wvqj4zinx2clxq6r7gqfz"))))
    (properties `((upstream-name . "hspec-discover") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-hspec-meta)))
    (home-page "http://hspec.github.io/")
    (synopsis "Automatically discover and run Hspec tests")
    (description "Automatically discover and run Hspec tests

<http://hspec.github.io/hspec-discover.html>")
    (license license:expat)))

haskell-8.4-hspec-discover

(define-public haskell-8.4-html-entities
  (package
    (name "haskell-8.4-html-entities")
    (version "1.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/html-entities/html-entities-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1ryfslp60s0d0ygmnxfgw9p8s7l2xq1i5kmj86g2ghdljf8hq6hn"))))
    (properties `((upstream-name . "html-entities") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/nikita-volkov/html-entities")
    (synopsis "A codec library for HTML-escaped text and HTML-entities")
    (description
     "This library provides the following APIs for coding and decoding of
HTML-escaped text:

* \\\"attoparsec\\\" parser

* Text decoder

* Encoding text builder")
    (license license:expat)))

haskell-8.4-html-entities

(define-public haskell-8.4-hweblib
  (package
    (name "haskell-8.4-hweblib")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)))
    (home-page "http://github.com/aycanirican/hweblib")
    (synopsis "Haskell Web Library")
    (description
     "The library includes attoparsec based incremental parsers for
rfc2616 (http) and rfc3986 (uri), rfc2045-46 (mime). The package
name will subject to change due to broad range of rfc coverage.")
    (license license:bsd-3)))

haskell-8.4-hweblib

(define-public haskell-8.4-inflections
  (package
    (name "haskell-8.4-inflections")
    (version "0.4.0.3")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/inflections/inflections-"
                    version ".tar.gz"))
              (sha256
               (base32
                "028dj9pgs5g6qb9x1hc8r4rn0rznr1ynn79vln48k2llyf2r38dx"))))
    (properties `((upstream-name . "inflections") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-dev")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/stackbuilders/inflections-hs")
    (synopsis "Inflections library for Haskell")
    (description
     "Inflections provides methods for singularization, pluralization,
dasherizing, etc. The library is based on Rails' inflections library.")
    (license license:expat)))

haskell-8.4-inflections

(define-public haskell-8.4-ini
  (package
    (name "haskell-8.4-ini")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ini/ini-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1n9wsl7nz910bc8jx9ps7pvpql4hlnryjkqbdpfq0phjb9sf7fzw"))))
    (properties `((upstream-name . "ini") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0gfikdal67aws20i5r4wg4r0lgn844glykcn3nnmbmyvwsks049l")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://github.com/chrisdone/ini")
    (synopsis "Quick and easy configuration files in the INI format.")
    (description "Quick and easy configuration files in the INI format.")
    (license license:bsd-3)))

haskell-8.4-ini

(define-public haskell-8.4-irc
  (package
    (name "haskell-8.4-irc")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/irc")
    (synopsis "A small library for parsing IRC messages.")
    (description "A set of combinators and types for parsing IRC messages.")
    (license license:bsd-3)))

haskell-8.4-irc

(define-public haskell-8.4-language-ecmascript
  (package
    (name "haskell-8.4-language-ecmascript")
    (version "0.19")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/language-ecmascript/language-ecmascript-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13v5ghw8qc4paacn34skgwmvwisjaykszwjrq3lk4idzvrxln2jp"))))
    (properties `((upstream-name . "language-ecmascript") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1xj5h5ajybq4pwlw8zsn1lb920km1pcdv20apbpa7pgi39zcpzfd")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-Diff)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-charset)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "http://github.com/jswebtools/language-ecmascript")
    (synopsis "JavaScript parser and pretty-printer library")
    (description
     "Tools for working with ECMAScript 3 (popularly known as JavaScript).
Includes a parser, pretty-printer, tools for working with source tree
annotations and an arbitrary instance. See CHANGELOG for a summary of
changes. The package follows the Haskell Package Versioning Policy since version 0.17.0.1.")
    (license license:bsd-3)))

haskell-8.4-language-ecmascript

(define-public haskell-8.4-libmpd
  (package
    (name "haskell-8.4-libmpd")
    (version "0.9.0.9")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/libmpd/libmpd-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1931m23iqb4wddpdidm4ph746zpaw41kkjzmb074j7yyfpk7x1jv"))))
    (properties `((upstream-name . "libmpd") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "16pzbmhyzlpxy2djmxrs0wrv8mad3ahb040lx5kmf57say3qxgdl")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "http://github.com/vimus/libmpd-haskell#readme")
    (synopsis "An MPD client library.")
    (description "A client library for MPD, the Music Player Daemon.")
    (license license:expat)))

haskell-8.4-libmpd

(define-public haskell-8.4-makefile
  (package
    (name "haskell-8.4-makefile")
    (version "1.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/makefile/makefile-" version
                    ".tar.gz"))
              (sha256
               (base32
                "01swnw8fp2cx5z5xim9apia3yw48six61mhf6p3g0gp99w4i4ypd"))))
    (properties `((upstream-name . "makefile") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)))
    (home-page "http://github.com/nmattia/mask")
    (synopsis "Simple Makefile parser and generator")
    (description
     "This package provides a few @@Attoparser@@ parsers and convenience functions
for parsing and generating Makefiles.
The datatypes used for describing Makefiles are located in 'Data.Makefile'.
The parsers and parsing functions are located in 'Data.Makefile.Parse'.
The generating and encoding functions are located in 'Data.Makefile.Render'.
To parse a Makefile in the current folder, simply run 'parseMakefile'. To
parse a Makefile located at @@path@@, run 'parseAsMakefile' @@path@@. To parse a
Makefile from a Text @@txt@@, run 'parseMakefileContents txt`.
To encode a @@Makefile@@, run 'encodeMakefile'.")
    (license license:expat)))

haskell-8.4-makefile

(define-public haskell-8.4-monad-metrics
  (package
    (name "haskell-8.4-monad-metrics")
    (version "0.2.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/monad-metrics/monad-metrics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0zxvdx75psdninvh7f7wqj498wav2cjmn94n5a3f5g8nvrs0n4rq"))))
    (properties `((upstream-name . "monad-metrics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-clock)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-ekg-core)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-microlens)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/parsonsmatt/monad-metrics#readme")
    (synopsis "A convenient wrapper around EKG metrics")
    (description
     "A convenient wrapper for collecting application metrics. Please see the README.md for more information.")
    (license license:expat)))

haskell-8.4-monad-metrics

(define-public haskell-8.4-mwc-random-notests
  (package
    (name "haskell-8.4-mwc-random-notests")
    (version "0.13.6.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-random/mwc-random-" version
                    ".tar.gz"))
              (sha256
               (base32
                "05j7yh0hh9nxic3dijmzv44kc6gzclvamdph7sq7w19wq57k6pq6"))))
    (properties `((upstream-name . "mwc-random") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-math-functions)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-primitive)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/bos/mwc-random")
    (synopsis "Fast, high quality pseudo random number generation")
    (description
     "This package contains code for generating high quality random
numbers that follow either a uniform or normal distribution.  The
generated numbers are suitable for use in statistical applications.

The uniform PRNG uses Marsaglia's MWC256 (also known as MWC8222)
multiply-with-carry generator, which has a period of 2^8222 and
fares well in tests of randomness.  It is also extremely fast,
between 2 and 3 times faster than the Mersenne Twister.

Compared to the mersenne-random package, this package has a more
convenient API, is faster, and supports more statistical
distributions.")
    (license license:bsd-3)))

haskell-8.4-mwc-random-notests

(define-public haskell-8.4-mysql-simple
  (package
    (name "haskell-8.4-mysql-simple")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mysql-simple/mysql-simple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1cbwdsxysz6a4182fgkkd869hm44v834lqv2igwsfbx6v0p44g5h"))))
    (properties `((upstream-name . "mysql-simple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-developer")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base16-bytestring)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-blaze-textual)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-mysql)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-pcre-light)))
    (propagated-inputs (list (@ (gnu packages commencement) gcc-toolchain-12)))
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

haskell-8.4-mysql-simple

(define-public haskell-8.4-neat-interpolation
  (package
    (name "haskell-8.4-neat-interpolation")
    (version "0.3.2.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/neat-interpolation/neat-interpolation-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ffcr6q9bmvlmz5j8s0q08pbqzcfz9pkh8gz52arzscflpncbj5n"))))
    (properties `((upstream-name . "neat-interpolation") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-prelude)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)))
    (home-page "https://github.com/nikita-volkov/neat-interpolation")
    (synopsis "A quasiquoter for neat and simple multiline text interpolation")
    (description
     "A quasiquoter for producing Text values with support for
a simple interpolation of input values.
It removes the excessive indentation from the input and
accurately manages the indentation of all lines of the interpolated variables.")
    (license license:expat)))

haskell-8.4-neat-interpolation

(define-public haskell-8.4-network-transport-inmemory
  (package
    (name "haskell-8.4-network-transport-inmemory")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/network-transport-inmemory/network-transport-inmemory-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0kpgx6r60cczr178ras5ia9xiihrs5a9hnfyv45djmq16faxfic2"))))
    (properties `((upstream-name . "network-transport-inmemory")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1cls49jpl0hs6pviyn1ga8nhsdgsvqg163sprif0pb21xz848d9k")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-accessor)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-network-transport)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-network-transport-tests)))
    (home-page "http://haskell-distributed.github.com")
    (synopsis "In-memory instantiation of Network.Transport")
    (description
     "This is a transport implementation that could be used for local
communication in the same address space (i.e. one process).

It could be used either for testing purposes or for local
communication that require the network-transport semantics.

NB: network-tranpsport-inmemory does not support cross-transport
communication. All endpoints that want to comminicate should be
created using the same transport.")
    (license license:bsd-3)))

haskell-8.4-network-transport-inmemory

(define-public haskell-8.4-nsis
  (package
    (name "haskell-8.4-nsis")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/nsis/nsis-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jhmiydkiii350h6gdj8f6k8d0drsbp6a2dji4nik72nca6mp65r"))))
    (properties `((upstream-name . "nsis") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-uniplate)))
    (home-page "https://github.com/ndmitchell/nsis#readme")
    (synopsis "DSL for producing Windows Installer using NSIS.")
    (description
     "NSIS (Nullsoft Scriptable Install System, <http://nsis.sourceforge.net/>) is a tool that allows programmers
to create installers for Windows.
This library provides an alternative syntax for NSIS scripts, as an embedded Haskell language, removing much
of the hard work in developing an install script. Simple NSIS installers should look mostly the same, complex ones should
be significantly more maintainable.")
    (license license:bsd-3)))

haskell-8.4-nsis

(define-public haskell-8.4-numhask-prelude
  (package
    (name "haskell-8.4-numhask-prelude")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/numhask-prelude/numhask-prelude-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0px2ijdzll1912h652dvncvjhapwrg2z1dni87w2afzk477mpwdi"))))
    (properties `((upstream-name . "numhask-prelude") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-doctest)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-numhask)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-protolude)))
    (home-page "https://github.com/tonyday567/numhask#readme")
    (synopsis "A numeric prelude")
    (description "A numeric prelude, combining protolude and numhask.")
    (license license:bsd-3)))

haskell-8.4-numhask-prelude

(define-public haskell-8.4-pcre-utils
  (package
    (name "haskell-8.4-pcre-utils")
    (version "0.1.8.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/pcre-utils/pcre-utils-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1x3db1hab0qwpw9m4564x86qibzg8jl6cj2k88jii3ihcg580ahz"))))
    (properties `((upstream-name . "pcre-utils") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-vector)))
    (home-page "https://github.com/bartavelle/pcre-utils")
    (synopsis "Perl-like substitute and split for PCRE regexps.")
    (description
     "This package introduces split and replace like functions using PCRE regexps.")
    (license license:bsd-3)))

haskell-8.4-pcre-utils

(define-public haskell-8.4-persistable-types-HDBC-pg
  (package
    (name "haskell-8.4-persistable-types-HDBC-pg")
    (version "0.0.3.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/persistable-types-HDBC-pg/persistable-types-HDBC-pg-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0bzc7kv12mz7kan1ivqpf2k1kwn3f1h74gallfvfrqans3np6p4m"))))
    (properties `((upstream-name . "persistable-types-HDBC-pg")
                  (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage003) haskell-8.4-HDBC)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-convertible)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-persistable-record)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-relational-query)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-relational-query-HDBC)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-text-postgresql)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis
     "HDBC and Relational-Record instances of PostgreSQL extended types")
    (description
     "This package contains HDBC Convertible instances and
Relational-Record persistable instances of PostgreSQL extended types
Supported extended types: inet, cidr")
    (license license:bsd-3)))

haskell-8.4-persistable-types-HDBC-pg

(define-public haskell-8.4-pureMD5
  (package
    (name "haskell-8.4-pureMD5")
    (version "2.1.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/pureMD5/pureMD5-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zdilz41cla2ck7mcw1a9702gyg2abq94mqahr4vci9sbs53bwxy"))))
    (properties `((upstream-name . "pureMD5") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-test")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-cereal)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-crypto-api)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-crypto-api-tests)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-pretty-hex)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-tagged)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)))
    (home-page "https://hackage.haskell.org/package/pureMD5")
    (synopsis
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.")
    (description
     "A Haskell-only implementation of the MD5 digest (hash) algorithm.  This now supports
the crypto-api class interface.")
    (license license:bsd-3)))

haskell-8.4-pureMD5

(define-public haskell-8.4-quickcheck-special
  (package
    (name "haskell-8.4-quickcheck-special")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-QuickCheck)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-special-values)))
    (home-page "https://github.com/minad/quickcheck-special#readme")
    (synopsis
     "Edge cases and special values for QuickCheck Arbitrary instances")
    (description
     "The standard Arbitrary instances of QuickCheck don't generate special values. This is fixed by this package which provides the newtype Special with an Arbitrary instance. The special values are given by the SpecialValues typeclass.")
    (license license:expat)))

haskell-8.4-quickcheck-special

(define-public haskell-8.4-rdf
  (package
    (name "haskell-8.4-rdf")
    (version "0.1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rdf/rdf-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0vqznprx5r7lqyj8b850pfyy7mvin55l1v4krmi1wyacynv977c8"))))
    (properties `((upstream-name . "rdf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage000) haskell-8.4-fgl)))
    (home-page "https://github.com/traviswhitaker/rdf")
    (synopsis "Representation and Incremental Processing of RDF Data")
    (description
     "Data structures, parsers, and encoders for RDF data sets based on the
RDF 1.1 abstract syntax and RFC 3987. The interface is intended to support
incremental graph processing in constant space.")
    (license license:expat)))

haskell-8.4-rdf

(define-public haskell-8.4-regex-with-pcre
  (package
    (name "haskell-8.4-regex-with-pcre")
    (version "1.0.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-with-pcre/regex-with-pcre-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19vn5w4vhgxv9s6nhlmj4xl8pa16d1a2ygxxyd5b0qg3q27vvisk"))))
    (properties `((upstream-name . "regex-with-pcre") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-base-compat)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-regex)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-regex-base)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-pcre-builtin)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-regex-pcre-text)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-tdfa)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "http://regex.uk")
    (synopsis "Toolkit for regex-base")
    (description "A regular expression toolkit for regex-base with
compile-time checking of RE syntax, data types for
matches and captures, a text replacement toolkit,
portable options, high-level AWK-like tools
for building text processing apps, regular expression
macros with parsers and test bench, omprehensive
documentation, tutorials and copious examples.")
    (license license:bsd-3)))

haskell-8.4-regex-with-pcre

(define-public haskell-8.4-selda-postgresql
  (package
    (name "haskell-8.4-selda-postgresql")
    (version "0.1.7.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/selda-postgresql/selda-postgresql-"
                    version ".tar.gz"))
              (sha256
               (base32
                "06z5zrika018433p5l011wxc308zw7l9ilnkgwcykagsnmai4y7z"))))
    (properties `((upstream-name . "selda-postgresql") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-haste")
       #:cabal-revision
       ("1" "08f2xdfpmbwhrwkjaqfmd9k25c3xn3p477d7a1mnnn7kf7328782")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-exceptions)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-postgresql-libpq)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-selda)))
    (propagated-inputs (list (@ (gnu packages databases) postgresql-15)))
    (home-page "https://github.com/valderman/selda")
    (synopsis "PostgreSQL backend for the Selda database EDSL.")
    (description "PostgreSQL backend for the Selda database EDSL.
Requires the PostgreSQL @@libpq@@ development libraries to be
installed.")
    (license license:expat)))

haskell-8.4-selda-postgresql

(define-public haskell-8.4-shake-language-c
  (package
    (name "haskell-8.4-shake-language-c")
    (version "0.12.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/shake-language-c/shake-language-c-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1c0smbshksjw114m09n5i1ynkhibvd9kix9n7h696p75g40ka7k6"))))
    (properties `((upstream-name . "shake-language-c") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-data-default-class)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-fclabels)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-shake)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/samplecount/shake-language-c")
    (synopsis "Utilities for cross-compiling with Shake")
    (description
     "This library provides <http://hackage.haskell.org/package/shake Shake> utilities for cross-compiling @@C@@, @@C++@@ and @@ObjC@@ code for various target platforms. Currently supported target platforms are Android, iOS, Linux, MacOS X, Windows\\/MinGW and Google Portable Native Client (PNaCl). Supported host platforms are MacOS X, Linux and Windows.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.4-shake-language-c

(define-public haskell-8.4-swish
  (package
    (name "haskell-8.4-swish")
    (version "0.9.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/swish/swish-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0zrzihgwn5lg23zmg2iqwilpfj6r77rh1am8g6rwkyf42bgvwhzg"))))
    (properties `((upstream-name . "swish") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-f-w3ctests" "-fnetwork-uri")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-HUnit)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-intern)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-network-uri)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-old-locale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-polyparse)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-semigroups)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-hunit)))
    (home-page "https://bitbucket.org/doug_burke/swish/wiki/Home")
    (synopsis "A semantic web toolkit. ")
    (description
     "Swish is a framework, written in the purely functional
programming language Haskell, for performing deductions in
RDF data using a variety of techniques. Swish is conceived
as a toolkit for experimenting with RDF inference, and for
implementing stand-alone RDF file processors (usable in
similar style to CWM, but with a view to being extensible
in declarative style through added Haskell function and data
value declarations). It explores Haskell as \\\"a scripting
language for the Semantic Web\\\".

Swish is a work-in-progress, and currently incorporates:

* Turtle, Notation3 and NTriples input and output. The N3 support is
incomplete (no handling of @@\\@@forAll@@).

* RDF graph isomorphism testing and merging.

* Display of differences between RDF graphs.

* Inference operations in forward chaining, backward chaining and proof-checking modes.

* Simple Horn-style rule implementations, extendable through variable binding modifiers and filters.

* Class restriction rule implementation, primarily for datatype inferences.

* RDF formal semantics entailment rule implementation.

* Complete, ready-to-run, command-line and script-driven programs.

Changes are given in the <https://bitbucket.org/doug_burke/swish/src/tip/CHANGELOG>.

References:

- <http://www.ninebynine.org/RDFNotes/Swish/Intro.html>

- <http://www.ninebynine.org/Software/swish-0.2.1.html>

- CWM: <http://www.w3.org/2000/10/swap/doc/cwm.html>
")
    (license (license "FSDG-compatible" "LGPL" ""))))

haskell-8.4-swish

(define-public haskell-8.4-text-ldap
  (package
    (name "haskell-8.4-text-ldap")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-dlist)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-memory)))
    (home-page "https://hackage.haskell.org/package/text-ldap")
    (synopsis "Parser and Printer for LDAP text data stream")
    (description "This package contains Parser and Printer for
LDAP text data stream like OpenLDAP backup LDIF.")
    (license license:bsd-3)))

haskell-8.4-text-ldap

(define-public haskell-8.4-text-printer
  (package
    (name "haskell-8.4-text-printer")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/text-printer/text-printer-"
                    version ".tar.gz"))
              (sha256
               (base32
                "02sadjd19dbxzawr1q8z3j7w6vhp5mvz1dbssk118hsvl6k0234g"))))
    (properties `((upstream-name . "text-printer") (hidden? . #f)))
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
                     haskell-8.4-test-framework)
                  (@ (gnu packages stackage ghc-8.4 stage004)
                     haskell-8.4-test-framework-quickcheck2)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-text-latin1)))
    (home-page "https://github.com/mvv/text-printer")
    (synopsis "Abstract interface for text builders/printers.")
    (description
     "This package provides an interface for injecting text into monoids such as
builders and printers.")
    (license license:bsd-3)))

haskell-8.4-text-printer

(define-public haskell-8.4-tomland
  (package
    (name "haskell-8.4-tomland")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tomland/tomland-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kpgcqix32m0nik54rynpphm4mpd8r05mspypjiwj9sidjxn11gw"))))
    (properties `((upstream-name . "tomland") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0pxc2065zjvsw3qwxhj2iw4d08f4j6y40nr51k6nxkz1px855gyk")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-megaparsec)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-parser-combinators)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://github.com/kowainik/tomland")
    (synopsis "TOML parser")
    (description "See README.md for details.")
    (license (license "FSDG-compatible" "MPL" ""))))

haskell-8.4-tomland

(define-public haskell-8.4-uri-bytestring
  (package
    (name "haskell-8.4-uri-bytestring")
    (version "0.3.2.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/uri-bytestring/uri-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1z61l4l8sg8vyrf7cri0awj5pnpzly8gp7dw9j26v9pcs6z1dgb4"))))
    (properties `((upstream-name . "uri-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-lib-werror")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-blaze-builder)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-th-lift-instances)))
    (home-page "https://github.com/Soostone/uri-bytestring")
    (synopsis "Haskell URI parsing as ByteStrings")
    (description
     "uri-bytestring aims to be an RFC3986 compliant URI parser that uses efficient ByteStrings for parsing and representing the URI data.")
    (license license:bsd-3)))

haskell-8.4-uri-bytestring

(define-public haskell-8.4-vivid
  (package
    (name "haskell-8.4-vivid")
    (version "0.3.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/vivid/vivid-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "16dvg5yq26fkrq01mn3c4byz32xld3alxa8h9m16gi4g04f99q00"))))
    (properties `((upstream-name . "vivid") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "1qaxcdblnin68kzfzqkvvq3lfh4bxfadablc0h13vfy5mxcqi5pv")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-MonadRandom)
                  (@ (gnu packages stackage ghc-8.4 stage005)
                     haskell-8.4-hashable)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-network)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-random)
                  (@ (gnu packages stackage ghc-8.4 stage002)
                     haskell-8.4-random-shuffle)
                  (@ (gnu packages stackage ghc-8.4 stage003)
                     haskell-8.4-split)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-vivid-osc)
                  (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-vivid-supercollider)))
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
> theSound = sd (0 ::I \"note\") $ do
>    wobble <- sinOsc (freq_ 5) ? KR ~* 10 ~+ 10
>    s <- 0.1 ~* sinOsc (freq_ $ midiCPS (V::V \"note\") ~+ wobble)
>    out 0 [s,s]
>
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
>    writeNRT \"/tmp/song.wav\" playSong")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.4-vivid

(define-public haskell-8.4-wcwidth
  (package
    (name "haskell-8.4-wcwidth")
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
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-attoparsec)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-setlocale)
                  (@ (gnu packages stackage ghc-8.4 stage000)
                     haskell-8.4-utf8-string)))
    (home-page "http://github.com/solidsnack/wcwidth/")
    (synopsis "Native wcwidth.")
    (description
     "Bindings for your system's native wcwidth and a command line tool to examine
the widths assigned by it. The command line tool can compile a width table
to Haskell code that assigns widths to the Char type.")
    (license license:bsd-3)))

haskell-8.4-wcwidth

(define-public haskell-8.4-ztail
  (package
    (name "haskell-8.4-ztail")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.4 stage007)
                     haskell-8.4-hinotify)
                  (@ (gnu packages stackage ghc-8.4 stage001)
                     haskell-8.4-regex-posix)
                  (@ (gnu packages stackage ghc-8.4 stage006)
                     haskell-8.4-unordered-containers)))
    (home-page "https://hackage.haskell.org/package/ztail")
    (synopsis "Multi-file, colored, filtered log tailer.")
    (description
     "An even more improved version of xtail/tail -f, including inotify support, full regex-based filtering, substitution, and colorization.")
    (license license:bsd-3)))

haskell-8.4-ztail

