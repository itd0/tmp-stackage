;;; generated file
(define-module (gnu packages stackage ghc-9.4 stage004)
  #:use-module ((guix download))
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module ((guix packages)))
;;; see commit 1597613488
(define license (@@ (guix licenses) license))
;;; explicitly define which ghc to use
(define ghc (@ (gnu packages haskell) ghc-9.4))
;;; add another patch file location (see gnu/packages.scm for pretty original)
(define-syntax-rule (search-patches file-name ...)
 (parameterize
  (((@ (gnu packages) %patch-path) (map (lambda (directory) (string-append directory "/patches")) %load-path)))
  (list ((@@ (gnu packages) search-patch) file-name) ...)))
(define-public haskell-9.4-HDBC
  (package
    (name "haskell-9.4-HDBC")
    (version "2.4.0.4")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/HDBC/HDBC-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "1jlh6swrk5vn106p456dmqg3yf145hsjgziwmcyfafx7w682sgy9"))))
    (properties `((upstream-name . "HDBC") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fsplitbase" "-f-buildtests" "-fmintime15")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-convertible)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-old-time)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)))
    (home-page "https://github.com/hdbc/hdbc")
    (synopsis "Haskell Database Connectivity")
    (description
     "HDBC provides an abstraction layer between Haskell programs and SQL
relational databases. This lets you write database code once, in
Haskell, and have it work with any number of backend SQL databases
(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)")
    (license license:bsd-3)))

haskell-9.4-HDBC

(define-public haskell-9.4-ListLike
  (package
    (name "haskell-9.4-ListLike")
    (version "4.7.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/ListLike/ListLike-" version
                    ".tar.gz"))
              (sha256
               (base32
                "1l9pfjy7gh7xqnzflixp37d6lsppmlffzmmq75xn9r8ij3r2jycs"))))
    (properties `((upstream-name . "ListLike") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-fmlist)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-utf8-string)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
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

haskell-9.4-ListLike

(define-public haskell-9.4-agda2lagda-notests
  (package
    (name "haskell-9.4-agda2lagda-notests")
    (version "0.2023.1.12")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/agda2lagda/agda2lagda-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0arcap9vpa6yfj7mhdsljrkr0581d3jfnkxr1d8fb35mdawsiikl"))))
    (properties `((upstream-name . "agda2lagda") (hidden? . #t)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (home-page "https://github.com/andreasabel/agda2lagda")
    (synopsis "Translate .agda files into .lagda.tex files.")
    (description "Simple command line tool to convert plain Agda
or Haskell files into literate files.  Line comments
are interpreted as text, the rest as code blocks.")
    (license (license "FSDG-compatible" "PublicDomain" ""))))

haskell-9.4-agda2lagda-notests

(define-public haskell-9.4-arrows
  (package
    (name "haskell-9.4-arrows")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-Stream)))
    (home-page "http://www.haskell.org/arrows/")
    (synopsis "Arrow classes and transformers")
    (description "Several classes that extend the Arrow class, and some
transformers that implement or lift these classes.")
    (license license:bsd-3)))

haskell-9.4-arrows

(define-public haskell-9.4-assoc
  (package
    (name "haskell-9.4-assoc")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "https://hackage.haskell.org/package/assoc")
    (synopsis "swap and assoc: Symmetric and Semigroupy Bifunctors")
    (description
     "Provides generalisations of
@@swap :: (a,b) -> (b,a)@@ and
@@assoc :: ((a,b),c) -> (a,(b,c))@@
to
@@Bifunctor@@s supporting similar operations (e.g. @@Either@@, @@These@@).")
    (license license:bsd-3)))

haskell-9.4-assoc

(define-public haskell-9.4-c2hs
  (package
    (name "haskell-9.4-c2hs")
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
       ("2" "14j3sjxvwhj32zpz0iyigc6wdn6pjm3vlgs0prq0grvk48p176f3")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-language-c)))
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

haskell-9.4-c2hs

(define-public haskell-9.4-crypto-cipher-types
  (package
    (name "haskell-9.4-crypto-cipher-types")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-byteable)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-securemem)))
    (home-page "http://github.com/vincenthz/hs-crypto-cipher")
    (synopsis "Generic cryptography cipher types")
    (description "Generic cryptography cipher types")
    (license license:bsd-3)))

haskell-9.4-crypto-cipher-types

(define-public haskell-9.4-crypto-enigma
  (package
    (name "haskell-9.4-crypto-enigma")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-split)))
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

haskell-9.4-crypto-enigma

(define-public haskell-9.4-crypto-random
  (package
    (name "haskell-9.4-crypto-random")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-securemem)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "http://github.com/vincenthz/hs-crypto-random")
    (synopsis "Simple cryptographic random related types")
    (description "Simple cryptographic random related types")
    (license license:bsd-3)))

haskell-9.4-crypto-random

(define-public haskell-9.4-cubicspline
  (package
    (name "haskell-9.4-cubicspline")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://hackage.haskell.org/package/cubicspline")
    (synopsis "Natural cubic spline interpolation.")
    (description "Natural cubic spline interpolation.")
    (license license:bsd-3)))

haskell-9.4-cubicspline

(define-public haskell-9.4-currycarbon
  (package
    (name "haskell-9.4-currycarbon")
    (version "0.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/currycarbon/currycarbon-"
                    version ".tar.gz"))
              (sha256
               (base32
                "07r6pzwihdmw1c7rp3lvhka5zcm2pk1knkp8z2nzlf8a3szm63kq"))))
    (properties `((upstream-name . "currycarbon") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-math-functions)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://github.com/nevrome/currycarbon")
    (synopsis "A package for simple, fast radiocarbon calibration")
    (description
     "Radiocarbon calibration with the intercept method optimised for fast calibration of many dates.")
    (license license:expat)))

haskell-9.4-currycarbon

(define-public haskell-9.4-data-default-instances-dlist
  (package
    (name "haskell-9.4-data-default-instances-dlist")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-data-default-class)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)))
    (home-page
     "https://hackage.haskell.org/package/data-default-instances-dlist")
    (synopsis "Default instances for types in dlist")
    (description "")
    (license license:bsd-3)))

