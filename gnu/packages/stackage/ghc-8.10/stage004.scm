;;; generated file
(define-module (gnu packages stackage ghc-8.10 stage004)
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
(define-public haskell-8.10-Glob
  (package
    (name "haskell-8.10-Glob")
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
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "1080rd5073g87rfm5whimb72b75105lqanybrbsfi14gmvndnbfx")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "http://iki.fi/matti.niemenmaa/glob/")
    (synopsis "Globbing library")
    (description
     "A library for globbing: matching patterns against file paths.")
    (license license:bsd-3)))

haskell-8.10-Glob

(define-public haskell-8.10-HDBC-session
  (package
    (name "haskell-8.10-HDBC-session")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-HDBC)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Bracketed connection for HDBC")
    (description "This package contains a base bracketed function
to call close correctly against opend DB connection.")
    (license license:bsd-3)))

haskell-8.10-HDBC-session

(define-public haskell-8.10-ListLike
  (package
    (name "haskell-8.10-ListLike")
    (version "4.7.6")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ListLike/ListLike-" version
                    ".tar.gz"))
              (sha256
               (base32
                "08jip0q2f9qc95wcqka2lrqpf8r7sswsi5104w73kyrbmfirqnrd"))))
    (properties `((upstream-name . "ListLike") (hidden? . #f)))
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
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fmlist)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-utf8-string)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
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

haskell-8.10-ListLike

(define-public haskell-8.10-TCache
  (package
    (name "haskell-8.10-TCache")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-RefSerialize)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hashtables)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-old-time)))
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

haskell-8.10-TCache

(define-public haskell-8.10-arrows
  (package
    (name "haskell-8.10-arrows")
    (version "0.4.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/arrows/arrows-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "02db4byzz8xb4c36y0v867g9kd3a9p04r4cj1np717k20qrwjnpn"))))
    (properties `((upstream-name . "arrows") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-Stream)))
    (home-page "http://www.haskell.org/arrows/")
    (synopsis "Arrow classes and transformers")
    (description "Several classes that extend the Arrow class, and some
transformers that implement or lift these classes.")
    (license license:bsd-3)))

haskell-8.10-arrows

(define-public haskell-8.10-ascii
  (package
    (name "haskell-8.10-ascii")
    (version "1.0.1.6")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/ascii/ascii-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1bxii5r24p7i68h37m6q7bjqy9fgp6s33ia9s62hwh70xkkcm8yw"))))
    (properties `((upstream-name . "ascii") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ascii-case)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ascii-char)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ascii-group)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ascii-predicates)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-ascii-superset)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-ascii-th)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-data-ascii)))
    (home-page "https://github.com/typeclasses/ascii")
    (synopsis "The ASCII character set and encoding")
    (description
     "This package provides a variety of ways to work with ASCII text.")
    (license (license "FSDG-compatible" "Apache" ""))))

haskell-8.10-ascii

(define-public haskell-8.10-assoc
  (package
    (name "haskell-8.10-assoc")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/assoc/assoc-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0kqlizznjy94fm8zr1ng633yxbinjff7cnsiaqs7m33ix338v66q"))))
    (properties `((upstream-name . "assoc") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("3" "0mrb12dx316q4gxyn68x2rl8jq0gd77zffd12r8j1r41l0xd9f4k")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tagged)))
    (home-page "https://hackage.haskell.org/package/assoc")
    (synopsis "swap and assoc: Symmetric and Semigroupy Bifunctors")
    (description
     "Provides generalisations of
@@swap :: (a,b) -> (b,a)@@ and
@@assoc :: ((a,b),c) -> (a,(b,c))@@
to
@@Bifunctor@@s supporting similar operations (e.g. @@Either@@, @@These@@).")
    (license license:bsd-3)))

haskell-8.10-assoc

(define-public haskell-8.10-bin
  (package
    (name "haskell-8.10-bin")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/bin/bin-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "11awr2zdknjdgy365hh3alq0fjkhhixk6synf65af2brzkl8k5ys"))))
    (properties `((upstream-name . "bin") (hidden? . #f)))
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
                     haskell-8.10-dec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-fin)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
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

haskell-8.10-bin

(define-public haskell-8.10-c2hs
  (package
    (name "haskell-8.10-c2hs")
    (version "0.28.8")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/c2hs/c2hs-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0k482wv94jbpwd96a2c2lc7qz9k8072slx7l7943472nzk7k41ir"))))
    (properties `((upstream-name . "c2hs") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fbase3" "-f-regression")
       #:cabal-revision
       ("1" "0hbv1j9b04gm617c5xqndr4iqidabwdpcn2dcrnaacc04ylchvl2")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-language-c)))
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

haskell-8.10-c2hs

(define-public haskell-8.10-cabal-clean
  (package
    (name "haskell-8.10-cabal-clean")
    (version "0.1.20210924")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cabal-clean/cabal-clean-"
                    version ".tar.gz"))
              (sha256
               (base32
                "11r46rfncgp8gmvvsfp64krdnp0q4rykrhv5z2gwrxyv5sjkfpyz"))))
    (properties `((upstream-name . "cabal-clean") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-pretty-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-string-qq)))
    (home-page "https://github.com/andreasabel/cabal-clean")
    (synopsis "Remove outdated cabal build artefacts from `dist-newstyle`.")
    (description "Simple command line tool to remove cabal build artefacts
from `dist-newstyle/build` that are superseded by newer
versions of the built package or the Haskell compiler.")
    (license license:bsd-3)))

haskell-8.10-cabal-clean

(define-public haskell-8.10-crypto-cipher-types
  (package
    (name "haskell-8.10-crypto-cipher-types")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-byteable)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-securemem)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Generic cryptography cipher types")
    (description "Generic cryptography cipher types")
    (license license:bsd-3)))

haskell-8.10-crypto-cipher-types

(define-public haskell-8.10-crypto-enigma
  (package
    (name "haskell-8.10-crypto-enigma")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)))
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

haskell-8.10-crypto-enigma

(define-public haskell-8.10-crypto-random
  (package
    (name "haskell-8.10-crypto-random")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-securemem)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-random")
    (synopsis "Simple cryptographic random related types")
    (description "Simple cryptographic random related types")
    (license license:bsd-3)))

haskell-8.10-crypto-random

(define-public haskell-8.10-cubicspline
  (package
    (name "haskell-8.10-cubicspline")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/cubicspline/cubicspline-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0ycv395qskjw8xryzam6skc92m4iixf6065grvfh23avlsffsv2v"))))
    (properties `((upstream-name . "cubicspline") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hmatrix)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://hackage.haskell.org/package/cubicspline")
    (synopsis "Natural cubic spline interpolation.")
    (description "Natural cubic spline interpolation.")
    (license license:bsd-3)))

haskell-8.10-cubicspline

(define-public haskell-8.10-data-default-instances-dlist
  (package
    (name "haskell-8.10-data-default-instances-dlist")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-data-default-class)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-dlist")
    (synopsis "Default instances for types in dlist")
    (description "")
    (license license:bsd-3)))

haskell-8.10-data-default-instances-dlist

(define-public haskell-8.10-dlist-instances
  (package
    (name "haskell-8.10-dlist-instances")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "https://github.com/gregwebs/dlist-instances")
    (synopsis "Difference lists instances")
    (description
     "See the dlist packages.
This package is the canonical source for some orphan instances.
Orphan instances are placed here to avoid dependencies elsewhere.")
    (license license:bsd-3)))

haskell-8.10-dlist-instances

(define-public haskell-8.10-file-embed-lzma
  (package
    (name "haskell-8.10-file-embed-lzma")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-base-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-lzma)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-th-lift-instances)))
    (propagated-inputs (list (@ (gnu packages compression) lzip)))
    (home-page "https://github.com/phadej/file-embed-lzma")
    (synopsis "Use Template Haskell to embed (LZMA compressed) data.")
    (description
     "The @@file-embed@@ package let's embed file and dir contents.

This package is similar, but also compresses the embedded contents with LZMA.
That makes resulting object files smaller, at the cost of start up decompression.

There's also an 'embedRecursiveDir' function.")
    (license license:bsd-3)))

haskell-8.10-file-embed-lzma