haskell-9.4-data-default-instances-dlist

(define-public haskell-9.4-deriving-trans
  (package
    (name "haskell-9.4-deriving-trans")
    (version "0.5.2.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/deriving-trans/deriving-trans-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0890885anzr9rvgmia5pm7ppxabgkssxg0i4jkfgxsnayj9rhd27"))))
    (properties `((upstream-name . "deriving-trans") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags
       (list "-fexceptions" "-fmtl" "-fprimitive" "-funliftio")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-monad-control)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-monad-control-identity)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-transformers-base)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-unliftio-core)))
    (home-page "https://github.com/jumper149/deriving-trans")
    (synopsis "Derive instances for monad transformer stacks")
    (description
     "Implementing instances for monad transformer stacks can be tedious.
<https://hackage.haskell.org/package/mtl mtl> defines each instance for each
transfomer, but this can be avoided.

'Elevator' let's you access instances of the underlying monad of a transformer.
Composing transformers with 'ComposeT' brings instances into scope during the
initialization of a transformer stack.

'Elevator' can be used with DerivingVia to select a specific transformer to
derive instances for a transformer stack.
'ComposeT' composes transformers and accumulates instances in a transformer
stack.")
    (license license:bsd-3)))

haskell-9.4-deriving-trans

(define-public haskell-9.4-dlist-instances
  (package
    (name "haskell-9.4-dlist-instances")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-semigroups)))
    (home-page "https://github.com/gregwebs/dlist-instances")
    (synopsis "Difference lists instances")
    (description
     "See the dlist packages.
This package is the canonical source for some orphan instances.
Orphan instances are placed here to avoid dependencies elsewhere.")
    (license license:bsd-3)))

haskell-9.4-dlist-instances

(define-public haskell-9.4-effectful-th
  (package
    (name "haskell-9.4-effectful-th")
    (version "1.0.0.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/effectful-th/effectful-th-"
                    version ".tar.gz"))
              (sha256
               (base32
                "19xbvfsglm4gsji303zj4f1nhhl4gls78cdbl4yalxm8c4m8iqsf"))))
    (properties `((upstream-name . "effectful-th") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("2" "15s8yvxf7sbi1vx5ylnrnxc1b694ndmdac0f5bi8v0cg6sjijkzw")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-effectful-core)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-th-abstraction)))
    (home-page "https://hackage.haskell.org/package/effectful-th")
    (synopsis "Template Haskell utilities for the effectful library.")
    (description
     "Generate functions for performing operations of dynamically dispatched effects
via Template Haskell.")
    (license license:bsd-3)))

haskell-9.4-effectful-th