(define-public haskell-8.10-hp2pretty
  (package
    (name "haskell-8.10-hp2pretty")
    (version "0.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hp2pretty/hp2pretty-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1irm8mvcib39r8imdx7y7jisp162i0rwk8w3irs2j746c8vhyv12"))))
    (properties `((upstream-name . "hp2pretty") (hidden? . #f)))
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
                     haskell-8.10-floatshow)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)))
    (home-page "https://mathr.co.uk/blog/hp2pretty.html")
    (synopsis "generate pretty graphs from heap profiles")
    (description
     "hp2pretty is a rewrite of hp2ps, implemented in Haskell, with
the aims of being maintainable, with more flexible output, and
more beautiful output.  Currently hp2pretty outputs Scalable
Vector Graphics (SVG) only, though PostScript (PS) is planned.
Not all of hp2ps' options are implemented yet in hp2pretty.

In hp2pretty-0.10 parsing of very large files is made possible
by reading the file(s) twice as Text.Lazy.

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

haskell-8.10-hp2pretty

(define-public haskell-8.10-hspec-core
  (package
    (name "haskell-8.10-hspec-core")
    (version "2.7.10")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-core/hspec-core-" version
                    ".tar.gz"))
              (sha256
               (base32
                "12k9yp5gznrda449ir60d5wv3xl7nnyffkb5mhfc0svw9f8lxlv1"))))
    (properties `((upstream-name . "hspec-core") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0g6x70fqwblf2dzjgq6hp4nj5vqrbfvzphl3j8a73h1966zhrxy9")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-hspec-expectations)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-io)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-setenv)
                  (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-tf-random)))
    (home-page "http://hspec.github.io/")
    (synopsis "A Testing Framework for Haskell")
    (description
     "This package exposes internal types and functions that can be used to extend Hspec's functionality.")
    (license license:expat)))

haskell-8.10-hspec-core

(define-public haskell-8.10-hspec-meta
  (package
    (name "haskell-8.10-hspec-meta")
    (version "2.7.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-meta/hspec-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0sfj0n2hy1r8ifysgbcmfdygcd7vyzr13ldkcp0l2ml337f8j0si"))))
    (properties `((upstream-name . "hspec-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-ansi-terminal)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-call-stack)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-clock)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-io)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-setenv)))
    (home-page "http://hspec.github.io/")
    (synopsis "A version of Hspec which is used to test Hspec itself")
    (description "A stable version of Hspec which is used to test the
in-development version of Hspec.")
    (license license:expat)))

haskell-8.10-hspec-meta

(define-public haskell-8.10-mbox
  (package
    (name "haskell-8.10-mbox")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-time-locale-compat)))
    (home-page "https://hackage.haskell.org/package/mbox")
    (synopsis "Read and write standard mailbox files.")
    (description "Read and write standard mailbox (mboxrd) files.")
    (license license:bsd-3)))

haskell-8.10-mbox

(define-public haskell-8.10-midair
  (package
    (name "haskell-8.10-midair")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-safe)))
    (home-page "https://hackage.haskell.org/package/midair")
    (synopsis "Hot-swappable FRP")
    (description
     "FRP for livecoding. You can hot-swap pieces or the whole of an
FRP graph while it's running.

Small examples are in \"Midair.Examples\"

The API may change a lot in the future.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-8.10-midair

(define-public haskell-8.10-optparse-generic
  (package
    (name "haskell-8.10-optparse-generic")
    (version "1.4.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-generic/optparse-generic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "03s6iwfr2iiypnx3wmnrb37zz7kflk40dj38v8j4ccqxkkf9h0kk"))))
    (properties `((upstream-name . "optparse-generic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1qypq8841xym39kmlnm0608lghh258azr6d424is96kj340bwlwz")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-Only)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-system-filepath)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-void)))
    (home-page "https://hackage.haskell.org/package/optparse-generic")
    (synopsis "Auto-generate a command-line parser for your datatype")
    (description
     "This library auto-generates an @@optparse-applicative@@-compatible
@@Parser@@ from any data type that derives the @@Generic@@ interface.

See the documentation in \"Options.Generic\" for an example of how to use
this library")
    (license license:bsd-3)))

haskell-8.10-optparse-generic

(define-public haskell-8.10-packdeps
  (package
    (name "haskell-8.10-packdeps")
    (version "0.6.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/packdeps/packdeps-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10hrsshzljs6yjzgpw6kpdc4fx4xrbafwicpapcmmj1y66rj00dz"))))
    (properties `((upstream-name . "packdeps") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "02akm54nkfw8jzc8b1b49pkbn4h73s5f968gyafmnq9jla0rcsjg")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-semigroups)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-split)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-tar)))
    (home-page "http://packdeps.haskellers.com/")
    (synopsis "Check your cabal packages for lagging dependencies.")
    (description
     "This provides a library and command line tool for checking if the upper bounds in your package's dependency list excludes the newest package available. The code was originally available only as a web interface at <http://packdeps.haskellers.com/>, but is now available for standalone use as well.

The command line tool has an incredibly simple interface: simply pass it a list of cabal files, and it will tell you what dependencies- if any- are restricted.")
    (license license:bsd-3)))

haskell-8.10-packdeps

(define-public haskell-8.10-persistable-record
  (package
    (name "haskell-8.10-persistable-record")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-names-th)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-product-isomorphic)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-bang-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-constraint-compat)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-th-data-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Binding between SQL database values and haskell records.")
    (description
     "This package contiains types to represent table constraints and
interfaces to bind between SQL database values and Haskell records.")
    (license license:bsd-3)))

haskell-8.10-persistable-record

(define-public haskell-8.10-profiterole
  (package
    (name "haskell-8.10-profiterole")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/profiterole/profiterole-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1wfj8rmcablya94shhrnx2dbk3pfbhvdv6mk6946fyjfy32di266"))))
    (properties `((upstream-name . "profiterole") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-extra)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-ghc-prof)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-scientific)))
    (home-page "https://github.com/ndmitchell/profiterole#readme")
    (synopsis "Restructure GHC profile reports")
    (description
     "Given a GHC profile output, this tool generates alternative views on the data,
which are typically more concise and may reveal new insights.")
    (license license:bsd-3)))

haskell-8.10-profiterole

(define-public haskell-8.10-profunctors
  (package
    (name "haskell-8.10-profunctors")
    (version "5.6.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/profunctors/profunctors-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0an9v003ivxmjid0s51qznbjhd5fsa1dkcfsrhxllnjja1xmv5b5"))))
    (properties `((upstream-name . "profunctors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "1dhg8bys9qnfbvhy4cm4fivanmnik4rg0spshkwyp9s3j88qadix")))
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
                     haskell-8.10-tagged)))
    (home-page "http://github.com/ekmett/profunctors/")
    (synopsis "Profunctors")
    (description "Profunctors.")
    (license license:bsd-3)))

haskell-8.10-profunctors

(define-public haskell-8.10-qrcode-core
  (package
    (name "haskell-8.10-qrcode-core")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-case-insensitive)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-primitive)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-vector)))
    (home-page "https://github.com/alexkazik/qrcode#readme")
    (synopsis "QR code library in pure Haskell")
    (description
     "Please see the README on GitHub at <https://github.com/alexkazik/qrcode/qrcode-core#readme>")
    (license license:expat)))

haskell-8.10-qrcode-core

(define-public haskell-8.10-rdf
  (package
    (name "haskell-8.10-rdf")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/rdf/rdf-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "1jrnmy9fdj3d3pnhycxl5smn6pjdm44b862wfp6hlb82vyl4556s"))))
    (properties `((upstream-name . "rdf") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-fgl)))
    (home-page "https://github.com/traviswhitaker/rdf")
    (synopsis "Representation and Incremental Processing of RDF Data")
    (description
     "Data structures, parsers, and encoders for RDF data sets based on the
RDF 1.1 abstract syntax and RFC 3987. The interface is intended to support
incremental graph processing in constant space.")
    (license license:expat)))

haskell-8.10-rdf