(define-public haskell-9.4-errors
  (package
    (name "haskell-9.4-errors")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/errors/errors-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0x8znwn31qcx6kqx99wp7bc86kckfb39ncz3zxvj1s07kxlfawk7"))))
    (properties `((upstream-name . "errors") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)
       #:cabal-revision
       ("4" "0sji6ny86f4j9ch1cyf2p1mcr5b2ighvw4bb9rssvypxb6k2r68f")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "https://hackage.haskell.org/package/errors")
    (synopsis "Simplified error-handling")
    (description
     "The one-stop shop for all your error-handling needs!  Just import
\"Control.Error\".

This library encourages an error-handling style that directly uses the type
system, rather than out-of-band exceptions.")
    (license license:bsd-3)))

haskell-9.4-errors

(define-public haskell-9.4-hmatrix-special
  (package
    (name "haskell-9.4-hmatrix-special")
    (version "0.19.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hmatrix-special/hmatrix-special-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1mywr61kr852sbff26n9x95kswx9l4ycbv6s68qsbkh02xzqq7qz"))))
    (properties `((upstream-name . "hmatrix-special") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-safe-cheap")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-hmatrix-gsl)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "https://github.com/albertoruiz/hmatrix")
    (synopsis "Interface to GSL special functions")
    (description "Interface to GSL special functions.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-hmatrix-special

(define-public haskell-9.4-hspec-meta
  (package
    (name "haskell-9.4-hspec-meta")
    (version "2.10.5")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hspec-meta/hspec-meta-" version
                    ".tar.gz"))
              (sha256
               (base32
                "0jgagvmvp3nvz9vdgvr42x0xv7nnjzz1rshs6x4wzc38qvcrssbn"))))
    (properties `((upstream-name . "hspec-meta") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-call-stack)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-clock)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-io)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-setenv)))
    (home-page "http://hspec.github.io/")
    (synopsis "A version of Hspec which is used to test Hspec itself")
    (description "A stable version of Hspec which is used to test the
in-development version of Hspec.")
    (license license:expat)))

haskell-9.4-hspec-meta

(define-public haskell-9.4-hstatistics
  (package
    (name "haskell-9.4-hstatistics")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/hstatistics/hstatistics-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0pcx1s15ijdj5kxqbwcqf5qvpa8wxac9ph5013cmg1k1yflnqrzh"))))
    (properties `((upstream-name . "hstatistics") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-hmatrix)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-hmatrix-gsl-stats)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (propagated-inputs (list (@ (gnu packages maths) lapack)
                             (@ (gnu packages maths) openblas)))
    (home-page "http://code.haskell.org/hstatistics")
    (synopsis "Statistics")
    (description
     "Purely functional interface for statistics based on hmatrix and hmatrix-gsl-stats

The vector type is Data.Vector.Storable from the 'vector' package and compatible with the 'statistics' package.
<http://hackage.haskell.org/package/statistics>

Feature requests, suggestions, and bug fixes welcome.")
    (license license:bsd-3)))

haskell-9.4-hstatistics

(define-public haskell-9.4-midair
  (package
    (name "haskell-9.4-midair")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)))
    (home-page "https://hackage.haskell.org/package/midair")
    (synopsis "Hot-swappable FRP")
    (description
     "FRP for livecoding. You can hot-swap pieces or the whole of an
FRP graph while it's running.

Small examples are in \"Midair.Examples\"

The API may change a lot in the future.")
    (license (license "FSDG-compatible" "GPL" ""))))

haskell-9.4-midair

(define-public haskell-9.4-mwc-probability
  (package
    (name "haskell-9.4-mwc-probability")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)))
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

haskell-9.4-mwc-probability

(define-public haskell-9.4-mwc-random-monad
  (package
    (name "haskell-9.4-mwc-random-monad")
    (version "0.7.3.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/mwc-random-monad/mwc-random-monad-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0h4ljwwhqg4yy513lqk2ix0m9q2hmk276hgfrc6n3ja6wqbpkwyh"))))
    (properties `((upstream-name . "mwc-random-monad") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-monad-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-primitive)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-vector)))
    (home-page "https://hackage.haskell.org/package/mwc-random-monad")
    (synopsis "Monadic interface for mwc-random")
    (description "Simple monadic interface for mwc-random.")
    (license license:bsd-3)))

haskell-9.4-mwc-random-monad

(define-public haskell-9.4-optparse-generic
  (package
    (name "haskell-9.4-optparse-generic")
    (version "1.4.9")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/optparse-generic/optparse-generic-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1kxrhh4h2jd2i9fi1lr3sx6wij71n1y50crl0r0j6b3c8hj3c05j"))))
    (properties `((upstream-name . "optparse-generic") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-Only)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-system-filepath)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)
                  (@ (gnu packages stackage ghc-9.4 stage000) haskell-9.4-void)))
    (home-page "https://hackage.haskell.org/package/optparse-generic")
    (synopsis "Auto-generate a command-line parser for your datatype")
    (description
     "This library auto-generates an @@optparse-applicative@@-compatible
@@Parser@@ from any data type that derives the @@Generic@@ interface.

See the documentation in \"Options.Generic\" for an example of how to use
this library")
    (license license:bsd-3)))