(define-public haskell-8.10-regex-compat-tdfa
  (package
    (name "haskell-8.10-regex-compat-tdfa")
    (version "0.95.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/regex-compat-tdfa/regex-compat-tdfa-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1p90fn90yhp7fvljjdqjp41cszidcfz4pw7fwvzyx4739b98x8sg"))))
    (properties `((upstream-name . "regex-compat-tdfa") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fnewbase" "-fsplitbase")
       #:cabal-revision
       ("1" "19jq1ic29mxfhrwxqxb4844cz0hc0bkyjbkjm3m4dinv13sv3sps")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-regex-base)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-regex-tdfa)))
    (home-page "http://hub.darcs.net/shelarcy/regex-compat-tdfa")
    (synopsis "Unicode Support version of Text.Regex, using regex-tdfa")
    (description "One module layer over regex-tdfa to replace Text.Regex.

regex-compat can't use Unicode characters correctly because
of using regex-posix. This is not good for Unicode users.

I modified regex-compat to use regex-tdfa for solving today's
problem.")
    (license license:bsd-3)))

haskell-8.10-regex-compat-tdfa

(define-public haskell-8.10-simple-cmd-args
  (package
    (name "haskell-8.10-simple-cmd-args")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-cmd-args/simple-cmd-args-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0lf0pyiv02sg2yh9avj92fm75sni61qnaq3rmjw5vlczy03ksxpc"))))
    (properties `((upstream-name . "simple-cmd-args") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)))
    (home-page "https://github.com/juhp/simple-cmd-args")
    (synopsis "Simple command args parsing and execution")
    (description
     "This is a small wrapper over optparse-applicative which
allows combining args parsers directly with IO commands.
For subcommands this can avoid type boilerplate.
It also provides some compact aliases for options with their Mod's.")
    (license license:bsd-3)))

haskell-8.10-simple-cmd-args

(define-public haskell-8.10-smash
  (package
    (name "haskell-8.10-smash")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/smash/smash-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "178ja9c88py31059i0fqv81b1dbgfyv2v64z9ak2k5p79946aa0w"))))
    (properties `((upstream-name . "smash") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("1" "0i5ba4zn11b075fy32pawfhjy81731pjiy5f88f6z8zzbbgwfyny")))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/emilypi/smash")
    (synopsis "Smash products, wedge products, and pointed products")
    (description
     "Smash products, wedge products, and pointed products in Haskell")
    (license license:bsd-3)))

haskell-8.10-smash

(define-public haskell-8.10-sql-words
  (package
    (name "haskell-8.10-sql-words")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-simple)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "SQL keywords data constructors into OverloadedString")
    (description
     "This package contiains SQL keywords constructors defined as
OverloadedString literals and helper functions to concate these.")
    (license license:bsd-3)))

haskell-8.10-sql-words

(define-public haskell-8.10-strict-tuple
  (package
    (name "haskell-8.10-strict-tuple")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/strict-tuple/strict-tuple-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1n0rw1vvvsgznx4i21480qzzs44iw35hcdiw0d160war7nf2pyp5"))))
    (properties `((upstream-name . "strict-tuple") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-bifunctors)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-hashable)))
    (home-page "https://github.com/mitchellwrosen/strict-tuple")
    (synopsis "Strict tuples")
    (description "Strict tuples.")
    (license license:bsd-3)))

haskell-8.10-strict-tuple

(define-public haskell-8.10-string-random
  (package
    (name "haskell-8.10-string-random")
    (version "0.1.4.2")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/string-random/string-random-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0rqh0cwywlzg4xyb1s80mghl3kq3sngg8xjbh4g9x4p8fc6maiw9"))))
    (properties `((upstream-name . "string-random") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-attoparsec)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-optparse-applicative)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)))
    (home-page "https://github.com/hiratara/hs-string-random#readme")
    (synopsis
     "A library for generating random string from a regular experession")
    (description "With this package you can generate random strings from
regular expressions. If you are using QuickCheck, you can
also check the quickcheck-string-random package.")
    (license license:bsd-3)))

haskell-8.10-string-random

(define-public haskell-8.10-test-framework-hunit
  (package
    (name "haskell-8.10-test-framework-hunit")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-HUnit)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)))
    (home-page "https://batterseapower.github.io/test-framework/")
    (synopsis "HUnit support for the test-framework package.")
    (description "HUnit support for the test-framework package.")
    (license license:bsd-3)))

haskell-8.10-test-framework-hunit

(define-public haskell-8.10-test-framework-leancheck
  (package
    (name "haskell-8.10-test-framework-leancheck")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/test-framework-leancheck/test-framework-leancheck-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0aa21r999jj59plzkn1px02k3a87znwhagdjmdsik2xvy5wrzgzv"))))
    (properties `((upstream-name . "test-framework-leancheck") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-leancheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)))
    (home-page "https://github.com/rudymatela/test-framework-leancheck#readme")
    (synopsis "LeanCheck support for test-framework.")
    (description
     "LeanCheck support for test-framework.

This package can be used to incorporate LeanCheck tests
into test-framework test suites.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-8.10-test-framework-leancheck

(define-public haskell-8.10-test-framework-quickcheck2
  (package
    (name "haskell-8.10-test-framework-quickcheck2")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-extensible-exceptions)
                  (@ (gnu packages stackage ghc-8.10 stage001)
                     haskell-8.10-random)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-test-framework)))
    (home-page "http://haskell.github.io/test-framework/")
    (synopsis "QuickCheck-2 support for the test-framework package.")
    (description
     "Allows @@QuickCheck-2@@ properties to be used with the </package/test-framework test-framework package>.")
    (license license:bsd-3)))

haskell-8.10-test-framework-quickcheck2

(define-public haskell-8.10-text-postgresql
  (package
    (name "haskell-8.10-text-postgresql")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage002)
                     haskell-8.10-QuickCheck)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-dlist)
                  (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-quickcheck-simple)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-transformers-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Parser and Printer of PostgreSQL extended types")
    (description "This package involves parser and printer for
text expressions of PostgreSQL extended types.
- inet type, cidr type")
    (license license:bsd-3)))

haskell-8.10-text-postgresql

(define-public haskell-8.10-unliftio-pool
  (package
    (name "haskell-8.10-unliftio-pool")
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
    (outputs (list "out" "static" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-resource-pool)
                  (@ (gnu packages stackage ghc-8.10 stage000)
                     haskell-8.10-unliftio-core)))
    (home-page "https://hackage.haskell.org/package/unliftio-pool")
    (synopsis "Data.Pool generalized to MonadUnliftIO.")
    (description "This is a generalization of Data.Pool to MonadUnliftIO.")
    (license license:bsd-3)))

haskell-8.10-unliftio-pool

(define-public haskell-8.10-utility-ht
  (package
    (name "haskell-8.10-utility-ht")
    (version "0.0.16")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/utility-ht/utility-ht-" version
                    ".tar.gz"))
              (sha256
               (base32
                "10dvmfhhhj5w4wz5drhvs6i0yv35kbbcbzhy6ci34r3ppcik5rdw"))))
    (properties `((upstream-name . "utility-ht") (hidden? . #f)))
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
                     haskell-8.10-doctest-lib)))
    (home-page "https://hackage.haskell.org/package/utility-ht")
    (synopsis
     "Various small helper functions for Lists, Maybes, Tuples, Functions")
    (description
     "Various small helper functions for Lists, Maybes, Tuples, Functions.
Some of these functions are improved implementations of standard functions.
They have the same name as their standard counterparts.
Others are equivalent to functions from the @@base@@ package,
but if you import them from this utility package
then you can write code that runs on older GHC versions
or other compilers like Hugs and JHC.

All modules are plain Haskell 98.
The package depends exclusively on the @@base@@ package
and only that portions of @@base@@ that are simple to port.
Thus you do not risk a dependency avalanche by importing it.
However, further splitting the base package might invalidate this statement.

Alternative packages: @@Useful@@, @@MissingH@@")
    (license license:bsd-3)))

haskell-8.10-utility-ht

(define-public haskell-8.10-xml-to-json-fast
  (package
    (name "haskell-8.10-xml-to-json-fast")
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
    (inputs (list (@ (gnu packages stackage ghc-8.10 stage003)
                     haskell-8.10-tagsoup)))
    (home-page "https://github.com/sinelaw/xml-to-json-fast")
    (synopsis
     "Fast, light converter of xml to json capable of handling huge xml files")
    (description
     "Assumes input xml is valid, which allows constant memory usage (<4 MB) and faster parsing. For a fully-featured, but memory-bound converter see the xml-to-json package.

If not input file is given, reads from stdin (so it can be used in a unix pipe chain).")
    (license license:expat)))

haskell-8.10-xml-to-json-fast