haskell-9.4-optparse-generic

(define-public haskell-9.4-profunctors
  (package
    (name "haskell-9.4-profunctors")
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
       ("3" "0y2g5dhmvkbd8zsckpgxd1g4hr3g56g0iqi6crjjc8wqd12bly71")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-base-orphans)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-bifunctors)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-comonad)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-contravariant)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-distributive)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "http://github.com/ekmett/profunctors/")
    (synopsis "Profunctors")
    (description "Profunctors.")
    (license license:bsd-3)))

haskell-9.4-profunctors

(define-public haskell-9.4-random-bytestring
  (package
    (name "haskell-9.4-random-bytestring")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/random-bytestring/random-bytestring-"
                    version ".tar.gz"))
              (sha256
               (base32
                "0f4n41gqxxggadysvx3vg2iq89z7i7692ccrfmiajq73lbp6y34j"))))
    (properties `((upstream-name . "random-bytestring") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-fwith-pcg")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-mwc-random)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-pcg-random)))
    (home-page "https://www.github.com/larskuhtz/random-bytestring")
    (synopsis "Efficient generation of random bytestrings")
    (description
     "__This package is deprecated__. Please, use
'genByteString' from the [random
package (version >=1.2)](https://hackage.haskell.org/package/random) instead.

Efficient generation of random bytestrings. The implementation
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

haskell-9.4-random-bytestring

(define-public haskell-9.4-redact
  (package
    (name "haskell-9.4-redact")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/redact/redact-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "0q0sqsqajv8mvz76b9xy40z22j6cbacwn76rwhns5wwj5kwli829"))))
    (properties `((upstream-name . "redact") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-f-write-hie")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-ansi-wl-pprint)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (home-page "https://github.com/ExtremaIS/redact-haskell#readme")
    (synopsis "hide secret text on the terminal")
    (description
     "This package provides a utility for redacting secret text on the terminal.
Please see the README on GitHub at
<https://github.com/ExtremaIS/redact-haskell#readme>.")
    (license license:expat)))

haskell-9.4-redact

(define-public haskell-9.4-simple-cmd-args
  (package
    (name "haskell-9.4-simple-cmd-args")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/simple-cmd-args/simple-cmd-args-"
                    version ".tar.gz"))
              (sha256
               (base32
                "13jaxivmcxjrv4cv7d7s7yv4jxy6rpig7qy8va8ynifnxframvyj"))))
    (properties `((upstream-name . "simple-cmd-args") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)))
    (home-page "https://github.com/juhp/simple-cmd-args")
    (synopsis "Simple command args parsing and execution")
    (description
     "This is a small wrapper over optparse-applicative which
allows combining args parsers directly with IO commands.
For subcommands this can avoid type boilerplate.
It also provides some compact aliases for options with their Mod's.")
    (license license:bsd-3)))

haskell-9.4-simple-cmd-args

(define-public haskell-9.4-sql-words
  (package
    (name "haskell-9.4-sql-words")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-simple)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "SQL keywords data constructors into OverloadedString")
    (description
     "This package contiains SQL keywords constructors defined as
OverloadedString literals and helper functions to concate these.")
    (license license:bsd-3)))

haskell-9.4-sql-words

(define-public haskell-9.4-tasty
  (package
    (name "haskell-9.4-tasty")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://hackage/package/tasty/tasty-"
                                  version ".tar.gz"))
              (sha256
               (base32
                "006bf4gyc30i2gvb17hj1mzrh1kwnwf7l050x3f72wi6c2axl87l"))))
    (properties `((upstream-name . "tasty") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #t
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list "-funix")))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-ansi-terminal)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-optparse-applicative)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-tagged)))
    (home-page "https://github.com/UnkindPartition/tasty")
    (synopsis "Modern and extensible testing framework")
    (description "Tasty is a modern testing framework for Haskell.
It lets you combine your unit tests, golden
tests, QuickCheck/SmallCheck properties, and any
other types of tests into a single test suite.")
    (license license:expat)))

haskell-9.4-tasty

(define-public haskell-9.4-test-framework-hunit
  (package
    (name "haskell-9.4-test-framework-hunit")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-HUnit)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)))
    (home-page "https://batterseapower.github.io/test-framework/")
    (synopsis "HUnit support for the test-framework package.")
    (description "HUnit support for the test-framework package.")
    (license license:bsd-3)))

haskell-9.4-test-framework-hunit

(define-public haskell-9.4-test-framework-leancheck
  (package
    (name "haskell-9.4-test-framework-leancheck")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-leancheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)))
    (home-page "https://github.com/rudymatela/test-framework-leancheck#readme")
    (synopsis "LeanCheck support for test-framework.")
    (description
     "LeanCheck support for test-framework.

This package can be used to incorporate LeanCheck tests
into test-framework test suites.

Please see the Haddock documentation and README for more details.")
    (license license:bsd-3)))

haskell-9.4-test-framework-leancheck

(define-public haskell-9.4-test-framework-quickcheck2
  (package
    (name "haskell-9.4-test-framework-quickcheck2")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-extensible-exceptions)
                  (@ (gnu packages stackage ghc-9.4 stage001)
                     haskell-9.4-random)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-test-framework)))
    (home-page "http://haskell.github.io/test-framework/")
    (synopsis "QuickCheck-2 support for the test-framework package.")
    (description
     "Allows @@QuickCheck-2@@ properties to be used with the </package/test-framework test-framework package>.")
    (license license:bsd-3)))

haskell-9.4-test-framework-quickcheck2

(define-public haskell-9.4-text-postgresql
  (package
    (name "haskell-9.4-text-postgresql")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-dlist)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-quickcheck-simple)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-transformers-compat)))
    (home-page "http://khibino.github.io/haskell-relational-record/")
    (synopsis "Parser and Printer of PostgreSQL extended types")
    (description "This package involves parser and printer for
text expressions of PostgreSQL extended types.
- inet type, cidr type")
    (license license:bsd-3)))

haskell-9.4-text-postgresql

(define-public haskell-9.4-unicode-show
  (package
    (name "haskell-9.4-unicode-show")
    (version "0.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "mirror://hackage/package/unicode-show/unicode-show-"
                    version ".tar.gz"))
              (sha256
               (base32
                "1sizp1wmnx1vgckwyf5nawqf9s7ibrwacgznnc1m4j5q1hydbbzl"))))
    (properties `((upstream-name . "unicode-show") (hidden? . #f)))
    (build-system (@ (guix build-system haskell) haskell-build-system))
    (arguments
     `(#:tests? #f
       #:haskell ,ghc
       #:haddock? #t
       #:configure-flags (list)))
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003) haskell-9.4-safe)))
    (home-page "http://github.com/haskell-jp/unicode-show#readme")
    (synopsis "print and show in unicode")
    (description
     "This package provides variants of 'show' and 'print' functions that does not escape non-ascii characters.

See <http://github.com/haskell-jp/unicode-show#readme README> for usage.

Run ghci with  @@-interactive-print@@ flag to print unicode characters. See <https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/interactive-evaluation.html#ghci-interactive-print Using a custom interactive printing function> section in the GHC manual.")
    (license license:bsd-3)))

haskell-9.4-unicode-show

(define-public haskell-9.4-utility-ht
  (package
    (name "haskell-9.4-utility-ht")
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
    (outputs (list "out" "doc"))
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage002)
                     haskell-9.4-QuickCheck)
                  (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-doctest-exitcode-stdio)
                  (@ (gnu packages stackage ghc-9.4 stage000)
                     haskell-9.4-doctest-lib)))
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

haskell-9.4-utility-ht

(define-public haskell-9.4-xml-to-json-fast
  (package
    (name "haskell-9.4-xml-to-json-fast")
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
    (inputs (list (@ (gnu packages stackage ghc-9.4 stage003)
                     haskell-9.4-tagsoup)))
    (home-page "https://github.com/sinelaw/xml-to-json-fast")
    (synopsis
     "Fast, light converter of xml to json capable of handling huge xml files")
    (description
     "Assumes input xml is valid, which allows constant memory usage (<4 MB) and faster parsing. For a fully-featured, but memory-bound converter see the xml-to-json package.

If not input file is given, reads from stdin (so it can be used in a unix pipe chain).")
    (license license:expat)))

haskell-9.4-xml-to-json-fast

